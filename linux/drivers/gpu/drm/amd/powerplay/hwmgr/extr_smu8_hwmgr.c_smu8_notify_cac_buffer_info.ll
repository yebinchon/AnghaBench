; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu8_hwmgr.c_smu8_notify_cac_buffer_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu8_hwmgr.c_smu8_notify_cac_buffer_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i32 }

@PPSMC_MSG_DramAddrHiVirtual = common dso_local global i32 0, align 4
@PPSMC_MSG_DramAddrLoVirtual = common dso_local global i32 0, align 4
@PPSMC_MSG_DramAddrHiPhysical = common dso_local global i32 0, align 4
@PPSMC_MSG_DramAddrLoPhysical = common dso_local global i32 0, align 4
@PPSMC_MSG_DramBufferSize = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*, i32, i32, i32, i32, i32)* @smu8_notify_cac_buffer_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smu8_notify_cac_buffer_info(%struct.pp_hwmgr* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.pp_hwmgr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %13 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %7, align 8
  %14 = load i32, i32* @PPSMC_MSG_DramAddrHiVirtual, align 4
  %15 = load i32, i32* %11, align 4
  %16 = call i32 @smum_send_msg_to_smc_with_parameter(%struct.pp_hwmgr* %13, i32 %14, i32 %15)
  %17 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %7, align 8
  %18 = load i32, i32* @PPSMC_MSG_DramAddrLoVirtual, align 4
  %19 = load i32, i32* %10, align 4
  %20 = call i32 @smum_send_msg_to_smc_with_parameter(%struct.pp_hwmgr* %17, i32 %18, i32 %19)
  %21 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %7, align 8
  %22 = load i32, i32* @PPSMC_MSG_DramAddrHiPhysical, align 4
  %23 = load i32, i32* %9, align 4
  %24 = call i32 @smum_send_msg_to_smc_with_parameter(%struct.pp_hwmgr* %21, i32 %22, i32 %23)
  %25 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %7, align 8
  %26 = load i32, i32* @PPSMC_MSG_DramAddrLoPhysical, align 4
  %27 = load i32, i32* %8, align 4
  %28 = call i32 @smum_send_msg_to_smc_with_parameter(%struct.pp_hwmgr* %25, i32 %26, i32 %27)
  %29 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %7, align 8
  %30 = load i32, i32* @PPSMC_MSG_DramBufferSize, align 4
  %31 = load i32, i32* %12, align 4
  %32 = call i32 @smum_send_msg_to_smc_with_parameter(%struct.pp_hwmgr* %29, i32 %30, i32 %31)
  ret i32 0
}

declare dso_local i32 @smum_send_msg_to_smc_with_parameter(%struct.pp_hwmgr*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
