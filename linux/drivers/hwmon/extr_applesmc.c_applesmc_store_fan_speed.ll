; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_applesmc.c_applesmc_store_fan_speed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_applesmc.c_applesmc_store_fan_speed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@fan_speed_fmt = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @applesmc_store_fan_speed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @applesmc_store_fan_speed(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca [5 x i8], align 1
  %13 = alloca [2 x i64], align 16
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = call i64 @kstrtoul(i8* %14, i32 10, i64* %11)
  %16 = icmp slt i64 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %4
  %18 = load i64, i64* %11, align 8
  %19 = icmp uge i64 %18, 16384
  br i1 %19, label %20, label %23

20:                                               ; preds = %17, %4
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %5, align 4
  br label %51

23:                                               ; preds = %17
  %24 = getelementptr inbounds [5 x i8], [5 x i8]* %12, i64 0, i64 0
  %25 = load i32*, i32** @fan_speed_fmt, align 8
  %26 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %27 = call i64 @to_option(%struct.device_attribute* %26)
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %31 = call i32 @to_index(%struct.device_attribute* %30)
  %32 = call i32 @scnprintf(i8* %24, i32 5, i32 %29, i32 %31)
  %33 = load i64, i64* %11, align 8
  %34 = lshr i64 %33, 6
  %35 = and i64 %34, 255
  %36 = getelementptr inbounds [2 x i64], [2 x i64]* %13, i64 0, i64 0
  store i64 %35, i64* %36, align 16
  %37 = load i64, i64* %11, align 8
  %38 = shl i64 %37, 2
  %39 = and i64 %38, 255
  %40 = getelementptr inbounds [2 x i64], [2 x i64]* %13, i64 0, i64 1
  store i64 %39, i64* %40, align 8
  %41 = getelementptr inbounds [5 x i8], [5 x i8]* %12, i64 0, i64 0
  %42 = getelementptr inbounds [2 x i64], [2 x i64]* %13, i64 0, i64 0
  %43 = call i32 @applesmc_write_key(i8* %41, i64* %42, i32 2)
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %10, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %23
  %47 = load i32, i32* %10, align 4
  store i32 %47, i32* %5, align 4
  br label %51

48:                                               ; preds = %23
  %49 = load i64, i64* %9, align 8
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %5, align 4
  br label %51

51:                                               ; preds = %48, %46, %20
  %52 = load i32, i32* %5, align 4
  ret i32 %52
}

declare dso_local i64 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i32 @scnprintf(i8*, i32, i32, i32) #1

declare dso_local i64 @to_option(%struct.device_attribute*) #1

declare dso_local i32 @to_index(%struct.device_attribute*) #1

declare dso_local i32 @applesmc_write_key(i8*, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
