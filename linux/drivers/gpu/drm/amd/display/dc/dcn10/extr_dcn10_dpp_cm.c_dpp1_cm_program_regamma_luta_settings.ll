; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_dpp_cm.c_dpp1_cm_program_regamma_luta_settings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_dpp_cm.c_dpp1_cm_program_regamma_luta_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpp = type { i32 }
%struct.pwl_params = type { i32 }
%struct.dcn10_dpp = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.xfer_func_reg = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@CM_RGAM_RAMA_START_CNTL_B = common dso_local global i32 0, align 4
@CM_RGAM_RAMA_START_CNTL_G = common dso_local global i32 0, align 4
@CM_RGAM_RAMA_START_CNTL_R = common dso_local global i32 0, align 4
@CM_RGAM_RAMA_SLOPE_CNTL_B = common dso_local global i32 0, align 4
@CM_RGAM_RAMA_SLOPE_CNTL_G = common dso_local global i32 0, align 4
@CM_RGAM_RAMA_SLOPE_CNTL_R = common dso_local global i32 0, align 4
@CM_RGAM_RAMA_END_CNTL1_B = common dso_local global i32 0, align 4
@CM_RGAM_RAMA_END_CNTL2_B = common dso_local global i32 0, align 4
@CM_RGAM_RAMA_END_CNTL1_G = common dso_local global i32 0, align 4
@CM_RGAM_RAMA_END_CNTL2_G = common dso_local global i32 0, align 4
@CM_RGAM_RAMA_END_CNTL1_R = common dso_local global i32 0, align 4
@CM_RGAM_RAMA_END_CNTL2_R = common dso_local global i32 0, align 4
@CM_RGAM_RAMA_REGION_0_1 = common dso_local global i32 0, align 4
@CM_RGAM_RAMA_REGION_32_33 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dpp1_cm_program_regamma_luta_settings(%struct.dpp* %0, %struct.pwl_params* %1) #0 {
  %3 = alloca %struct.dpp*, align 8
  %4 = alloca %struct.pwl_params*, align 8
  %5 = alloca %struct.dcn10_dpp*, align 8
  %6 = alloca %struct.xfer_func_reg, align 8
  store %struct.dpp* %0, %struct.dpp** %3, align 8
  store %struct.pwl_params* %1, %struct.pwl_params** %4, align 8
  %7 = load %struct.dpp*, %struct.dpp** %3, align 8
  %8 = call %struct.dcn10_dpp* @TO_DCN10_DPP(%struct.dpp* %7)
  store %struct.dcn10_dpp* %8, %struct.dcn10_dpp** %5, align 8
  %9 = load %struct.dcn10_dpp*, %struct.dcn10_dpp** %5, align 8
  %10 = call i32 @dpp1_cm_get_reg_field(%struct.dcn10_dpp* %9, %struct.xfer_func_reg* %6)
  %11 = load i32, i32* @CM_RGAM_RAMA_START_CNTL_B, align 4
  %12 = call i8* @REG(i32 %11)
  %13 = getelementptr inbounds %struct.xfer_func_reg, %struct.xfer_func_reg* %6, i32 0, i32 13
  store i8* %12, i8** %13, align 8
  %14 = load i32, i32* @CM_RGAM_RAMA_START_CNTL_G, align 4
  %15 = call i8* @REG(i32 %14)
  %16 = getelementptr inbounds %struct.xfer_func_reg, %struct.xfer_func_reg* %6, i32 0, i32 12
  store i8* %15, i8** %16, align 8
  %17 = load i32, i32* @CM_RGAM_RAMA_START_CNTL_R, align 4
  %18 = call i8* @REG(i32 %17)
  %19 = getelementptr inbounds %struct.xfer_func_reg, %struct.xfer_func_reg* %6, i32 0, i32 11
  store i8* %18, i8** %19, align 8
  %20 = load i32, i32* @CM_RGAM_RAMA_SLOPE_CNTL_B, align 4
  %21 = call i8* @REG(i32 %20)
  %22 = getelementptr inbounds %struct.xfer_func_reg, %struct.xfer_func_reg* %6, i32 0, i32 10
  store i8* %21, i8** %22, align 8
  %23 = load i32, i32* @CM_RGAM_RAMA_SLOPE_CNTL_G, align 4
  %24 = call i8* @REG(i32 %23)
  %25 = getelementptr inbounds %struct.xfer_func_reg, %struct.xfer_func_reg* %6, i32 0, i32 9
  store i8* %24, i8** %25, align 8
  %26 = load i32, i32* @CM_RGAM_RAMA_SLOPE_CNTL_R, align 4
  %27 = call i8* @REG(i32 %26)
  %28 = getelementptr inbounds %struct.xfer_func_reg, %struct.xfer_func_reg* %6, i32 0, i32 8
  store i8* %27, i8** %28, align 8
  %29 = load i32, i32* @CM_RGAM_RAMA_END_CNTL1_B, align 4
  %30 = call i8* @REG(i32 %29)
  %31 = getelementptr inbounds %struct.xfer_func_reg, %struct.xfer_func_reg* %6, i32 0, i32 7
  store i8* %30, i8** %31, align 8
  %32 = load i32, i32* @CM_RGAM_RAMA_END_CNTL2_B, align 4
  %33 = call i8* @REG(i32 %32)
  %34 = getelementptr inbounds %struct.xfer_func_reg, %struct.xfer_func_reg* %6, i32 0, i32 6
  store i8* %33, i8** %34, align 8
  %35 = load i32, i32* @CM_RGAM_RAMA_END_CNTL1_G, align 4
  %36 = call i8* @REG(i32 %35)
  %37 = getelementptr inbounds %struct.xfer_func_reg, %struct.xfer_func_reg* %6, i32 0, i32 5
  store i8* %36, i8** %37, align 8
  %38 = load i32, i32* @CM_RGAM_RAMA_END_CNTL2_G, align 4
  %39 = call i8* @REG(i32 %38)
  %40 = getelementptr inbounds %struct.xfer_func_reg, %struct.xfer_func_reg* %6, i32 0, i32 4
  store i8* %39, i8** %40, align 8
  %41 = load i32, i32* @CM_RGAM_RAMA_END_CNTL1_R, align 4
  %42 = call i8* @REG(i32 %41)
  %43 = getelementptr inbounds %struct.xfer_func_reg, %struct.xfer_func_reg* %6, i32 0, i32 3
  store i8* %42, i8** %43, align 8
  %44 = load i32, i32* @CM_RGAM_RAMA_END_CNTL2_R, align 4
  %45 = call i8* @REG(i32 %44)
  %46 = getelementptr inbounds %struct.xfer_func_reg, %struct.xfer_func_reg* %6, i32 0, i32 2
  store i8* %45, i8** %46, align 8
  %47 = load i32, i32* @CM_RGAM_RAMA_REGION_0_1, align 4
  %48 = call i8* @REG(i32 %47)
  %49 = getelementptr inbounds %struct.xfer_func_reg, %struct.xfer_func_reg* %6, i32 0, i32 1
  store i8* %48, i8** %49, align 8
  %50 = load i32, i32* @CM_RGAM_RAMA_REGION_32_33, align 4
  %51 = call i8* @REG(i32 %50)
  %52 = getelementptr inbounds %struct.xfer_func_reg, %struct.xfer_func_reg* %6, i32 0, i32 0
  store i8* %51, i8** %52, align 8
  %53 = load %struct.dcn10_dpp*, %struct.dcn10_dpp** %5, align 8
  %54 = getelementptr inbounds %struct.dcn10_dpp, %struct.dcn10_dpp* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.pwl_params*, %struct.pwl_params** %4, align 8
  %58 = call i32 @cm_helper_program_xfer_func(i32 %56, %struct.pwl_params* %57, %struct.xfer_func_reg* %6)
  ret void
}

declare dso_local %struct.dcn10_dpp* @TO_DCN10_DPP(%struct.dpp*) #1

declare dso_local i32 @dpp1_cm_get_reg_field(%struct.dcn10_dpp*, %struct.xfer_func_reg*) #1

declare dso_local i8* @REG(i32) #1

declare dso_local i32 @cm_helper_program_xfer_func(i32, %struct.pwl_params*, %struct.xfer_func_reg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
