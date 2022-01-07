; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_f71882fg.c_show_temp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_f71882fg.c_show_temp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.f71882fg_data = type { i64, i32, i32* }
%struct.TYPE_2__ = type { i32 }

@f71858fg = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @show_temp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @show_temp(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.f71882fg_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = call %struct.f71882fg_data* @f71882fg_update_device(%struct.device* %11)
  store %struct.f71882fg_data* %12, %struct.f71882fg_data** %7, align 8
  %13 = load %struct.device_attribute*, %struct.device_attribute** %5, align 8
  %14 = call %struct.TYPE_2__* @to_sensor_dev_attr_2(%struct.device_attribute* %13)
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %8, align 4
  %17 = load %struct.f71882fg_data*, %struct.f71882fg_data** %7, align 8
  %18 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @f71858fg, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %73

22:                                               ; preds = %3
  %23 = load %struct.f71882fg_data*, %struct.f71882fg_data** %7, align 8
  %24 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = and i32 %25, 1
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %46

28:                                               ; preds = %22
  %29 = load %struct.f71882fg_data*, %struct.f71882fg_data** %7, align 8
  %30 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %29, i32 0, i32 2
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %8, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = and i32 %35, 1
  store i32 %36, i32* %9, align 4
  %37 = load %struct.f71882fg_data*, %struct.f71882fg_data** %7, align 8
  %38 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %37, i32 0, i32 2
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %8, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = ashr i32 %43, 5
  %45 = and i32 %44, 2047
  store i32 %45, i32* %10, align 4
  br label %64

46:                                               ; preds = %22
  %47 = load %struct.f71882fg_data*, %struct.f71882fg_data** %7, align 8
  %48 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %47, i32 0, i32 2
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %8, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = and i32 %53, 32768
  store i32 %54, i32* %9, align 4
  %55 = load %struct.f71882fg_data*, %struct.f71882fg_data** %7, align 8
  %56 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %55, i32 0, i32 2
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %8, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = ashr i32 %61, 5
  %63 = and i32 %62, 1023
  store i32 %63, i32* %10, align 4
  br label %64

64:                                               ; preds = %46, %28
  %65 = load i32, i32* %10, align 4
  %66 = mul nsw i32 %65, 125
  store i32 %66, i32* %10, align 4
  %67 = load i32, i32* %9, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %64
  %70 = load i32, i32* %10, align 4
  %71 = sub nsw i32 %70, 128000
  store i32 %71, i32* %10, align 4
  br label %72

72:                                               ; preds = %69, %64
  br label %82

73:                                               ; preds = %3
  %74 = load %struct.f71882fg_data*, %struct.f71882fg_data** %7, align 8
  %75 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %74, i32 0, i32 2
  %76 = load i32*, i32** %75, align 8
  %77 = load i32, i32* %8, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = mul nsw i32 %80, 1000
  store i32 %81, i32* %10, align 4
  br label %82

82:                                               ; preds = %73, %72
  %83 = load i8*, i8** %6, align 8
  %84 = load i32, i32* %10, align 4
  %85 = call i32 @sprintf(i8* %83, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %84)
  ret i32 %85
}

declare dso_local %struct.f71882fg_data* @f71882fg_update_device(%struct.device*) #1

declare dso_local %struct.TYPE_2__* @to_sensor_dev_attr_2(%struct.device_attribute*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
