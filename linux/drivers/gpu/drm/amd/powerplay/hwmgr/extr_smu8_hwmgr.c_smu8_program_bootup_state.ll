; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu8_hwmgr.c_smu8_program_bootup_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu8_hwmgr.c_smu8_program_bootup_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { %struct.smu8_hwmgr* }
%struct.smu8_hwmgr = type { %struct.TYPE_3__, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }

@PPSMC_MSG_SetSclkSoftMin = common dso_local global i32 0, align 4
@PPSMC_MSG_SetSclkSoftMax = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*)* @smu8_program_bootup_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smu8_program_bootup_state(%struct.pp_hwmgr* %0) #0 {
  %2 = alloca %struct.pp_hwmgr*, align 8
  %3 = alloca %struct.smu8_hwmgr*, align 8
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %2, align 8
  %4 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %5 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %4, i32 0, i32 0
  %6 = load %struct.smu8_hwmgr*, %struct.smu8_hwmgr** %5, align 8
  store %struct.smu8_hwmgr* %6, %struct.smu8_hwmgr** %3, align 8
  %7 = load %struct.smu8_hwmgr*, %struct.smu8_hwmgr** %3, align 8
  %8 = getelementptr inbounds %struct.smu8_hwmgr, %struct.smu8_hwmgr* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.smu8_hwmgr*, %struct.smu8_hwmgr** %3, align 8
  %12 = getelementptr inbounds %struct.smu8_hwmgr, %struct.smu8_hwmgr* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 1
  store i32 %10, i32* %13, align 4
  %14 = load %struct.smu8_hwmgr*, %struct.smu8_hwmgr** %3, align 8
  %15 = getelementptr inbounds %struct.smu8_hwmgr, %struct.smu8_hwmgr* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.smu8_hwmgr*, %struct.smu8_hwmgr** %3, align 8
  %19 = getelementptr inbounds %struct.smu8_hwmgr, %struct.smu8_hwmgr* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  store i32 %17, i32* %20, align 4
  %21 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %22 = load i32, i32* @PPSMC_MSG_SetSclkSoftMin, align 4
  %23 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %24 = load %struct.smu8_hwmgr*, %struct.smu8_hwmgr** %3, align 8
  %25 = getelementptr inbounds %struct.smu8_hwmgr, %struct.smu8_hwmgr* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @PPSMC_MSG_SetSclkSoftMin, align 4
  %29 = call i32 @smu8_get_sclk_level(%struct.pp_hwmgr* %23, i32 %27, i32 %28)
  %30 = call i32 @smum_send_msg_to_smc_with_parameter(%struct.pp_hwmgr* %21, i32 %22, i32 %29)
  %31 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %32 = load i32, i32* @PPSMC_MSG_SetSclkSoftMax, align 4
  %33 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %34 = load %struct.smu8_hwmgr*, %struct.smu8_hwmgr** %3, align 8
  %35 = getelementptr inbounds %struct.smu8_hwmgr, %struct.smu8_hwmgr* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @PPSMC_MSG_SetSclkSoftMax, align 4
  %39 = call i32 @smu8_get_sclk_level(%struct.pp_hwmgr* %33, i32 %37, i32 %38)
  %40 = call i32 @smum_send_msg_to_smc_with_parameter(%struct.pp_hwmgr* %31, i32 %32, i32 %39)
  ret i32 0
}

declare dso_local i32 @smum_send_msg_to_smc_with_parameter(%struct.pp_hwmgr*, i32, i32) #1

declare dso_local i32 @smu8_get_sclk_level(%struct.pp_hwmgr*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
