; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_adt7x10.c_adt7x10_t_hyst_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_adt7x10.c_adt7x10_t_hyst_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.adt7x10_data = type { i8*, i32* }

@ADT7X10_TEMP_MIN = common dso_local global i32 0, align 4
@ADT7X10_TEMP_MAX = common dso_local global i32 0, align 4
@ADT7X10_T_HYST_MASK = common dso_local global i32 0, align 4
@ADT7X10_T_HYST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @adt7x10_t_hyst_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adt7x10_t_hyst_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.adt7x10_data*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.device*, %struct.device** %6, align 8
  %15 = call %struct.adt7x10_data* @dev_get_drvdata(%struct.device* %14)
  store %struct.adt7x10_data* %15, %struct.adt7x10_data** %10, align 8
  %16 = load i8*, i8** %8, align 8
  %17 = call i32 @kstrtol(i8* %16, i32 10, i64* %13)
  store i32 %17, i32* %12, align 4
  %18 = load i32, i32* %12, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %4
  %21 = load i32, i32* %12, align 4
  store i32 %21, i32* %5, align 4
  br label %58

22:                                               ; preds = %4
  %23 = load %struct.adt7x10_data*, %struct.adt7x10_data** %10, align 8
  %24 = load %struct.adt7x10_data*, %struct.adt7x10_data** %10, align 8
  %25 = getelementptr inbounds %struct.adt7x10_data, %struct.adt7x10_data* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @ADT7X10_REG_TO_TEMP(%struct.adt7x10_data* %23, i32 %28)
  store i32 %29, i32* %11, align 4
  %30 = load i64, i64* %13, align 8
  %31 = load i32, i32* @ADT7X10_TEMP_MIN, align 4
  %32 = load i32, i32* @ADT7X10_TEMP_MAX, align 4
  %33 = call i8* @clamp_val(i64 %30, i32 %31, i32 %32)
  %34 = ptrtoint i8* %33 to i64
  store i64 %34, i64* %13, align 8
  %35 = load i32, i32* %11, align 4
  %36 = sext i32 %35 to i64
  %37 = load i64, i64* %13, align 8
  %38 = sub nsw i64 %36, %37
  %39 = trunc i64 %38 to i32
  %40 = call i64 @DIV_ROUND_CLOSEST(i32 %39, i32 1000)
  %41 = load i32, i32* @ADT7X10_T_HYST_MASK, align 4
  %42 = call i8* @clamp_val(i64 %40, i32 0, i32 %41)
  %43 = load %struct.adt7x10_data*, %struct.adt7x10_data** %10, align 8
  %44 = getelementptr inbounds %struct.adt7x10_data, %struct.adt7x10_data* %43, i32 0, i32 0
  store i8* %42, i8** %44, align 8
  %45 = load %struct.device*, %struct.device** %6, align 8
  %46 = load i32, i32* @ADT7X10_T_HYST, align 4
  %47 = load %struct.adt7x10_data*, %struct.adt7x10_data** %10, align 8
  %48 = getelementptr inbounds %struct.adt7x10_data, %struct.adt7x10_data* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = call i32 @adt7x10_write_byte(%struct.device* %45, i32 %46, i8* %49)
  store i32 %50, i32* %12, align 4
  %51 = load i32, i32* %12, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %22
  %54 = load i32, i32* %12, align 4
  store i32 %54, i32* %5, align 4
  br label %58

55:                                               ; preds = %22
  %56 = load i64, i64* %9, align 8
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %5, align 4
  br label %58

58:                                               ; preds = %55, %53, %20
  %59 = load i32, i32* %5, align 4
  ret i32 %59
}

declare dso_local %struct.adt7x10_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @kstrtol(i8*, i32, i64*) #1

declare dso_local i32 @ADT7X10_REG_TO_TEMP(%struct.adt7x10_data*, i32) #1

declare dso_local i8* @clamp_val(i64, i32, i32) #1

declare dso_local i64 @DIV_ROUND_CLOSEST(i32, i32) #1

declare dso_local i32 @adt7x10_write_byte(%struct.device*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
