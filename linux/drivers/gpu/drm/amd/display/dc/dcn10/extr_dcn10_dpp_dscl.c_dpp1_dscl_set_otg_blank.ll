; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_dpp_dscl.c_dpp1_dscl_set_otg_blank.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_dpp_dscl.c_dpp1_dscl_set_otg_blank.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dcn10_dpp = type { i32 }
%struct.scaler_data = type { i32, i32 }

@OTG_H_BLANK = common dso_local global i32 0, align 4
@OTG_H_BLANK_START = common dso_local global i32 0, align 4
@OTG_H_BLANK_END = common dso_local global i32 0, align 4
@OTG_V_BLANK = common dso_local global i32 0, align 4
@OTG_V_BLANK_START = common dso_local global i32 0, align 4
@OTG_V_BLANK_END = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dcn10_dpp*, %struct.scaler_data*)* @dpp1_dscl_set_otg_blank to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dpp1_dscl_set_otg_blank(%struct.dcn10_dpp* %0, %struct.scaler_data* %1) #0 {
  %3 = alloca %struct.dcn10_dpp*, align 8
  %4 = alloca %struct.scaler_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.dcn10_dpp* %0, %struct.dcn10_dpp** %3, align 8
  store %struct.scaler_data* %1, %struct.scaler_data** %4, align 8
  %9 = load %struct.scaler_data*, %struct.scaler_data** %4, align 8
  %10 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %12 = load %struct.scaler_data*, %struct.scaler_data** %4, align 8
  %13 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %15 = load i32, i32* @OTG_H_BLANK, align 4
  %16 = load i32, i32* @OTG_H_BLANK_START, align 4
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @OTG_H_BLANK_END, align 4
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @REG_SET_2(i32 %15, i32 0, i32 %16, i32 %17, i32 %18, i32 %19)
  %21 = load i32, i32* @OTG_V_BLANK, align 4
  %22 = load i32, i32* @OTG_V_BLANK_START, align 4
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @OTG_V_BLANK_END, align 4
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @REG_SET_2(i32 %21, i32 0, i32 %22, i32 %23, i32 %24, i32 %25)
  ret void
}

declare dso_local i32 @REG_SET_2(i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
