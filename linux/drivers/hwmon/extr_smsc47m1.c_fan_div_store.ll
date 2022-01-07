; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_smsc47m1.c_fan_div_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_smsc47m1.c_fan_div_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.sensor_device_attribute = type { i32 }
%struct.smsc47m1_data = type { i32*, i32*, i32 }

@EINVAL = common dso_local global i32 0, align 4
@SMSC47M1_REG_FANDIV = common dso_local global i32 0, align 4
@SMSC47M2_REG_FANDIV3 = common dso_local global i32 0, align 4
@SMSC47M1_REG_FAN_PRELOAD = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @fan_div_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fan_div_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.sensor_device_attribute*, align 8
  %11 = alloca %struct.smsc47m1_data*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %17 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %18 = call %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute* %17)
  store %struct.sensor_device_attribute* %18, %struct.sensor_device_attribute** %10, align 8
  %19 = load %struct.device*, %struct.device** %6, align 8
  %20 = call %struct.smsc47m1_data* @dev_get_drvdata(%struct.device* %19)
  store %struct.smsc47m1_data* %20, %struct.smsc47m1_data** %11, align 8
  %21 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %10, align 8
  %22 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %12, align 4
  %24 = load %struct.smsc47m1_data*, %struct.smsc47m1_data** %11, align 8
  %25 = getelementptr inbounds %struct.smsc47m1_data, %struct.smsc47m1_data* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %12, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @DIV_FROM_REG(i32 %30)
  store i64 %31, i64* %16, align 8
  %32 = load i8*, i8** %8, align 8
  %33 = call i32 @kstrtol(i8* %32, i32 10, i64* %13)
  store i32 %33, i32* %14, align 4
  %34 = load i32, i32* %14, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %4
  %37 = load i32, i32* %14, align 4
  store i32 %37, i32* %5, align 4
  br label %182

38:                                               ; preds = %4
  %39 = load i64, i64* %13, align 8
  %40 = load i64, i64* %16, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %38
  %43 = load i64, i64* %9, align 8
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %5, align 4
  br label %182

45:                                               ; preds = %38
  %46 = load %struct.smsc47m1_data*, %struct.smsc47m1_data** %11, align 8
  %47 = getelementptr inbounds %struct.smsc47m1_data, %struct.smsc47m1_data* %46, i32 0, i32 2
  %48 = call i32 @mutex_lock(i32* %47)
  %49 = load i64, i64* %13, align 8
  switch i64 %49, label %78 [
    i64 1, label %50
    i64 2, label %57
    i64 4, label %64
    i64 8, label %71
  ]

50:                                               ; preds = %45
  %51 = load %struct.smsc47m1_data*, %struct.smsc47m1_data** %11, align 8
  %52 = getelementptr inbounds %struct.smsc47m1_data, %struct.smsc47m1_data* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %12, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  store i32 0, i32* %56, align 4
  br label %84

57:                                               ; preds = %45
  %58 = load %struct.smsc47m1_data*, %struct.smsc47m1_data** %11, align 8
  %59 = getelementptr inbounds %struct.smsc47m1_data, %struct.smsc47m1_data* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %12, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  store i32 1, i32* %63, align 4
  br label %84

64:                                               ; preds = %45
  %65 = load %struct.smsc47m1_data*, %struct.smsc47m1_data** %11, align 8
  %66 = getelementptr inbounds %struct.smsc47m1_data, %struct.smsc47m1_data* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* %12, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  store i32 2, i32* %70, align 4
  br label %84

71:                                               ; preds = %45
  %72 = load %struct.smsc47m1_data*, %struct.smsc47m1_data** %11, align 8
  %73 = getelementptr inbounds %struct.smsc47m1_data, %struct.smsc47m1_data* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* %12, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  store i32 3, i32* %77, align 4
  br label %84

78:                                               ; preds = %45
  %79 = load %struct.smsc47m1_data*, %struct.smsc47m1_data** %11, align 8
  %80 = getelementptr inbounds %struct.smsc47m1_data, %struct.smsc47m1_data* %79, i32 0, i32 2
  %81 = call i32 @mutex_unlock(i32* %80)
  %82 = load i32, i32* @EINVAL, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %5, align 4
  br label %182

84:                                               ; preds = %71, %64, %57, %50
  %85 = load i32, i32* %12, align 4
  switch i32 %85, label %134 [
    i32 0, label %86
    i32 1, label %86
    i32 2, label %115
  ]

86:                                               ; preds = %84, %84
  %87 = load %struct.smsc47m1_data*, %struct.smsc47m1_data** %11, align 8
  %88 = load i32, i32* @SMSC47M1_REG_FANDIV, align 4
  %89 = call i32 @smsc47m1_read_value(%struct.smsc47m1_data* %87, i32 %88)
  %90 = load i32, i32* %12, align 4
  %91 = mul nsw i32 2, %90
  %92 = add nsw i32 4, %91
  %93 = shl i32 3, %92
  %94 = xor i32 %93, -1
  %95 = and i32 %89, %94
  %96 = sext i32 %95 to i64
  store i64 %96, i64* %15, align 8
  %97 = load %struct.smsc47m1_data*, %struct.smsc47m1_data** %11, align 8
  %98 = getelementptr inbounds %struct.smsc47m1_data, %struct.smsc47m1_data* %97, i32 0, i32 0
  %99 = load i32*, i32** %98, align 8
  %100 = load i32, i32* %12, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* %12, align 4
  %105 = mul nsw i32 2, %104
  %106 = add nsw i32 4, %105
  %107 = shl i32 %103, %106
  %108 = sext i32 %107 to i64
  %109 = load i64, i64* %15, align 8
  %110 = or i64 %109, %108
  store i64 %110, i64* %15, align 8
  %111 = load %struct.smsc47m1_data*, %struct.smsc47m1_data** %11, align 8
  %112 = load i32, i32* @SMSC47M1_REG_FANDIV, align 4
  %113 = load i64, i64* %15, align 8
  %114 = call i32 @smsc47m1_write_value(%struct.smsc47m1_data* %111, i32 %112, i64 %113)
  br label %136

