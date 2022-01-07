; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/pmbus/extr_pmbus_core.c_pmbus_add_samples_attr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/pmbus/extr_pmbus_core.c_pmbus_add_samples_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmbus_data = type { i32 }
%struct.pmbus_samples_attr = type { i32 }
%struct.pmbus_samples_reg = type { i32, %struct.TYPE_2__, %struct.pmbus_samples_attr* }
%struct.TYPE_2__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@pmbus_show_samples = common dso_local global i32 0, align 4
@pmbus_set_samples = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pmbus_data*, i32, %struct.pmbus_samples_attr*)* @pmbus_add_samples_attr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pmbus_add_samples_attr(%struct.pmbus_data* %0, i32 %1, %struct.pmbus_samples_attr* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pmbus_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.pmbus_samples_attr*, align 8
  %8 = alloca %struct.pmbus_samples_reg*, align 8
  store %struct.pmbus_data* %0, %struct.pmbus_data** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.pmbus_samples_attr* %2, %struct.pmbus_samples_attr** %7, align 8
  %9 = load %struct.pmbus_data*, %struct.pmbus_data** %5, align 8
  %10 = getelementptr inbounds %struct.pmbus_data, %struct.pmbus_data* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.pmbus_samples_reg* @devm_kzalloc(i32 %11, i32 16, i32 %12)
  store %struct.pmbus_samples_reg* %13, %struct.pmbus_samples_reg** %8, align 8
  %14 = load %struct.pmbus_samples_reg*, %struct.pmbus_samples_reg** %8, align 8
  %15 = icmp ne %struct.pmbus_samples_reg* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %39

19:                                               ; preds = %3
  %20 = load %struct.pmbus_samples_attr*, %struct.pmbus_samples_attr** %7, align 8
  %21 = load %struct.pmbus_samples_reg*, %struct.pmbus_samples_reg** %8, align 8
  %22 = getelementptr inbounds %struct.pmbus_samples_reg, %struct.pmbus_samples_reg* %21, i32 0, i32 2
  store %struct.pmbus_samples_attr* %20, %struct.pmbus_samples_attr** %22, align 8
  %23 = load i32, i32* %6, align 4
  %24 = load %struct.pmbus_samples_reg*, %struct.pmbus_samples_reg** %8, align 8
  %25 = getelementptr inbounds %struct.pmbus_samples_reg, %struct.pmbus_samples_reg* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  %26 = load %struct.pmbus_samples_reg*, %struct.pmbus_samples_reg** %8, align 8
  %27 = getelementptr inbounds %struct.pmbus_samples_reg, %struct.pmbus_samples_reg* %26, i32 0, i32 1
  %28 = load %struct.pmbus_samples_attr*, %struct.pmbus_samples_attr** %7, align 8
  %29 = getelementptr inbounds %struct.pmbus_samples_attr, %struct.pmbus_samples_attr* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @pmbus_show_samples, align 4
  %32 = load i32, i32* @pmbus_set_samples, align 4
  %33 = call i32 @pmbus_dev_attr_init(%struct.TYPE_2__* %27, i32 %30, i32 420, i32 %31, i32 %32)
  %34 = load %struct.pmbus_data*, %struct.pmbus_data** %5, align 8
  %35 = load %struct.pmbus_samples_reg*, %struct.pmbus_samples_reg** %8, align 8
  %36 = getelementptr inbounds %struct.pmbus_samples_reg, %struct.pmbus_samples_reg* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = call i32 @pmbus_add_attribute(%struct.pmbus_data* %34, i32* %37)
  store i32 %38, i32* %4, align 4
  br label %39

39:                                               ; preds = %19, %16
  %40 = load i32, i32* %4, align 4
  ret i32 %40
}

declare dso_local %struct.pmbus_samples_reg* @devm_kzalloc(i32, i32, i32) #1

declare dso_local i32 @pmbus_dev_attr_init(%struct.TYPE_2__*, i32, i32, i32, i32) #1

declare dso_local i32 @pmbus_add_attribute(%struct.pmbus_data*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
