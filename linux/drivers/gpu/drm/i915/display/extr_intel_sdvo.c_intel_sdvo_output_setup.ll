; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_sdvo.c_intel_sdvo_output_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_sdvo.c_intel_sdvo_output_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_sdvo = type { %struct.TYPE_4__, %struct.TYPE_3__, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@SDVO_OUTPUT_TMDS0 = common dso_local global i32 0, align 4
@SDVO_TMDS_MASK = common dso_local global i32 0, align 4
@SDVO_OUTPUT_SVID0 = common dso_local global i32 0, align 4
@SDVO_OUTPUT_CVBS0 = common dso_local global i32 0, align 4
@SDVO_OUTPUT_YPRPB0 = common dso_local global i32 0, align 4
@SDVO_OUTPUT_RGB0 = common dso_local global i32 0, align 4
@SDVO_RGB_MASK = common dso_local global i32 0, align 4
@SDVO_OUTPUT_LVDS0 = common dso_local global i32 0, align 4
@SDVO_LVDS_MASK = common dso_local global i32 0, align 4
@SDVO_OUTPUT_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"%s: Unknown SDVO output type (0x%02x%02x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_sdvo*, i32)* @intel_sdvo_output_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_sdvo_output_setup(%struct.intel_sdvo* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.intel_sdvo*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [2 x i8], align 1
  store %struct.intel_sdvo* %0, %struct.intel_sdvo** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @SDVO_OUTPUT_TMDS0, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %2
  %12 = load %struct.intel_sdvo*, %struct.intel_sdvo** %4, align 8
  %13 = call i32 @intel_sdvo_dvi_init(%struct.intel_sdvo* %12, i32 0)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %11
  store i32 0, i32* %3, align 4
  br label %135

16:                                               ; preds = %11
  br label %17

17:                                               ; preds = %16, %2
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @SDVO_TMDS_MASK, align 4
  %20 = and i32 %18, %19
  %21 = load i32, i32* @SDVO_TMDS_MASK, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %29

23:                                               ; preds = %17
  %24 = load %struct.intel_sdvo*, %struct.intel_sdvo** %4, align 8
  %25 = call i32 @intel_sdvo_dvi_init(%struct.intel_sdvo* %24, i32 1)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %23
  store i32 0, i32* %3, align 4
  br label %135

28:                                               ; preds = %23
  br label %29

29:                                               ; preds = %28, %17
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @SDVO_OUTPUT_SVID0, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %29
  %35 = load %struct.intel_sdvo*, %struct.intel_sdvo** %4, align 8
  %36 = load i32, i32* @SDVO_OUTPUT_SVID0, align 4
  %37 = call i32 @intel_sdvo_tv_init(%struct.intel_sdvo* %35, i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %34
  store i32 0, i32* %3, align 4
  br label %135

40:                                               ; preds = %34
  br label %41

41:                                               ; preds = %40, %29
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* @SDVO_OUTPUT_CVBS0, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %41
  %47 = load %struct.intel_sdvo*, %struct.intel_sdvo** %4, align 8
  %48 = load i32, i32* @SDVO_OUTPUT_CVBS0, align 4
  %49 = call i32 @intel_sdvo_tv_init(%struct.intel_sdvo* %47, i32 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %46
  store i32 0, i32* %3, align 4
  br label %135

52:                                               ; preds = %46
  br label %53

53:                                               ; preds = %52, %41
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* @SDVO_OUTPUT_YPRPB0, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %53
  %59 = load %struct.intel_sdvo*, %struct.intel_sdvo** %4, align 8
  %60 = load i32, i32* @SDVO_OUTPUT_YPRPB0, align 4
  %61 = call i32 @intel_sdvo_tv_init(%struct.intel_sdvo* %59, i32 %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %58
  store i32 0, i32* %3, align 4
  br label %135

64:                                               ; preds = %58
  br label %65

65:                                               ; preds = %64, %53
  %66 = load i32, i32* %5, align 4
  %67 = load i32, i32* @SDVO_OUTPUT_RGB0, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %65
  %71 = load %struct.intel_sdvo*, %struct.intel_sdvo** %4, align 8
  %72 = call i32 @intel_sdvo_analog_init(%struct.intel_sdvo* %71, i32 0)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %70
  store i32 0, i32* %3, align 4
  br label %135

75:                                               ; preds = %70
  br label %76

76:                                               ; preds = %75, %65
  %77 = load i32, i32* %5, align 4
  %78 = load i32, i32* @SDVO_RGB_MASK, align 4
  %79 = and i32 %77, %78
  %80 = load i32, i32* @SDVO_RGB_MASK, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %88

82:                                               ; preds = %76
  %83 = load %struct.intel_sdvo*, %struct.intel_sdvo** %4, align 8
  %84 = call i32 @intel_sdvo_analog_init(%struct.intel_sdvo* %83, i32 1)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %87, label %86

86:                                               ; preds = %82
  store i32 0, i32* %3, align 4
  br label %135

87:                                               ; preds = %82
  br label %88

88:                                               ; preds = %87, %76
  %89 = load i32, i32* %5, align 4
  %90 = load i32, i32* @SDVO_OUTPUT_LVDS0, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %99

93:                                               ; preds = %88
  %94 = load %struct.intel_sdvo*, %struct.intel_sdvo** %4, align 8
  %95 = call i32 @intel_sdvo_lvds_init(%struct.intel_sdvo* %94, i32 0)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %98, label %97

97:                                               ; preds = %93
  store i32 0, i32* %3, align 4
  br label %135

98:                                               ; preds = %93
  br label %99

99:                                               ; preds = %98, %88
  %100 = load i32, i32* %5, align 4
  %101 = load i32, i32* @SDVO_LVDS_MASK, align 4
  %102 = and i32 %100, %101
  %103 = load i32, i32* @SDVO_LVDS_MASK, align 4
  %104 = icmp eq i32 %102, %103
  br i1 %104, label %105, label %111

105:                                              ; preds = %99
  %106 = load %struct.intel_sdvo*, %struct.intel_sdvo** %4, align 8
  %107 = call i32 @intel_sdvo_lvds_init(%struct.intel_sdvo* %106, i32 1)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %110, label %109

109:                                              ; preds = %105
  store i32 0, i32* %3, align 4
  br label %135

110:                                              ; preds = %105
  br label %111

111:                                              ; preds = %110, %99
  %112 = load i32, i32* %5, align 4
  %113 = load i32, i32* @SDVO_OUTPUT_MASK, align 4
  %114 = and i32 %112, %113
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %131

116:                                              ; preds = %111
  %117 = load %struct.intel_sdvo*, %struct.intel_sdvo** %4, align 8
  %118 = getelementptr inbounds %struct.intel_sdvo, %struct.intel_sdvo* %117, i32 0, i32 2
  store i64 0, i64* %118, align 8
  %119 = getelementptr inbounds [2 x i8], [2 x i8]* %6, i64 0, i64 0
  %120 = load %struct.intel_sdvo*, %struct.intel_sdvo** %4, align 8
  %121 = getelementptr inbounds %struct.intel_sdvo, %struct.intel_sdvo* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 0
  %123 = call i32 @memcpy(i8* %119, i32* %122, i32 2)
  %124 = load %struct.intel_sdvo*, %struct.intel_sdvo** %4, align 8
  %125 = call i32 @SDVO_NAME(%struct.intel_sdvo* %124)
  %126 = getelementptr inbounds [2 x i8], [2 x i8]* %6, i64 0, i64 0
  %127 = load i8, i8* %126, align 1
  %128 = getelementptr inbounds [2 x i8], [2 x i8]* %6, i64 0, i64 1
  %129 = load i8, i8* %128, align 1
  %130 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %125, i8 zeroext %127, i8 zeroext %129)
  store i32 0, i32* %3, align 4
  br label %135

131:                                              ; preds = %111
  %132 = load %struct.intel_sdvo*, %struct.intel_sdvo** %4, align 8
  %133 = getelementptr inbounds %struct.intel_sdvo, %struct.intel_sdvo* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 0
  store i32 7, i32* %134, align 8
  store i32 1, i32* %3, align 4
  br label %135

135:                                              ; preds = %131, %116, %109, %97, %86, %74, %63, %51, %39, %27, %15
  %136 = load i32, i32* %3, align 4
  ret i32 %136
}

declare dso_local i32 @intel_sdvo_dvi_init(%struct.intel_sdvo*, i32) #1

declare dso_local i32 @intel_sdvo_tv_init(%struct.intel_sdvo*, i32) #1

declare dso_local i32 @intel_sdvo_analog_init(%struct.intel_sdvo*, i32) #1

declare dso_local i32 @intel_sdvo_lvds_init(%struct.intel_sdvo*, i32) #1

declare dso_local i32 @memcpy(i8*, i32*, i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32, i8 zeroext, i8 zeroext) #1

declare dso_local i32 @SDVO_NAME(%struct.intel_sdvo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
