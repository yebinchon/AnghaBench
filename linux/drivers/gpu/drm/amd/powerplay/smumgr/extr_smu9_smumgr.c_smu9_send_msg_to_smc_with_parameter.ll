; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/smumgr/extr_smu9_smumgr.c_smu9_send_msg_to_smc_with_parameter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/smumgr/extr_smu9_smumgr.c_smu9_send_msg_to_smc_with_parameter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { %struct.amdgpu_device* }
%struct.amdgpu_device = type { i32 }

@MP1 = common dso_local global i32 0, align 4
@mmMP1_SMN_C2PMSG_90 = common dso_local global i32 0, align 4
@mmMP1_SMN_C2PMSG_82 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [63 x i8] c"Failed message: 0x%x, input parameter: 0x%x, error code: 0x%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smu9_send_msg_to_smc_with_parameter(%struct.pp_hwmgr* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.pp_hwmgr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.amdgpu_device*, align 8
  %8 = alloca i32, align 4
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %10 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %9, i32 0, i32 0
  %11 = load %struct.amdgpu_device*, %struct.amdgpu_device** %10, align 8
  store %struct.amdgpu_device* %11, %struct.amdgpu_device** %7, align 8
  %12 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %13 = call i32 @smu9_wait_for_response(%struct.pp_hwmgr* %12)
  %14 = load i32, i32* @MP1, align 4
  %15 = load i32, i32* @mmMP1_SMN_C2PMSG_90, align 4
  %16 = call i32 @WREG32_SOC15(i32 %14, i32 0, i32 %15, i32 0)
  %17 = load i32, i32* @MP1, align 4
  %18 = load i32, i32* @mmMP1_SMN_C2PMSG_82, align 4
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @WREG32_SOC15(i32 %17, i32 0, i32 %18, i32 %19)
  %21 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @smu9_send_msg_to_smc_without_waiting(%struct.pp_hwmgr* %21, i32 %22)
  %24 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %25 = call i32 @smu9_wait_for_response(%struct.pp_hwmgr* %24)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp ne i32 %26, 1
  br i1 %27, label %28, label %33

28:                                               ; preds = %3
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @pr_err(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %30, i32 %31)
  br label %33

33:                                               ; preds = %28, %3
  ret i32 0
}

declare dso_local i32 @smu9_wait_for_response(%struct.pp_hwmgr*) #1

declare dso_local i32 @WREG32_SOC15(i32, i32, i32, i32) #1

declare dso_local i32 @smu9_send_msg_to_smc_without_waiting(%struct.pp_hwmgr*, i32) #1

declare dso_local i32 @pr_err(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
