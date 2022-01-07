; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panfrost/extr_panfrost_mmu.c_lock_region.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panfrost/extr_panfrost_mmu.c_lock_region.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.panfrost_device = type { i32 }

@PAGE_MASK = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i64 0, align 8
@AS_COMMAND_LOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.panfrost_device*, i32, i32, i64)* @lock_region to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lock_region(%struct.panfrost_device* %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.panfrost_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.panfrost_device* %0, %struct.panfrost_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* @PAGE_MASK, align 4
  %13 = and i32 %11, %12
  store i32 %13, i32* %10, align 4
  %14 = load i64, i64* %8, align 8
  %15 = load i32, i32* @PAGE_SIZE, align 4
  %16 = call i64 @round_up(i64 %14, i32 %15)
  store i64 %16, i64* %8, align 8
  %17 = load i64, i64* %8, align 8
  %18 = load i64, i64* @PAGE_SHIFT, align 8
  %19 = lshr i64 %17, %18
  %20 = call i32 @fls(i64 %19)
  %21 = add nsw i32 10, %20
  store i32 %21, i32* %9, align 4
  %22 = load i64, i64* %8, align 8
  %23 = load i64, i64* @PAGE_SHIFT, align 8
  %24 = lshr i64 %22, %23
  %25 = load i32, i32* %9, align 4
  %26 = sub nsw i32 %25, 11
  %27 = zext i32 %26 to i64
  %28 = shl i64 1, %27
  %29 = icmp ne i64 %24, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %4
  %31 = load i32, i32* %9, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %9, align 4
  br label %33

33:                                               ; preds = %30, %4
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* %10, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %10, align 4
  %37 = load %struct.panfrost_device*, %struct.panfrost_device** %5, align 8
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @AS_LOCKADDR_LO(i32 %38)
  %40 = load i32, i32* %10, align 4
  %41 = sext i32 %40 to i64
  %42 = and i64 %41, 4294967295
  %43 = trunc i64 %42 to i32
  %44 = call i32 @mmu_write(%struct.panfrost_device* %37, i32 %39, i32 %43)
  %45 = load %struct.panfrost_device*, %struct.panfrost_device** %5, align 8
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @AS_LOCKADDR_HI(i32 %46)
  %48 = load i32, i32* %10, align 4
  %49 = ashr i32 %48, 32
  %50 = sext i32 %49 to i64
  %51 = and i64 %50, 4294967295
  %52 = trunc i64 %51 to i32
  %53 = call i32 @mmu_write(%struct.panfrost_device* %45, i32 %47, i32 %52)
  %54 = load %struct.panfrost_device*, %struct.panfrost_device** %5, align 8
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* @AS_COMMAND_LOCK, align 4
  %57 = call i32 @write_cmd(%struct.panfrost_device* %54, i32 %55, i32 %56)
  ret void
}

declare dso_local i64 @round_up(i64, i32) #1

declare dso_local i32 @fls(i64) #1

declare dso_local i32 @mmu_write(%struct.panfrost_device*, i32, i32) #1

declare dso_local i32 @AS_LOCKADDR_LO(i32) #1

declare dso_local i32 @AS_LOCKADDR_HI(i32) #1

declare dso_local i32 @write_cmd(%struct.panfrost_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
