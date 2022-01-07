; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_lm63.c_show_pwm1.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_lm63.c_show_pwm1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.sensor_device_attribute = type { i32 }
%struct.lm63_data = type { i32*, i32, i64 }

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @show_pwm1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @show_pwm1(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.sensor_device_attribute*, align 8
  %8 = alloca %struct.lm63_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %11 = load %struct.device_attribute*, %struct.device_attribute** %5, align 8
  %12 = call %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute* %11)
  store %struct.sensor_device_attribute* %12, %struct.sensor_device_attribute** %7, align 8
  %13 = load %struct.device*, %struct.device** %4, align 8
  %14 = call %struct.lm63_data* @lm63_update_device(%struct.device* %13)
  store %struct.lm63_data* %14, %struct.lm63_data** %8, align 8
  %15 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %7, align 8
  %16 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %9, align 4
  %18 = load %struct.lm63_data*, %struct.lm63_data** %8, align 8
  %19 = getelementptr inbounds %struct.lm63_data, %struct.lm63_data* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %3
  %23 = load %struct.lm63_data*, %struct.lm63_data** %8, align 8
  %24 = getelementptr inbounds %struct.lm63_data, %struct.lm63_data* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %9, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %10, align 4
  br label %64

30:                                               ; preds = %3
  %31 = load %struct.lm63_data*, %struct.lm63_data** %8, align 8
  %32 = getelementptr inbounds %struct.lm63_data, %struct.lm63_data* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %9, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.lm63_data*, %struct.lm63_data** %8, align 8
  %39 = getelementptr inbounds %struct.lm63_data, %struct.lm63_data* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = mul nsw i32 2, %40
  %42 = icmp sge i32 %37, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %30
  br label %62

44:                                               ; preds = %30
  %45 = load %struct.lm63_data*, %struct.lm63_data** %8, align 8
  %46 = getelementptr inbounds %struct.lm63_data, %struct.lm63_data* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %9, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = mul nsw i32 %51, 255
  %53 = load %struct.lm63_data*, %struct.lm63_data** %8, align 8
  %54 = getelementptr inbounds %struct.lm63_data, %struct.lm63_data* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = add nsw i32 %52, %55
  %57 = load %struct.lm63_data*, %struct.lm63_data** %8, align 8
  %58 = getelementptr inbounds %struct.lm63_data, %struct.lm63_data* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = mul nsw i32 2, %59
  %61 = sdiv i32 %56, %60
  br label %62

62:                                               ; preds = %44, %43
  %63 = phi i32 [ 255, %43 ], [ %61, %44 ]
  store i32 %63, i32* %10, align 4
  br label %64

64:                                               ; preds = %62, %22
  %65 = load i8*, i8** %6, align 8
  %66 = load i32, i32* %10, align 4
  %67 = call i32 @sprintf(i8* %65, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %66)
  ret i32 %67
}

declare dso_local %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute*) #1

declare dso_local %struct.lm63_data* @lm63_update_device(%struct.device*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
