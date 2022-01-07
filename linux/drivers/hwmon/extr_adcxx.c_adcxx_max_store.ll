; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_adcxx.c_adcxx_max_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_adcxx.c_adcxx_max_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.spi_device = type { i32 }
%struct.adcxx = type { i64, i32 }

@EINVAL = common dso_local global i64 0, align 8
@ERESTARTSYS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @adcxx_max_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @adcxx_max_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.spi_device*, align 8
  %11 = alloca %struct.adcxx*, align 8
  %12 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.device*, %struct.device** %6, align 8
  %14 = call %struct.spi_device* @to_spi_device(%struct.device* %13)
  store %struct.spi_device* %14, %struct.spi_device** %10, align 8
  %15 = load %struct.spi_device*, %struct.spi_device** %10, align 8
  %16 = call %struct.adcxx* @spi_get_drvdata(%struct.spi_device* %15)
  store %struct.adcxx* %16, %struct.adcxx** %11, align 8
  %17 = load i8*, i8** %8, align 8
  %18 = call i64 @kstrtoul(i8* %17, i32 10, i64* %12)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %4
  %21 = load i64, i64* @EINVAL, align 8
  %22 = sub i64 0, %21
  store i64 %22, i64* %5, align 8
  br label %39

23:                                               ; preds = %4
  %24 = load %struct.adcxx*, %struct.adcxx** %11, align 8
  %25 = getelementptr inbounds %struct.adcxx, %struct.adcxx* %24, i32 0, i32 1
  %26 = call i64 @mutex_lock_interruptible(i32* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = load i64, i64* @ERESTARTSYS, align 8
  %30 = sub i64 0, %29
  store i64 %30, i64* %5, align 8
  br label %39

31:                                               ; preds = %23
  %32 = load i64, i64* %12, align 8
  %33 = load %struct.adcxx*, %struct.adcxx** %11, align 8
  %34 = getelementptr inbounds %struct.adcxx, %struct.adcxx* %33, i32 0, i32 0
  store i64 %32, i64* %34, align 8
  %35 = load %struct.adcxx*, %struct.adcxx** %11, align 8
  %36 = getelementptr inbounds %struct.adcxx, %struct.adcxx* %35, i32 0, i32 1
  %37 = call i32 @mutex_unlock(i32* %36)
  %38 = load i64, i64* %9, align 8
  store i64 %38, i64* %5, align 8
  br label %39

39:                                               ; preds = %31, %28, %20
  %40 = load i64, i64* %5, align 8
  ret i64 %40
}

declare dso_local %struct.spi_device* @to_spi_device(%struct.device*) #1

declare dso_local %struct.adcxx* @spi_get_drvdata(%struct.spi_device*) #1

declare dso_local i64 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