115:                                              ; preds = %84
  %116 = load %struct.smsc47m1_data*, %struct.smsc47m1_data** %11, align 8
  %117 = load i32, i32* @SMSC47M2_REG_FANDIV3, align 4
  %118 = call i32 @smsc47m1_read_value(%struct.smsc47m1_data* %116, i32 %117)
  %119 = and i32 %118, 207
  %120 = sext i32 %119 to i64
  store i64 %120, i64* %15, align 8
  %121 = load %struct.smsc47m1_data*, %struct.smsc47m1_data** %11, align 8
  %122 = getelementptr inbounds %struct.smsc47m1_data, %struct.smsc47m1_data* %121, i32 0, i32 0
  %123 = load i32*, i32** %122, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 2
  %125 = load i32, i32* %124, align 4
  %126 = shl i32 %125, 4
  %127 = sext i32 %126 to i64
  %128 = load i64, i64* %15, align 8
  %129 = or i64 %128, %127
  store i64 %129, i64* %15, align 8
  %130 = load %struct.smsc47m1_data*, %struct.smsc47m1_data** %11, align 8
  %131 = load i32, i32* @SMSC47M2_REG_FANDIV3, align 4
  %132 = load i64, i64* %15, align 8
  %133 = call i32 @smsc47m1_write_value(%struct.smsc47m1_data* %130, i32 %131, i64 %132)
  br label %136

134:                                              ; preds = %84
  %135 = call i32 (...) @BUG()
  br label %136

136:                                              ; preds = %134, %115, %86
  %137 = load i64, i64* %16, align 8
  %138 = load %struct.smsc47m1_data*, %struct.smsc47m1_data** %11, align 8
  %139 = getelementptr inbounds %struct.smsc47m1_data, %struct.smsc47m1_data* %138, i32 0, i32 1
  %140 = load i32*, i32** %139, align 8
  %141 = load i32, i32* %12, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32, i32* %140, i64 %142
  %144 = load i32, i32* %143, align 4
  %145 = sub nsw i32 192, %144
  %146 = sext i32 %145 to i64
  %147 = mul nsw i64 %137, %146
  %148 = load i64, i64* %13, align 8
  %149 = sdiv i64 %148, 2
  %150 = add nsw i64 %147, %149
  %151 = load i64, i64* %13, align 8
  %152 = sdiv i64 %150, %151
  %153 = sub nsw i64 192, %152
  store i64 %153, i64* %15, align 8
  %154 = load i64, i64* %15, align 8
  %155 = call i32 @clamp_val(i64 %154, i32 0, i32 191)
  %156 = load %struct.smsc47m1_data*, %struct.smsc47m1_data** %11, align 8
  %157 = getelementptr inbounds %struct.smsc47m1_data, %struct.smsc47m1_data* %156, i32 0, i32 1
  %158 = load i32*, i32** %157, align 8
  %159 = load i32, i32* %12, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i32, i32* %158, i64 %160
  store i32 %155, i32* %161, align 4
  %162 = load %struct.smsc47m1_data*, %struct.smsc47m1_data** %11, align 8
  %163 = load i32*, i32** @SMSC47M1_REG_FAN_PRELOAD, align 8
  %164 = load i32, i32* %12, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i32, i32* %163, i64 %165
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.smsc47m1_data*, %struct.smsc47m1_data** %11, align 8
  %169 = getelementptr inbounds %struct.smsc47m1_data, %struct.smsc47m1_data* %168, i32 0, i32 1
  %170 = load i32*, i32** %169, align 8
  %171 = load i32, i32* %12, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i32, i32* %170, i64 %172
  %174 = load i32, i32* %173, align 4
  %175 = sext i32 %174 to i64
  %176 = call i32 @smsc47m1_write_value(%struct.smsc47m1_data* %162, i32 %167, i64 %175)
  %177 = load %struct.smsc47m1_data*, %struct.smsc47m1_data** %11, align 8
  %178 = getelementptr inbounds %struct.smsc47m1_data, %struct.smsc47m1_data* %177, i32 0, i32 2
  %179 = call i32 @mutex_unlock(i32* %178)
  %180 = load i64, i64* %9, align 8
  %181 = trunc i64 %180 to i32
  store i32 %181, i32* %5, align 4
  br label %182

182:                                              ; preds = %136, %78, %42, %36
  %183 = load i32, i32* %5, align 4
  ret i32 %183
}

declare dso_local %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute*) #1

declare dso_local %struct.smsc47m1_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i64 @DIV_FROM_REG(i32) #1

declare dso_local i32 @kstrtol(i8*, i32, i64*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @smsc47m1_read_value(%struct.smsc47m1_data*, i32) #1

declare dso_local i32 @smsc47m1_write_value(%struct.smsc47m1_data*, i32, i64) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @clamp_val(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
