; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/display/komeda/extr_komeda_crtc.c_komeda_crtc_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/display/komeda/extr_komeda_crtc.c_komeda_crtc_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.komeda_crtc = type { %struct.TYPE_6__, %struct.komeda_pipeline* }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.komeda_dev* }
%struct.komeda_dev = type { i32, i32, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 (%struct.komeda_dev*, i32)* }
%struct.komeda_pipeline = type { i32, i32 }
%struct.komeda_crtc_state = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.drm_display_mode }
%struct.drm_display_mode = type { i32 }

@.str = private unnamed_addr constant [41 x i8] c"failed to change opmode: 0x%x -> 0x%x.\0A,\00", align 1
@KOMEDA_MODE_DUAL_DISP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"failed to set aclk.\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"failed to enable aclk.\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"failed to set pxlclk for pipe%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"failed to enable pxl clk for pipe%d.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.komeda_crtc*)* @komeda_crtc_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @komeda_crtc_prepare(%struct.komeda_crtc* %0) #0 {
  %2 = alloca %struct.komeda_crtc*, align 8
  %3 = alloca %struct.komeda_dev*, align 8
  %4 = alloca %struct.komeda_pipeline*, align 8
  %5 = alloca %struct.komeda_crtc_state*, align 8
  %6 = alloca %struct.drm_display_mode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.komeda_crtc* %0, %struct.komeda_crtc** %2, align 8
  %9 = load %struct.komeda_crtc*, %struct.komeda_crtc** %2, align 8
  %10 = getelementptr inbounds %struct.komeda_crtc, %struct.komeda_crtc* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 1
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load %struct.komeda_dev*, %struct.komeda_dev** %13, align 8
  store %struct.komeda_dev* %14, %struct.komeda_dev** %3, align 8
  %15 = load %struct.komeda_crtc*, %struct.komeda_crtc** %2, align 8
  %16 = getelementptr inbounds %struct.komeda_crtc, %struct.komeda_crtc* %15, i32 0, i32 1
  %17 = load %struct.komeda_pipeline*, %struct.komeda_pipeline** %16, align 8
  store %struct.komeda_pipeline* %17, %struct.komeda_pipeline** %4, align 8
  %18 = load %struct.komeda_crtc*, %struct.komeda_crtc** %2, align 8
  %19 = getelementptr inbounds %struct.komeda_crtc, %struct.komeda_crtc* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call %struct.komeda_crtc_state* @to_kcrtc_st(i32 %21)
  store %struct.komeda_crtc_state* %22, %struct.komeda_crtc_state** %5, align 8
  %23 = load %struct.komeda_crtc_state*, %struct.komeda_crtc_state** %5, align 8
  %24 = getelementptr inbounds %struct.komeda_crtc_state, %struct.komeda_crtc_state* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  store %struct.drm_display_mode* %25, %struct.drm_display_mode** %6, align 8
  %26 = load %struct.komeda_dev*, %struct.komeda_dev** %3, align 8
  %27 = getelementptr inbounds %struct.komeda_dev, %struct.komeda_dev* %26, i32 0, i32 1
  %28 = call i32 @mutex_lock(i32* %27)
  %29 = load %struct.komeda_dev*, %struct.komeda_dev** %3, align 8
  %30 = getelementptr inbounds %struct.komeda_dev, %struct.komeda_dev* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.komeda_pipeline*, %struct.komeda_pipeline** %4, align 8
  %33 = getelementptr inbounds %struct.komeda_pipeline, %struct.komeda_pipeline* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @BIT(i32 %34)
  %36 = or i32 %31, %35
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  %38 = load %struct.komeda_dev*, %struct.komeda_dev** %3, align 8
  %39 = getelementptr inbounds %struct.komeda_dev, %struct.komeda_dev* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp eq i32 %37, %40
  %42 = zext i1 %41 to i32
  %43 = call i64 @WARN_ON(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %1
  store i32 0, i32* %8, align 4
  br label %120

46:                                               ; preds = %1
  %47 = load %struct.komeda_dev*, %struct.komeda_dev** %3, align 8
  %48 = getelementptr inbounds %struct.komeda_dev, %struct.komeda_dev* %47, i32 0, i32 3
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = load i32 (%struct.komeda_dev*, i32)*, i32 (%struct.komeda_dev*, i32)** %50, align 8
  %52 = load %struct.komeda_dev*, %struct.komeda_dev** %3, align 8
  %53 = load i32, i32* %7, align 4
  %54 = call i32 %51(%struct.komeda_dev* %52, i32 %53)
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %8, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %46
  %58 = load %struct.komeda_dev*, %struct.komeda_dev** %3, align 8
  %59 = getelementptr inbounds %struct.komeda_dev, %struct.komeda_dev* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* %7, align 4
  %62 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %60, i32 %61)
  br label %120

