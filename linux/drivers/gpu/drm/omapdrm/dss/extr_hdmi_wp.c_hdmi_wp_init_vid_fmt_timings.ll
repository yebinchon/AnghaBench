; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_hdmi_wp.c_hdmi_wp_init_vid_fmt_timings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_hdmi_wp.c_hdmi_wp_init_vid_fmt_timings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdmi_video_format = type { i32, i32, i32 }
%struct.videomode = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.hdmi_config = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [33 x i8] c"Enter hdmi_wp_video_init_format\0A\00", align 1
@HDMI_PACK_10b_RGB_YUV444 = common dso_local global i32 0, align 4
@DISPLAY_FLAGS_INTERLACED = common dso_local global i32 0, align 4
@DISPLAY_FLAGS_DOUBLECLK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hdmi_wp_init_vid_fmt_timings(%struct.hdmi_video_format* %0, %struct.videomode* %1, %struct.hdmi_config* %2) #0 {
  %4 = alloca %struct.hdmi_video_format*, align 8
  %5 = alloca %struct.videomode*, align 8
  %6 = alloca %struct.hdmi_config*, align 8
  store %struct.hdmi_video_format* %0, %struct.hdmi_video_format** %4, align 8
  store %struct.videomode* %1, %struct.videomode** %5, align 8
  store %struct.hdmi_config* %2, %struct.hdmi_config** %6, align 8
  %7 = call i32 @DSSDBG(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %8 = load i32, i32* @HDMI_PACK_10b_RGB_YUV444, align 4
  %9 = load %struct.hdmi_video_format*, %struct.hdmi_video_format** %4, align 8
  %10 = getelementptr inbounds %struct.hdmi_video_format, %struct.hdmi_video_format* %9, i32 0, i32 2
  store i32 %8, i32* %10, align 4
  %11 = load %struct.hdmi_config*, %struct.hdmi_config** %6, align 8
  %12 = getelementptr inbounds %struct.hdmi_config, %struct.hdmi_config* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.hdmi_video_format*, %struct.hdmi_video_format** %4, align 8
  %16 = getelementptr inbounds %struct.hdmi_video_format, %struct.hdmi_video_format* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 4
  %17 = load %struct.hdmi_config*, %struct.hdmi_config** %6, align 8
  %18 = getelementptr inbounds %struct.hdmi_config, %struct.hdmi_config* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.hdmi_video_format*, %struct.hdmi_video_format** %4, align 8
  %22 = getelementptr inbounds %struct.hdmi_video_format, %struct.hdmi_video_format* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 4
  %23 = load %struct.hdmi_config*, %struct.hdmi_config** %6, align 8
  %24 = getelementptr inbounds %struct.hdmi_config, %struct.hdmi_config* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.videomode*, %struct.videomode** %5, align 8
  %28 = getelementptr inbounds %struct.videomode, %struct.videomode* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  %29 = load %struct.hdmi_config*, %struct.hdmi_config** %6, align 8
  %30 = getelementptr inbounds %struct.hdmi_config, %struct.hdmi_config* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.videomode*, %struct.videomode** %5, align 8
  %34 = getelementptr inbounds %struct.videomode, %struct.videomode* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  %35 = load %struct.hdmi_config*, %struct.hdmi_config** %6, align 8
  %36 = getelementptr inbounds %struct.hdmi_config, %struct.hdmi_config* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.videomode*, %struct.videomode** %5, align 8
  %40 = getelementptr inbounds %struct.videomode, %struct.videomode* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 4
  %41 = load %struct.hdmi_config*, %struct.hdmi_config** %6, align 8
  %42 = getelementptr inbounds %struct.hdmi_config, %struct.hdmi_config* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 5
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.videomode*, %struct.videomode** %5, align 8
  %46 = getelementptr inbounds %struct.videomode, %struct.videomode* %45, i32 0, i32 3
  store i32 %44, i32* %46, align 4
  %47 = load %struct.hdmi_config*, %struct.hdmi_config** %6, align 8
  %48 = getelementptr inbounds %struct.hdmi_config, %struct.hdmi_config* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 6
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.videomode*, %struct.videomode** %5, align 8
  %52 = getelementptr inbounds %struct.videomode, %struct.videomode* %51, i32 0, i32 4
  store i32 %50, i32* %52, align 4
  %53 = load %struct.hdmi_config*, %struct.hdmi_config** %6, align 8
  %54 = getelementptr inbounds %struct.hdmi_config, %struct.hdmi_config* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 7
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.videomode*, %struct.videomode** %5, align 8
  %58 = getelementptr inbounds %struct.videomode, %struct.videomode* %57, i32 0, i32 5
  store i32 %56, i32* %58, align 4
  %59 = load %struct.hdmi_config*, %struct.hdmi_config** %6, align 8
  %60 = getelementptr inbounds %struct.hdmi_config, %struct.hdmi_config* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 8
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.videomode*, %struct.videomode** %5, align 8
  %64 = getelementptr inbounds %struct.videomode, %struct.videomode* %63, i32 0, i32 6
  store i32 %62, i32* %64, align 4
  %65 = load %struct.hdmi_config*, %struct.hdmi_config** %6, align 8
  %66 = getelementptr inbounds %struct.hdmi_config, %struct.hdmi_config* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 8
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @DISPLAY_FLAGS_INTERLACED, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %89

72:                                               ; preds = %3
  %73 = load %struct.hdmi_video_format*, %struct.hdmi_video_format** %4, align 8
  %74 = getelementptr inbounds %struct.hdmi_video_format, %struct.hdmi_video_format* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = sdiv i32 %75, 2
  store i32 %76, i32* %74, align 4
  %77 = load %struct.videomode*, %struct.videomode** %5, align 8
  %78 = getelementptr inbounds %struct.videomode, %struct.videomode* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = sdiv i32 %79, 2
  store i32 %80, i32* %78, align 4
  %81 = load %struct.videomode*, %struct.videomode** %5, align 8
  %82 = getelementptr inbounds %struct.videomode, %struct.videomode* %81, i32 0, i32 4
  %83 = load i32, i32* %82, align 4
  %84 = sdiv i32 %83, 2
  store i32 %84, i32* %82, align 4
  %85 = load %struct.videomode*, %struct.videomode** %5, align 8
  %86 = getelementptr inbounds %struct.videomode, %struct.videomode* %85, i32 0, i32 5
  %87 = load i32, i32* %86, align 4
  %88 = sdiv i32 %87, 2
  store i32 %88, i32* %86, align 4
  br label %89

89:                                               ; preds = %72, %3
  %90 = load %struct.hdmi_config*, %struct.hdmi_config** %6, align 8
  %91 = getelementptr inbounds %struct.hdmi_config, %struct.hdmi_config* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 8
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @DISPLAY_FLAGS_DOUBLECLK, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %114

97:                                               ; preds = %89
  %98 = load %struct.hdmi_video_format*, %struct.hdmi_video_format** %4, align 8
  %99 = getelementptr inbounds %struct.hdmi_video_format, %struct.hdmi_video_format* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = mul nsw i32 %100, 2
  store i32 %101, i32* %99, align 4
  %102 = load %struct.videomode*, %struct.videomode** %5, align 8
  %103 = getelementptr inbounds %struct.videomode, %struct.videomode* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = mul nsw i32 %104, 2
  store i32 %105, i32* %103, align 4
  %106 = load %struct.videomode*, %struct.videomode** %5, align 8
  %107 = getelementptr inbounds %struct.videomode, %struct.videomode* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 4
  %109 = mul nsw i32 %108, 2
  store i32 %109, i32* %107, align 4
  %110 = load %struct.videomode*, %struct.videomode** %5, align 8
  %111 = getelementptr inbounds %struct.videomode, %struct.videomode* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = mul nsw i32 %112, 2
  store i32 %113, i32* %111, align 4
  br label %114

114:                                              ; preds = %97, %89
  ret void
}

declare dso_local i32 @DSSDBG(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
