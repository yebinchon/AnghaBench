; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_dpp.c_dpp_read_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_dpp.c_dpp_read_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpp = type { i32 }
%struct.dcn_dpp_state = type { i8*, i8*, i8*, i8*, i8*, i8*, i64, i64, i64, i64, i64, i64 }
%struct.dcn10_dpp = type { i32 }

@DPP_CONTROL = common dso_local global i32 0, align 4
@DPP_CLOCK_ENABLE = common dso_local global i32 0, align 4
@CM_IGAM_CONTROL = common dso_local global i32 0, align 4
@CM_IGAM_LUT_MODE = common dso_local global i32 0, align 4
@CM_IGAM_INPUT_FORMAT = common dso_local global i32 0, align 4
@CM_DGAM_CONTROL = common dso_local global i32 0, align 4
@CM_DGAM_LUT_MODE = common dso_local global i32 0, align 4
@CM_RGAM_CONTROL = common dso_local global i32 0, align 4
@CM_RGAM_LUT_MODE = common dso_local global i32 0, align 4
@CM_GAMUT_REMAP_CONTROL = common dso_local global i32 0, align 4
@CM_GAMUT_REMAP_MODE = common dso_local global i32 0, align 4
@CM_GAMUT_REMAP_C11_C12 = common dso_local global i32 0, align 4
@CM_GAMUT_REMAP_C13_C14 = common dso_local global i32 0, align 4
@CM_GAMUT_REMAP_C21_C22 = common dso_local global i32 0, align 4
@CM_GAMUT_REMAP_C23_C24 = common dso_local global i32 0, align 4
@CM_GAMUT_REMAP_C31_C32 = common dso_local global i32 0, align 4
@CM_GAMUT_REMAP_C33_C34 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dpp_read_state(%struct.dpp* %0, %struct.dcn_dpp_state* %1) #0 {
  %3 = alloca %struct.dpp*, align 8
  %4 = alloca %struct.dcn_dpp_state*, align 8
  %5 = alloca %struct.dcn10_dpp*, align 8
  store %struct.dpp* %0, %struct.dpp** %3, align 8
  store %struct.dcn_dpp_state* %1, %struct.dcn_dpp_state** %4, align 8
  %6 = load %struct.dpp*, %struct.dpp** %3, align 8
  %7 = call %struct.dcn10_dpp* @TO_DCN10_DPP(%struct.dpp* %6)
  store %struct.dcn10_dpp* %7, %struct.dcn10_dpp** %5, align 8
  %8 = load i32, i32* @DPP_CONTROL, align 4
  %9 = load i32, i32* @DPP_CLOCK_ENABLE, align 4
  %10 = load %struct.dcn_dpp_state*, %struct.dcn_dpp_state** %4, align 8
  %11 = getelementptr inbounds %struct.dcn_dpp_state, %struct.dcn_dpp_state* %10, i32 0, i32 11
  %12 = call i32 @REG_GET(i32 %8, i32 %9, i64* %11)
  %13 = load i32, i32* @CM_IGAM_CONTROL, align 4
  %14 = load i32, i32* @CM_IGAM_LUT_MODE, align 4
  %15 = load %struct.dcn_dpp_state*, %struct.dcn_dpp_state** %4, align 8
  %16 = getelementptr inbounds %struct.dcn_dpp_state, %struct.dcn_dpp_state* %15, i32 0, i32 10
  %17 = call i32 @REG_GET(i32 %13, i32 %14, i64* %16)
  %18 = load i32, i32* @CM_IGAM_CONTROL, align 4
  %19 = load i32, i32* @CM_IGAM_INPUT_FORMAT, align 4
  %20 = load %struct.dcn_dpp_state*, %struct.dcn_dpp_state** %4, align 8
  %21 = getelementptr inbounds %struct.dcn_dpp_state, %struct.dcn_dpp_state* %20, i32 0, i32 9
  %22 = call i32 @REG_GET(i32 %18, i32 %19, i64* %21)
  %23 = load i32, i32* @CM_DGAM_CONTROL, align 4
  %24 = load i32, i32* @CM_DGAM_LUT_MODE, align 4
  %25 = load %struct.dcn_dpp_state*, %struct.dcn_dpp_state** %4, align 8
  %26 = getelementptr inbounds %struct.dcn_dpp_state, %struct.dcn_dpp_state* %25, i32 0, i32 8
  %27 = call i32 @REG_GET(i32 %23, i32 %24, i64* %26)
  %28 = load i32, i32* @CM_RGAM_CONTROL, align 4
  %29 = load i32, i32* @CM_RGAM_LUT_MODE, align 4
  %30 = load %struct.dcn_dpp_state*, %struct.dcn_dpp_state** %4, align 8
  %31 = getelementptr inbounds %struct.dcn_dpp_state, %struct.dcn_dpp_state* %30, i32 0, i32 7
  %32 = call i32 @REG_GET(i32 %28, i32 %29, i64* %31)
  %33 = load i32, i32* @CM_GAMUT_REMAP_CONTROL, align 4
  %34 = load i32, i32* @CM_GAMUT_REMAP_MODE, align 4
  %35 = load %struct.dcn_dpp_state*, %struct.dcn_dpp_state** %4, align 8
  %36 = getelementptr inbounds %struct.dcn_dpp_state, %struct.dcn_dpp_state* %35, i32 0, i32 6
  %37 = call i32 @REG_GET(i32 %33, i32 %34, i64* %36)
  %38 = load %struct.dcn_dpp_state*, %struct.dcn_dpp_state** %4, align 8
  %39 = getelementptr inbounds %struct.dcn_dpp_state, %struct.dcn_dpp_state* %38, i32 0, i32 6
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %67