63:                                               ; preds = %46
  %64 = load i32, i32* %7, align 4
  %65 = load %struct.komeda_dev*, %struct.komeda_dev** %3, align 8
  %66 = getelementptr inbounds %struct.komeda_dev, %struct.komeda_dev* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 8
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* @KOMEDA_MODE_DUAL_DISP, align 4
  %69 = icmp ne i32 %67, %68
  br i1 %69, label %70, label %91

70:                                               ; preds = %63
  %71 = load %struct.komeda_dev*, %struct.komeda_dev** %3, align 8
  %72 = getelementptr inbounds %struct.komeda_dev, %struct.komeda_dev* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.komeda_crtc_state*, %struct.komeda_crtc_state** %5, align 8
  %75 = call i32 @komeda_crtc_get_aclk(%struct.komeda_crtc_state* %74)
  %76 = call i32 @clk_set_rate(i32 %73, i32 %75)
  store i32 %76, i32* %8, align 4
  %77 = load i32, i32* %8, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %70
  %80 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %81

81:                                               ; preds = %79, %70
  %82 = load %struct.komeda_dev*, %struct.komeda_dev** %3, align 8
  %83 = getelementptr inbounds %struct.komeda_dev, %struct.komeda_dev* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @clk_prepare_enable(i32 %84)
  store i32 %85, i32* %8, align 4
  %86 = load i32, i32* %8, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %81
  %89 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  br label %90

90:                                               ; preds = %88, %81
  br label %91

91:                                               ; preds = %90, %63
  %92 = load %struct.komeda_pipeline*, %struct.komeda_pipeline** %4, align 8
  %93 = getelementptr inbounds %struct.komeda_pipeline, %struct.komeda_pipeline* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %96 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = mul nsw i32 %97, 1000
  %99 = call i32 @clk_set_rate(i32 %94, i32 %98)
  store i32 %99, i32* %8, align 4
  %100 = load i32, i32* %8, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %107

102:                                              ; preds = %91
  %103 = load %struct.komeda_pipeline*, %struct.komeda_pipeline** %4, align 8
  %104 = getelementptr inbounds %struct.komeda_pipeline, %struct.komeda_pipeline* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %105)
  br label %107

107:                                              ; preds = %102, %91
  %108 = load %struct.komeda_pipeline*, %struct.komeda_pipeline** %4, align 8
  %109 = getelementptr inbounds %struct.komeda_pipeline, %struct.komeda_pipeline* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @clk_prepare_enable(i32 %110)
  store i32 %111, i32* %8, align 4
  %112 = load i32, i32* %8, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %119

114:                                              ; preds = %107
  %115 = load %struct.komeda_pipeline*, %struct.komeda_pipeline** %4, align 8
  %116 = getelementptr inbounds %struct.komeda_pipeline, %struct.komeda_pipeline* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i32 %117)
  br label %119

119:                                              ; preds = %114, %107
  br label %120

120:                                              ; preds = %119, %57, %45
  %121 = load %struct.komeda_dev*, %struct.komeda_dev** %3, align 8
  %122 = getelementptr inbounds %struct.komeda_dev, %struct.komeda_dev* %121, i32 0, i32 1
  %123 = call i32 @mutex_unlock(i32* %122)
  %124 = load i32, i32* %8, align 4
  ret i32 %124
}

declare dso_local %struct.komeda_crtc_state* @to_kcrtc_st(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @DRM_ERROR(i8*, ...) #1

declare dso_local i32 @clk_set_rate(i32, i32) #1

declare dso_local i32 @komeda_crtc_get_aclk(%struct.komeda_crtc_state*) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
