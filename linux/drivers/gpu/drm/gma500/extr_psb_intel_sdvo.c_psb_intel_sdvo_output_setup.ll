; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_psb_intel_sdvo.c_psb_intel_sdvo_output_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_psb_intel_sdvo.c_psb_intel_sdvo_output_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psb_intel_sdvo = type { i32, i32, %struct.TYPE_4__, %struct.TYPE_3__, i64 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }

@SDVO_OUTPUT_TMDS0 = common dso_local global i32 0, align 4
@SDVO_TMDS_MASK = common dso_local global i32 0, align 4
@SDVO_OUTPUT_SVID0 = common dso_local global i32 0, align 4
@SDVO_OUTPUT_CVBS0 = common dso_local global i32 0, align 4
@SDVO_OUTPUT_RGB0 = common dso_local global i32 0, align 4
@SDVO_RGB_MASK = common dso_local global i32 0, align 4
@SDVO_OUTPUT_LVDS0 = common dso_local global i32 0, align 4
@SDVO_LVDS_MASK = common dso_local global i32 0, align 4
@SDVO_OUTPUT_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"%s: Unknown SDVO output type (0x%02x%02x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.psb_intel_sdvo*, i32)* @psb_intel_sdvo_output_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @psb_intel_sdvo_output_setup(%struct.psb_intel_sdvo* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.psb_intel_sdvo*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [2 x i8], align 1
  store %struct.psb_intel_sdvo* %0, %struct.psb_intel_sdvo** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.psb_intel_sdvo*, %struct.psb_intel_sdvo** %4, align 8
  %8 = getelementptr inbounds %struct.psb_intel_sdvo, %struct.psb_intel_sdvo* %7, i32 0, i32 0
  store i32 0, i32* %8, align 8
  %9 = load %struct.psb_intel_sdvo*, %struct.psb_intel_sdvo** %4, align 8
  %10 = getelementptr inbounds %struct.psb_intel_sdvo, %struct.psb_intel_sdvo* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  store i32 0, i32* %11, align 8
  %12 = load %struct.psb_intel_sdvo*, %struct.psb_intel_sdvo** %4, align 8
  %13 = getelementptr inbounds %struct.psb_intel_sdvo, %struct.psb_intel_sdvo* %12, i32 0, i32 1
  store i32 0, i32* %13, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @SDVO_OUTPUT_TMDS0, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %2
  %19 = load %struct.psb_intel_sdvo*, %struct.psb_intel_sdvo** %4, align 8
  %20 = call i32 @psb_intel_sdvo_dvi_init(%struct.psb_intel_sdvo* %19, i32 0)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %18
  store i32 0, i32* %3, align 4
  br label %130

23:                                               ; preds = %18
  br label %24

24:                                               ; preds = %23, %2
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @SDVO_TMDS_MASK, align 4
  %27 = and i32 %25, %26
  %28 = load i32, i32* @SDVO_TMDS_MASK, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %36

30:                                               ; preds = %24
  %31 = load %struct.psb_intel_sdvo*, %struct.psb_intel_sdvo** %4, align 8
  %32 = call i32 @psb_intel_sdvo_dvi_init(%struct.psb_intel_sdvo* %31, i32 1)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %30
  store i32 0, i32* %3, align 4
  br label %130

35:                                               ; preds = %30
  br label %36

