; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_f71882fg.c_show_pwm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_f71882fg.c_show_pwm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.f71882fg_data = type { i32, i32*, i32, i32*, i32* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @show_pwm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @show_pwm(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.f71882fg_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = call %struct.f71882fg_data* @f71882fg_update_device(%struct.device* %10)
  store %struct.f71882fg_data* %11, %struct.f71882fg_data** %7, align 8
  %12 = load %struct.device_attribute*, %struct.device_attribute** %5, align 8
  %13 = call %struct.TYPE_2__* @to_sensor_dev_attr_2(%struct.device_attribute* %12)
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %9, align 4
  %16 = load %struct.f71882fg_data*, %struct.f71882fg_data** %7, align 8
  %17 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %16, i32 0, i32 2
  %18 = call i32 @mutex_lock(i32* %17)
  %19 = load %struct.f71882fg_data*, %struct.f71882fg_data** %7, align 8
  %20 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* %9, align 4
  %23 = mul nsw i32 2, %22
  %24 = shl i32 1, %23
  %25 = and i32 %21, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %3
  %28 = load %struct.f71882fg_data*, %struct.f71882fg_data** %7, align 8
  %29 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %9, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %8, align 4
  br label %54

35:                                               ; preds = %3
  %36 = load %struct.f71882fg_data*, %struct.f71882fg_data** %7, align 8
  %37 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %36, i32 0, i32 4
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %9, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @fan_from_reg(i32 %42)
  %44 = mul nsw i32 255, %43
  %45 = load %struct.f71882fg_data*, %struct.f71882fg_data** %7, align 8
  %46 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %45, i32 0, i32 3
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %9, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @fan_from_reg(i32 %51)
  %53 = sdiv i32 %44, %52
  store i32 %53, i32* %8, align 4
  br label %54

54:                                               ; preds = %35, %27
  %55 = load %struct.f71882fg_data*, %struct.f71882fg_data** %7, align 8
  %56 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %55, i32 0, i32 2
  %57 = call i32 @mutex_unlock(i32* %56)
  %58 = load i8*, i8** %6, align 8
  %59 = load i32, i32* %8, align 4
  %60 = call i32 @sprintf(i8* %58, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %59)
  ret i32 %60
}

declare dso_local %struct.f71882fg_data* @f71882fg_update_device(%struct.device*) #1

declare dso_local %struct.TYPE_2__* @to_sensor_dev_attr_2(%struct.device_attribute*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @fan_from_reg(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
