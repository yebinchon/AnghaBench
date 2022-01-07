; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_ipp.c_dce_ipp_cursor_set_attributes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_ipp.c_dce_ipp_cursor_set_attributes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_pixel_processor = type { i32 }
%struct.dc_cursor_attributes = type { i32, %struct.TYPE_6__, i64, i64, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.dce_ipp = type { i32 }

@CUR_UPDATE = common dso_local global i32 0, align 4
@CURSOR_UPDATE_LOCK = common dso_local global i32 0, align 4
@CUR_CONTROL = common dso_local global i32 0, align 4
@CURSOR_MODE = common dso_local global i32 0, align 4
@CURSOR_2X_MAGNIFY = common dso_local global i32 0, align 4
@CUR_INV_TRANS_CLAMP = common dso_local global i32 0, align 4
@CUR_COLOR1 = common dso_local global i32 0, align 4
@CUR_COLOR1_BLUE = common dso_local global i32 0, align 4
@CUR_COLOR1_GREEN = common dso_local global i32 0, align 4
@CUR_COLOR1_RED = common dso_local global i32 0, align 4
@CUR_COLOR2 = common dso_local global i32 0, align 4
@CUR_COLOR2_BLUE = common dso_local global i32 0, align 4
@CUR_COLOR2_GREEN = common dso_local global i32 0, align 4
@CUR_COLOR2_RED = common dso_local global i32 0, align 4
@CUR_SIZE = common dso_local global i32 0, align 4
@CURSOR_WIDTH = common dso_local global i32 0, align 4
@CURSOR_HEIGHT = common dso_local global i32 0, align 4
@CUR_SURFACE_ADDRESS_HIGH = common dso_local global i32 0, align 4
@CURSOR_SURFACE_ADDRESS_HIGH = common dso_local global i32 0, align 4
@CUR_SURFACE_ADDRESS = common dso_local global i32 0, align 4
@CURSOR_SURFACE_ADDRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.input_pixel_processor*, %struct.dc_cursor_attributes*)* @dce_ipp_cursor_set_attributes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dce_ipp_cursor_set_attributes(%struct.input_pixel_processor* %0, %struct.dc_cursor_attributes* %1) #0 {
  %3 = alloca %struct.input_pixel_processor*, align 8
  %4 = alloca %struct.dc_cursor_attributes*, align 8
  %5 = alloca %struct.dce_ipp*, align 8
  %6 = alloca i32, align 4
  store %struct.input_pixel_processor* %0, %struct.input_pixel_processor** %3, align 8
  store %struct.dc_cursor_attributes* %1, %struct.dc_cursor_attributes** %4, align 8
  %7 = load %struct.input_pixel_processor*, %struct.input_pixel_processor** %3, align 8
  %8 = call %struct.dce_ipp* @TO_DCE_IPP(%struct.input_pixel_processor* %7)
  store %struct.dce_ipp* %8, %struct.dce_ipp** %5, align 8
  %9 = load i32, i32* @CUR_UPDATE, align 4
  %10 = load i32, i32* @CURSOR_UPDATE_LOCK, align 4
  %11 = call i32 @REG_UPDATE(i32 %9, i32 %10, i32 1)
  %12 = load %struct.dc_cursor_attributes*, %struct.dc_cursor_attributes** %4, align 8
  %13 = getelementptr inbounds %struct.dc_cursor_attributes, %struct.dc_cursor_attributes* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  switch i32 %14, label %19 [
    i32 128, label %15
    i32 131, label %16
    i32 130, label %17
    i32 129, label %18
  ]

15:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %21

16:                                               ; preds = %2
  store i32 1, i32* %6, align 4
  br label %21

17:                                               ; preds = %2
  store i32 2, i32* %6, align 4
  br label %21

18:                                               ; preds = %2
  store i32 3, i32* %6, align 4
  br label %21

19:                                               ; preds = %2
  %20 = call i32 (...) @BREAK_TO_DEBUGGER()
  store i32 0, i32* %6, align 4
  br label %21

