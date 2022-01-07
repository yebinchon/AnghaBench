; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_pm.c_hwmon_attributes_visible.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_pm.c_hwmon_attributes_visible.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_114__ = type { %struct.TYPE_87__ }
%struct.TYPE_87__ = type { %struct.attribute }
%struct.attribute = type { i32 }
%struct.TYPE_113__ = type { %struct.TYPE_88__ }
%struct.TYPE_88__ = type { %struct.attribute }
%struct.TYPE_112__ = type { %struct.TYPE_90__ }
%struct.TYPE_90__ = type { %struct.attribute }
%struct.TYPE_110__ = type { %struct.TYPE_91__ }
%struct.TYPE_91__ = type { %struct.attribute }
%struct.TYPE_129__ = type { %struct.TYPE_92__ }
%struct.TYPE_92__ = type { %struct.attribute }
%struct.TYPE_127__ = type { %struct.TYPE_93__ }
%struct.TYPE_93__ = type { %struct.attribute }
%struct.TYPE_128__ = type { %struct.TYPE_94__ }
%struct.TYPE_94__ = type { %struct.attribute }
%struct.TYPE_126__ = type { %struct.TYPE_95__ }
%struct.TYPE_95__ = type { %struct.attribute }
%struct.TYPE_130__ = type { %struct.TYPE_86__ }
%struct.TYPE_86__ = type { %struct.attribute }
%struct.TYPE_109__ = type { %struct.TYPE_78__ }
%struct.TYPE_78__ = type { %struct.attribute }
%struct.TYPE_108__ = type { %struct.TYPE_89__ }
%struct.TYPE_89__ = type { %struct.attribute }
%struct.TYPE_118__ = type { %struct.TYPE_100__ }
%struct.TYPE_100__ = type { %struct.attribute }
%struct.TYPE_116__ = type { %struct.TYPE_111__ }
%struct.TYPE_111__ = type { %struct.attribute }
%struct.TYPE_115__ = type { %struct.TYPE_122__ }
%struct.TYPE_122__ = type { %struct.attribute }
%struct.TYPE_117__ = type { %struct.TYPE_131__ }
%struct.TYPE_131__ = type { %struct.attribute }
%struct.TYPE_123__ = type { %struct.TYPE_134__ }
%struct.TYPE_134__ = type { %struct.attribute }
%struct.TYPE_121__ = type { %struct.TYPE_68__ }
%struct.TYPE_68__ = type { %struct.attribute }
%struct.TYPE_120__ = type { %struct.TYPE_69__ }
%struct.TYPE_69__ = type { %struct.attribute }
%struct.TYPE_119__ = type { %struct.TYPE_70__ }
%struct.TYPE_70__ = type { %struct.attribute }
%struct.TYPE_125__ = type { %struct.TYPE_71__ }
%struct.TYPE_71__ = type { %struct.attribute }
%struct.TYPE_124__ = type { %struct.TYPE_72__ }
%struct.TYPE_72__ = type { %struct.attribute }
%struct.TYPE_106__ = type { %struct.TYPE_73__ }
%struct.TYPE_73__ = type { %struct.attribute }
%struct.TYPE_105__ = type { %struct.TYPE_74__ }
%struct.TYPE_74__ = type { %struct.attribute }
%struct.TYPE_101__ = type { %struct.TYPE_75__ }
%struct.TYPE_75__ = type { %struct.attribute }
%struct.TYPE_99__ = type { %struct.TYPE_76__ }
%struct.TYPE_76__ = type { %struct.attribute }
%struct.TYPE_107__ = type { %struct.TYPE_77__ }
%struct.TYPE_77__ = type { %struct.attribute }
%struct.TYPE_104__ = type { %struct.TYPE_79__ }
%struct.TYPE_79__ = type { %struct.attribute }
%struct.TYPE_98__ = type { %struct.TYPE_80__ }
%struct.TYPE_80__ = type { %struct.attribute }
%struct.TYPE_103__ = type { %struct.TYPE_81__ }
%struct.TYPE_81__ = type { %struct.attribute }
%struct.TYPE_97__ = type { %struct.TYPE_82__ }
%struct.TYPE_82__ = type { %struct.attribute }
%struct.TYPE_102__ = type { %struct.TYPE_83__ }
%struct.TYPE_83__ = type { %struct.attribute }
%struct.TYPE_96__ = type { %struct.TYPE_84__ }
%struct.TYPE_84__ = type { %struct.attribute }
%struct.kobject = type { i32 }
%struct.device = type { i32 }
%struct.amdgpu_device = type { i32, i64, i64, %struct.TYPE_133__, %struct.TYPE_85__ }
%struct.TYPE_133__ = type { %struct.TYPE_132__* }
%struct.TYPE_132__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_85__ = type { i32, i64 }

