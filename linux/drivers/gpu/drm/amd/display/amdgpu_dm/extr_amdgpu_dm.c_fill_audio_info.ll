; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm.c_fill_audio_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm.c_fill_audio_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audio_info = type { i32, i32, i32, %struct.TYPE_10__, %struct.TYPE_8__*, i32, i32, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32, %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.drm_connector = type { i32*, i32*, i64*, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.dc_sink = type { %struct.dc_edid_caps }
%struct.dc_edid_caps = type { i32, i32, %struct.TYPE_9__*, i32, i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i64 }

@AUDIO_INFO_DISPLAY_NAME_SIZE_IN_CHARS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.audio_info*, %struct.drm_connector*, %struct.dc_sink*)* @fill_audio_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fill_audio_info(%struct.audio_info* %0, %struct.drm_connector* %1, %struct.dc_sink* %2) #0 {
  %4 = alloca %struct.audio_info*, align 8
  %5 = alloca %struct.drm_connector*, align 8
  %6 = alloca %struct.dc_sink*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.dc_edid_caps*, align 8
  store %struct.audio_info* %0, %struct.audio_info** %4, align 8
  store %struct.drm_connector* %1, %struct.drm_connector** %5, align 8
  store %struct.dc_sink* %2, %struct.dc_sink** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %10 = load %struct.dc_sink*, %struct.dc_sink** %6, align 8
  %11 = getelementptr inbounds %struct.dc_sink, %struct.dc_sink* %10, i32 0, i32 0
  store %struct.dc_edid_caps* %11, %struct.dc_edid_caps** %9, align 8
  %12 = load %struct.dc_edid_caps*, %struct.dc_edid_caps** %9, align 8
  %13 = getelementptr inbounds %struct.dc_edid_caps, %struct.dc_edid_caps* %12, i32 0, i32 5
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.audio_info*, %struct.audio_info** %4, align 8
  %16 = getelementptr inbounds %struct.audio_info, %struct.audio_info* %15, i32 0, i32 7
  store i32 %14, i32* %16, align 8
  %17 = load %struct.dc_edid_caps*, %struct.dc_edid_caps** %9, align 8
  %18 = getelementptr inbounds %struct.dc_edid_caps, %struct.dc_edid_caps* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.audio_info*, %struct.audio_info** %4, align 8
  %21 = getelementptr inbounds %struct.audio_info, %struct.audio_info* %20, i32 0, i32 6
  store i32 %19, i32* %21, align 4
  %22 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %23 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %22, i32 0, i32 3
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %8, align 4
  %26 = load %struct.audio_info*, %struct.audio_info** %4, align 8
  %27 = getelementptr inbounds %struct.audio_info, %struct.audio_info* %26, i32 0, i32 5
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.dc_edid_caps*, %struct.dc_edid_caps** %9, align 8
  %30 = getelementptr inbounds %struct.dc_edid_caps, %struct.dc_edid_caps* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @AUDIO_INFO_DISPLAY_NAME_SIZE_IN_CHARS, align 4
  %33 = call i32 @strscpy(i32 %28, i32 %31, i32 %32)
  %34 = load i32, i32* %8, align 4
  %35 = icmp sge i32 %34, 3
  br i1 %35, label %36, label %115

36:                                               ; preds = %3
  %37 = load %struct.dc_edid_caps*, %struct.dc_edid_caps** %9, align 8
  %38 = getelementptr inbounds %struct.dc_edid_caps, %struct.dc_edid_caps* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.audio_info*, %struct.audio_info** %4, align 8
  %41 = getelementptr inbounds %struct.audio_info, %struct.audio_info* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  store i32 0, i32* %7, align 4
  br label %42

42:                                               ; preds = %111, %36
  %43 = load i32, i32* %7, align 4
  %44 = load %struct.audio_info*, %struct.audio_info** %4, align 8
  %45 = getelementptr inbounds %struct.audio_info, %struct.audio_info* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp slt i32 %43, %46
  br i1 %47, label %48, label %114

48:                                               ; preds = %42
  %49 = load %struct.dc_edid_caps*, %struct.dc_edid_caps** %9, align 8
  %50 = getelementptr inbounds %struct.dc_edid_caps, %struct.dc_edid_caps* %49, i32 0, i32 2
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %50, align 8
  %52 = load i32, i32* %7, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 3
  %56 = load i64, i64* %55, align 8
  %57 = trunc i64 %56 to i32
  %58 = load %struct.audio_info*, %struct.audio_info** %4, align 8
  %59 = getelementptr inbounds %struct.audio_info, %struct.audio_info* %58, i32 0, i32 4
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %59, align 8
  %61 = load i32, i32* %7, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  store i32 %57, i32* %64, align 4
  %65 = load %struct.dc_edid_caps*, %struct.dc_edid_caps** %9, align 8
  %66 = getelementptr inbounds %struct.dc_edid_caps, %struct.dc_edid_caps* %65, i32 0, i32 2
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %66, align 8
  %68 = load i32, i32* %7, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.audio_info*, %struct.audio_info** %4, align 8
  %74 = getelementptr inbounds %struct.audio_info, %struct.audio_info* %73, i32 0, i32 4
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %74, align 8
  %76 = load i32, i32* %7, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 3
  store i32 %72, i32* %79, align 4
  %80 = load %struct.dc_edid_caps*, %struct.dc_edid_caps** %9, align 8
  %81 = getelementptr inbounds %struct.dc_edid_caps, %struct.dc_edid_caps* %80, i32 0, i32 2
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %81, align 8
  %83 = load i32, i32* %7, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.audio_info*, %struct.audio_info** %4, align 8
  %89 = getelementptr inbounds %struct.audio_info, %struct.audio_info* %88, i32 0, i32 4
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %89, align 8
  %91 = load i32, i32* %7, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 2
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 0
  store i32 %87, i32* %95, align 4
  %96 = load %struct.dc_edid_caps*, %struct.dc_edid_caps** %9, align 8
  %97 = getelementptr inbounds %struct.dc_edid_caps, %struct.dc_edid_caps* %96, i32 0, i32 2
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %97, align 8
  %99 = load i32, i32* %7, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.audio_info*, %struct.audio_info** %4, align 8
  %105 = getelementptr inbounds %struct.audio_info, %struct.audio_info* %104, i32 0, i32 4
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %105, align 8
  %107 = load i32, i32* %7, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 1
  store i32 %103, i32* %110, align 4
  br label %111

111:                                              ; preds = %48
  %112 = load i32, i32* %7, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %7, align 4
  br label %42

114:                                              ; preds = %42
  br label %115

115:                                              ; preds = %114, %3
  %116 = load %struct.dc_edid_caps*, %struct.dc_edid_caps** %9, align 8
  %117 = getelementptr inbounds %struct.dc_edid_caps, %struct.dc_edid_caps* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.audio_info*, %struct.audio_info** %4, align 8
  %120 = getelementptr inbounds %struct.audio_info, %struct.audio_info* %119, i32 0, i32 3
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 0
  store i32 %118, i32* %121, align 4
  %122 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %123 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %122, i32 0, i32 2
  %124 = load i64*, i64** %123, align 8
  %125 = getelementptr inbounds i64, i64* %124, i64 0
  %126 = load i64, i64* %125, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %143

128:                                              ; preds = %115
  %129 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %130 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %129, i32 0, i32 1
  %131 = load i32*, i32** %130, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 0
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.audio_info*, %struct.audio_info** %4, align 8
  %135 = getelementptr inbounds %struct.audio_info, %struct.audio_info* %134, i32 0, i32 2
  store i32 %133, i32* %135, align 8
  %136 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %137 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %136, i32 0, i32 0
  %138 = load i32*, i32** %137, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 0
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.audio_info*, %struct.audio_info** %4, align 8
  %142 = getelementptr inbounds %struct.audio_info, %struct.audio_info* %141, i32 0, i32 1
  store i32 %140, i32* %142, align 4
  br label %143

143:                                              ; preds = %128, %115
  ret void
}

declare dso_local i32 @strscpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
