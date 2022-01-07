; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_tc654.c_pwm_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_tc654.c_pwm_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.tc654_data = type { i32, i64 }

@TC654_REG_CONFIG_SDM = common dso_local global i32 0, align 4
@tc654_pwm_map = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @pwm_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pwm_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.tc654_data*, align 8
  %9 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load %struct.device*, %struct.device** %5, align 8
  %11 = call %struct.tc654_data* @tc654_update_client(%struct.device* %10)
  store %struct.tc654_data* %11, %struct.tc654_data** %8, align 8
  %12 = load %struct.tc654_data*, %struct.tc654_data** %8, align 8
  %13 = call i64 @IS_ERR(%struct.tc654_data* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load %struct.tc654_data*, %struct.tc654_data** %8, align 8
  %17 = call i32 @PTR_ERR(%struct.tc654_data* %16)
  store i32 %17, i32* %4, align 4
  br label %37

18:                                               ; preds = %3
  %19 = load %struct.tc654_data*, %struct.tc654_data** %8, align 8
  %20 = getelementptr inbounds %struct.tc654_data, %struct.tc654_data* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @TC654_REG_CONFIG_SDM, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %18
  store i32 0, i32* %9, align 4
  br label %33

26:                                               ; preds = %18
  %27 = load i32*, i32** @tc654_pwm_map, align 8
  %28 = load %struct.tc654_data*, %struct.tc654_data** %8, align 8
  %29 = getelementptr inbounds %struct.tc654_data, %struct.tc654_data* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds i32, i32* %27, i64 %30
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %9, align 4
  br label %33

33:                                               ; preds = %26, %25
  %34 = load i8*, i8** %7, align 8
  %35 = load i32, i32* %9, align 4
  %36 = call i32 @sprintf(i8* %34, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %35)
  store i32 %36, i32* %4, align 4
  br label %37

37:                                               ; preds = %33, %15
  %38 = load i32, i32* %4, align 4
  ret i32 %38
}

declare dso_local %struct.tc654_data* @tc654_update_client(%struct.device*) #1

declare dso_local i64 @IS_ERR(%struct.tc654_data*) #1

declare dso_local i32 @PTR_ERR(%struct.tc654_data*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
