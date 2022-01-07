; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_edid.c_drm_parse_hdmi_vsdb_audio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_edid.c_drm_parse_hdmi_vsdb_audio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i32*, i32*, i32*, i32* }

@DRM_ELD_SUPPORTS_AI = common dso_local global i32 0, align 4
@DRM_ELD_SAD_COUNT_CONN_TYPE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [71 x i8] c"HDMI: latency present %d %d, video latency %d %d, audio latency %d %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_connector*, i32*)* @drm_parse_hdmi_vsdb_audio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @drm_parse_hdmi_vsdb_audio(%struct.drm_connector* %0, i32* %1) #0 {
  %3 = alloca %struct.drm_connector*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store %struct.drm_connector* %0, %struct.drm_connector** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load i32*, i32** %4, align 8
  %7 = call i32 @cea_db_payload_len(i32* %6)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp sge i32 %8, 6
  br i1 %9, label %10, label %25

10:                                               ; preds = %2
  %11 = load i32*, i32** %4, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 6
  %13 = load i32, i32* %12, align 4
  %14 = and i32 %13, 128
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %10
  %17 = load i32, i32* @DRM_ELD_SUPPORTS_AI, align 4
  %18 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %19 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %18, i32 0, i32 3
  %20 = load i32*, i32** %19, align 8
  %21 = load i64, i64* @DRM_ELD_SAD_COUNT_CONN_TYPE, align 8
  %22 = getelementptr inbounds i32, i32* %20, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = or i32 %23, %17
  store i32 %24, i32* %22, align 4
  br label %25

25:                                               ; preds = %16, %10, %2
  %26 = load i32, i32* %5, align 4
  %27 = icmp sge i32 %26, 8
  br i1 %27, label %28, label %46

28:                                               ; preds = %25
  %29 = load i32*, i32** %4, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 8
  %31 = load i32, i32* %30, align 4
  %32 = ashr i32 %31, 7
  %33 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %34 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  store i32 %32, i32* %36, align 4
  %37 = load i32*, i32** %4, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 8
  %39 = load i32, i32* %38, align 4
  %40 = ashr i32 %39, 6
  %41 = and i32 %40, 1
  %42 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %43 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 1
  store i32 %41, i32* %45, align 4
  br label %46

46:                                               ; preds = %28, %25
  %47 = load i32, i32* %5, align 4
  %48 = icmp sge i32 %47, 9
  br i1 %48, label %49, label %57

49:                                               ; preds = %46
  %50 = load i32*, i32** %4, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 9
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %54 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 0
  store i32 %52, i32* %56, align 4
  br label %57

57:                                               ; preds = %49, %46
  %58 = load i32, i32* %5, align 4
  %59 = icmp sge i32 %58, 10
  br i1 %59, label %60, label %68

60:                                               ; preds = %57
  %61 = load i32*, i32** %4, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 10
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %65 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %64, i32 0, i32 2
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 0
  store i32 %63, i32* %67, align 4
  br label %68

68:                                               ; preds = %60, %57
  %69 = load i32, i32* %5, align 4
  %70 = icmp sge i32 %69, 11
  br i1 %70, label %71, label %79

71:                                               ; preds = %68
  %72 = load i32*, i32** %4, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 11
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %76 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %75, i32 0, i32 1
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 1
  store i32 %74, i32* %78, align 4
  br label %79

79:                                               ; preds = %71, %68
  %80 = load i32, i32* %5, align 4
  %81 = icmp sge i32 %80, 12
  br i1 %81, label %82, label %90

82:                                               ; preds = %79
  %83 = load i32*, i32** %4, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 12
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %87 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %86, i32 0, i32 2
  %88 = load i32*, i32** %87, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 1
  store i32 %85, i32* %89, align 4
  br label %90

90:                                               ; preds = %82, %79
  %91 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %92 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %91, i32 0, i32 0
  %93 = load i32*, i32** %92, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 0
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %97 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %96, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 1
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %102 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %101, i32 0, i32 1
  %103 = load i32*, i32** %102, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 0
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %107 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %106, i32 0, i32 1
  %108 = load i32*, i32** %107, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 1
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %112 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %111, i32 0, i32 2
  %113 = load i32*, i32** %112, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 0
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %117 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %116, i32 0, i32 2
  %118 = load i32*, i32** %117, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 1
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str, i64 0, i64 0), i32 %95, i32 %100, i32 %105, i32 %110, i32 %115, i32 %120)
  ret void
}

declare dso_local i32 @cea_db_payload_len(i32*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
