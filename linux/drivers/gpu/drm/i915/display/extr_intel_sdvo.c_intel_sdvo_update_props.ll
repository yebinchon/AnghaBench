; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_sdvo.c_intel_sdvo_update_props.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_sdvo.c_intel_sdvo_update_props.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_sdvo = type { i32 }
%struct.intel_sdvo_connector_state = type { %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { %struct.drm_connector_state }
%struct.drm_connector_state = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32 }
%struct.intel_sdvo_connector = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }

@OVERSCAN_H = common dso_local global i32 0, align 4
@OVERSCAN_V = common dso_local global i32 0, align 4
@HPOS = common dso_local global i32 0, align 4
@VPOS = common dso_local global i32 0, align 4
@SATURATION = common dso_local global i32 0, align 4
@CONTRAST = common dso_local global i32 0, align 4
@HUE = common dso_local global i32 0, align 4
@BRIGHTNESS = common dso_local global i32 0, align 4
@SHARPNESS = common dso_local global i32 0, align 4
@FLICKER_FILTER = common dso_local global i32 0, align 4
@FLICKER_FILTER_2D = common dso_local global i32 0, align 4
@FLICKER_FILTER_ADAPTIVE = common dso_local global i32 0, align 4
@TV_CHROMA_FILTER = common dso_local global i32 0, align 4
@TV_LUMA_FILTER = common dso_local global i32 0, align 4
@DOT_CRAWL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_sdvo*, %struct.intel_sdvo_connector_state*)* @intel_sdvo_update_props to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_sdvo_update_props(%struct.intel_sdvo* %0, %struct.intel_sdvo_connector_state* %1) #0 {
  %3 = alloca %struct.intel_sdvo*, align 8
  %4 = alloca %struct.intel_sdvo_connector_state*, align 8
  %5 = alloca %struct.drm_connector_state*, align 8
  %6 = alloca %struct.intel_sdvo_connector*, align 8
  %7 = alloca i32, align 4
  store %struct.intel_sdvo* %0, %struct.intel_sdvo** %3, align 8
  store %struct.intel_sdvo_connector_state* %1, %struct.intel_sdvo_connector_state** %4, align 8
  %8 = load %struct.intel_sdvo_connector_state*, %struct.intel_sdvo_connector_state** %4, align 8
  %9 = getelementptr inbounds %struct.intel_sdvo_connector_state, %struct.intel_sdvo_connector_state* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  store %struct.drm_connector_state* %10, %struct.drm_connector_state** %5, align 8
  %11 = load %struct.drm_connector_state*, %struct.drm_connector_state** %5, align 8
  %12 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.intel_sdvo_connector* @to_intel_sdvo_connector(i32 %13)
  store %struct.intel_sdvo_connector* %14, %struct.intel_sdvo_connector** %6, align 8
  %15 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %6, align 8
  %16 = getelementptr inbounds %struct.intel_sdvo_connector, %struct.intel_sdvo_connector* %15, i32 0, i32 14
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %2
  %20 = load %struct.intel_sdvo_connector_state*, %struct.intel_sdvo_connector_state** %4, align 8
  %21 = getelementptr inbounds %struct.intel_sdvo_connector_state, %struct.intel_sdvo_connector_state* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 10
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @OVERSCAN_H, align 4
  %25 = call i32 @UPDATE_PROPERTY(i32 %23, i32 %24)
  br label %26

26:                                               ; preds = %19, %2
  %27 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %6, align 8
  %28 = getelementptr inbounds %struct.intel_sdvo_connector, %struct.intel_sdvo_connector* %27, i32 0, i32 13
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %26
  %32 = load %struct.intel_sdvo_connector_state*, %struct.intel_sdvo_connector_state** %4, align 8
  %33 = getelementptr inbounds %struct.intel_sdvo_connector_state, %struct.intel_sdvo_connector_state* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 9
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @OVERSCAN_V, align 4
  %37 = call i32 @UPDATE_PROPERTY(i32 %35, i32 %36)
  br label %38

