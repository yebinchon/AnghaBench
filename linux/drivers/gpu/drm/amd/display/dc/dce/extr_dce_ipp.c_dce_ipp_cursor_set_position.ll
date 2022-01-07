; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_ipp.c_dce_ipp_cursor_set_position.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_ipp.c_dce_ipp_cursor_set_position.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_pixel_processor = type { i32 }
%struct.dc_cursor_position = type { i32, i32, i32, i32, i32 }
%struct.dc_cursor_mi_param = type { i32 }
%struct.dce_ipp = type { i32 }

@CUR_UPDATE = common dso_local global i32 0, align 4
@CURSOR_UPDATE_LOCK = common dso_local global i32 0, align 4
@CUR_CONTROL = common dso_local global i32 0, align 4
@CURSOR_EN = common dso_local global i32 0, align 4
@CUR_POSITION = common dso_local global i32 0, align 4
@CURSOR_X_POSITION = common dso_local global i32 0, align 4
@CURSOR_Y_POSITION = common dso_local global i32 0, align 4
@CUR_HOT_SPOT = common dso_local global i32 0, align 4
@CURSOR_HOT_SPOT_X = common dso_local global i32 0, align 4
@CURSOR_HOT_SPOT_Y = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.input_pixel_processor*, %struct.dc_cursor_position*, %struct.dc_cursor_mi_param*)* @dce_ipp_cursor_set_position to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dce_ipp_cursor_set_position(%struct.input_pixel_processor* %0, %struct.dc_cursor_position* %1, %struct.dc_cursor_mi_param* %2) #0 {
  %4 = alloca %struct.input_pixel_processor*, align 8
  %5 = alloca %struct.dc_cursor_position*, align 8
  %6 = alloca %struct.dc_cursor_mi_param*, align 8
  %7 = alloca %struct.dce_ipp*, align 8
  store %struct.input_pixel_processor* %0, %struct.input_pixel_processor** %4, align 8
  store %struct.dc_cursor_position* %1, %struct.dc_cursor_position** %5, align 8
  store %struct.dc_cursor_mi_param* %2, %struct.dc_cursor_mi_param** %6, align 8
  %8 = load %struct.input_pixel_processor*, %struct.input_pixel_processor** %4, align 8
  %9 = call %struct.dce_ipp* @TO_DCE_IPP(%struct.input_pixel_processor* %8)
  store %struct.dce_ipp* %9, %struct.dce_ipp** %7, align 8
  %10 = load i32, i32* @CUR_UPDATE, align 4
  %11 = load i32, i32* @CURSOR_UPDATE_LOCK, align 4
  %12 = call i32 @REG_UPDATE(i32 %10, i32 %11, i32 1)
  %13 = load i32, i32* @CUR_CONTROL, align 4
  %14 = load i32, i32* @CURSOR_EN, align 4
  %15 = load %struct.dc_cursor_position*, %struct.dc_cursor_position** %5, align 8
  %16 = getelementptr inbounds %struct.dc_cursor_position, %struct.dc_cursor_position* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @REG_UPDATE(i32 %13, i32 %14, i32 %17)
  %19 = load i32, i32* @CUR_POSITION, align 4
  %20 = load i32, i32* @CURSOR_X_POSITION, align 4
  %21 = load %struct.dc_cursor_position*, %struct.dc_cursor_position** %5, align 8
  %22 = getelementptr inbounds %struct.dc_cursor_position, %struct.dc_cursor_position* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @CURSOR_Y_POSITION, align 4
  %25 = load %struct.dc_cursor_position*, %struct.dc_cursor_position** %5, align 8
  %26 = getelementptr inbounds %struct.dc_cursor_position, %struct.dc_cursor_position* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @REG_SET_2(i32 %19, i32 0, i32 %20, i32 %23, i32 %24, i32 %27)
  %29 = load i32, i32* @CUR_HOT_SPOT, align 4
  %30 = load i32, i32* @CURSOR_HOT_SPOT_X, align 4
  %31 = load %struct.dc_cursor_position*, %struct.dc_cursor_position** %5, align 8
  %32 = getelementptr inbounds %struct.dc_cursor_position, %struct.dc_cursor_position* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @CURSOR_HOT_SPOT_Y, align 4
  %35 = load %struct.dc_cursor_position*, %struct.dc_cursor_position** %5, align 8
  %36 = getelementptr inbounds %struct.dc_cursor_position, %struct.dc_cursor_position* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @REG_SET_2(i32 %29, i32 0, i32 %30, i32 %33, i32 %34, i32 %37)
  %39 = load i32, i32* @CUR_UPDATE, align 4
  %40 = load i32, i32* @CURSOR_UPDATE_LOCK, align 4
  %41 = call i32 @REG_UPDATE(i32 %39, i32 %40, i32 0)
  ret void
}

declare dso_local %struct.dce_ipp* @TO_DCE_IPP(%struct.input_pixel_processor*) #1

declare dso_local i32 @REG_UPDATE(i32, i32, i32) #1

declare dso_local i32 @REG_SET_2(i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
