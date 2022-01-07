; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu7_hwmgr.c_smu7_enable_display_gap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu7_hwmgr.c_smu7_enable_display_gap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i32 }

@CGS_IND_REG__SMC = common dso_local global i32 0, align 4
@ixCG_DISPLAY_GAP_CNTL = common dso_local global i32 0, align 4
@CG_DISPLAY_GAP_CNTL = common dso_local global i32 0, align 4
@DISP_GAP = common dso_local global i32 0, align 4
@DISPLAY_GAP_IGNORE = common dso_local global i32 0, align 4
@DISP_GAP_MCHG = common dso_local global i32 0, align 4
@DISPLAY_GAP_VBLANK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*)* @smu7_enable_display_gap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smu7_enable_display_gap(%struct.pp_hwmgr* %0) #0 {
  %2 = alloca %struct.pp_hwmgr*, align 8
  %3 = alloca i32, align 4
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %2, align 8
  %4 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %5 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @CGS_IND_REG__SMC, align 4
  %8 = load i32, i32* @ixCG_DISPLAY_GAP_CNTL, align 4
  %9 = call i32 @cgs_read_ind_register(i32 %6, i32 %7, i32 %8)
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @CG_DISPLAY_GAP_CNTL, align 4
  %12 = load i32, i32* @DISP_GAP, align 4
  %13 = load i32, i32* @DISPLAY_GAP_IGNORE, align 4
  %14 = call i32 @PHM_SET_FIELD(i32 %10, i32 %11, i32 %12, i32 %13)
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @CG_DISPLAY_GAP_CNTL, align 4
  %17 = load i32, i32* @DISP_GAP_MCHG, align 4
  %18 = load i32, i32* @DISPLAY_GAP_VBLANK, align 4
  %19 = call i32 @PHM_SET_FIELD(i32 %15, i32 %16, i32 %17, i32 %18)
  store i32 %19, i32* %3, align 4
  %20 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %21 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @CGS_IND_REG__SMC, align 4
  %24 = load i32, i32* @ixCG_DISPLAY_GAP_CNTL, align 4
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @cgs_write_ind_register(i32 %22, i32 %23, i32 %24, i32 %25)
  ret i32 0
}

declare dso_local i32 @cgs_read_ind_register(i32, i32, i32) #1

declare dso_local i32 @PHM_SET_FIELD(i32, i32, i32, i32) #1

declare dso_local i32 @cgs_write_ind_register(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