42:                                               ; preds = %2
  %43 = load i32, i32* @CM_GAMUT_REMAP_C11_C12, align 4
  %44 = call i8* @REG_READ(i32 %43)
  %45 = load %struct.dcn_dpp_state*, %struct.dcn_dpp_state** %4, align 8
  %46 = getelementptr inbounds %struct.dcn_dpp_state, %struct.dcn_dpp_state* %45, i32 0, i32 5
  store i8* %44, i8** %46, align 8
  %47 = load i32, i32* @CM_GAMUT_REMAP_C13_C14, align 4
  %48 = call i8* @REG_READ(i32 %47)
  %49 = load %struct.dcn_dpp_state*, %struct.dcn_dpp_state** %4, align 8
  %50 = getelementptr inbounds %struct.dcn_dpp_state, %struct.dcn_dpp_state* %49, i32 0, i32 4
  store i8* %48, i8** %50, align 8
  %51 = load i32, i32* @CM_GAMUT_REMAP_C21_C22, align 4
  %52 = call i8* @REG_READ(i32 %51)
  %53 = load %struct.dcn_dpp_state*, %struct.dcn_dpp_state** %4, align 8
  %54 = getelementptr inbounds %struct.dcn_dpp_state, %struct.dcn_dpp_state* %53, i32 0, i32 3
  store i8* %52, i8** %54, align 8
  %55 = load i32, i32* @CM_GAMUT_REMAP_C23_C24, align 4
  %56 = call i8* @REG_READ(i32 %55)
  %57 = load %struct.dcn_dpp_state*, %struct.dcn_dpp_state** %4, align 8
  %58 = getelementptr inbounds %struct.dcn_dpp_state, %struct.dcn_dpp_state* %57, i32 0, i32 2
  store i8* %56, i8** %58, align 8
  %59 = load i32, i32* @CM_GAMUT_REMAP_C31_C32, align 4
  %60 = call i8* @REG_READ(i32 %59)
  %61 = load %struct.dcn_dpp_state*, %struct.dcn_dpp_state** %4, align 8
  %62 = getelementptr inbounds %struct.dcn_dpp_state, %struct.dcn_dpp_state* %61, i32 0, i32 1
  store i8* %60, i8** %62, align 8
  %63 = load i32, i32* @CM_GAMUT_REMAP_C33_C34, align 4
  %64 = call i8* @REG_READ(i32 %63)
  %65 = load %struct.dcn_dpp_state*, %struct.dcn_dpp_state** %4, align 8
  %66 = getelementptr inbounds %struct.dcn_dpp_state, %struct.dcn_dpp_state* %65, i32 0, i32 0
  store i8* %64, i8** %66, align 8
  br label %67

67:                                               ; preds = %42, %2
  ret void
}

declare dso_local %struct.dcn10_dpp* @TO_DCN10_DPP(%struct.dpp*) #1

declare dso_local i32 @REG_GET(i32, i32, i64*) #1

declare dso_local i8* @REG_READ(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
