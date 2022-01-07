; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_it87.c_clear_intrusion.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_it87.c_clear_intrusion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.it87_data = type { i32, i64 }

@EINVAL = common dso_local global i64 0, align 8
@IT87_REG_CONFIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @clear_intrusion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @clear_intrusion(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.it87_data*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.device*, %struct.device** %6, align 8
  %14 = call %struct.it87_data* @dev_get_drvdata(%struct.device* %13)
  store %struct.it87_data* %14, %struct.it87_data** %10, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = call i64 @kstrtol(i8* %15, i32 10, i64* %12)
  %17 = icmp slt i64 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %4
  %19 = load i64, i64* %12, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %18, %4
  %22 = load i64, i64* @EINVAL, align 8
  %23 = sub i64 0, %22
  store i64 %23, i64* %5, align 8
  br label %51

24:                                               ; preds = %18
  %25 = load %struct.it87_data*, %struct.it87_data** %10, align 8
  %26 = getelementptr inbounds %struct.it87_data, %struct.it87_data* %25, i32 0, i32 0
  %27 = call i32 @mutex_lock(i32* %26)
  %28 = load %struct.it87_data*, %struct.it87_data** %10, align 8
  %29 = load i32, i32* @IT87_REG_CONFIG, align 4
  %30 = call i32 @it87_read_value(%struct.it87_data* %28, i32 %29)
  store i32 %30, i32* %11, align 4
  %31 = load i32, i32* %11, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %24
  %34 = load i32, i32* %11, align 4
  %35 = sext i32 %34 to i64
  store i64 %35, i64* %9, align 8
  br label %46

36:                                               ; preds = %24
  %37 = call i32 @BIT(i32 5)
  %38 = load i32, i32* %11, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %11, align 4
  %40 = load %struct.it87_data*, %struct.it87_data** %10, align 8
  %41 = load i32, i32* @IT87_REG_CONFIG, align 4
  %42 = load i32, i32* %11, align 4
  %43 = call i32 @it87_write_value(%struct.it87_data* %40, i32 %41, i32 %42)
  %44 = load %struct.it87_data*, %struct.it87_data** %10, align 8
  %45 = getelementptr inbounds %struct.it87_data, %struct.it87_data* %44, i32 0, i32 1
  store i64 0, i64* %45, align 8
  br label %46

46:                                               ; preds = %36, %33
  %47 = load %struct.it87_data*, %struct.it87_data** %10, align 8
  %48 = getelementptr inbounds %struct.it87_data, %struct.it87_data* %47, i32 0, i32 0
  %49 = call i32 @mutex_unlock(i32* %48)
  %50 = load i64, i64* %9, align 8
  store i64 %50, i64* %5, align 8
  br label %51

51:                                               ; preds = %46, %21
  %52 = load i64, i64* %5, align 8
  ret i64 %52
}

declare dso_local %struct.it87_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i64 @kstrtol(i8*, i32, i64*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @it87_read_value(%struct.it87_data*, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @it87_write_value(%struct.it87_data*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
