; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_dme1737.c_show_pwm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_dme1737.c_show_pwm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.dme1737_data = type { i32*, i32*, i32*, i32*, i32*, i32* }
%struct.sensor_device_attribute_2 = type { i32, i32 }

@.str = private unnamed_addr constant [22 x i8] c"Unknown function %d.\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @show_pwm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @show_pwm(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.dme1737_data*, align 8
  %8 = alloca %struct.sensor_device_attribute_2*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %12 = load %struct.device*, %struct.device** %4, align 8
  %13 = call %struct.dme1737_data* @dme1737_update_device(%struct.device* %12)
  store %struct.dme1737_data* %13, %struct.dme1737_data** %7, align 8
  %14 = load %struct.device_attribute*, %struct.device_attribute** %5, align 8
  %15 = call %struct.sensor_device_attribute_2* @to_sensor_dev_attr_2(%struct.device_attribute* %14)
  store %struct.sensor_device_attribute_2* %15, %struct.sensor_device_attribute_2** %8, align 8
  %16 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %8, align 8
  %17 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %9, align 4
  %19 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %8, align 8
  %20 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %10, align 4
  switch i32 %22, label %134 [
    i32 135, label %23
    i32 129, label %43
    i32 130, label %52
    i32 128, label %66
    i32 134, label %78
    i32 131, label %106
    i32 133, label %125
    i32 132, label %133
  ]

23:                                               ; preds = %3
  %24 = load %struct.dme1737_data*, %struct.dme1737_data** %7, align 8
  %25 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %24, i32 0, i32 4
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %9, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @PWM_EN_FROM_REG(i32 %30)
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %23
  store i32 255, i32* %11, align 4
  br label %42

34:                                               ; preds = %23
  %35 = load %struct.dme1737_data*, %struct.dme1737_data** %7, align 8
  %36 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %9, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %11, align 4
  br label %42

42:                                               ; preds = %34, %33
  br label %138

43:                                               ; preds = %3
  %44 = load %struct.dme1737_data*, %struct.dme1737_data** %7, align 8
  %45 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %44, i32 0, i32 5
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %9, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @PWM_FREQ_FROM_REG(i32 %50)
  store i32 %51, i32* %11, align 4
  br label %138

52:                                               ; preds = %3
  %53 = load i32, i32* %9, align 4
  %54 = icmp sge i32 %53, 3
  br i1 %54, label %55, label %56

55:                                               ; preds = %52
  store i32 1, i32* %11, align 4
  br label %65

56:                                               ; preds = %52
  %57 = load %struct.dme1737_data*, %struct.dme1737_data** %7, align 8
  %58 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %57, i32 0, i32 4
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* %9, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @PWM_EN_FROM_REG(i32 %63)
  store i32 %64, i32* %11, align 4
  br label %65

65:                                               ; preds = %56, %55
  br label %138

66:                                               ; preds = %3
  %67 = load %struct.dme1737_data*, %struct.dme1737_data** %7, align 8
  %68 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %67, i32 0, i32 3
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* %9, align 4
  %71 = icmp sgt i32 %70, 0
  %72 = zext i1 %71 to i32
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %69, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %9, align 4
  %77 = call i32 @PWM_RR_FROM_REG(i32 %75, i32 %76)
  store i32 %77, i32* %11, align 4
  br label %138

78:                                               ; preds = %3
  %79 = load %struct.dme1737_data*, %struct.dme1737_data** %7, align 8
  %80 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %79, i32 0, i32 4
  %81 = load i32*, i32** %80, align 8
  %82 = load i32, i32* %9, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @PWM_EN_FROM_REG(i32 %85)
  %87 = icmp eq i32 %86, 2
  br i1 %87, label %88, label %97

88:                                               ; preds = %78
  %89 = load %struct.dme1737_data*, %struct.dme1737_data** %7, align 8
  %90 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %89, i32 0, i32 4
  %91 = load i32*, i32** %90, align 8
  %92 = load i32, i32* %9, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @PWM_ACZ_FROM_REG(i32 %95)
  store i32 %96, i32* %11, align 4
  br label %105

97:                                               ; preds = %78
  %98 = load %struct.dme1737_data*, %struct.dme1737_data** %7, align 8
  %99 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %98, i32 0, i32 1
  %100 = load i32*, i32** %99, align 8
  %101 = load i32, i32* %9, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  %104 = load i32, i32* %103, align 4
  store i32 %104, i32* %11, align 4
  br label %105

105:                                              ; preds = %97, %88
  br label %138

106:                                              ; preds = %3
  %107 = load %struct.dme1737_data*, %struct.dme1737_data** %7, align 8
  %108 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %107, i32 0, i32 3
  %109 = load i32*, i32** %108, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 0
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* %9, align 4
  %113 = call i32 @PWM_OFF_FROM_REG(i32 %111, i32 %112)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %123

115:                                              ; preds = %106
  %116 = load %struct.dme1737_data*, %struct.dme1737_data** %7, align 8
  %117 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %116, i32 0, i32 2
  %118 = load i32*, i32** %117, align 8
  %119 = load i32, i32* %9, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %118, i64 %120
  %122 = load i32, i32* %121, align 4
  store i32 %122, i32* %11, align 4
  br label %124

123:                                              ; preds = %106
  store i32 0, i32* %11, align 4
  br label %124

124:                                              ; preds = %123, %115
  br label %138

125:                                              ; preds = %3
  %126 = load %struct.dme1737_data*, %struct.dme1737_data** %7, align 8
  %127 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %126, i32 0, i32 2
  %128 = load i32*, i32** %127, align 8
  %129 = load i32, i32* %9, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %128, i64 %130
  %132 = load i32, i32* %131, align 4
  store i32 %132, i32* %11, align 4
  br label %138

133:                                              ; preds = %3
  store i32 255, i32* %11, align 4
  br label %138

134:                                              ; preds = %3
  store i32 0, i32* %11, align 4
  %135 = load %struct.device*, %struct.device** %4, align 8
  %136 = load i32, i32* %10, align 4
  %137 = call i32 @dev_dbg(%struct.device* %135, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %136)
  br label %138

138:                                              ; preds = %134, %133, %125, %124, %105, %66, %65, %43, %42
  %139 = load i8*, i8** %6, align 8
  %140 = load i32, i32* %11, align 4
  %141 = call i32 @sprintf(i8* %139, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %140)
  ret i32 %141
}

declare dso_local %struct.dme1737_data* @dme1737_update_device(%struct.device*) #1

declare dso_local %struct.sensor_device_attribute_2* @to_sensor_dev_attr_2(%struct.device_attribute*) #1

declare dso_local i32 @PWM_EN_FROM_REG(i32) #1

declare dso_local i32 @PWM_FREQ_FROM_REG(i32) #1

declare dso_local i32 @PWM_RR_FROM_REG(i32, i32) #1

declare dso_local i32 @PWM_ACZ_FROM_REG(i32) #1

declare dso_local i32 @PWM_OFF_FROM_REG(i32, i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
