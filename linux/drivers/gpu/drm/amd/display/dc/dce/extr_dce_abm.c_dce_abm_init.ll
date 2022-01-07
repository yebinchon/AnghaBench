; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_abm.c_dce_abm_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_abm.c_dce_abm_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.abm = type { i32 }
%struct.dce_abm = type { i32 }

@DC_ABM1_HG_SAMPLE_RATE = common dso_local global i32 0, align 4
@DC_ABM1_LS_SAMPLE_RATE = common dso_local global i32 0, align 4
@BL1_PWM_BL_UPDATE_SAMPLE_RATE = common dso_local global i32 0, align 4
@DC_ABM1_HG_MISC_CTRL = common dso_local global i32 0, align 4
@ABM1_HG_NUM_OF_BINS_SEL = common dso_local global i32 0, align 4
@ABM1_HG_VMAX_SEL = common dso_local global i32 0, align 4
@ABM1_HG_BIN_BITWIDTH_SIZE_SEL = common dso_local global i32 0, align 4
@DC_ABM1_IPCSC_COEFF_SEL = common dso_local global i32 0, align 4
@ABM1_IPCSC_COEFF_SEL_R = common dso_local global i32 0, align 4
@ABM1_IPCSC_COEFF_SEL_G = common dso_local global i32 0, align 4
@ABM1_IPCSC_COEFF_SEL_B = common dso_local global i32 0, align 4
@BL1_PWM_CURRENT_ABM_LEVEL = common dso_local global i32 0, align 4
@BL1_PWM_TARGET_ABM_LEVEL = common dso_local global i32 0, align 4
@BL1_PWM_USER_LEVEL = common dso_local global i32 0, align 4
@DC_ABM1_LS_MIN_MAX_PIXEL_VALUE_THRES = common dso_local global i32 0, align 4
@ABM1_LS_MIN_PIXEL_VALUE_THRES = common dso_local global i32 0, align 4
@ABM1_LS_MAX_PIXEL_VALUE_THRES = common dso_local global i32 0, align 4
@DC_ABM1_HGLS_REG_READ_PROGRESS = common dso_local global i32 0, align 4
@ABM1_HG_REG_READ_MISSED_FRAME_CLEAR = common dso_local global i32 0, align 4
@ABM1_LS_REG_READ_MISSED_FRAME_CLEAR = common dso_local global i32 0, align 4
@ABM1_BL_REG_READ_MISSED_FRAME_CLEAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.abm*)* @dce_abm_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dce_abm_init(%struct.abm* %0) #0 {
  %2 = alloca %struct.abm*, align 8
  %3 = alloca %struct.dce_abm*, align 8
  %4 = alloca i32, align 4
  store %struct.abm* %0, %struct.abm** %2, align 8
  %5 = load %struct.abm*, %struct.abm** %2, align 8
  %6 = call %struct.dce_abm* @TO_DCE_ABM(%struct.abm* %5)
  store %struct.dce_abm* %6, %struct.dce_abm** %3, align 8
  %7 = load %struct.dce_abm*, %struct.dce_abm** %3, align 8
  %8 = call i32 @calculate_16_bit_backlight_from_pwm(%struct.dce_abm* %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* @DC_ABM1_HG_SAMPLE_RATE, align 4
  %10 = call i32 @REG_WRITE(i32 %9, i32 259)
  %11 = load i32, i32* @DC_ABM1_HG_SAMPLE_RATE, align 4
  %12 = call i32 @REG_WRITE(i32 %11, i32 257)
  %13 = load i32, i32* @DC_ABM1_LS_SAMPLE_RATE, align 4
  %14 = call i32 @REG_WRITE(i32 %13, i32 259)
  %15 = load i32, i32* @DC_ABM1_LS_SAMPLE_RATE, align 4
  %16 = call i32 @REG_WRITE(i32 %15, i32 257)
  %17 = load i32, i32* @BL1_PWM_BL_UPDATE_SAMPLE_RATE, align 4
  %18 = call i32 @REG_WRITE(i32 %17, i32 257)
  %19 = load i32, i32* @DC_ABM1_HG_MISC_CTRL, align 4
  %20 = load i32, i32* @ABM1_HG_NUM_OF_BINS_SEL, align 4
  %21 = load i32, i32* @ABM1_HG_VMAX_SEL, align 4
  %22 = load i32, i32* @ABM1_HG_BIN_BITWIDTH_SIZE_SEL, align 4
  %23 = call i32 @REG_SET_3(i32 %19, i32 0, i32 %20, i32 0, i32 %21, i32 1, i32 %22, i32 0)
  %24 = load i32, i32* @DC_ABM1_IPCSC_COEFF_SEL, align 4
  %25 = load i32, i32* @ABM1_IPCSC_COEFF_SEL_R, align 4
  %26 = load i32, i32* @ABM1_IPCSC_COEFF_SEL_G, align 4
  %27 = load i32, i32* @ABM1_IPCSC_COEFF_SEL_B, align 4
  %28 = call i32 @REG_SET_3(i32 %24, i32 0, i32 %25, i32 2, i32 %26, i32 4, i32 %27, i32 2)
  %29 = load i32, i32* @BL1_PWM_CURRENT_ABM_LEVEL, align 4
  %30 = load i32, i32* @BL1_PWM_CURRENT_ABM_LEVEL, align 4
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @REG_UPDATE(i32 %29, i32 %30, i32 %31)
  %33 = load i32, i32* @BL1_PWM_TARGET_ABM_LEVEL, align 4
  %34 = load i32, i32* @BL1_PWM_TARGET_ABM_LEVEL, align 4
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @REG_UPDATE(i32 %33, i32 %34, i32 %35)
  %37 = load i32, i32* @BL1_PWM_USER_LEVEL, align 4
  %38 = load i32, i32* @BL1_PWM_USER_LEVEL, align 4
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @REG_UPDATE(i32 %37, i32 %38, i32 %39)
  %41 = load i32, i32* @DC_ABM1_LS_MIN_MAX_PIXEL_VALUE_THRES, align 4
  %42 = load i32, i32* @ABM1_LS_MIN_PIXEL_VALUE_THRES, align 4
  %43 = load i32, i32* @ABM1_LS_MAX_PIXEL_VALUE_THRES, align 4
  %44 = call i32 @REG_UPDATE_2(i32 %41, i32 %42, i32 0, i32 %43, i32 1000)
  %45 = load i32, i32* @DC_ABM1_HGLS_REG_READ_PROGRESS, align 4
  %46 = load i32, i32* @ABM1_HG_REG_READ_MISSED_FRAME_CLEAR, align 4
  %47 = load i32, i32* @ABM1_LS_REG_READ_MISSED_FRAME_CLEAR, align 4
  %48 = load i32, i32* @ABM1_BL_REG_READ_MISSED_FRAME_CLEAR, align 4
  %49 = call i32 @REG_SET_3(i32 %45, i32 0, i32 %46, i32 1, i32 %47, i32 1, i32 %48, i32 1)
  ret void
}

declare dso_local %struct.dce_abm* @TO_DCE_ABM(%struct.abm*) #1

declare dso_local i32 @calculate_16_bit_backlight_from_pwm(%struct.dce_abm*) #1

declare dso_local i32 @REG_WRITE(i32, i32) #1

declare dso_local i32 @REG_SET_3(i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @REG_UPDATE(i32, i32, i32) #1

declare dso_local i32 @REG_UPDATE_2(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