36:                                               ; preds = %35, %24
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* @SDVO_OUTPUT_SVID0, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %36
  %42 = load %struct.psb_intel_sdvo*, %struct.psb_intel_sdvo** %4, align 8
  %43 = load i32, i32* @SDVO_OUTPUT_SVID0, align 4
  %44 = call i32 @psb_intel_sdvo_tv_init(%struct.psb_intel_sdvo* %42, i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %41
  store i32 0, i32* %3, align 4
  br label %130

47:                                               ; preds = %41
  br label %48

48:                                               ; preds = %47, %36
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* @SDVO_OUTPUT_CVBS0, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %48
  %54 = load %struct.psb_intel_sdvo*, %struct.psb_intel_sdvo** %4, align 8
  %55 = load i32, i32* @SDVO_OUTPUT_CVBS0, align 4
  %56 = call i32 @psb_intel_sdvo_tv_init(%struct.psb_intel_sdvo* %54, i32 %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %53
  store i32 0, i32* %3, align 4
  br label %130

59:                                               ; preds = %53
  br label %60

60:                                               ; preds = %59, %48
  %61 = load i32, i32* %5, align 4
  %62 = load i32, i32* @SDVO_OUTPUT_RGB0, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %60
  %66 = load %struct.psb_intel_sdvo*, %struct.psb_intel_sdvo** %4, align 8
  %67 = call i32 @psb_intel_sdvo_analog_init(%struct.psb_intel_sdvo* %66, i32 0)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %65
  store i32 0, i32* %3, align 4
  br label %130

70:                                               ; preds = %65
  br label %71

71:                                               ; preds = %70, %60
  %72 = load i32, i32* %5, align 4
  %73 = load i32, i32* @SDVO_RGB_MASK, align 4
  %74 = and i32 %72, %73
  %75 = load i32, i32* @SDVO_RGB_MASK, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %77, label %83

77:                                               ; preds = %71
  %78 = load %struct.psb_intel_sdvo*, %struct.psb_intel_sdvo** %4, align 8
  %79 = call i32 @psb_intel_sdvo_analog_init(%struct.psb_intel_sdvo* %78, i32 1)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %82, label %81

81:                                               ; preds = %77
  store i32 0, i32* %3, align 4
  br label %130

82:                                               ; preds = %77
  br label %83

83:                                               ; preds = %82, %71
  %84 = load i32, i32* %5, align 4
  %85 = load i32, i32* @SDVO_OUTPUT_LVDS0, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %83
  %89 = load %struct.psb_intel_sdvo*, %struct.psb_intel_sdvo** %4, align 8
  %90 = call i32 @psb_intel_sdvo_lvds_init(%struct.psb_intel_sdvo* %89, i32 0)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %93, label %92

92:                                               ; preds = %88
  store i32 0, i32* %3, align 4
  br label %130

93:                                               ; preds = %88
  br label %94

94:                                               ; preds = %93, %83
  %95 = load i32, i32* %5, align 4
  %96 = load i32, i32* @SDVO_LVDS_MASK, align 4
  %97 = and i32 %95, %96
  %98 = load i32, i32* @SDVO_LVDS_MASK, align 4
  %99 = icmp eq i32 %97, %98
  br i1 %99, label %100, label %106

100:                                              ; preds = %94
  %101 = load %struct.psb_intel_sdvo*, %struct.psb_intel_sdvo** %4, align 8
  %102 = call i32 @psb_intel_sdvo_lvds_init(%struct.psb_intel_sdvo* %101, i32 1)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %105, label %104

104:                                              ; preds = %100
  store i32 0, i32* %3, align 4
  br label %130

105:                                              ; preds = %100
  br label %106

106:                                              ; preds = %105, %94
  %107 = load i32, i32* %5, align 4
  %108 = load i32, i32* @SDVO_OUTPUT_MASK, align 4
  %109 = and i32 %107, %108
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %126

111:                                              ; preds = %106
  %112 = load %struct.psb_intel_sdvo*, %struct.psb_intel_sdvo** %4, align 8
  %113 = getelementptr inbounds %struct.psb_intel_sdvo, %struct.psb_intel_sdvo* %112, i32 0, i32 4
  store i64 0, i64* %113, align 8
  %114 = getelementptr inbounds [2 x i8], [2 x i8]* %6, i64 0, i64 0
  %115 = load %struct.psb_intel_sdvo*, %struct.psb_intel_sdvo** %4, align 8
  %116 = getelementptr inbounds %struct.psb_intel_sdvo, %struct.psb_intel_sdvo* %115, i32 0, i32 3
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 0
  %118 = call i32 @memcpy(i8* %114, i32* %117, i32 2)
  %119 = load %struct.psb_intel_sdvo*, %struct.psb_intel_sdvo** %4, align 8
  %120 = call i32 @SDVO_NAME(%struct.psb_intel_sdvo* %119)
  %121 = getelementptr inbounds [2 x i8], [2 x i8]* %6, i64 0, i64 0
  %122 = load i8, i8* %121, align 1
  %123 = getelementptr inbounds [2 x i8], [2 x i8]* %6, i64 0, i64 1
  %124 = load i8, i8* %123, align 1
  %125 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %120, i8 zeroext %122, i8 zeroext %124)
  store i32 0, i32* %3, align 4
  br label %130

126:                                              ; preds = %106
  %127 = load %struct.psb_intel_sdvo*, %struct.psb_intel_sdvo** %4, align 8
  %128 = getelementptr inbounds %struct.psb_intel_sdvo, %struct.psb_intel_sdvo* %127, i32 0, i32 2
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 1
  store i32 3, i32* %129, align 4
  store i32 1, i32* %3, align 4
  br label %130

130:                                              ; preds = %126, %111, %104, %92, %81, %69, %58, %46, %34, %22
  %131 = load i32, i32* %3, align 4
  ret i32 %131
}

declare dso_local i32 @psb_intel_sdvo_dvi_init(%struct.psb_intel_sdvo*, i32) #1

declare dso_local i32 @psb_intel_sdvo_tv_init(%struct.psb_intel_sdvo*, i32) #1

declare dso_local i32 @psb_intel_sdvo_analog_init(%struct.psb_intel_sdvo*, i32) #1

declare dso_local i32 @psb_intel_sdvo_lvds_init(%struct.psb_intel_sdvo*, i32) #1

declare dso_local i32 @memcpy(i8*, i32*, i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32, i8 zeroext, i8 zeroext) #1

declare dso_local i32 @SDVO_NAME(%struct.psb_intel_sdvo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
