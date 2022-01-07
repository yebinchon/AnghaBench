; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_encoders.c_radeon_get_encoder_enum.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_encoders.c_radeon_get_encoder_enum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.radeon_device* }
%struct.radeon_device = type { i32 }

@CHIP_RS300 = common dso_local global i32 0, align 4
@CHIP_RS400 = common dso_local global i32 0, align 4
@CHIP_RS480 = common dso_local global i32 0, align 4
@ENCODER_INTERNAL_DAC2_ENUM_ID1 = common dso_local global i32 0, align 4
@ENCODER_INTERNAL_KLDSCP_DAC1_ENUM_ID1 = common dso_local global i32 0, align 4
@ENCODER_INTERNAL_DAC1_ENUM_ID1 = common dso_local global i32 0, align 4
@ENCODER_INTERNAL_KLDSCP_DAC2_ENUM_ID1 = common dso_local global i32 0, align 4
@ENCODER_INTERNAL_KLDSCP_DVO1_ENUM_ID1 = common dso_local global i32 0, align 4
@ENCODER_INTERNAL_DVO1_ENUM_ID1 = common dso_local global i32 0, align 4
@ENCODER_INTERNAL_LVTM1_ENUM_ID1 = common dso_local global i32 0, align 4
@ENCODER_INTERNAL_LVDS_ENUM_ID1 = common dso_local global i32 0, align 4
@ENCODER_INTERNAL_KLDSCP_TMDS1_ENUM_ID1 = common dso_local global i32 0, align 4
@ENCODER_INTERNAL_TMDS1_ENUM_ID1 = common dso_local global i32 0, align 4
@CHIP_RS600 = common dso_local global i32 0, align 4
@CHIP_RS690 = common dso_local global i32 0, align 4
@CHIP_RS740 = common dso_local global i32 0, align 4
@ENCODER_INTERNAL_DDI_ENUM_ID1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @radeon_get_encoder_enum(%struct.drm_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.radeon_device*, align 8
  %8 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %10 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %9, i32 0, i32 0
  %11 = load %struct.radeon_device*, %struct.radeon_device** %10, align 8
  store %struct.radeon_device* %11, %struct.radeon_device** %7, align 8
  store i32 0, i32* %8, align 4
  %12 = load i32, i32* %5, align 4
  switch i32 %12, label %135 [
    i32 137, label %13
    i32 129, label %13
    i32 128, label %13
    i32 136, label %13
    i32 135, label %13
    i32 131, label %64
    i32 134, label %73
    i32 130, label %103
    i32 133, label %103
    i32 132, label %133
  ]

13:                                               ; preds = %3, %3, %3, %3, %3
  %14 = load i32, i32* %6, align 4
  switch i32 %14, label %63 [
    i32 1, label %15
    i32 2, label %45
    i32 3, label %54
  ]

15:                                               ; preds = %13
  %16 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %17 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @CHIP_RS300, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %33, label %21

21:                                               ; preds = %15
  %22 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %23 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @CHIP_RS400, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %33, label %27

27:                                               ; preds = %21
  %28 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %29 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @CHIP_RS480, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %27, %21, %15
  %34 = load i32, i32* @ENCODER_INTERNAL_DAC2_ENUM_ID1, align 4
  store i32 %34, i32* %8, align 4
  br label %44

35:                                               ; preds = %27
  %36 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %37 = call i32 @ASIC_IS_AVIVO(%struct.radeon_device* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %35
  %40 = load i32, i32* @ENCODER_INTERNAL_KLDSCP_DAC1_ENUM_ID1, align 4
  store i32 %40, i32* %8, align 4
  br label %43

41:                                               ; preds = %35
  %42 = load i32, i32* @ENCODER_INTERNAL_DAC1_ENUM_ID1, align 4
  store i32 %42, i32* %8, align 4
  br label %43

43:                                               ; preds = %41, %39
  br label %44

44:                                               ; preds = %43, %33
  br label %63

45:                                               ; preds = %13
  %46 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %47 = call i32 @ASIC_IS_AVIVO(%struct.radeon_device* %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %45
  %50 = load i32, i32* @ENCODER_INTERNAL_KLDSCP_DAC2_ENUM_ID1, align 4
  store i32 %50, i32* %8, align 4
  br label %53

51:                                               ; preds = %45
  %52 = load i32, i32* @ENCODER_INTERNAL_DAC2_ENUM_ID1, align 4
  store i32 %52, i32* %8, align 4
  br label %53

53:                                               ; preds = %51, %49
  br label %63

54:                                               ; preds = %13
  %55 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %56 = call i32 @ASIC_IS_AVIVO(%struct.radeon_device* %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %54
  %59 = load i32, i32* @ENCODER_INTERNAL_KLDSCP_DVO1_ENUM_ID1, align 4
  store i32 %59, i32* %8, align 4
  br label %62

60:                                               ; preds = %54
  %61 = load i32, i32* @ENCODER_INTERNAL_DVO1_ENUM_ID1, align 4
  store i32 %61, i32* %8, align 4
  br label %62

62:                                               ; preds = %60, %58
  br label %63

63:                                               ; preds = %13, %62, %53, %44
  br label %135

64:                                               ; preds = %3
  %65 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %66 = call i32 @ASIC_IS_AVIVO(%struct.radeon_device* %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %64
  %69 = load i32, i32* @ENCODER_INTERNAL_LVTM1_ENUM_ID1, align 4
  store i32 %69, i32* %8, align 4
  br label %72

70:                                               ; preds = %64
  %71 = load i32, i32* @ENCODER_INTERNAL_LVDS_ENUM_ID1, align 4
  store i32 %71, i32* %8, align 4
  br label %72

72:                                               ; preds = %70, %68
  br label %135

73:                                               ; preds = %3
  %74 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %75 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @CHIP_RS300, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %91, label %79

79:                                               ; preds = %73
  %80 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %81 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @CHIP_RS400, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %91, label %85

85:                                               ; preds = %79
  %86 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %87 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @CHIP_RS480, align 4
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %91, label %93

91:                                               ; preds = %85, %79, %73
  %92 = load i32, i32* @ENCODER_INTERNAL_DVO1_ENUM_ID1, align 4
  store i32 %92, i32* %8, align 4
  br label %102

93:                                               ; preds = %85
  %94 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %95 = call i32 @ASIC_IS_AVIVO(%struct.radeon_device* %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %93
  %98 = load i32, i32* @ENCODER_INTERNAL_KLDSCP_TMDS1_ENUM_ID1, align 4
  store i32 %98, i32* %8, align 4
  br label %101

99:                                               ; preds = %93
  %100 = load i32, i32* @ENCODER_INTERNAL_TMDS1_ENUM_ID1, align 4
  store i32 %100, i32* %8, align 4
  br label %101

101:                                              ; preds = %99, %97
  br label %102

102:                                              ; preds = %101, %91
  br label %135

103:                                              ; preds = %3, %3
  %104 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %105 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @CHIP_RS600, align 4
  %108 = icmp eq i32 %106, %107
  br i1 %108, label %121, label %109

109:                                              ; preds = %103
  %110 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %111 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @CHIP_RS690, align 4
  %114 = icmp eq i32 %112, %113
  br i1 %114, label %121, label %115

115:                                              ; preds = %109
  %116 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %117 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* @CHIP_RS740, align 4
  %120 = icmp eq i32 %118, %119
  br i1 %120, label %121, label %123

121:                                              ; preds = %115, %109, %103
  %122 = load i32, i32* @ENCODER_INTERNAL_DDI_ENUM_ID1, align 4
  store i32 %122, i32* %8, align 4
  br label %132

123:                                              ; preds = %115
  %124 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %125 = call i32 @ASIC_IS_AVIVO(%struct.radeon_device* %124)
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %123
  %128 = load i32, i32* @ENCODER_INTERNAL_KLDSCP_DVO1_ENUM_ID1, align 4
  store i32 %128, i32* %8, align 4
  br label %131

129:                                              ; preds = %123
  %130 = load i32, i32* @ENCODER_INTERNAL_DVO1_ENUM_ID1, align 4
  store i32 %130, i32* %8, align 4
  br label %131

131:                                              ; preds = %129, %127
  br label %132

132:                                              ; preds = %131, %121
  br label %135

133:                                              ; preds = %3
  %134 = load i32, i32* @ENCODER_INTERNAL_LVTM1_ENUM_ID1, align 4
  store i32 %134, i32* %8, align 4
  br label %135

135:                                              ; preds = %3, %133, %132, %102, %72, %63
  %136 = load i32, i32* %8, align 4
  ret i32 %136
}

declare dso_local i32 @ASIC_IS_AVIVO(%struct.radeon_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
