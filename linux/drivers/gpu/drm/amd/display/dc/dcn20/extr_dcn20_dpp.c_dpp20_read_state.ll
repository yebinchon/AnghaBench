; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_dpp.c_dpp20_read_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_dpp.c_dpp20_read_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpp = type { i32 }
%struct.dcn_dpp_state = type { i8*, i8*, i8*, i8*, i8*, i8*, i64, i64, i64 }
%struct.dcn20_dpp = type { i32 }

@DPP_CONTROL = common dso_local global i32 0, align 4
@DPP_CLOCK_ENABLE = common dso_local global i32 0, align 4
@CM_DGAM_CONTROL = common dso_local global i32 0, align 4
@CM_DGAM_LUT_MODE = common dso_local global i32 0, align 4
@CM_GAMUT_REMAP_CONTROL = common dso_local global i32 0, align 4
@CM_GAMUT_REMAP_MODE = common dso_local global i32 0, align 4
@CM_GAMUT_REMAP_C11_C12 = common dso_local global i32 0, align 4
@CM_GAMUT_REMAP_C13_C14 = common dso_local global i32 0, align 4
@CM_GAMUT_REMAP_C21_C22 = common dso_local global i32 0, align 4
@CM_GAMUT_REMAP_C23_C24 = common dso_local global i32 0, align 4
@CM_GAMUT_REMAP_C31_C32 = common dso_local global i32 0, align 4
@CM_GAMUT_REMAP_C33_C34 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dpp20_read_state(%struct.dpp* %0, %struct.dcn_dpp_state* %1) #0 {
  %3 = alloca %struct.dpp*, align 8
  %4 = alloca %struct.dcn_dpp_state*, align 8
  %5 = alloca %struct.dcn20_dpp*, align 8
  store %struct.dpp* %0, %struct.dpp** %3, align 8
  store %struct.dcn_dpp_state* %1, %struct.dcn_dpp_state** %4, align 8
  %6 = load %struct.dpp*, %struct.dpp** %3, align 8
  %7 = call %struct.dcn20_dpp* @TO_DCN20_DPP(%struct.dpp* %6)
  store %struct.dcn20_dpp* %7, %struct.dcn20_dpp** %5, align 8
  %8 = load i32, i32* @DPP_CONTROL, align 4
  %9 = load i32, i32* @DPP_CLOCK_ENABLE, align 4
  %10 = load %struct.dcn_dpp_state*, %struct.dcn_dpp_state** %4, align 8
  %11 = getelementptr inbounds %struct.dcn_dpp_state, %struct.dcn_dpp_state* %10, i32 0, i32 8
  %12 = call i32 @REG_GET(i32 %8, i32 %9, i64* %11)
  %13 = load i32, i32* @CM_DGAM_CONTROL, align 4
  %14 = load i32, i32* @CM_DGAM_LUT_MODE, align 4
  %15 = load %struct.dcn_dpp_state*, %struct.dcn_dpp_state** %4, align 8
  %16 = getelementptr inbounds %struct.dcn_dpp_state, %struct.dcn_dpp_state* %15, i32 0, i32 7
  %17 = call i32 @REG_GET(i32 %13, i32 %14, i64* %16)
  %18 = load i32, i32* @CM_GAMUT_REMAP_CONTROL, align 4
  %19 = load i32, i32* @CM_GAMUT_REMAP_MODE, align 4
  %20 = load %struct.dcn_dpp_state*, %struct.dcn_dpp_state** %4, align 8
  %21 = getelementptr inbounds %struct.dcn_dpp_state, %struct.dcn_dpp_state* %20, i32 0, i32 6
  %22 = call i32 @REG_GET(i32 %18, i32 %19, i64* %21)
  %23 = load %struct.dcn_dpp_state*, %struct.dcn_dpp_state** %4, align 8
  %24 = getelementptr inbounds %struct.dcn_dpp_state, %struct.dcn_dpp_state* %23, i32 0, i32 6
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %52

27:                                               ; preds = %2
  %28 = load i32, i32* @CM_GAMUT_REMAP_C11_C12, align 4
  %29 = call i8* @REG_READ(i32 %28)
  %30 = load %struct.dcn_dpp_state*, %struct.dcn_dpp_state** %4, align 8
  %31 = getelementptr inbounds %struct.dcn_dpp_state, %struct.dcn_dpp_state* %30, i32 0, i32 5
  store i8* %29, i8** %31, align 8
  %32 = load i32, i32* @CM_GAMUT_REMAP_C13_C14, align 4
  %33 = call i8* @REG_READ(i32 %32)
  %34 = load %struct.dcn_dpp_state*, %struct.dcn_dpp_state** %4, align 8
  %35 = getelementptr inbounds %struct.dcn_dpp_state, %struct.dcn_dpp_state* %34, i32 0, i32 4
  store i8* %33, i8** %35, align 8
  %36 = load i32, i32* @CM_GAMUT_REMAP_C21_C22, align 4
  %37 = call i8* @REG_READ(i32 %36)
  %38 = load %struct.dcn_dpp_state*, %struct.dcn_dpp_state** %4, align 8
  %39 = getelementptr inbounds %struct.dcn_dpp_state, %struct.dcn_dpp_state* %38, i32 0, i32 3
  store i8* %37, i8** %39, align 8
  %40 = load i32, i32* @CM_GAMUT_REMAP_C23_C24, align 4
  %41 = call i8* @REG_READ(i32 %40)
  %42 = load %struct.dcn_dpp_state*, %struct.dcn_dpp_state** %4, align 8
  %43 = getelementptr inbounds %struct.dcn_dpp_state, %struct.dcn_dpp_state* %42, i32 0, i32 2
  store i8* %41, i8** %43, align 8
  %44 = load i32, i32* @CM_GAMUT_REMAP_C31_C32, align 4
  %45 = call i8* @REG_READ(i32 %44)
  %46 = load %struct.dcn_dpp_state*, %struct.dcn_dpp_state** %4, align 8
  %47 = getelementptr inbounds %struct.dcn_dpp_state, %struct.dcn_dpp_state* %46, i32 0, i32 1
  store i8* %45, i8** %47, align 8
  %48 = load i32, i32* @CM_GAMUT_REMAP_C33_C34, align 4
  %49 = call i8* @REG_READ(i32 %48)
  %50 = load %struct.dcn_dpp_state*, %struct.dcn_dpp_state** %4, align 8
  %51 = getelementptr inbounds %struct.dcn_dpp_state, %struct.dcn_dpp_state* %50, i32 0, i32 0
  store i8* %49, i8** %51, align 8
  br label %52

52:                                               ; preds = %27, %2
  ret void
}

declare dso_local %struct.dcn20_dpp* @TO_DCN20_DPP(%struct.dpp*) #1

declare dso_local i32 @REG_GET(i32, i32, i64*) #1

declare dso_local i8* @REG_READ(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
