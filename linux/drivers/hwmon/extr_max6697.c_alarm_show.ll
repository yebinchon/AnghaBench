; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_max6697.c_alarm_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_max6697.c_alarm_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.max6697_data = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32* }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @alarm_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alarm_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.max6697_data*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load %struct.device_attribute*, %struct.device_attribute** %6, align 8
  %11 = call %struct.TYPE_4__* @to_sensor_dev_attr(%struct.device_attribute* %10)
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %8, align 4
  %14 = load %struct.device*, %struct.device** %5, align 8
  %15 = call %struct.max6697_data* @max6697_update_device(%struct.device* %14)
  store %struct.max6697_data* %15, %struct.max6697_data** %9, align 8
  %16 = load %struct.max6697_data*, %struct.max6697_data** %9, align 8
  %17 = call i64 @IS_ERR(%struct.max6697_data* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load %struct.max6697_data*, %struct.max6697_data** %9, align 8
  %21 = call i32 @PTR_ERR(%struct.max6697_data* %20)
  store i32 %21, i32* %4, align 4
  br label %48

22:                                               ; preds = %3
  %23 = load %struct.max6697_data*, %struct.max6697_data** %9, align 8
  %24 = getelementptr inbounds %struct.max6697_data, %struct.max6697_data* %23, i32 0, i32 1
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %39

29:                                               ; preds = %22
  %30 = load %struct.max6697_data*, %struct.max6697_data** %9, align 8
  %31 = getelementptr inbounds %struct.max6697_data, %struct.max6697_data* %30, i32 0, i32 1
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %8, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %8, align 4
  br label %39

39:                                               ; preds = %29, %22
  %40 = load i8*, i8** %7, align 8
  %41 = load %struct.max6697_data*, %struct.max6697_data** %9, align 8
  %42 = getelementptr inbounds %struct.max6697_data, %struct.max6697_data* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* %8, align 4
  %45 = ashr i32 %43, %44
  %46 = and i32 %45, 1
  %47 = call i32 @sprintf(i8* %40, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %46)
  store i32 %47, i32* %4, align 4
  br label %48

48:                                               ; preds = %39, %19
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local %struct.TYPE_4__* @to_sensor_dev_attr(%struct.device_attribute*) #1

declare dso_local %struct.max6697_data* @max6697_update_device(%struct.device*) #1

declare dso_local i64 @IS_ERR(%struct.max6697_data*) #1

declare dso_local i32 @PTR_ERR(%struct.max6697_data*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
