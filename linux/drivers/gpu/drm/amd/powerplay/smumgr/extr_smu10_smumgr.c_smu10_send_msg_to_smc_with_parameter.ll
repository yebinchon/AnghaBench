; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/smumgr/extr_smu10_smumgr.c_smu10_send_msg_to_smc_with_parameter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/smumgr/extr_smu10_smumgr.c_smu10_send_msg_to_smc_with_parameter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { %struct.amdgpu_device* }
%struct.amdgpu_device = type { i32 }

@MP1 = common dso_local global i32 0, align 4
@mmMP1_SMN_C2PMSG_90 = common dso_local global i32 0, align 4
@mmMP1_SMN_C2PMSG_82 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Failed to send Message %x.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*, i32, i32)* @smu10_send_msg_to_smc_with_parameter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smu10_send_msg_to_smc_with_parameter(%struct.pp_hwmgr* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.pp_hwmgr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.amdgpu_device*, align 8
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %9 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %8, i32 0, i32 0
  %10 = load %struct.amdgpu_device*, %struct.amdgpu_device** %9, align 8
  store %struct.amdgpu_device* %10, %struct.amdgpu_device** %7, align 8
  %11 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %12 = call i64 @smu10_wait_for_response(%struct.pp_hwmgr* %11)
  %13 = load i32, i32* @MP1, align 4
  %14 = load i32, i32* @mmMP1_SMN_C2PMSG_90, align 4
  %15 = call i32 @WREG32_SOC15(i32 %13, i32 0, i32 %14, i32 0)
  %16 = load i32, i32* @MP1, align 4
  %17 = load i32, i32* @mmMP1_SMN_C2PMSG_82, align 4
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @WREG32_SOC15(i32 %16, i32 0, i32 %17, i32 %18)
  %20 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @smu10_send_msg_to_smc_without_waiting(%struct.pp_hwmgr* %20, i32 %21)
  %23 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %24 = call i64 @smu10_wait_for_response(%struct.pp_hwmgr* %23)
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %3
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @printk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %27)
  br label %29

29:                                               ; preds = %26, %3
  ret i32 0
}

declare dso_local i64 @smu10_wait_for_response(%struct.pp_hwmgr*) #1

declare dso_local i32 @WREG32_SOC15(i32, i32, i32, i32) #1

declare dso_local i32 @smu10_send_msg_to_smc_without_waiting(%struct.pp_hwmgr*, i32) #1

declare dso_local i32 @printk(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
