; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu8_hwmgr.c_smu8_set_cpu_power_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu8_hwmgr.c_smu8_set_cpu_power_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { %struct.smu8_hwmgr* }
%struct.smu8_hwmgr = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i64, i64 }

@PWRMGT_SEPARATION_TIME_MASK = common dso_local global i32 0, align 4
@PWRMGT_SEPARATION_TIME_SHIFT = common dso_local global i32 0, align 4
@PWRMGT_DISABLE_CPU_CSTATES_SHIFT = common dso_local global i32 0, align 4
@PWRMGT_DISABLE_CPU_PSTATES_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"SetDisplaySizePowerParams data: 0x%X\0A\00", align 1
@PPSMC_MSG_SetDisplaySizePowerParams = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*)* @smu8_set_cpu_power_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smu8_set_cpu_power_state(%struct.pp_hwmgr* %0) #0 {
  %2 = alloca %struct.pp_hwmgr*, align 8
  %3 = alloca %struct.smu8_hwmgr*, align 8
  %4 = alloca i32, align 4
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %2, align 8
  %5 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %6 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %5, i32 0, i32 0
  %7 = load %struct.smu8_hwmgr*, %struct.smu8_hwmgr** %6, align 8
  store %struct.smu8_hwmgr* %7, %struct.smu8_hwmgr** %3, align 8
  store i32 0, i32* %4, align 4
  %8 = load %struct.smu8_hwmgr*, %struct.smu8_hwmgr** %3, align 8
  %9 = getelementptr inbounds %struct.smu8_hwmgr, %struct.smu8_hwmgr* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %58

13:                                               ; preds = %1
  %14 = load %struct.smu8_hwmgr*, %struct.smu8_hwmgr** %3, align 8
  %15 = getelementptr inbounds %struct.smu8_hwmgr, %struct.smu8_hwmgr* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store i32 0, i32* %16, align 8
  %17 = load %struct.smu8_hwmgr*, %struct.smu8_hwmgr** %3, align 8
  %18 = getelementptr inbounds %struct.smu8_hwmgr, %struct.smu8_hwmgr* %17, i32 0, i32 0
  %19 = call i32 @smu8_hw_print_display_cfg(%struct.TYPE_2__* %18)
  %20 = load %struct.smu8_hwmgr*, %struct.smu8_hwmgr** %3, align 8
  %21 = getelementptr inbounds %struct.smu8_hwmgr, %struct.smu8_hwmgr* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @PWRMGT_SEPARATION_TIME_MASK, align 4
  %25 = and i32 %23, %24
  %26 = load i32, i32* @PWRMGT_SEPARATION_TIME_SHIFT, align 4
  %27 = shl i32 %25, %26
  %28 = load i32, i32* %4, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %4, align 4
  %30 = load %struct.smu8_hwmgr*, %struct.smu8_hwmgr** %3, align 8
  %31 = getelementptr inbounds %struct.smu8_hwmgr, %struct.smu8_hwmgr* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 3
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  %35 = zext i1 %34 to i64
  %36 = select i1 %34, i32 1, i32 0
  %37 = load i32, i32* @PWRMGT_DISABLE_CPU_CSTATES_SHIFT, align 4
  %38 = shl i32 %36, %37
  %39 = load i32, i32* %4, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %4, align 4
  %41 = load %struct.smu8_hwmgr*, %struct.smu8_hwmgr** %3, align 8
  %42 = getelementptr inbounds %struct.smu8_hwmgr, %struct.smu8_hwmgr* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  %46 = zext i1 %45 to i64
  %47 = select i1 %45, i32 1, i32 0
  %48 = load i32, i32* @PWRMGT_DISABLE_CPU_PSTATES_SHIFT, align 4
  %49 = shl i32 %47, %48
  %50 = load i32, i32* %4, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %4, align 4
  %52 = load i32, i32* %4, align 4
  %53 = call i32 @PP_DBG_LOG(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %52)
  %54 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %55 = load i32, i32* @PPSMC_MSG_SetDisplaySizePowerParams, align 4
  %56 = load i32, i32* %4, align 4
  %57 = call i32 @smum_send_msg_to_smc_with_parameter(%struct.pp_hwmgr* %54, i32 %55, i32 %56)
  br label %58

58:                                               ; preds = %13, %1
  ret i32 0
}

declare dso_local i32 @smu8_hw_print_display_cfg(%struct.TYPE_2__*) #1

declare dso_local i32 @PP_DBG_LOG(i8*, i32) #1

declare dso_local i32 @smum_send_msg_to_smc_with_parameter(%struct.pp_hwmgr*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
