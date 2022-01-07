; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_it87.c_show_label.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_it87.c_show_label.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.it87_data = type { i32 }
%struct.TYPE_2__ = type { i32 }

@show_label.labels = internal constant [4 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [4 x i8] c"+5V\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"5VSB\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"Vbat\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"AVCC\00", align 1
@show_label.labels_it8721 = internal constant [4 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0)], align 16
@.str.4 = private unnamed_addr constant [6 x i8] c"+3.3V\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"3VSB\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @show_label to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @show_label(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.it87_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = call %struct.it87_data* @dev_get_drvdata(%struct.device* %10)
  store %struct.it87_data* %11, %struct.it87_data** %7, align 8
  %12 = load %struct.device_attribute*, %struct.device_attribute** %5, align 8
  %13 = call %struct.TYPE_2__* @to_sensor_dev_attr(%struct.device_attribute* %12)
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %8, align 4
  %16 = load %struct.it87_data*, %struct.it87_data** %7, align 8
  %17 = call i64 @has_vin3_5v(%struct.it87_data* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %3
  %20 = load i32, i32* %8, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = load i8*, i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @show_label.labels, i64 0, i64 0), align 16
  store i8* %23, i8** %9, align 8
  br label %43

24:                                               ; preds = %19, %3
  %25 = load %struct.it87_data*, %struct.it87_data** %7, align 8
  %26 = call i64 @has_12mv_adc(%struct.it87_data* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %24
  %29 = load %struct.it87_data*, %struct.it87_data** %7, align 8
  %30 = call i64 @has_10_9mv_adc(%struct.it87_data* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %28, %24
  %33 = load i32, i32* %8, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [4 x i8*], [4 x i8*]* @show_label.labels_it8721, i64 0, i64 %34
  %36 = load i8*, i8** %35, align 8
  store i8* %36, i8** %9, align 8
  br label %42

37:                                               ; preds = %28
  %38 = load i32, i32* %8, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [4 x i8*], [4 x i8*]* @show_label.labels, i64 0, i64 %39
  %41 = load i8*, i8** %40, align 8
  store i8* %41, i8** %9, align 8
  br label %42

42:                                               ; preds = %37, %32
  br label %43

43:                                               ; preds = %42, %22
  %44 = load i8*, i8** %6, align 8
  %45 = load i8*, i8** %9, align 8
  %46 = call i32 @sprintf(i8* %44, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8* %45)
  ret i32 %46
}

declare dso_local %struct.it87_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.TYPE_2__* @to_sensor_dev_attr(%struct.device_attribute*) #1

declare dso_local i64 @has_vin3_5v(%struct.it87_data*) #1

declare dso_local i64 @has_12mv_adc(%struct.it87_data*) #1

declare dso_local i64 @has_10_9mv_adc(%struct.it87_data*) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