38:                                               ; preds = %31, %26
  %39 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %6, align 8
  %40 = getelementptr inbounds %struct.intel_sdvo_connector, %struct.intel_sdvo_connector* %39, i32 0, i32 12
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %38
  %44 = load %struct.intel_sdvo_connector_state*, %struct.intel_sdvo_connector_state** %4, align 8
  %45 = getelementptr inbounds %struct.intel_sdvo_connector_state, %struct.intel_sdvo_connector_state* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 8
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @HPOS, align 4
  %49 = call i32 @UPDATE_PROPERTY(i32 %47, i32 %48)
  br label %50

50:                                               ; preds = %43, %38
  %51 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %6, align 8
  %52 = getelementptr inbounds %struct.intel_sdvo_connector, %struct.intel_sdvo_connector* %51, i32 0, i32 11
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %50
  %56 = load %struct.intel_sdvo_connector_state*, %struct.intel_sdvo_connector_state** %4, align 8
  %57 = getelementptr inbounds %struct.intel_sdvo_connector_state, %struct.intel_sdvo_connector_state* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 7
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @VPOS, align 4
  %61 = call i32 @UPDATE_PROPERTY(i32 %59, i32 %60)
  br label %62

62:                                               ; preds = %55, %50
  %63 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %6, align 8
  %64 = getelementptr inbounds %struct.intel_sdvo_connector, %struct.intel_sdvo_connector* %63, i32 0, i32 10
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %62
  %68 = load %struct.drm_connector_state*, %struct.drm_connector_state** %5, align 8
  %69 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @SATURATION, align 4
  %73 = call i32 @UPDATE_PROPERTY(i32 %71, i32 %72)
  br label %74

74:                                               ; preds = %67, %62
  %75 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %6, align 8
  %76 = getelementptr inbounds %struct.intel_sdvo_connector, %struct.intel_sdvo_connector* %75, i32 0, i32 9
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %86

79:                                               ; preds = %74
  %80 = load %struct.drm_connector_state*, %struct.drm_connector_state** %5, align 8
  %81 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @CONTRAST, align 4
  %85 = call i32 @UPDATE_PROPERTY(i32 %83, i32 %84)
  br label %86

86:                                               ; preds = %79, %74
  %87 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %6, align 8
  %88 = getelementptr inbounds %struct.intel_sdvo_connector, %struct.intel_sdvo_connector* %87, i32 0, i32 8
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %98

91:                                               ; preds = %86
  %92 = load %struct.drm_connector_state*, %struct.drm_connector_state** %5, align 8
  %93 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @HUE, align 4
  %97 = call i32 @UPDATE_PROPERTY(i32 %95, i32 %96)
  br label %98

98:                                               ; preds = %91, %86
  %99 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %6, align 8
  %100 = getelementptr inbounds %struct.intel_sdvo_connector, %struct.intel_sdvo_connector* %99, i32 0, i32 7
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %110

103:                                              ; preds = %98
  %104 = load %struct.drm_connector_state*, %struct.drm_connector_state** %5, align 8
  %105 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @BRIGHTNESS, align 4
  %109 = call i32 @UPDATE_PROPERTY(i32 %107, i32 %108)
  br label %110

110:                                              ; preds = %103, %98
  %111 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %6, align 8
  %112 = getelementptr inbounds %struct.intel_sdvo_connector, %struct.intel_sdvo_connector* %111, i32 0, i32 6
  %113 = load i64, i64* %112, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %122

115:                                              ; preds = %110
  %116 = load %struct.intel_sdvo_connector_state*, %struct.intel_sdvo_connector_state** %4, align 8
  %117 = getelementptr inbounds %struct.intel_sdvo_connector_state, %struct.intel_sdvo_connector_state* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 6
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* @SHARPNESS, align 4
  %121 = call i32 @UPDATE_PROPERTY(i32 %119, i32 %120)
  br label %122

122:                                              ; preds = %115, %110
  %123 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %6, align 8
  %124 = getelementptr inbounds %struct.intel_sdvo_connector, %struct.intel_sdvo_connector* %123, i32 0, i32 5
  %125 = load i64, i64* %124, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %134