@sensor_dev_attr_pwm1 = common dso_local global %struct.TYPE_114__ zeroinitializer, align 4
@sensor_dev_attr_pwm1_enable = common dso_local global %struct.TYPE_113__ zeroinitializer, align 4
@sensor_dev_attr_pwm1_max = common dso_local global %struct.TYPE_112__ zeroinitializer, align 4
@sensor_dev_attr_pwm1_min = common dso_local global %struct.TYPE_110__ zeroinitializer, align 4
@sensor_dev_attr_fan1_input = common dso_local global %struct.TYPE_129__ zeroinitializer, align 4
@sensor_dev_attr_fan1_min = common dso_local global %struct.TYPE_127__ zeroinitializer, align 4
@sensor_dev_attr_fan1_max = common dso_local global %struct.TYPE_128__ zeroinitializer, align 4
@sensor_dev_attr_fan1_target = common dso_local global %struct.TYPE_126__ zeroinitializer, align 4
@sensor_dev_attr_fan1_enable = common dso_local global %struct.TYPE_130__ zeroinitializer, align 4
@AMD_IS_APU = common dso_local global i32 0, align 4
@sensor_dev_attr_temp1_crit = common dso_local global %struct.TYPE_109__ zeroinitializer, align 4
@sensor_dev_attr_temp1_crit_hyst = common dso_local global %struct.TYPE_108__ zeroinitializer, align 4
@S_IRUGO = common dso_local global i32 0, align 4
@S_IWUSR = common dso_local global i32 0, align 4
@AMDGPU_FAMILY_SI = common dso_local global i64 0, align 8
@AMDGPU_FAMILY_KV = common dso_local global i64 0, align 8
@sensor_dev_attr_power1_average = common dso_local global %struct.TYPE_118__ zeroinitializer, align 4
@sensor_dev_attr_power1_cap_max = common dso_local global %struct.TYPE_116__ zeroinitializer, align 4
@sensor_dev_attr_power1_cap_min = common dso_local global %struct.TYPE_115__ zeroinitializer, align 4
@sensor_dev_attr_power1_cap = common dso_local global %struct.TYPE_117__ zeroinitializer, align 4
@sensor_dev_attr_in0_input = common dso_local global %struct.TYPE_123__ zeroinitializer, align 4
@sensor_dev_attr_in0_label = common dso_local global %struct.TYPE_121__ zeroinitializer, align 4
@sensor_dev_attr_in1_input = common dso_local global %struct.TYPE_120__ zeroinitializer, align 4
@sensor_dev_attr_in1_label = common dso_local global %struct.TYPE_119__ zeroinitializer, align 4
@sensor_dev_attr_freq2_input = common dso_local global %struct.TYPE_125__ zeroinitializer, align 4
@sensor_dev_attr_freq2_label = common dso_local global %struct.TYPE_124__ zeroinitializer, align 4
@CHIP_VEGA10 = common dso_local global i64 0, align 8
@sensor_dev_attr_temp2_crit = common dso_local global %struct.TYPE_106__ zeroinitializer, align 4
@sensor_dev_attr_temp2_crit_hyst = common dso_local global %struct.TYPE_105__ zeroinitializer, align 4
@sensor_dev_attr_temp3_crit = common dso_local global %struct.TYPE_101__ zeroinitializer, align 4
@sensor_dev_attr_temp3_crit_hyst = common dso_local global %struct.TYPE_99__ zeroinitializer, align 4
@sensor_dev_attr_temp1_emergency = common dso_local global %struct.TYPE_107__ zeroinitializer, align 4
@sensor_dev_attr_temp2_emergency = common dso_local global %struct.TYPE_104__ zeroinitializer, align 4
@sensor_dev_attr_temp3_emergency = common dso_local global %struct.TYPE_98__ zeroinitializer, align 4
@sensor_dev_attr_temp2_input = common dso_local global %struct.TYPE_103__ zeroinitializer, align 4
@sensor_dev_attr_temp3_input = common dso_local global %struct.TYPE_97__ zeroinitializer, align 4
@sensor_dev_attr_temp2_label = common dso_local global %struct.TYPE_102__ zeroinitializer, align 4
@sensor_dev_attr_temp3_label = common dso_local global %struct.TYPE_96__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kobject*, %struct.attribute*, i32)* @hwmon_attributes_visible to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hwmon_attributes_visible(%struct.kobject* %0, %struct.attribute* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.kobject*, align 8
  %6 = alloca %struct.attribute*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.device*, align 8
  %9 = alloca %struct.amdgpu_device*, align 8
  %10 = alloca i32, align 4
  store %struct.kobject* %0, %struct.kobject** %5, align 8
  store %struct.attribute* %1, %struct.attribute** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.kobject*, %struct.kobject** %5, align 8
  %12 = call %struct.device* @kobj_to_dev(%struct.kobject* %11)
  store %struct.device* %12, %struct.device** %8, align 8
  %13 = load %struct.device*, %struct.device** %8, align 8
  %14 = call %struct.amdgpu_device* @dev_get_drvdata(%struct.device* %13)
  store %struct.amdgpu_device* %14, %struct.amdgpu_device** %9, align 8
  %15 = load %struct.attribute*, %struct.attribute** %6, align 8
  %16 = getelementptr inbounds %struct.attribute, %struct.attribute* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %10, align 4
  %18 = load %struct.amdgpu_device*, %struct.amdgpu_device** %9, align 8
  %19 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %18, i32 0, i32 4
  %20 = getelementptr inbounds %struct.TYPE_85__, %struct.TYPE_85__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %51

23:                                               ; preds = %3
  %24 = load %struct.attribute*, %struct.attribute** %6, align 8
  %25 = icmp eq %struct.attribute* %24, getelementptr inbounds (%struct.TYPE_114__, %struct.TYPE_114__* @sensor_dev_attr_pwm1, i32 0, i32 0, i32 0)
  br i1 %25, label %50, label %26

26:                                               ; preds = %23
  %27 = load %struct.attribute*, %struct.attribute** %6, align 8
  %28 = icmp eq %struct.attribute* %27, getelementptr inbounds (%struct.TYPE_113__, %struct.TYPE_113__* @sensor_dev_attr_pwm1_enable, i32 0, i32 0, i32 0)
  br i1 %28, label %50, label %29

29:                                               ; preds = %26
  %30 = load %struct.attribute*, %struct.attribute** %6, align 8
  %31 = icmp eq %struct.attribute* %30, getelementptr inbounds (%struct.TYPE_112__, %struct.TYPE_112__* @sensor_dev_attr_pwm1_max, i32 0, i32 0, i32 0)
  br i1 %31, label %50, label %32

32:                                               ; preds = %29
  %33 = load %struct.attribute*, %struct.attribute** %6, align 8
  %34 = icmp eq %struct.attribute* %33, getelementptr inbounds (%struct.TYPE_110__, %struct.TYPE_110__* @sensor_dev_attr_pwm1_min, i32 0, i32 0, i32 0)
  br i1 %34, label %50, label %35

35:                                               ; preds = %32
  %36 = load %struct.attribute*, %struct.attribute** %6, align 8
  %37 = icmp eq %struct.attribute* %36, getelementptr inbounds (%struct.TYPE_129__, %struct.TYPE_129__* @sensor_dev_attr_fan1_input, i32 0, i32 0, i32 0)
  br i1 %37, label %50, label %38

38:                                               ; preds = %35
  %39 = load %struct.attribute*, %struct.attribute** %6, align 8
  %40 = icmp eq %struct.attribute* %39, getelementptr inbounds (%struct.TYPE_127__, %struct.TYPE_127__* @sensor_dev_attr_fan1_min, i32 0, i32 0, i32 0)
  br i1 %40, label %50, label %41

41:                                               ; preds = %38
  %42 = load %struct.attribute*, %struct.attribute** %6, align 8
  %43 = icmp eq %struct.attribute* %42, getelementptr inbounds (%struct.TYPE_128__, %struct.TYPE_128__* @sensor_dev_attr_fan1_max, i32 0, i32 0, i32 0)
  br i1 %43, label %50, label %44

44:                                               ; preds = %41
  %45 = load %struct.attribute*, %struct.attribute** %6, align 8
  %46 = icmp eq %struct.attribute* %45, getelementptr inbounds (%struct.TYPE_126__, %struct.TYPE_126__* @sensor_dev_attr_fan1_target, i32 0, i32 0, i32 0)
  br i1 %46, label %50, label %47

47:                                               ; preds = %44
  %48 = load %struct.attribute*, %struct.attribute** %6, align 8
  %49 = icmp eq %struct.attribute* %48, getelementptr inbounds (%struct.TYPE_130__, %struct.TYPE_130__* @sensor_dev_attr_fan1_enable, i32 0, i32 0, i32 0)
  br i1 %49, label %50, label %51

50:                                               ; preds = %47, %44, %41, %38, %35, %32, %29, %26, %23
  store i32 0, i32* %4, align 4
  br label %380

51:                                               ; preds = %47, %3
  %52 = load %struct.amdgpu_device*, %struct.amdgpu_device** %9, align 8
  %53 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @AMD_IS_APU, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %86

58:                                               ; preds = %51
  %59 = load %struct.attribute*, %struct.attribute** %6, align 8
  %60 = icmp eq %struct.attribute* %59, getelementptr inbounds (%struct.TYPE_114__, %struct.TYPE_114__* @sensor_dev_attr_pwm1, i32 0, i32 0, i32 0)
  br i1 %60, label %85, label %61

61:                                               ; preds = %58
  %62 = load %struct.attribute*, %struct.attribute** %6, align 8
  %63 = icmp eq %struct.attribute* %62, getelementptr inbounds (%struct.TYPE_113__, %struct.TYPE_113__* @sensor_dev_attr_pwm1_enable, i32 0, i32 0, i32 0)
  br i1 %63, label %85, label %64

64:                                               ; preds = %61
  %65 = load %struct.attribute*, %struct.attribute** %6, align 8
  %66 = icmp eq %struct.attribute* %65, getelementptr inbounds (%struct.TYPE_112__, %struct.TYPE_112__* @sensor_dev_attr_pwm1_max, i32 0, i32 0, i32 0)
  br i1 %66, label %85, label %67

67:                                               ; preds = %64
  %68 = load %struct.attribute*, %struct.attribute** %6, align 8
  %69 = icmp eq %struct.attribute* %68, getelementptr inbounds (%struct.TYPE_110__, %struct.TYPE_110__* @sensor_dev_attr_pwm1_min, i32 0, i32 0, i32 0)
  br i1 %69, label %85, label %70

70:                                               ; preds = %67
  %71 = load %struct.attribute*, %struct.attribute** %6, align 8
  %72 = icmp eq %struct.attribute* %71, getelementptr inbounds (%struct.TYPE_129__, %struct.TYPE_129__* @sensor_dev_attr_fan1_input, i32 0, i32 0, i32 0)
  br i1 %72, label %85, label %73

73:                                               ; preds = %70
  %74 = load %struct.attribute*, %struct.attribute** %6, align 8
  %75 = icmp eq %struct.attribute* %74, getelementptr inbounds (%struct.TYPE_127__, %struct.TYPE_127__* @sensor_dev_attr_fan1_min, i32 0, i32 0, i32 0)
  br i1 %75, label %85, label %76

76:                                               ; preds = %73
  %77 = load %struct.attribute*, %struct.attribute** %6, align 8
  %78 = icmp eq %struct.attribute* %77, getelementptr inbounds (%struct.TYPE_128__, %struct.TYPE_128__* @sensor_dev_attr_fan1_max, i32 0, i32 0, i32 0)
  br i1 %78, label %85, label %79

79:                                               ; preds = %76
  %80 = load %struct.attribute*, %struct.attribute** %6, align 8
  %81 = icmp eq %struct.attribute* %80, getelementptr inbounds (%struct.TYPE_126__, %struct.TYPE_126__* @sensor_dev_attr_fan1_target, i32 0, i32 0, i32 0)
  br i1 %81, label %85, label %82

82:                                               ; preds = %79
  %83 = load %struct.attribute*, %struct.attribute** %6, align 8
  %84 = icmp eq %struct.attribute* %83, getelementptr inbounds (%struct.TYPE_130__, %struct.TYPE_130__* @sensor_dev_attr_fan1_enable, i32 0, i32 0, i32 0)
  br i1 %84, label %85, label %86

85:                                               ; preds = %82, %79, %76, %73, %70, %67, %64, %61, %58
  store i32 0, i32* %4, align 4
  br label %380

86:                                               ; preds = %82, %51
  %87 = load %struct.amdgpu_device*, %struct.amdgpu_device** %9, align 8
  %88 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %87, i32 0, i32 4
  %89 = getelementptr inbounds %struct.TYPE_85__, %struct.TYPE_85__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %126, label %92

92:                                               ; preds = %86
  %93 = load %struct.attribute*, %struct.attribute** %6, align 8
  %94 = icmp eq %struct.attribute* %93, getelementptr inbounds (%struct.TYPE_109__, %struct.TYPE_109__* @sensor_dev_attr_temp1_crit, i32 0, i32 0, i32 0)
  br i1 %94, label %125, label %95

95:                                               ; preds = %92
  %96 = load %struct.attribute*, %struct.attribute** %6, align 8
  %97 = icmp eq %struct.attribute* %96, getelementptr inbounds (%struct.TYPE_108__, %struct.TYPE_108__* @sensor_dev_attr_temp1_crit_hyst, i32 0, i32 0, i32 0)
  br i1 %97, label %125, label %98

98:                                               ; preds = %95
  %99 = load %struct.attribute*, %struct.attribute** %6, align 8
  %100 = icmp eq %struct.attribute* %99, getelementptr inbounds (%struct.TYPE_114__, %struct.TYPE_114__* @sensor_dev_attr_pwm1, i32 0, i32 0, i32 0)
  br i1 %100, label %125, label %101

101:                                              ; preds = %98
  %102 = load %struct.attribute*, %struct.attribute** %6, align 8
  %103 = icmp eq %struct.attribute* %102, getelementptr inbounds (%struct.TYPE_113__, %struct.TYPE_113__* @sensor_dev_attr_pwm1_enable, i32 0, i32 0, i32 0)
  br i1 %103, label %125, label %104

104:                                              ; preds = %101
  %105 = load %struct.attribute*, %struct.attribute** %6, align 8
  %106 = icmp eq %struct.attribute* %105, getelementptr inbounds (%struct.TYPE_112__, %struct.TYPE_112__* @sensor_dev_attr_pwm1_max, i32 0, i32 0, i32 0)
  br i1 %106, label %125, label %107

107:                                              ; preds = %104
  %108 = load %struct.attribute*, %struct.attribute** %6, align 8
  %109 = icmp eq %struct.attribute* %108, getelementptr inbounds (%struct.TYPE_110__, %struct.TYPE_110__* @sensor_dev_attr_pwm1_min, i32 0, i32 0, i32 0)
  br i1 %109, label %125, label %110

110:                                              ; preds = %107
  %111 = load %struct.attribute*, %struct.attribute** %6, align 8
  %112 = icmp eq %struct.attribute* %111, getelementptr inbounds (%struct.TYPE_129__, %struct.TYPE_129__* @sensor_dev_attr_fan1_input, i32 0, i32 0, i32 0)
  br i1 %112, label %125, label %113

113:                                              ; preds = %110
  %114 = load %struct.attribute*, %struct.attribute** %6, align 8
  %115 = icmp eq %struct.attribute* %114, getelementptr inbounds (%struct.TYPE_127__, %struct.TYPE_127__* @sensor_dev_attr_fan1_min, i32 0, i32 0, i32 0)
  br i1 %115, label %125, label %116

116:                                              ; preds = %113
  %117 = load %struct.attribute*, %struct.attribute** %6, align 8
  %118 = icmp eq %struct.attribute* %117, getelementptr inbounds (%struct.TYPE_128__, %struct.TYPE_128__* @sensor_dev_attr_fan1_max, i32 0, i32 0, i32 0)
  br i1 %118, label %125, label %119

119:                                              ; preds = %116
  %120 = load %struct.attribute*, %struct.attribute** %6, align 8
  %121 = icmp eq %struct.attribute* %120, getelementptr inbounds (%struct.TYPE_126__, %struct.TYPE_126__* @sensor_dev_attr_fan1_target, i32 0, i32 0, i32 0)
  br i1 %121, label %125, label %122

122:                                              ; preds = %119
  %123 = load %struct.attribute*, %struct.attribute** %6, align 8
  %124 = icmp eq %struct.attribute* %123, getelementptr inbounds (%struct.TYPE_130__, %struct.TYPE_130__* @sensor_dev_attr_fan1_enable, i32 0, i32 0, i32 0)
  br i1 %124, label %125, label %126

125:                                              ; preds = %122, %119, %116, %113, %110, %107, %104, %101, %98, %95, %92
  store i32 0, i32* %4, align 4
  br label %380

126:                                              ; preds = %122, %86
  %127 = load %struct.amdgpu_device*, %struct.amdgpu_device** %9, align 8
  %128 = call i32 @is_support_sw_smu(%struct.amdgpu_device* %127)
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %185, label %130

130:                                              ; preds = %126
  %131 = load %struct.amdgpu_device*, %struct.amdgpu_device** %9, align 8
  %132 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %131, i32 0, i32 3
  %133 = getelementptr inbounds %struct.TYPE_133__, %struct.TYPE_133__* %132, i32 0, i32 0
  %134 = load %struct.TYPE_132__*, %struct.TYPE_132__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_132__, %struct.TYPE_132__* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %141, label %138

138:                                              ; preds = %130
  %139 = load %struct.attribute*, %struct.attribute** %6, align 8
  %140 = icmp eq %struct.attribute* %139, getelementptr inbounds (%struct.TYPE_114__, %struct.TYPE_114__* @sensor_dev_attr_pwm1, i32 0, i32 0, i32 0)
  br i1 %140, label %152, label %141

141:                                              ; preds = %138, %130
  %142 = load %struct.amdgpu_device*, %struct.amdgpu_device** %9, align 8
  %143 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %142, i32 0, i32 3
  %144 = getelementptr inbounds %struct.TYPE_133__, %struct.TYPE_133__* %143, i32 0, i32 0
  %145 = load %struct.TYPE_132__*, %struct.TYPE_132__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_132__, %struct.TYPE_132__* %145, i32 0, i32 5
  %147 = load i32, i32* %146, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %157, label %149

149:                                              ; preds = %141
  %150 = load %struct.attribute*, %struct.attribute** %6, align 8
  %151 = icmp eq %struct.attribute* %150, getelementptr inbounds (%struct.TYPE_113__, %struct.TYPE_113__* @sensor_dev_attr_pwm1_enable, i32 0, i32 0, i32 0)
  br i1 %151, label %152, label %157

152:                                              ; preds = %149, %138
  %153 = load i32, i32* @S_IRUGO, align 4
  %154 = xor i32 %153, -1
  %155 = load i32, i32* %10, align 4
  %156 = and i32 %155, %154
  store i32 %156, i32* %10, align 4
  br label %157

157:                                              ; preds = %152, %149, %141
  %158 = load %struct.amdgpu_device*, %struct.amdgpu_device** %9, align 8
  %159 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %158, i32 0, i32 3
  %160 = getelementptr inbounds %struct.TYPE_133__, %struct.TYPE_133__* %159, i32 0, i32 0
  %161 = load %struct.TYPE_132__*, %struct.TYPE_132__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_132__, %struct.TYPE_132__* %161, i32 0, i32 3
  %163 = load i32, i32* %162, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %168, label %165

165:                                              ; preds = %157
  %166 = load %struct.attribute*, %struct.attribute** %6, align 8
  %167 = icmp eq %struct.attribute* %166, getelementptr inbounds (%struct.TYPE_114__, %struct.TYPE_114__* @sensor_dev_attr_pwm1, i32 0, i32 0, i32 0)
  br i1 %167, label %179, label %168

168:                                              ; preds = %165, %157
  %169 = load %struct.amdgpu_device*, %struct.amdgpu_device** %9, align 8
  %170 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %169, i32 0, i32 3
  %171 = getelementptr inbounds %struct.TYPE_133__, %struct.TYPE_133__* %170, i32 0, i32 0
  %172 = load %struct.TYPE_132__*, %struct.TYPE_132__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_132__, %struct.TYPE_132__* %172, i32 0, i32 4
  %174 = load i32, i32* %173, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %184, label %176

176:                                              ; preds = %168
  %177 = load %struct.attribute*, %struct.attribute** %6, align 8
  %178 = icmp eq %struct.attribute* %177, getelementptr inbounds (%struct.TYPE_113__, %struct.TYPE_113__* @sensor_dev_attr_pwm1_enable, i32 0, i32 0, i32 0)
  br i1 %178, label %179, label %184

179:                                              ; preds = %176, %165
  %180 = load i32, i32* @S_IWUSR, align 4
  %181 = xor i32 %180, -1
  %182 = load i32, i32* %10, align 4
  %183 = and i32 %182, %181
  store i32 %183, i32* %10, align 4
  br label %184

184:                                              ; preds = %179, %176, %168
  br label %185

185:                                              ; preds = %184, %126
  %186 = load %struct.amdgpu_device*, %struct.amdgpu_device** %9, align 8
  %187 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = load i32, i32* @AMD_IS_APU, align 4
  %190 = and i32 %188, %189
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %204, label %192

192:                                              ; preds = %185
  %193 = load %struct.amdgpu_device*, %struct.amdgpu_device** %9, align 8
  %194 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %193, i32 0, i32 1
  %195 = load i64, i64* %194, align 8
  %196 = load i64, i64* @AMDGPU_FAMILY_SI, align 8
  %197 = icmp eq i64 %195, %196
  br i1 %197, label %204, label %198

198:                                              ; preds = %192
  %199 = load %struct.amdgpu_device*, %struct.amdgpu_device** %9, align 8
  %200 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %199, i32 0, i32 1
  %201 = load i64, i64* %200, align 8
  %202 = load i64, i64* @AMDGPU_FAMILY_KV, align 8
  %203 = icmp eq i64 %201, %202
  br i1 %203, label %204, label %217

204:                                              ; preds = %198, %192, %185
  %205 = load %struct.attribute*, %struct.attribute** %6, align 8
  %206 = icmp eq %struct.attribute* %205, getelementptr inbounds (%struct.TYPE_118__, %struct.TYPE_118__* @sensor_dev_attr_power1_average, i32 0, i32 0, i32 0)
  br i1 %206, label %216, label %207

207:                                              ; preds = %204
  %208 = load %struct.attribute*, %struct.attribute** %6, align 8
  %209 = icmp eq %struct.attribute* %208, getelementptr inbounds (%struct.TYPE_116__, %struct.TYPE_116__* @sensor_dev_attr_power1_cap_max, i32 0, i32 0, i32 0)
  br i1 %209, label %216, label %210

210:                                              ; preds = %207
  %211 = load %struct.attribute*, %struct.attribute** %6, align 8
  %212 = icmp eq %struct.attribute* %211, getelementptr inbounds (%struct.TYPE_115__, %struct.TYPE_115__* @sensor_dev_attr_power1_cap_min, i32 0, i32 0, i32 0)
  br i1 %212, label %216, label %213

213:                                              ; preds = %210
  %214 = load %struct.attribute*, %struct.attribute** %6, align 8
  %215 = icmp eq %struct.attribute* %214, getelementptr inbounds (%struct.TYPE_117__, %struct.TYPE_117__* @sensor_dev_attr_power1_cap, i32 0, i32 0, i32 0)
  br i1 %215, label %216, label %217

216:                                              ; preds = %213, %210, %207, %204
  store i32 0, i32* %4, align 4
  br label %380

217:                                              ; preds = %213, %198
  %218 = load %struct.amdgpu_device*, %struct.amdgpu_device** %9, align 8
  %219 = call i32 @is_support_sw_smu(%struct.amdgpu_device* %218)
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %284, label %221

221:                                              ; preds = %217
  %222 = load %struct.amdgpu_device*, %struct.amdgpu_device** %9, align 8
  %223 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %222, i32 0, i32 3
  %224 = getelementptr inbounds %struct.TYPE_133__, %struct.TYPE_133__* %223, i32 0, i32 0
  %225 = load %struct.TYPE_132__*, %struct.TYPE_132__** %224, align 8
  %226 = getelementptr inbounds %struct.TYPE_132__, %struct.TYPE_132__* %225, i32 0, i32 3
  %227 = load i32, i32* %226, align 4
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %260, label %229

229:                                              ; preds = %221
  %230 = load %struct.amdgpu_device*, %struct.amdgpu_device** %9, align 8
  %231 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %230, i32 0, i32 3
  %232 = getelementptr inbounds %struct.TYPE_133__, %struct.TYPE_133__* %231, i32 0, i32 0
  %233 = load %struct.TYPE_132__*, %struct.TYPE_132__** %232, align 8
  %234 = getelementptr inbounds %struct.TYPE_132__, %struct.TYPE_132__* %233, i32 0, i32 2
  %235 = load i32, i32* %234, align 4
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %260, label %237

237:                                              ; preds = %229
  %238 = load %struct.amdgpu_device*, %struct.amdgpu_device** %9, align 8
  %239 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %238, i32 0, i32 3
  %240 = getelementptr inbounds %struct.TYPE_133__, %struct.TYPE_133__* %239, i32 0, i32 0
  %241 = load %struct.TYPE_132__*, %struct.TYPE_132__** %240, align 8
  %242 = getelementptr inbounds %struct.TYPE_132__, %struct.TYPE_132__* %241, i32 0, i32 1
  %243 = load i32, i32* %242, align 4
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %260, label %245

245:                                              ; preds = %237
  %246 = load %struct.amdgpu_device*, %struct.amdgpu_device** %9, align 8
  %247 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %246, i32 0, i32 3
  %248 = getelementptr inbounds %struct.TYPE_133__, %struct.TYPE_133__* %247, i32 0, i32 0
  %249 = load %struct.TYPE_132__*, %struct.TYPE_132__** %248, align 8
  %250 = getelementptr inbounds %struct.TYPE_132__, %struct.TYPE_132__* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 4
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %260, label %253

253:                                              ; preds = %245
  %254 = load %struct.attribute*, %struct.attribute** %6, align 8
  %255 = icmp eq %struct.attribute* %254, getelementptr inbounds (%struct.TYPE_112__, %struct.TYPE_112__* @sensor_dev_attr_pwm1_max, i32 0, i32 0, i32 0)
  br i1 %255, label %259, label %256

256:                                              ; preds = %253
  %257 = load %struct.attribute*, %struct.attribute** %6, align 8
  %258 = icmp eq %struct.attribute* %257, getelementptr inbounds (%struct.TYPE_110__, %struct.TYPE_110__* @sensor_dev_attr_pwm1_min, i32 0, i32 0, i32 0)
  br i1 %258, label %259, label %260

259:                                              ; preds = %256, %253
  store i32 0, i32* %4, align 4
  br label %380

260:                                              ; preds = %256, %245, %237, %229, %221
  %261 = load %struct.amdgpu_device*, %struct.amdgpu_device** %9, align 8
  %262 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %261, i32 0, i32 3
  %263 = getelementptr inbounds %struct.TYPE_133__, %struct.TYPE_133__* %262, i32 0, i32 0
  %264 = load %struct.TYPE_132__*, %struct.TYPE_132__** %263, align 8
  %265 = getelementptr inbounds %struct.TYPE_132__, %struct.TYPE_132__* %264, i32 0, i32 1
  %266 = load i32, i32* %265, align 4
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %283, label %268

268:                                              ; preds = %260
  %269 = load %struct.amdgpu_device*, %struct.amdgpu_device** %9, align 8
  %270 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %269, i32 0, i32 3
  %271 = getelementptr inbounds %struct.TYPE_133__, %struct.TYPE_133__* %270, i32 0, i32 0
  %272 = load %struct.TYPE_132__*, %struct.TYPE_132__** %271, align 8
  %273 = getelementptr inbounds %struct.TYPE_132__, %struct.TYPE_132__* %272, i32 0, i32 0
  %274 = load i32, i32* %273, align 4
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %283, label %276

276:                                              ; preds = %268
  %277 = load %struct.attribute*, %struct.attribute** %6, align 8
  %278 = icmp eq %struct.attribute* %277, getelementptr inbounds (%struct.TYPE_128__, %struct.TYPE_128__* @sensor_dev_attr_fan1_max, i32 0, i32 0, i32 0)
  br i1 %278, label %282, label %279

279:                                              ; preds = %276
  %280 = load %struct.attribute*, %struct.attribute** %6, align 8
  %281 = icmp eq %struct.attribute* %280, getelementptr inbounds (%struct.TYPE_127__, %struct.TYPE_127__* @sensor_dev_attr_fan1_min, i32 0, i32 0, i32 0)
  br i1 %281, label %282, label %283

282:                                              ; preds = %279, %276
  store i32 0, i32* %4, align 4
  br label %380

283:                                              ; preds = %279, %268, %260
  br label %284

284:                                              ; preds = %283, %217
  %285 = load %struct.amdgpu_device*, %struct.amdgpu_device** %9, align 8
  %286 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %285, i32 0, i32 1
  %287 = load i64, i64* %286, align 8
  %288 = load i64, i64* @AMDGPU_FAMILY_SI, align 8
  %289 = icmp eq i64 %287, %288
  br i1 %289, label %296, label %290

290:                                              ; preds = %284
  %291 = load %struct.amdgpu_device*, %struct.amdgpu_device** %9, align 8
  %292 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %291, i32 0, i32 1
  %293 = load i64, i64* %292, align 8
  %294 = load i64, i64* @AMDGPU_FAMILY_KV, align 8
  %295 = icmp eq i64 %293, %294
  br i1 %295, label %296, label %303

296:                                              ; preds = %290, %284
  %297 = load %struct.attribute*, %struct.attribute** %6, align 8
  %298 = icmp eq %struct.attribute* %297, getelementptr inbounds (%struct.TYPE_123__, %struct.TYPE_123__* @sensor_dev_attr_in0_input, i32 0, i32 0, i32 0)
  br i1 %298, label %302, label %299

299:                                              ; preds = %296
  %300 = load %struct.attribute*, %struct.attribute** %6, align 8
  %301 = icmp eq %struct.attribute* %300, getelementptr inbounds (%struct.TYPE_121__, %struct.TYPE_121__* @sensor_dev_attr_in0_label, i32 0, i32 0, i32 0)
  br i1 %301, label %302, label %303

302:                                              ; preds = %299, %296
  store i32 0, i32* %4, align 4
  br label %380

303:                                              ; preds = %299, %290
  %304 = load %struct.amdgpu_device*, %struct.amdgpu_device** %9, align 8
  %305 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %304, i32 0, i32 0
  %306 = load i32, i32* %305, align 8
  %307 = load i32, i32* @AMD_IS_APU, align 4
  %308 = and i32 %306, %307
  %309 = icmp ne i32 %308, 0
  br i1 %309, label %317, label %310

310:                                              ; preds = %303
  %311 = load %struct.attribute*, %struct.attribute** %6, align 8
  %312 = icmp eq %struct.attribute* %311, getelementptr inbounds (%struct.TYPE_120__, %struct.TYPE_120__* @sensor_dev_attr_in1_input, i32 0, i32 0, i32 0)
  br i1 %312, label %316, label %313

313:                                              ; preds = %310
  %314 = load %struct.attribute*, %struct.attribute** %6, align 8
  %315 = icmp eq %struct.attribute* %314, getelementptr inbounds (%struct.TYPE_119__, %struct.TYPE_119__* @sensor_dev_attr_in1_label, i32 0, i32 0, i32 0)
  br i1 %315, label %316, label %317

316:                                              ; preds = %313, %310
  store i32 0, i32* %4, align 4
  br label %380

317:                                              ; preds = %313, %303
  %318 = load %struct.amdgpu_device*, %struct.amdgpu_device** %9, align 8
  %319 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %318, i32 0, i32 0
  %320 = load i32, i32* %319, align 8
  %321 = load i32, i32* @AMD_IS_APU, align 4
  %322 = and i32 %320, %321
  %323 = icmp ne i32 %322, 0
  br i1 %323, label %324, label %331

324:                                              ; preds = %317
  %325 = load %struct.attribute*, %struct.attribute** %6, align 8
  %326 = icmp eq %struct.attribute* %325, getelementptr inbounds (%struct.TYPE_125__, %struct.TYPE_125__* @sensor_dev_attr_freq2_input, i32 0, i32 0, i32 0)
  br i1 %326, label %330, label %327

327:                                              ; preds = %324
  %328 = load %struct.attribute*, %struct.attribute** %6, align 8
  %329 = icmp eq %struct.attribute* %328, getelementptr inbounds (%struct.TYPE_124__, %struct.TYPE_124__* @sensor_dev_attr_freq2_label, i32 0, i32 0, i32 0)
  br i1 %329, label %330, label %331

330:                                              ; preds = %327, %324
  store i32 0, i32* %4, align 4
  br label %380

331:                                              ; preds = %327, %317
  %332 = load %struct.amdgpu_device*, %struct.amdgpu_device** %9, align 8
  %333 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %332, i32 0, i32 0
  %334 = load i32, i32* %333, align 8
  %335 = load i32, i32* @AMD_IS_APU, align 4
  %336 = and i32 %334, %335
  %337 = icmp ne i32 %336, 0
  br i1 %337, label %344, label %338

338:                                              ; preds = %331
  %339 = load %struct.amdgpu_device*, %struct.amdgpu_device** %9, align 8
  %340 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %339, i32 0, i32 2
  %341 = load i64, i64* %340, align 8
  %342 = load i64, i64* @CHIP_VEGA10, align 8
  %343 = icmp slt i64 %341, %342
  br i1 %343, label %344, label %378

344:                                              ; preds = %338, %331
  %345 = load %struct.attribute*, %struct.attribute** %6, align 8
  %346 = icmp eq %struct.attribute* %345, getelementptr inbounds (%struct.TYPE_106__, %struct.TYPE_106__* @sensor_dev_attr_temp2_crit, i32 0, i32 0, i32 0)
  br i1 %346, label %377, label %347

347:                                              ; preds = %344
  %348 = load %struct.attribute*, %struct.attribute** %6, align 8
  %349 = icmp eq %struct.attribute* %348, getelementptr inbounds (%struct.TYPE_105__, %struct.TYPE_105__* @sensor_dev_attr_temp2_crit_hyst, i32 0, i32 0, i32 0)
  br i1 %349, label %377, label %350

350:                                              ; preds = %347
  %351 = load %struct.attribute*, %struct.attribute** %6, align 8
  %352 = icmp eq %struct.attribute* %351, getelementptr inbounds (%struct.TYPE_101__, %struct.TYPE_101__* @sensor_dev_attr_temp3_crit, i32 0, i32 0, i32 0)
  br i1 %352, label %377, label %353

353:                                              ; preds = %350
  %354 = load %struct.attribute*, %struct.attribute** %6, align 8
  %355 = icmp eq %struct.attribute* %354, getelementptr inbounds (%struct.TYPE_99__, %struct.TYPE_99__* @sensor_dev_attr_temp3_crit_hyst, i32 0, i32 0, i32 0)
  br i1 %355, label %377, label %356

356:                                              ; preds = %353
  %357 = load %struct.attribute*, %struct.attribute** %6, align 8
  %358 = icmp eq %struct.attribute* %357, getelementptr inbounds (%struct.TYPE_107__, %struct.TYPE_107__* @sensor_dev_attr_temp1_emergency, i32 0, i32 0, i32 0)
  br i1 %358, label %377, label %359

359:                                              ; preds = %356
  %360 = load %struct.attribute*, %struct.attribute** %6, align 8
  %361 = icmp eq %struct.attribute* %360, getelementptr inbounds (%struct.TYPE_104__, %struct.TYPE_104__* @sensor_dev_attr_temp2_emergency, i32 0, i32 0, i32 0)
  br i1 %361, label %377, label %362

362:                                              ; preds = %359
  %363 = load %struct.attribute*, %struct.attribute** %6, align 8
  %364 = icmp eq %struct.attribute* %363, getelementptr inbounds (%struct.TYPE_98__, %struct.TYPE_98__* @sensor_dev_attr_temp3_emergency, i32 0, i32 0, i32 0)
  br i1 %364, label %377, label %365

365:                                              ; preds = %362
  %366 = load %struct.attribute*, %struct.attribute** %6, align 8
  %367 = icmp eq %struct.attribute* %366, getelementptr inbounds (%struct.TYPE_103__, %struct.TYPE_103__* @sensor_dev_attr_temp2_input, i32 0, i32 0, i32 0)
  br i1 %367, label %377, label %368

368:                                              ; preds = %365
  %369 = load %struct.attribute*, %struct.attribute** %6, align 8
  %370 = icmp eq %struct.attribute* %369, getelementptr inbounds (%struct.TYPE_97__, %struct.TYPE_97__* @sensor_dev_attr_temp3_input, i32 0, i32 0, i32 0)
  br i1 %370, label %377, label %371

371:                                              ; preds = %368
  %372 = load %struct.attribute*, %struct.attribute** %6, align 8
  %373 = icmp eq %struct.attribute* %372, getelementptr inbounds (%struct.TYPE_102__, %struct.TYPE_102__* @sensor_dev_attr_temp2_label, i32 0, i32 0, i32 0)
  br i1 %373, label %377, label %374

374:                                              ; preds = %371
  %375 = load %struct.attribute*, %struct.attribute** %6, align 8
  %376 = icmp eq %struct.attribute* %375, getelementptr inbounds (%struct.TYPE_96__, %struct.TYPE_96__* @sensor_dev_attr_temp3_label, i32 0, i32 0, i32 0)
  br i1 %376, label %377, label %378

377:                                              ; preds = %374, %371, %368, %365, %362, %359, %356, %353, %350, %347, %344
  store i32 0, i32* %4, align 4
  br label %380

378:                                              ; preds = %374, %338
  %379 = load i32, i32* %10, align 4
  store i32 %379, i32* %4, align 4
  br label %380

380:                                              ; preds = %378, %377, %330, %316, %302, %282, %259, %216, %125, %85, %50
  %381 = load i32, i32* %4, align 4
  ret i32 %381
}

declare dso_local %struct.device* @kobj_to_dev(%struct.kobject*) #1

declare dso_local %struct.amdgpu_device* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @is_support_sw_smu(%struct.amdgpu_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
