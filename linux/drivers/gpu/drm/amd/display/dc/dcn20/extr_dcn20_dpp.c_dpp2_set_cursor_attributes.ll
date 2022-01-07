; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_dpp.c_dpp2_set_cursor_attributes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_dpp.c_dpp2_set_cursor_attributes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpp = type { i32 }
%struct.dc_cursor_attributes = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.dcn20_dpp = type { i32 }

@CURSOR_MODE_COLOR_PRE_MULTIPLIED_ALPHA = common dso_local global i32 0, align 4
@CURSOR_MODE_COLOR_UN_PRE_MULTIPLIED_ALPHA = common dso_local global i32 0, align 4
@CURSOR0_CONTROL = common dso_local global i32 0, align 4
@CUR0_MODE = common dso_local global i32 0, align 4
@CUR0_EXPANSION_MODE = common dso_local global i32 0, align 4
@CUR0_ROM_EN = common dso_local global i32 0, align 4
@CURSOR_MODE_MONO = common dso_local global i32 0, align 4
@CURSOR0_COLOR0 = common dso_local global i32 0, align 4
@CUR0_COLOR0 = common dso_local global i32 0, align 4
@CURSOR0_COLOR1 = common dso_local global i32 0, align 4
@CUR0_COLOR1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dpp2_set_cursor_attributes(%struct.dpp* %0, %struct.dc_cursor_attributes* %1) #0 {
  %3 = alloca %struct.dpp*, align 8
  %4 = alloca %struct.dc_cursor_attributes*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dcn20_dpp*, align 8
  %7 = alloca i32, align 4
  store %struct.dpp* %0, %struct.dpp** %3, align 8
  store %struct.dc_cursor_attributes* %1, %struct.dc_cursor_attributes** %4, align 8
  %8 = load %struct.dc_cursor_attributes*, %struct.dc_cursor_attributes** %4, align 8
  %9 = getelementptr inbounds %struct.dc_cursor_attributes, %struct.dc_cursor_attributes* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %5, align 4
  %11 = load %struct.dpp*, %struct.dpp** %3, align 8
  %12 = call %struct.dcn20_dpp* @TO_DCN20_DPP(%struct.dpp* %11)
  store %struct.dcn20_dpp* %12, %struct.dcn20_dpp** %6, align 8
  store i32 0, i32* %7, align 4
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @CURSOR_MODE_COLOR_PRE_MULTIPLIED_ALPHA, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %20, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @CURSOR_MODE_COLOR_UN_PRE_MULTIPLIED_ALPHA, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %29

20:                                               ; preds = %16, %2
  %21 = load %struct.dc_cursor_attributes*, %struct.dc_cursor_attributes** %4, align 8
  %22 = getelementptr inbounds %struct.dc_cursor_attributes, %struct.dc_cursor_attributes* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %20
  store i32 1, i32* %7, align 4
  br label %28

28:                                               ; preds = %27, %20
  br label %29

29:                                               ; preds = %28, %16
  %30 = load i32, i32* @CURSOR0_CONTROL, align 4
  %31 = load i32, i32* @CUR0_MODE, align 4
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @CUR0_EXPANSION_MODE, align 4
  %34 = load i32, i32* @CUR0_ROM_EN, align 4
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @REG_UPDATE_3(i32 %30, i32 %31, i32 %32, i32 %33, i32 0, i32 %34, i32 %35)
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* @CURSOR_MODE_MONO, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %47

40:                                               ; preds = %29
  %41 = load i32, i32* @CURSOR0_COLOR0, align 4
  %42 = load i32, i32* @CUR0_COLOR0, align 4
  %43 = call i32 @REG_UPDATE(i32 %41, i32 %42, i32 0)
  %44 = load i32, i32* @CURSOR0_COLOR1, align 4
  %45 = load i32, i32* @CUR0_COLOR1, align 4
  %46 = call i32 @REG_UPDATE(i32 %44, i32 %45, i32 -1)
  br label %47

47:                                               ; preds = %40, %29
  ret void
}

declare dso_local %struct.dcn20_dpp* @TO_DCN20_DPP(%struct.dpp*) #1

declare dso_local i32 @REG_UPDATE_3(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @REG_UPDATE(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
