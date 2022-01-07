; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panfrost/extr_panfrost_mmu.c_panfrost_mmu_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panfrost/extr_panfrost_mmu.c_panfrost_mmu_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.panfrost_device = type { i32 }
%struct.panfrost_mmu = type { i32, %struct.io_pgtable_cfg }
%struct.io_pgtable_cfg = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@AS_COMMAND_FLUSH_MEM = common dso_local global i32 0, align 4
@AS_COMMAND_UPDATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.panfrost_device*, %struct.panfrost_mmu*)* @panfrost_mmu_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @panfrost_mmu_enable(%struct.panfrost_device* %0, %struct.panfrost_mmu* %1) #0 {
  %3 = alloca %struct.panfrost_device*, align 8
  %4 = alloca %struct.panfrost_mmu*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.io_pgtable_cfg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.panfrost_device* %0, %struct.panfrost_device** %3, align 8
  store %struct.panfrost_mmu* %1, %struct.panfrost_mmu** %4, align 8
  %9 = load %struct.panfrost_mmu*, %struct.panfrost_mmu** %4, align 8
  %10 = getelementptr inbounds %struct.panfrost_mmu, %struct.panfrost_mmu* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %5, align 4
  %12 = load %struct.panfrost_mmu*, %struct.panfrost_mmu** %4, align 8
  %13 = getelementptr inbounds %struct.panfrost_mmu, %struct.panfrost_mmu* %12, i32 0, i32 1
  store %struct.io_pgtable_cfg* %13, %struct.io_pgtable_cfg** %6, align 8
  %14 = load %struct.io_pgtable_cfg*, %struct.io_pgtable_cfg** %6, align 8
  %15 = getelementptr inbounds %struct.io_pgtable_cfg, %struct.io_pgtable_cfg* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %7, align 4
  %18 = load %struct.io_pgtable_cfg*, %struct.io_pgtable_cfg** %6, align 8
  %19 = getelementptr inbounds %struct.io_pgtable_cfg, %struct.io_pgtable_cfg* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %8, align 4
  %22 = load %struct.panfrost_device*, %struct.panfrost_device** %3, align 8
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @AS_COMMAND_FLUSH_MEM, align 4
  %25 = call i32 @mmu_hw_do_operation_locked(%struct.panfrost_device* %22, i32 %23, i32 0, i64 -1, i32 %24)
  %26 = load %struct.panfrost_device*, %struct.panfrost_device** %3, align 8
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @AS_TRANSTAB_LO(i32 %27)
  %29 = load i32, i32* %7, align 4
  %30 = sext i32 %29 to i64
  %31 = and i64 %30, 4294967295
  %32 = trunc i64 %31 to i32
  %33 = call i32 @mmu_write(%struct.panfrost_device* %26, i32 %28, i32 %32)
  %34 = load %struct.panfrost_device*, %struct.panfrost_device** %3, align 8
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @AS_TRANSTAB_HI(i32 %35)
  %37 = load i32, i32* %7, align 4
  %38 = ashr i32 %37, 32
  %39 = call i32 @mmu_write(%struct.panfrost_device* %34, i32 %36, i32 %38)
  %40 = load %struct.panfrost_device*, %struct.panfrost_device** %3, align 8
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @AS_MEMATTR_LO(i32 %41)
  %43 = load i32, i32* %8, align 4
  %44 = sext i32 %43 to i64
  %45 = and i64 %44, 4294967295
  %46 = trunc i64 %45 to i32
  %47 = call i32 @mmu_write(%struct.panfrost_device* %40, i32 %42, i32 %46)
  %48 = load %struct.panfrost_device*, %struct.panfrost_device** %3, align 8
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @AS_MEMATTR_HI(i32 %49)
  %51 = load i32, i32* %8, align 4
  %52 = ashr i32 %51, 32
  %53 = call i32 @mmu_write(%struct.panfrost_device* %48, i32 %50, i32 %52)
  %54 = load %struct.panfrost_device*, %struct.panfrost_device** %3, align 8
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* @AS_COMMAND_UPDATE, align 4
  %57 = call i32 @write_cmd(%struct.panfrost_device* %54, i32 %55, i32 %56)
  ret void
}

declare dso_local i32 @mmu_hw_do_operation_locked(%struct.panfrost_device*, i32, i32, i64, i32) #1

declare dso_local i32 @mmu_write(%struct.panfrost_device*, i32, i32) #1

declare dso_local i32 @AS_TRANSTAB_LO(i32) #1

declare dso_local i32 @AS_TRANSTAB_HI(i32) #1

declare dso_local i32 @AS_MEMATTR_LO(i32) #1

declare dso_local i32 @AS_MEMATTR_HI(i32) #1

declare dso_local i32 @write_cmd(%struct.panfrost_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
