; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_processpptables.c_make_classification_flags.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_processpptables.c_make_classification_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i32 }

@ATOM_PPLIB_CLASSIFICATION_BOOT = common dso_local global i32 0, align 4
@PP_StateClassificationFlag_Boot = common dso_local global i32 0, align 4
@ATOM_PPLIB_CLASSIFICATION_THERMAL = common dso_local global i32 0, align 4
@PP_StateClassificationFlag_Thermal = common dso_local global i32 0, align 4
@ATOM_PPLIB_CLASSIFICATION_LIMITEDPOWERSOURCE = common dso_local global i32 0, align 4
@PP_StateClassificationFlag_LimitedPowerSource = common dso_local global i32 0, align 4
@ATOM_PPLIB_CLASSIFICATION_REST = common dso_local global i32 0, align 4
@PP_StateClassificationFlag_Rest = common dso_local global i32 0, align 4
@ATOM_PPLIB_CLASSIFICATION_FORCED = common dso_local global i32 0, align 4
@PP_StateClassificationFlag_Forced = common dso_local global i32 0, align 4
@ATOM_PPLIB_CLASSIFICATION_3DPERFORMANCE = common dso_local global i32 0, align 4
@PP_StateClassificationFlag_3DPerformance = common dso_local global i32 0, align 4
@ATOM_PPLIB_CLASSIFICATION_OVERDRIVETEMPLATE = common dso_local global i32 0, align 4
@PP_StateClassificationFlag_ACOverdriveTemplate = common dso_local global i32 0, align 4
@ATOM_PPLIB_CLASSIFICATION_UVDSTATE = common dso_local global i32 0, align 4
@PP_StateClassificationFlag_Uvd = common dso_local global i32 0, align 4
@ATOM_PPLIB_CLASSIFICATION_HDSTATE = common dso_local global i32 0, align 4
@PP_StateClassificationFlag_UvdHD = common dso_local global i32 0, align 4
@ATOM_PPLIB_CLASSIFICATION_SDSTATE = common dso_local global i32 0, align 4
@PP_StateClassificationFlag_UvdSD = common dso_local global i32 0, align 4
@ATOM_PPLIB_CLASSIFICATION_HD2STATE = common dso_local global i32 0, align 4
@PP_StateClassificationFlag_HD2 = common dso_local global i32 0, align 4
@ATOM_PPLIB_CLASSIFICATION_ACPI = common dso_local global i32 0, align 4
@PP_StateClassificationFlag_ACPI = common dso_local global i32 0, align 4
@ATOM_PPLIB_CLASSIFICATION2_LIMITEDPOWERSOURCE_2 = common dso_local global i32 0, align 4
@PP_StateClassificationFlag_LimitedPowerSource_2 = common dso_local global i32 0, align 4
@ATOM_PPLIB_CLASSIFICATION2_ULV = common dso_local global i32 0, align 4
@PP_StateClassificationFlag_ULV = common dso_local global i32 0, align 4
@ATOM_PPLIB_CLASSIFICATION2_MVC = common dso_local global i32 0, align 4
@PP_StateClassificationFlag_UvdMVC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*, i32, i32)* @make_classification_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @make_classification_flags(%struct.pp_hwmgr* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.pp_hwmgr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @ATOM_PPLIB_CLASSIFICATION_BOOT, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %3
  %13 = load i32, i32* @PP_StateClassificationFlag_Boot, align 4
  %14 = load i32, i32* %7, align 4
  %15 = or i32 %14, %13
  store i32 %15, i32* %7, align 4
  br label %16

16:                                               ; preds = %12, %3
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @ATOM_PPLIB_CLASSIFICATION_THERMAL, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %16
  %22 = load i32, i32* @PP_StateClassificationFlag_Thermal, align 4
  %23 = load i32, i32* %7, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %7, align 4
  br label %25

25:                                               ; preds = %21, %16
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @ATOM_PPLIB_CLASSIFICATION_LIMITEDPOWERSOURCE, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %25
  %31 = load i32, i32* @PP_StateClassificationFlag_LimitedPowerSource, align 4
  %32 = load i32, i32* %7, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %7, align 4
  br label %34

34:                                               ; preds = %30, %25
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @ATOM_PPLIB_CLASSIFICATION_REST, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %34
  %40 = load i32, i32* @PP_StateClassificationFlag_Rest, align 4
  %41 = load i32, i32* %7, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %7, align 4
  br label %43

43:                                               ; preds = %39, %34
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* @ATOM_PPLIB_CLASSIFICATION_FORCED, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %43
  %49 = load i32, i32* @PP_StateClassificationFlag_Forced, align 4
  %50 = load i32, i32* %7, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %7, align 4
  br label %52

52:                                               ; preds = %48, %43
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* @ATOM_PPLIB_CLASSIFICATION_3DPERFORMANCE, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %52
  %58 = load i32, i32* @PP_StateClassificationFlag_3DPerformance, align 4
  %59 = load i32, i32* %7, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %7, align 4
  br label %61

61:                                               ; preds = %57, %52
  %62 = load i32, i32* %5, align 4
  %63 = load i32, i32* @ATOM_PPLIB_CLASSIFICATION_OVERDRIVETEMPLATE, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %61
  %67 = load i32, i32* @PP_StateClassificationFlag_ACOverdriveTemplate, align 4
  %68 = load i32, i32* %7, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %7, align 4
  br label %70

70:                                               ; preds = %66, %61
  %71 = load i32, i32* %5, align 4
  %72 = load i32, i32* @ATOM_PPLIB_CLASSIFICATION_UVDSTATE, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %70
  %76 = load i32, i32* @PP_StateClassificationFlag_Uvd, align 4
  %77 = load i32, i32* %7, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %7, align 4
  br label %79

79:                                               ; preds = %75, %70
  %80 = load i32, i32* %5, align 4
  %81 = load i32, i32* @ATOM_PPLIB_CLASSIFICATION_HDSTATE, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %79
  %85 = load i32, i32* @PP_StateClassificationFlag_UvdHD, align 4
  %86 = load i32, i32* %7, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* %7, align 4
  br label %88

88:                                               ; preds = %84, %79
  %89 = load i32, i32* %5, align 4
  %90 = load i32, i32* @ATOM_PPLIB_CLASSIFICATION_SDSTATE, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %88
  %94 = load i32, i32* @PP_StateClassificationFlag_UvdSD, align 4
  %95 = load i32, i32* %7, align 4
  %96 = or i32 %95, %94
  store i32 %96, i32* %7, align 4
  br label %97

97:                                               ; preds = %93, %88
  %98 = load i32, i32* %5, align 4
  %99 = load i32, i32* @ATOM_PPLIB_CLASSIFICATION_HD2STATE, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %97
  %103 = load i32, i32* @PP_StateClassificationFlag_HD2, align 4
  %104 = load i32, i32* %7, align 4
  %105 = or i32 %104, %103
  store i32 %105, i32* %7, align 4
  br label %106

106:                                              ; preds = %102, %97
  %107 = load i32, i32* %5, align 4
  %108 = load i32, i32* @ATOM_PPLIB_CLASSIFICATION_ACPI, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %115

111:                                              ; preds = %106
  %112 = load i32, i32* @PP_StateClassificationFlag_ACPI, align 4
  %113 = load i32, i32* %7, align 4
  %114 = or i32 %113, %112
  store i32 %114, i32* %7, align 4
  br label %115

115:                                              ; preds = %111, %106
  %116 = load i32, i32* %6, align 4
  %117 = load i32, i32* @ATOM_PPLIB_CLASSIFICATION2_LIMITEDPOWERSOURCE_2, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %115
  %121 = load i32, i32* @PP_StateClassificationFlag_LimitedPowerSource_2, align 4
  %122 = load i32, i32* %7, align 4
  %123 = or i32 %122, %121
  store i32 %123, i32* %7, align 4
  br label %124

124:                                              ; preds = %120, %115
  %125 = load i32, i32* %6, align 4
  %126 = load i32, i32* @ATOM_PPLIB_CLASSIFICATION2_ULV, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %133

129:                                              ; preds = %124
  %130 = load i32, i32* @PP_StateClassificationFlag_ULV, align 4
  %131 = load i32, i32* %7, align 4
  %132 = or i32 %131, %130
  store i32 %132, i32* %7, align 4
  br label %133

133:                                              ; preds = %129, %124
  %134 = load i32, i32* %6, align 4
  %135 = load i32, i32* @ATOM_PPLIB_CLASSIFICATION2_MVC, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %142

138:                                              ; preds = %133
  %139 = load i32, i32* @PP_StateClassificationFlag_UvdMVC, align 4
  %140 = load i32, i32* %7, align 4
  %141 = or i32 %140, %139
  store i32 %141, i32* %7, align 4
  br label %142

142:                                              ; preds = %138, %133
  %143 = load i32, i32* %7, align 4
  ret i32 %143
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
