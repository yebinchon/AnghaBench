; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/pmbus/extr_pmbus_core.c_pmbus_add_label.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/pmbus/extr_pmbus_core.c_pmbus_add_label.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmbus_data = type { i32 }
%struct.pmbus_label = type { i32, i32, %struct.device_attribute }
%struct.device_attribute = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"%s%d_label\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%s%d\00", align 1
@pmbus_show_label = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pmbus_data*, i8*, i32, i8*, i32)* @pmbus_add_label to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pmbus_add_label(%struct.pmbus_data* %0, i8* %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.pmbus_data*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.pmbus_label*, align 8
  %13 = alloca %struct.device_attribute*, align 8
  store %struct.pmbus_data* %0, %struct.pmbus_data** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %14 = load %struct.pmbus_data*, %struct.pmbus_data** %7, align 8
  %15 = getelementptr inbounds %struct.pmbus_data, %struct.pmbus_data* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.pmbus_label* @devm_kzalloc(i32 %16, i32 12, i32 %17)
  store %struct.pmbus_label* %18, %struct.pmbus_label** %12, align 8
  %19 = load %struct.pmbus_label*, %struct.pmbus_label** %12, align 8
  %20 = icmp ne %struct.pmbus_label* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %5
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %6, align 4
  br label %59

24:                                               ; preds = %5
  %25 = load %struct.pmbus_label*, %struct.pmbus_label** %12, align 8
  %26 = getelementptr inbounds %struct.pmbus_label, %struct.pmbus_label* %25, i32 0, i32 2
  store %struct.device_attribute* %26, %struct.device_attribute** %13, align 8
  %27 = load %struct.pmbus_label*, %struct.pmbus_label** %12, align 8
  %28 = getelementptr inbounds %struct.pmbus_label, %struct.pmbus_label* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i8*, i8** %8, align 8
  %31 = load i32, i32* %9, align 4
  %32 = call i32 @snprintf(i32 %29, i32 4, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %30, i32 %31)
  %33 = load i32, i32* %11, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %41, label %35

35:                                               ; preds = %24
  %36 = load %struct.pmbus_label*, %struct.pmbus_label** %12, align 8
  %37 = getelementptr inbounds %struct.pmbus_label, %struct.pmbus_label* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i8*, i8** %10, align 8
  %40 = call i32 @strncpy(i32 %38, i8* %39, i32 3)
  br label %48

41:                                               ; preds = %24
  %42 = load %struct.pmbus_label*, %struct.pmbus_label** %12, align 8
  %43 = getelementptr inbounds %struct.pmbus_label, %struct.pmbus_label* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i8*, i8** %10, align 8
  %46 = load i32, i32* %11, align 4
  %47 = call i32 @snprintf(i32 %44, i32 4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %45, i32 %46)
  br label %48

48:                                               ; preds = %41, %35
  %49 = load %struct.device_attribute*, %struct.device_attribute** %13, align 8
  %50 = load %struct.pmbus_label*, %struct.pmbus_label** %12, align 8
  %51 = getelementptr inbounds %struct.pmbus_label, %struct.pmbus_label* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @pmbus_show_label, align 4
  %54 = call i32 @pmbus_dev_attr_init(%struct.device_attribute* %49, i32 %52, i32 292, i32 %53, i32* null)
  %55 = load %struct.pmbus_data*, %struct.pmbus_data** %7, align 8
  %56 = load %struct.device_attribute*, %struct.device_attribute** %13, align 8
  %57 = getelementptr inbounds %struct.device_attribute, %struct.device_attribute* %56, i32 0, i32 0
  %58 = call i32 @pmbus_add_attribute(%struct.pmbus_data* %55, i32* %57)
  store i32 %58, i32* %6, align 4
  br label %59

59:                                               ; preds = %48, %21
  %60 = load i32, i32* %6, align 4
  ret i32 %60
}

declare dso_local %struct.pmbus_label* @devm_kzalloc(i32, i32, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*, i32) #1

declare dso_local i32 @strncpy(i32, i8*, i32) #1

declare dso_local i32 @pmbus_dev_attr_init(%struct.device_attribute*, i32, i32, i32, i32*) #1

declare dso_local i32 @pmbus_add_attribute(%struct.pmbus_data*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
