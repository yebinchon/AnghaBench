; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/pmbus/extr_pmbus_core.c_pmbus_add_samples_attributes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/pmbus/extr_pmbus_core.c_pmbus_add_samples_attributes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmbus_samples_attr = type { i32 }
%struct.i2c_client = type { i32 }
%struct.pmbus_data = type { %struct.pmbus_driver_info* }
%struct.pmbus_driver_info = type { i32* }

@PMBUS_HAVE_SAMPLES = common dso_local global i32 0, align 4
@pmbus_samples_registers = common dso_local global %struct.pmbus_samples_attr* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.pmbus_data*)* @pmbus_add_samples_attributes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pmbus_add_samples_attributes(%struct.i2c_client* %0, %struct.pmbus_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.pmbus_data*, align 8
  %6 = alloca %struct.pmbus_driver_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.pmbus_samples_attr*, align 8
  %9 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.pmbus_data* %1, %struct.pmbus_data** %5, align 8
  %10 = load %struct.pmbus_data*, %struct.pmbus_data** %5, align 8
  %11 = getelementptr inbounds %struct.pmbus_data, %struct.pmbus_data* %10, i32 0, i32 0
  %12 = load %struct.pmbus_driver_info*, %struct.pmbus_driver_info** %11, align 8
  store %struct.pmbus_driver_info* %12, %struct.pmbus_driver_info** %6, align 8
  %13 = load %struct.pmbus_driver_info*, %struct.pmbus_driver_info** %6, align 8
  %14 = getelementptr inbounds %struct.pmbus_driver_info, %struct.pmbus_driver_info* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @PMBUS_HAVE_SAMPLES, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %53

22:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %23

23:                                               ; preds = %49, %22
  %24 = load i32, i32* %7, align 4
  %25 = load %struct.pmbus_samples_attr*, %struct.pmbus_samples_attr** @pmbus_samples_registers, align 8
  %26 = call i32 @ARRAY_SIZE(%struct.pmbus_samples_attr* %25)
  %27 = icmp slt i32 %24, %26
  br i1 %27, label %28, label %52

28:                                               ; preds = %23
  %29 = load %struct.pmbus_samples_attr*, %struct.pmbus_samples_attr** @pmbus_samples_registers, align 8
  %30 = load i32, i32* %7, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.pmbus_samples_attr, %struct.pmbus_samples_attr* %29, i64 %31
  store %struct.pmbus_samples_attr* %32, %struct.pmbus_samples_attr** %8, align 8
  %33 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %34 = load %struct.pmbus_samples_attr*, %struct.pmbus_samples_attr** %8, align 8
  %35 = getelementptr inbounds %struct.pmbus_samples_attr, %struct.pmbus_samples_attr* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @pmbus_check_word_register(%struct.i2c_client* %33, i32 0, i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %28
  br label %49

40:                                               ; preds = %28
  %41 = load %struct.pmbus_data*, %struct.pmbus_data** %5, align 8
  %42 = load %struct.pmbus_samples_attr*, %struct.pmbus_samples_attr** %8, align 8
  %43 = call i32 @pmbus_add_samples_attr(%struct.pmbus_data* %41, i32 0, %struct.pmbus_samples_attr* %42)
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %9, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %40
  %47 = load i32, i32* %9, align 4
  store i32 %47, i32* %3, align 4
  br label %53

48:                                               ; preds = %40
  br label %49

49:                                               ; preds = %48, %39
  %50 = load i32, i32* %7, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %7, align 4
  br label %23

52:                                               ; preds = %23
  store i32 0, i32* %3, align 4
  br label %53

53:                                               ; preds = %52, %46, %21
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i32 @ARRAY_SIZE(%struct.pmbus_samples_attr*) #1

declare dso_local i32 @pmbus_check_word_register(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @pmbus_add_samples_attr(%struct.pmbus_data*, i32, %struct.pmbus_samples_attr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