127:                                              ; preds = %122
  %128 = load %struct.intel_sdvo_connector_state*, %struct.intel_sdvo_connector_state** %4, align 8
  %129 = getelementptr inbounds %struct.intel_sdvo_connector_state, %struct.intel_sdvo_connector_state* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 5
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* @FLICKER_FILTER, align 4
  %133 = call i32 @UPDATE_PROPERTY(i32 %131, i32 %132)
  br label %134

134:                                              ; preds = %127, %122
  %135 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %6, align 8
  %136 = getelementptr inbounds %struct.intel_sdvo_connector, %struct.intel_sdvo_connector* %135, i32 0, i32 4
  %137 = load i64, i64* %136, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %146

139:                                              ; preds = %134
  %140 = load %struct.intel_sdvo_connector_state*, %struct.intel_sdvo_connector_state** %4, align 8
  %141 = getelementptr inbounds %struct.intel_sdvo_connector_state, %struct.intel_sdvo_connector_state* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 4
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* @FLICKER_FILTER_2D, align 4
  %145 = call i32 @UPDATE_PROPERTY(i32 %143, i32 %144)
  br label %146

146:                                              ; preds = %139, %134
  %147 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %6, align 8
  %148 = getelementptr inbounds %struct.intel_sdvo_connector, %struct.intel_sdvo_connector* %147, i32 0, i32 3
  %149 = load i64, i64* %148, align 8
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %158

151:                                              ; preds = %146
  %152 = load %struct.intel_sdvo_connector_state*, %struct.intel_sdvo_connector_state** %4, align 8
  %153 = getelementptr inbounds %struct.intel_sdvo_connector_state, %struct.intel_sdvo_connector_state* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i32 0, i32 3
  %155 = load i32, i32* %154, align 4
  %156 = load i32, i32* @FLICKER_FILTER_ADAPTIVE, align 4
  %157 = call i32 @UPDATE_PROPERTY(i32 %155, i32 %156)
  br label %158

158:                                              ; preds = %151, %146
  %159 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %6, align 8
  %160 = getelementptr inbounds %struct.intel_sdvo_connector, %struct.intel_sdvo_connector* %159, i32 0, i32 2
  %161 = load i64, i64* %160, align 8
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %170

163:                                              ; preds = %158
  %164 = load %struct.intel_sdvo_connector_state*, %struct.intel_sdvo_connector_state** %4, align 8
  %165 = getelementptr inbounds %struct.intel_sdvo_connector_state, %struct.intel_sdvo_connector_state* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 4
  %168 = load i32, i32* @TV_CHROMA_FILTER, align 4
  %169 = call i32 @UPDATE_PROPERTY(i32 %167, i32 %168)
  br label %170

170:                                              ; preds = %163, %158
  %171 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %6, align 8
  %172 = getelementptr inbounds %struct.intel_sdvo_connector, %struct.intel_sdvo_connector* %171, i32 0, i32 1
  %173 = load i64, i64* %172, align 8
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %182

175:                                              ; preds = %170
  %176 = load %struct.intel_sdvo_connector_state*, %struct.intel_sdvo_connector_state** %4, align 8
  %177 = getelementptr inbounds %struct.intel_sdvo_connector_state, %struct.intel_sdvo_connector_state* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 4
  %180 = load i32, i32* @TV_LUMA_FILTER, align 4
  %181 = call i32 @UPDATE_PROPERTY(i32 %179, i32 %180)
  br label %182

182:                                              ; preds = %175, %170
  %183 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %6, align 8
  %184 = getelementptr inbounds %struct.intel_sdvo_connector, %struct.intel_sdvo_connector* %183, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %194

187:                                              ; preds = %182
  %188 = load %struct.intel_sdvo_connector_state*, %struct.intel_sdvo_connector_state** %4, align 8
  %189 = getelementptr inbounds %struct.intel_sdvo_connector_state, %struct.intel_sdvo_connector_state* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  %192 = load i32, i32* @DOT_CRAWL, align 4
  %193 = call i32 @UPDATE_PROPERTY(i32 %191, i32 %192)
  br label %194

194:                                              ; preds = %187, %182
  ret void
}

declare dso_local %struct.intel_sdvo_connector* @to_intel_sdvo_connector(i32) #1

declare dso_local i32 @UPDATE_PROPERTY(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
