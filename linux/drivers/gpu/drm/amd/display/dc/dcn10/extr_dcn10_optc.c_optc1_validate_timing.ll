; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_optc.c_optc1_validate_timing.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_optc.c_optc1_validate_timing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timing_generator = type { i32 }
%struct.dc_crtc_timing = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.optc = type { i64, i64, i64, i64, i64, i64, i64 }

@TIMING_3D_FORMAT_NONE = common dso_local global i64 0, align 8
@TIMING_3D_FORMAT_HW_FRAME_PACKING = common dso_local global i64 0, align 8
@TIMING_3D_FORMAT_TOP_AND_BOTTOM = common dso_local global i64 0, align 8
@TIMING_3D_FORMAT_SIDE_BY_SIDE = common dso_local global i64 0, align 8
@TIMING_3D_FORMAT_FRAME_ALTERNATE = common dso_local global i64 0, align 8
@TIMING_3D_FORMAT_INBAND_FA = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @optc1_validate_timing(%struct.timing_generator* %0, %struct.dc_crtc_timing* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.timing_generator*, align 8
  %5 = alloca %struct.dc_crtc_timing*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.optc*, align 8
  store %struct.timing_generator* %0, %struct.timing_generator** %4, align 8
  store %struct.dc_crtc_timing* %1, %struct.dc_crtc_timing** %5, align 8
  %10 = load %struct.timing_generator*, %struct.timing_generator** %4, align 8
  %11 = call %struct.optc* @DCN10TG_FROM_TG(%struct.timing_generator* %10)
  store %struct.optc* %11, %struct.optc** %9, align 8
  %12 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %5, align 8
  %13 = icmp ne %struct.dc_crtc_timing* %12, null
  %14 = zext i1 %13 to i32
  %15 = call i32 @ASSERT(i32 %14)
  %16 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %5, align 8
  %17 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %5, align 8
  %20 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = sub nsw i64 %18, %21
  %23 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %5, align 8
  %24 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = sub nsw i64 %22, %25
  %27 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %5, align 8
  %28 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %27, i32 0, i32 3
  %29 = load i64, i64* %28, align 8
  %30 = sub nsw i64 %26, %29
  store i64 %30, i64* %6, align 8
  %31 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %5, align 8
  %32 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %31, i32 0, i32 4
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %5, align 8
  %35 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %34, i32 0, i32 5
  %36 = load i64, i64* %35, align 8
  %37 = sub nsw i64 %33, %36
  %38 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %5, align 8
  %39 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %38, i32 0, i32 6
  %40 = load i64, i64* %39, align 8
  %41 = sub nsw i64 %37, %40
  %42 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %5, align 8
  %43 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %42, i32 0, i32 7
  %44 = load i64, i64* %43, align 8
  %45 = sub nsw i64 %41, %44
  store i64 %45, i64* %7, align 8
  %46 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %5, align 8
  %47 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %46, i32 0, i32 8
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @TIMING_3D_FORMAT_NONE, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %82

51:                                               ; preds = %2
  %52 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %5, align 8
  %53 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %52, i32 0, i32 8
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @TIMING_3D_FORMAT_HW_FRAME_PACKING, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %82

57:                                               ; preds = %51
  %58 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %5, align 8
  %59 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %58, i32 0, i32 8
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @TIMING_3D_FORMAT_TOP_AND_BOTTOM, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %63, label %82

63:                                               ; preds = %57
  %64 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %5, align 8
  %65 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %64, i32 0, i32 8
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @TIMING_3D_FORMAT_SIDE_BY_SIDE, align 8
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %69, label %82

69:                                               ; preds = %63
  %70 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %5, align 8
  %71 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %70, i32 0, i32 8
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @TIMING_3D_FORMAT_FRAME_ALTERNATE, align 8
  %74 = icmp ne i64 %72, %73
  br i1 %74, label %75, label %82

75:                                               ; preds = %69
  %76 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %5, align 8
  %77 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %76, i32 0, i32 8
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @TIMING_3D_FORMAT_INBAND_FA, align 8
  %80 = icmp ne i64 %78, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %75
  store i32 0, i32* %3, align 4
  br label %151

82:                                               ; preds = %75, %69, %63, %57, %51, %2
  %83 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %5, align 8
  %84 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %83, i32 0, i32 11
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = icmp eq i32 %86, 1
  br i1 %87, label %88, label %89

88:                                               ; preds = %82
  store i32 0, i32* %3, align 4
  br label %151

89:                                               ; preds = %82
  %90 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %5, align 8
  %91 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %90, i32 0, i32 4
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.optc*, %struct.optc** %9, align 8
  %94 = getelementptr inbounds %struct.optc, %struct.optc* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = icmp sgt i64 %92, %95
  br i1 %96, label %105, label %97

97:                                               ; preds = %89
  %98 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %5, align 8
  %99 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.optc*, %struct.optc** %9, align 8
  %102 = getelementptr inbounds %struct.optc, %struct.optc* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = icmp sgt i64 %100, %103
  br i1 %104, label %105, label %106

105:                                              ; preds = %97, %89
  store i32 0, i32* %3, align 4
  br label %151

106:                                              ; preds = %97
  %107 = load i64, i64* %7, align 8
  %108 = load %struct.optc*, %struct.optc** %9, align 8
  %109 = getelementptr inbounds %struct.optc, %struct.optc* %108, i32 0, i32 2
  %110 = load i64, i64* %109, align 8
  %111 = icmp slt i64 %107, %110
  br i1 %111, label %112, label %113

112:                                              ; preds = %106
  store i32 0, i32* %3, align 4
  br label %151

113:                                              ; preds = %106
  %114 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %5, align 8
  %115 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %114, i32 0, i32 9
  %116 = load i64, i64* %115, align 8
  %117 = load %struct.optc*, %struct.optc** %9, align 8
  %118 = getelementptr inbounds %struct.optc, %struct.optc* %117, i32 0, i32 3
  %119 = load i64, i64* %118, align 8
  %120 = icmp slt i64 %116, %119
  br i1 %120, label %129, label %121

121:                                              ; preds = %113
  %122 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %5, align 8
  %123 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %122, i32 0, i32 10
  %124 = load i64, i64* %123, align 8
  %125 = load %struct.optc*, %struct.optc** %9, align 8
  %126 = getelementptr inbounds %struct.optc, %struct.optc* %125, i32 0, i32 4
  %127 = load i64, i64* %126, align 8
  %128 = icmp slt i64 %124, %127
  br i1 %128, label %129, label %130

129:                                              ; preds = %121, %113
  store i32 0, i32* %3, align 4
  br label %151

130:                                              ; preds = %121
  %131 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %5, align 8
  %132 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %131, i32 0, i32 11
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %140

136:                                              ; preds = %130
  %137 = load %struct.optc*, %struct.optc** %9, align 8
  %138 = getelementptr inbounds %struct.optc, %struct.optc* %137, i32 0, i32 5
  %139 = load i64, i64* %138, align 8
  br label %144

140:                                              ; preds = %130
  %141 = load %struct.optc*, %struct.optc** %9, align 8
  %142 = getelementptr inbounds %struct.optc, %struct.optc* %141, i32 0, i32 6
  %143 = load i64, i64* %142, align 8
  br label %144

144:                                              ; preds = %140, %136
  %145 = phi i64 [ %139, %136 ], [ %143, %140 ]
  store i64 %145, i64* %8, align 8
  %146 = load i64, i64* %6, align 8
  %147 = load i64, i64* %8, align 8
  %148 = icmp slt i64 %146, %147
  br i1 %148, label %149, label %150

149:                                              ; preds = %144
  store i32 0, i32* %3, align 4
  br label %151

150:                                              ; preds = %144
  store i32 1, i32* %3, align 4
  br label %151

151:                                              ; preds = %150, %149, %129, %112, %105, %88, %81
  %152 = load i32, i32* %3, align 4
  ret i32 %152
}

declare dso_local %struct.optc* @DCN10TG_FROM_TG(%struct.timing_generator*) #1

declare dso_local i32 @ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
