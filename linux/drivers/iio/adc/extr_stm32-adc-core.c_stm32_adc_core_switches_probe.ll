; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_stm32-adc-core.c_stm32_adc_core_switches_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_stm32-adc-core.c_stm32_adc_core_switches_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.stm32_adc_priv = type { i32, i32*, %struct.TYPE_2__*, i32*, i32* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"st,syscfg\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Can't probe syscfg: %d\0A\00", align 1
@HAS_VBOOSTER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"booster-supply\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"booster\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"can't get booster %d\0A\00", align 1
@HAS_ANASWVDD = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [11 x i8] c"vdd-supply\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"vdd\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"can't get vdd %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"vdd enable failed %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [27 x i8] c"vdd get voltage failed %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.stm32_adc_priv*)* @stm32_adc_core_switches_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_adc_core_switches_probe(%struct.device* %0, %struct.stm32_adc_priv* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.stm32_adc_priv*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.stm32_adc_priv* %1, %struct.stm32_adc_priv** %5, align 8
  %8 = load %struct.device*, %struct.device** %4, align 8
  %9 = getelementptr inbounds %struct.device, %struct.device* %8, i32 0, i32 0
  %10 = load %struct.device_node*, %struct.device_node** %9, align 8
  store %struct.device_node* %10, %struct.device_node** %6, align 8
  %11 = load %struct.device_node*, %struct.device_node** %6, align 8
  %12 = call i32* @syscon_regmap_lookup_by_phandle(%struct.device_node* %11, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.stm32_adc_priv*, %struct.stm32_adc_priv** %5, align 8
  %14 = getelementptr inbounds %struct.stm32_adc_priv, %struct.stm32_adc_priv* %13, i32 0, i32 4
  store i32* %12, i32** %14, align 8
  %15 = load %struct.stm32_adc_priv*, %struct.stm32_adc_priv** %5, align 8
  %16 = getelementptr inbounds %struct.stm32_adc_priv, %struct.stm32_adc_priv* %15, i32 0, i32 4
  %17 = load i32*, i32** %16, align 8
  %18 = call i64 @IS_ERR(i32* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %43

20:                                               ; preds = %2
  %21 = load %struct.stm32_adc_priv*, %struct.stm32_adc_priv** %5, align 8
  %22 = getelementptr inbounds %struct.stm32_adc_priv, %struct.stm32_adc_priv* %21, i32 0, i32 4
  %23 = load i32*, i32** %22, align 8
  %24 = call i32 @PTR_ERR(i32* %23)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @ENODEV, align 4
  %27 = sub nsw i32 0, %26
  %28 = icmp ne i32 %25, %27
  br i1 %28, label %29, label %40

29:                                               ; preds = %20
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @EPROBE_DEFER, align 4
  %32 = sub nsw i32 0, %31
  %33 = icmp ne i32 %30, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %29
  %35 = load %struct.device*, %struct.device** %4, align 8
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @dev_err(%struct.device* %35, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  br label %38

38:                                               ; preds = %34, %29
  %39 = load i32, i32* %7, align 4
  store i32 %39, i32* %3, align 4
  br label %181

40:                                               ; preds = %20
  %41 = load %struct.stm32_adc_priv*, %struct.stm32_adc_priv** %5, align 8
  %42 = getelementptr inbounds %struct.stm32_adc_priv, %struct.stm32_adc_priv* %41, i32 0, i32 4
  store i32* null, i32** %42, align 8
  br label %43

43:                                               ; preds = %40, %2
  %44 = load %struct.stm32_adc_priv*, %struct.stm32_adc_priv** %5, align 8
  %45 = getelementptr inbounds %struct.stm32_adc_priv, %struct.stm32_adc_priv* %44, i32 0, i32 2
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @HAS_VBOOSTER, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %91

52:                                               ; preds = %43
  %53 = load %struct.device_node*, %struct.device_node** %6, align 8
  %54 = call i64 @of_property_read_bool(%struct.device_node* %53, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %91

56:                                               ; preds = %52
  %57 = load %struct.device*, %struct.device** %4, align 8
  %58 = call i8* @devm_regulator_get_optional(%struct.device* %57, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %59 = bitcast i8* %58 to i32*
  %60 = load %struct.stm32_adc_priv*, %struct.stm32_adc_priv** %5, align 8
  %61 = getelementptr inbounds %struct.stm32_adc_priv, %struct.stm32_adc_priv* %60, i32 0, i32 3
  store i32* %59, i32** %61, align 8
  %62 = load %struct.stm32_adc_priv*, %struct.stm32_adc_priv** %5, align 8
  %63 = getelementptr inbounds %struct.stm32_adc_priv, %struct.stm32_adc_priv* %62, i32 0, i32 3
  %64 = load i32*, i32** %63, align 8
  %65 = call i64 @IS_ERR(i32* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %90

67:                                               ; preds = %56
  %68 = load %struct.stm32_adc_priv*, %struct.stm32_adc_priv** %5, align 8
  %69 = getelementptr inbounds %struct.stm32_adc_priv, %struct.stm32_adc_priv* %68, i32 0, i32 3
  %70 = load i32*, i32** %69, align 8
  %71 = call i32 @PTR_ERR(i32* %70)
  store i32 %71, i32* %7, align 4
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* @ENODEV, align 4
  %74 = sub nsw i32 0, %73
  %75 = icmp ne i32 %72, %74
  br i1 %75, label %76, label %87

76:                                               ; preds = %67
  %77 = load i32, i32* %7, align 4
  %78 = load i32, i32* @EPROBE_DEFER, align 4
  %79 = sub nsw i32 0, %78
  %80 = icmp ne i32 %77, %79
  br i1 %80, label %81, label %85

81:                                               ; preds = %76
  %82 = load %struct.device*, %struct.device** %4, align 8
  %83 = load i32, i32* %7, align 4
  %84 = call i32 @dev_err(%struct.device* %82, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32 %83)
  br label %85

85:                                               ; preds = %81, %76
  %86 = load i32, i32* %7, align 4
  store i32 %86, i32* %3, align 4
  br label %181

87:                                               ; preds = %67
  %88 = load %struct.stm32_adc_priv*, %struct.stm32_adc_priv** %5, align 8
  %89 = getelementptr inbounds %struct.stm32_adc_priv, %struct.stm32_adc_priv* %88, i32 0, i32 3
  store i32* null, i32** %89, align 8
  br label %90

90:                                               ; preds = %87, %56
  br label %91

91:                                               ; preds = %90, %52, %43
  %92 = load %struct.stm32_adc_priv*, %struct.stm32_adc_priv** %5, align 8
  %93 = getelementptr inbounds %struct.stm32_adc_priv, %struct.stm32_adc_priv* %92, i32 0, i32 2
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @HAS_ANASWVDD, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %139

100:                                              ; preds = %91
  %101 = load %struct.device_node*, %struct.device_node** %6, align 8
  %102 = call i64 @of_property_read_bool(%struct.device_node* %101, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0))
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %139

104:                                              ; preds = %100
  %105 = load %struct.device*, %struct.device** %4, align 8
  %106 = call i8* @devm_regulator_get_optional(%struct.device* %105, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  %107 = bitcast i8* %106 to i32*
  %108 = load %struct.stm32_adc_priv*, %struct.stm32_adc_priv** %5, align 8
  %109 = getelementptr inbounds %struct.stm32_adc_priv, %struct.stm32_adc_priv* %108, i32 0, i32 1
  store i32* %107, i32** %109, align 8
  %110 = load %struct.stm32_adc_priv*, %struct.stm32_adc_priv** %5, align 8
  %111 = getelementptr inbounds %struct.stm32_adc_priv, %struct.stm32_adc_priv* %110, i32 0, i32 1
  %112 = load i32*, i32** %111, align 8
  %113 = call i64 @IS_ERR(i32* %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %138

115:                                              ; preds = %104
  %116 = load %struct.stm32_adc_priv*, %struct.stm32_adc_priv** %5, align 8
  %117 = getelementptr inbounds %struct.stm32_adc_priv, %struct.stm32_adc_priv* %116, i32 0, i32 1
  %118 = load i32*, i32** %117, align 8
  %119 = call i32 @PTR_ERR(i32* %118)
  store i32 %119, i32* %7, align 4
  %120 = load i32, i32* %7, align 4
  %121 = load i32, i32* @ENODEV, align 4
  %122 = sub nsw i32 0, %121
  %123 = icmp ne i32 %120, %122
  br i1 %123, label %124, label %135

124:                                              ; preds = %115
  %125 = load i32, i32* %7, align 4
  %126 = load i32, i32* @EPROBE_DEFER, align 4
  %127 = sub nsw i32 0, %126
  %128 = icmp ne i32 %125, %127
  br i1 %128, label %129, label %133

129:                                              ; preds = %124
  %130 = load %struct.device*, %struct.device** %4, align 8
  %131 = load i32, i32* %7, align 4
  %132 = call i32 @dev_err(%struct.device* %130, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0), i32 %131)
  br label %133

133:                                              ; preds = %129, %124
  %134 = load i32, i32* %7, align 4
  store i32 %134, i32* %3, align 4
  br label %181

135:                                              ; preds = %115
  %136 = load %struct.stm32_adc_priv*, %struct.stm32_adc_priv** %5, align 8
  %137 = getelementptr inbounds %struct.stm32_adc_priv, %struct.stm32_adc_priv* %136, i32 0, i32 1
  store i32* null, i32** %137, align 8
  br label %138

138:                                              ; preds = %135, %104
  br label %139

139:                                              ; preds = %138, %100, %91
  %140 = load %struct.stm32_adc_priv*, %struct.stm32_adc_priv** %5, align 8
  %141 = getelementptr inbounds %struct.stm32_adc_priv, %struct.stm32_adc_priv* %140, i32 0, i32 1
  %142 = load i32*, i32** %141, align 8
  %143 = icmp ne i32* %142, null
  br i1 %143, label %144, label %180

144:                                              ; preds = %139
  %145 = load %struct.stm32_adc_priv*, %struct.stm32_adc_priv** %5, align 8
  %146 = getelementptr inbounds %struct.stm32_adc_priv, %struct.stm32_adc_priv* %145, i32 0, i32 1
  %147 = load i32*, i32** %146, align 8
  %148 = call i32 @regulator_enable(i32* %147)
  store i32 %148, i32* %7, align 4
  %149 = load i32, i32* %7, align 4
  %150 = icmp slt i32 %149, 0
  br i1 %150, label %151, label %156

151:                                              ; preds = %144
  %152 = load %struct.device*, %struct.device** %4, align 8
  %153 = load i32, i32* %7, align 4
  %154 = call i32 @dev_err(%struct.device* %152, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0), i32 %153)
  %155 = load i32, i32* %7, align 4
  store i32 %155, i32* %3, align 4
  br label %181

156:                                              ; preds = %144
  %157 = load %struct.stm32_adc_priv*, %struct.stm32_adc_priv** %5, align 8
  %158 = getelementptr inbounds %struct.stm32_adc_priv, %struct.stm32_adc_priv* %157, i32 0, i32 1
  %159 = load i32*, i32** %158, align 8
  %160 = call i32 @regulator_get_voltage(i32* %159)
  store i32 %160, i32* %7, align 4
  %161 = load i32, i32* %7, align 4
  %162 = icmp slt i32 %161, 0
  br i1 %162, label %163, label %172

163:                                              ; preds = %156
  %164 = load %struct.device*, %struct.device** %4, align 8
  %165 = load i32, i32* %7, align 4
  %166 = call i32 @dev_err(%struct.device* %164, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0), i32 %165)
  %167 = load %struct.stm32_adc_priv*, %struct.stm32_adc_priv** %5, align 8
  %168 = getelementptr inbounds %struct.stm32_adc_priv, %struct.stm32_adc_priv* %167, i32 0, i32 1
  %169 = load i32*, i32** %168, align 8
  %170 = call i32 @regulator_disable(i32* %169)
  %171 = load i32, i32* %7, align 4
  store i32 %171, i32* %3, align 4
  br label %181

172:                                              ; preds = %156
  %173 = load i32, i32* %7, align 4
  %174 = load %struct.stm32_adc_priv*, %struct.stm32_adc_priv** %5, align 8
  %175 = getelementptr inbounds %struct.stm32_adc_priv, %struct.stm32_adc_priv* %174, i32 0, i32 0
  store i32 %173, i32* %175, align 8
  %176 = load %struct.stm32_adc_priv*, %struct.stm32_adc_priv** %5, align 8
  %177 = getelementptr inbounds %struct.stm32_adc_priv, %struct.stm32_adc_priv* %176, i32 0, i32 1
  %178 = load i32*, i32** %177, align 8
  %179 = call i32 @regulator_disable(i32* %178)
  br label %180

180:                                              ; preds = %172, %139
  store i32 0, i32* %3, align 4
  br label %181

181:                                              ; preds = %180, %163, %151, %133, %85, %38
  %182 = load i32, i32* %3, align 4
  ret i32 %182
}

declare dso_local i32* @syscon_regmap_lookup_by_phandle(%struct.device_node*, i8*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i64 @of_property_read_bool(%struct.device_node*, i8*) #1

declare dso_local i8* @devm_regulator_get_optional(%struct.device*, i8*) #1

declare dso_local i32 @regulator_enable(i32*) #1

declare dso_local i32 @regulator_get_voltage(i32*) #1

declare dso_local i32 @regulator_disable(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