21:                                               ; preds = %19, %18, %17, %16, %15
  %22 = load i32, i32* @CUR_CONTROL, align 4
  %23 = load i32, i32* @CURSOR_MODE, align 4
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @CURSOR_2X_MAGNIFY, align 4
  %26 = load %struct.dc_cursor_attributes*, %struct.dc_cursor_attributes** %4, align 8
  %27 = getelementptr inbounds %struct.dc_cursor_attributes, %struct.dc_cursor_attributes* %26, i32 0, i32 4
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @CUR_INV_TRANS_CLAMP, align 4
  %32 = load %struct.dc_cursor_attributes*, %struct.dc_cursor_attributes** %4, align 8
  %33 = getelementptr inbounds %struct.dc_cursor_attributes, %struct.dc_cursor_attributes* %32, i32 0, i32 4
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @REG_UPDATE_3(i32 %22, i32 %23, i32 %24, i32 %25, i32 %30, i32 %31, i32 %36)
  %38 = load %struct.dc_cursor_attributes*, %struct.dc_cursor_attributes** %4, align 8
  %39 = getelementptr inbounds %struct.dc_cursor_attributes, %struct.dc_cursor_attributes* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp eq i32 %40, 128
  br i1 %41, label %42, label %53

42:                                               ; preds = %21
  %43 = load i32, i32* @CUR_COLOR1, align 4
  %44 = load i32, i32* @CUR_COLOR1_BLUE, align 4
  %45 = load i32, i32* @CUR_COLOR1_GREEN, align 4
  %46 = load i32, i32* @CUR_COLOR1_RED, align 4
  %47 = call i32 @REG_SET_3(i32 %43, i32 0, i32 %44, i32 0, i32 %45, i32 0, i32 %46, i32 0)
  %48 = load i32, i32* @CUR_COLOR2, align 4
  %49 = load i32, i32* @CUR_COLOR2_BLUE, align 4
  %50 = load i32, i32* @CUR_COLOR2_GREEN, align 4
  %51 = load i32, i32* @CUR_COLOR2_RED, align 4
  %52 = call i32 @REG_SET_3(i32 %48, i32 0, i32 %49, i32 255, i32 %50, i32 255, i32 %51, i32 255)
  br label %53

53:                                               ; preds = %42, %21
  %54 = load i32, i32* @CUR_SIZE, align 4
  %55 = load i32, i32* @CURSOR_WIDTH, align 4
  %56 = load %struct.dc_cursor_attributes*, %struct.dc_cursor_attributes** %4, align 8
  %57 = getelementptr inbounds %struct.dc_cursor_attributes, %struct.dc_cursor_attributes* %56, i32 0, i32 3
  %58 = load i64, i64* %57, align 8
  %59 = sub nsw i64 %58, 1
  %60 = load i32, i32* @CURSOR_HEIGHT, align 4
  %61 = load %struct.dc_cursor_attributes*, %struct.dc_cursor_attributes** %4, align 8
  %62 = getelementptr inbounds %struct.dc_cursor_attributes, %struct.dc_cursor_attributes* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = sub nsw i64 %63, 1
  %65 = call i32 @REG_SET_2(i32 %54, i32 0, i32 %55, i64 %59, i32 %60, i64 %64)
  %66 = load i32, i32* @CUR_SURFACE_ADDRESS_HIGH, align 4
  %67 = load i32, i32* @CURSOR_SURFACE_ADDRESS_HIGH, align 4
  %68 = load %struct.dc_cursor_attributes*, %struct.dc_cursor_attributes** %4, align 8
  %69 = getelementptr inbounds %struct.dc_cursor_attributes, %struct.dc_cursor_attributes* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @REG_SET(i32 %66, i32 0, i32 %67, i32 %71)
  %73 = load i32, i32* @CUR_SURFACE_ADDRESS, align 4
  %74 = load i32, i32* @CURSOR_SURFACE_ADDRESS, align 4
  %75 = load %struct.dc_cursor_attributes*, %struct.dc_cursor_attributes** %4, align 8
  %76 = getelementptr inbounds %struct.dc_cursor_attributes, %struct.dc_cursor_attributes* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @REG_SET(i32 %73, i32 0, i32 %74, i32 %78)
  %80 = load i32, i32* @CUR_UPDATE, align 4
  %81 = load i32, i32* @CURSOR_UPDATE_LOCK, align 4
  %82 = call i32 @REG_UPDATE(i32 %80, i32 %81, i32 0)
  ret void
}

declare dso_local %struct.dce_ipp* @TO_DCE_IPP(%struct.input_pixel_processor*) #1

declare dso_local i32 @REG_UPDATE(i32, i32, i32) #1

declare dso_local i32 @BREAK_TO_DEBUGGER(...) #1

declare dso_local i32 @REG_UPDATE_3(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @REG_SET_3(i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @REG_SET_2(i32, i32, i32, i64, i32, i64) #1

declare dso_local i32 @REG_SET(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
