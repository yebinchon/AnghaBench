; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/lima/extr_lima_mmu.c_lima_mmu_switch_vm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/lima/extr_lima_mmu.c_lima_mmu_switch_vm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lima_ip = type { %struct.lima_device* }
%struct.lima_device = type { i32 }
%struct.lima_vm = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@LIMA_MMU_COMMAND_ENABLE_STALL = common dso_local global i32 0, align 4
@LIMA_MMU_STATUS = common dso_local global i32 0, align 4
@LIMA_MMU_STATUS_STALL_ACTIVE = common dso_local global i32 0, align 4
@LIMA_MMU_DTE_ADDR = common dso_local global i32 0, align 4
@LIMA_MMU_COMMAND = common dso_local global i32 0, align 4
@LIMA_MMU_COMMAND_ZAP_CACHE = common dso_local global i32 0, align 4
@LIMA_MMU_COMMAND_DISABLE_STALL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lima_mmu_switch_vm(%struct.lima_ip* %0, %struct.lima_vm* %1) #0 {
  %3 = alloca %struct.lima_ip*, align 8
  %4 = alloca %struct.lima_vm*, align 8
  %5 = alloca %struct.lima_device*, align 8
  %6 = alloca i32, align 4
  store %struct.lima_ip* %0, %struct.lima_ip** %3, align 8
  store %struct.lima_vm* %1, %struct.lima_vm** %4, align 8
  %7 = load %struct.lima_ip*, %struct.lima_ip** %3, align 8
  %8 = getelementptr inbounds %struct.lima_ip, %struct.lima_ip* %7, i32 0, i32 0
  %9 = load %struct.lima_device*, %struct.lima_device** %8, align 8
  store %struct.lima_device* %9, %struct.lima_device** %5, align 8
  %10 = load i32, i32* @LIMA_MMU_COMMAND_ENABLE_STALL, align 4
  %11 = load i32, i32* @LIMA_MMU_STATUS, align 4
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @LIMA_MMU_STATUS_STALL_ACTIVE, align 4
  %15 = and i32 %13, %14
  %16 = call i32 @lima_mmu_send_command(i32 %10, i32 %11, i32 %12, i32 %15)
  %17 = load %struct.lima_vm*, %struct.lima_vm** %4, align 8
  %18 = icmp ne %struct.lima_vm* %17, null
  br i1 %18, label %19, label %26

19:                                               ; preds = %2
  %20 = load i32, i32* @LIMA_MMU_DTE_ADDR, align 4
  %21 = load %struct.lima_vm*, %struct.lima_vm** %4, align 8
  %22 = getelementptr inbounds %struct.lima_vm, %struct.lima_vm* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @mmu_write(i32 %20, i32 %24)
  br label %26

26:                                               ; preds = %19, %2
  %27 = load i32, i32* @LIMA_MMU_COMMAND, align 4
  %28 = load i32, i32* @LIMA_MMU_COMMAND_ZAP_CACHE, align 4
  %29 = call i32 @mmu_write(i32 %27, i32 %28)
  %30 = load i32, i32* @LIMA_MMU_COMMAND_DISABLE_STALL, align 4
  %31 = load i32, i32* @LIMA_MMU_STATUS, align 4
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @LIMA_MMU_STATUS_STALL_ACTIVE, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  %37 = xor i1 %36, true
  %38 = zext i1 %37 to i32
  %39 = call i32 @lima_mmu_send_command(i32 %30, i32 %31, i32 %32, i32 %38)
  ret void
}

declare dso_local i32 @lima_mmu_send_command(i32, i32, i32, i32) #1

declare dso_local i32 @mmu_write(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
