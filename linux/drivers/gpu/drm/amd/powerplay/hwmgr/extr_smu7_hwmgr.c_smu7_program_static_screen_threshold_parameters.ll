; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu7_hwmgr.c_smu7_program_static_screen_threshold_parameters.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu7_hwmgr.c_smu7_program_static_screen_threshold_parameters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i32, i64 }
%struct.smu7_hwmgr = type { i32, i32 }

@CGS_IND_REG__SMC = common dso_local global i32 0, align 4
@CG_STATIC_SCREEN_PARAMETER = common dso_local global i32 0, align 4
@STATIC_SCREEN_THRESHOLD_UNIT = common dso_local global i32 0, align 4
@STATIC_SCREEN_THRESHOLD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*)* @smu7_program_static_screen_threshold_parameters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smu7_program_static_screen_threshold_parameters(%struct.pp_hwmgr* %0) #0 {
  %2 = alloca %struct.pp_hwmgr*, align 8
  %3 = alloca %struct.smu7_hwmgr*, align 8
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %2, align 8
  %4 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %5 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %4, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = inttoptr i64 %6 to %struct.smu7_hwmgr*
  store %struct.smu7_hwmgr* %7, %struct.smu7_hwmgr** %3, align 8
  %8 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %9 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @CGS_IND_REG__SMC, align 4
  %12 = load i32, i32* @CG_STATIC_SCREEN_PARAMETER, align 4
  %13 = load i32, i32* @STATIC_SCREEN_THRESHOLD_UNIT, align 4
  %14 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %3, align 8
  %15 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @PHM_WRITE_INDIRECT_FIELD(i32 %10, i32 %11, i32 %12, i32 %13, i32 %16)
  %18 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %19 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @CGS_IND_REG__SMC, align 4
  %22 = load i32, i32* @CG_STATIC_SCREEN_PARAMETER, align 4
  %23 = load i32, i32* @STATIC_SCREEN_THRESHOLD, align 4
  %24 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %3, align 8
  %25 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @PHM_WRITE_INDIRECT_FIELD(i32 %20, i32 %21, i32 %22, i32 %23, i32 %26)
  ret i32 0
}

declare dso_local i32 @PHM_WRITE_INDIRECT_FIELD(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
