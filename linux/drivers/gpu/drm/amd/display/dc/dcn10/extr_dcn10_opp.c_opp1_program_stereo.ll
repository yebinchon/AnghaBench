; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_opp.c_opp1_program_stereo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_opp.c_opp1_program_stereo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.output_pixel_processor = type { i32 }
%struct.dc_crtc_timing = type { i64, i64, i64, i64, i64 }
%struct.dcn10_opp = type { i32 }

@FMT_CONTROL = common dso_local global i32 0, align 4
@FMT_STEREOSYNC_OVERRIDE = common dso_local global i32 0, align 4
@OPPBUF_CONTROL = common dso_local global i32 0, align 4
@OPPBUF_ACTIVE_WIDTH = common dso_local global i32 0, align 4
@TIMING_3D_FORMAT_FRAME_ALTERNATE = common dso_local global i64 0, align 8
@OPPBUF_3D_PARAMETERS_0 = common dso_local global i32 0, align 4
@OPPBUF_3D_VACT_SPACE2_SIZE = common dso_local global i32 0, align 4
@OPPBUF_3D_VACT_SPACE1_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @opp1_program_stereo(%struct.output_pixel_processor* %0, i32 %1, %struct.dc_crtc_timing* %2) #0 {
  %4 = alloca %struct.output_pixel_processor*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dc_crtc_timing*, align 8
  %7 = alloca %struct.dcn10_opp*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.output_pixel_processor* %0, %struct.output_pixel_processor** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.dc_crtc_timing* %2, %struct.dc_crtc_timing** %6, align 8
  %11 = load %struct.output_pixel_processor*, %struct.output_pixel_processor** %4, align 8
  %12 = call %struct.dcn10_opp* @TO_DCN10_OPP(%struct.output_pixel_processor* %11)
  store %struct.dcn10_opp* %12, %struct.dcn10_opp** %7, align 8
  %13 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %6, align 8
  %14 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %13, i32 0, i32 4
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %6, align 8
  %17 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %16, i32 0, i32 3
  %18 = load i64, i64* %17, align 8
  %19 = sub nsw i64 %15, %18
  %20 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %6, align 8
  %21 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %20, i32 0, i32 3
  %22 = load i64, i64* %21, align 8
  %23 = sub nsw i64 %19, %22
  store i64 %23, i64* %8, align 8
  %24 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %6, align 8
  %25 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %6, align 8
  %28 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = sub nsw i64 %26, %29
  store i64 %30, i64* %9, align 8
  %31 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %6, align 8
  %32 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %6, align 8
  %35 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = sub nsw i64 %33, %36
  store i64 %37, i64* %10, align 8
  %38 = load i32, i32* %5, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %3
  store i64 0, i64* %8, align 8
  store i64 0, i64* %9, align 8
  store i64 0, i64* %10, align 8
  br label %41

41:                                               ; preds = %40, %3
  %42 = load i32, i32* @FMT_CONTROL, align 4
  %43 = load i32, i32* @FMT_STEREOSYNC_OVERRIDE, align 4
  %44 = call i32 @REG_UPDATE(i32 %42, i32 %43, i64 0)
  %45 = load i32, i32* @OPPBUF_CONTROL, align 4
  %46 = load i32, i32* @OPPBUF_ACTIVE_WIDTH, align 4
  %47 = load i64, i64* %8, align 8
  %48 = call i32 @REG_UPDATE(i32 %45, i32 %46, i64 %47)
  %49 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %6, align 8
  %50 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @TIMING_3D_FORMAT_FRAME_ALTERNATE, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %59

54:                                               ; preds = %41
  %55 = load i32, i32* @OPPBUF_3D_PARAMETERS_0, align 4
  %56 = load i32, i32* @OPPBUF_3D_VACT_SPACE2_SIZE, align 4
  %57 = load i64, i64* %10, align 8
  %58 = call i32 @REG_UPDATE(i32 %55, i32 %56, i64 %57)
  br label %64

59:                                               ; preds = %41
  %60 = load i32, i32* @OPPBUF_3D_PARAMETERS_0, align 4
  %61 = load i32, i32* @OPPBUF_3D_VACT_SPACE1_SIZE, align 4
  %62 = load i64, i64* %9, align 8
  %63 = call i32 @REG_UPDATE(i32 %60, i32 %61, i64 %62)
  br label %64

64:                                               ; preds = %59, %54
  ret void
}

declare dso_local %struct.dcn10_opp* @TO_DCN10_OPP(%struct.output_pixel_processor*) #1

declare dso_local i32 @REG_UPDATE(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
