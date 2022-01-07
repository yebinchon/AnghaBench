; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_dpp.c_dpp1_set_cursor_attributes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_dpp.c_dpp1_set_cursor_attributes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpp = type { i32 }
%struct.dc_cursor_attributes = type { i32 }
%struct.dcn10_dpp = type { i32 }

@CURSOR0_CONTROL = common dso_local global i32 0, align 4
@CUR0_MODE = common dso_local global i32 0, align 4
@CUR0_EXPANSION_MODE = common dso_local global i32 0, align 4
@CURSOR_MODE_MONO = common dso_local global i32 0, align 4
@CURSOR0_COLOR0 = common dso_local global i32 0, align 4
@CUR0_COLOR0 = common dso_local global i32 0, align 4
@CURSOR0_COLOR1 = common dso_local global i32 0, align 4
@CUR0_COLOR1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dpp1_set_cursor_attributes(%struct.dpp* %0, %struct.dc_cursor_attributes* %1) #0 {
  %3 = alloca %struct.dpp*, align 8
  %4 = alloca %struct.dc_cursor_attributes*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dcn10_dpp*, align 8
  store %struct.dpp* %0, %struct.dpp** %3, align 8
  store %struct.dc_cursor_attributes* %1, %struct.dc_cursor_attributes** %4, align 8
  %7 = load %struct.dc_cursor_attributes*, %struct.dc_cursor_attributes** %4, align 8
  %8 = getelementptr inbounds %struct.dc_cursor_attributes, %struct.dc_cursor_attributes* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %5, align 4
  %10 = load %struct.dpp*, %struct.dpp** %3, align 8
  %11 = call %struct.dcn10_dpp* @TO_DCN10_DPP(%struct.dpp* %10)
  store %struct.dcn10_dpp* %11, %struct.dcn10_dpp** %6, align 8
  %12 = load i32, i32* @CURSOR0_CONTROL, align 4
  %13 = load i32, i32* @CUR0_MODE, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @CUR0_EXPANSION_MODE, align 4
  %16 = call i32 @REG_UPDATE_2(i32 %12, i32 %13, i32 %14, i32 %15, i32 0)
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @CURSOR_MODE_MONO, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %27

20:                                               ; preds = %2
  %21 = load i32, i32* @CURSOR0_COLOR0, align 4
  %22 = load i32, i32* @CUR0_COLOR0, align 4
  %23 = call i32 @REG_UPDATE(i32 %21, i32 %22, i32 0)
  %24 = load i32, i32* @CURSOR0_COLOR1, align 4
  %25 = load i32, i32* @CUR0_COLOR1, align 4
  %26 = call i32 @REG_UPDATE(i32 %24, i32 %25, i32 -1)
  br label %27

27:                                               ; preds = %20, %2
  ret void
}

declare dso_local %struct.dcn10_dpp* @TO_DCN10_DPP(%struct.dpp*) #1

declare dso_local i32 @REG_UPDATE_2(i32, i32, i32, i32, i32) #1

declare dso_local i32 @REG_UPDATE(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
