; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_adcxx.c_adcxx_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_adcxx.c_adcxx_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.spi_device = type { i32 }
%struct.adcxx = type { i32, i32, i32 }

@ad_input = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @adcxx_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adcxx_remove(%struct.spi_device* %0) #0 {
  %2 = alloca %struct.spi_device*, align 8
  %3 = alloca %struct.adcxx*, align 8
  %4 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %2, align 8
  %5 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %6 = call %struct.adcxx* @spi_get_drvdata(%struct.spi_device* %5)
  store %struct.adcxx* %6, %struct.adcxx** %3, align 8
  %7 = load %struct.adcxx*, %struct.adcxx** %3, align 8
  %8 = getelementptr inbounds %struct.adcxx, %struct.adcxx* %7, i32 0, i32 1
  %9 = call i32 @mutex_lock(i32* %8)
  %10 = load %struct.adcxx*, %struct.adcxx** %3, align 8
  %11 = getelementptr inbounds %struct.adcxx, %struct.adcxx* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @hwmon_device_unregister(i32 %12)
  store i32 0, i32* %4, align 4
  br label %14

14:                                               ; preds = %30, %1
  %15 = load i32, i32* %4, align 4
  %16 = load %struct.adcxx*, %struct.adcxx** %3, align 8
  %17 = getelementptr inbounds %struct.adcxx, %struct.adcxx* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = add nsw i32 3, %18
  %20 = icmp slt i32 %15, %19
  br i1 %20, label %21, label %33

21:                                               ; preds = %14
  %22 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %23 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ad_input, align 8
  %25 = load i32, i32* %4, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = call i32 @device_remove_file(i32* %23, i32* %28)
  br label %30

30:                                               ; preds = %21
  %31 = load i32, i32* %4, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %4, align 4
  br label %14

33:                                               ; preds = %14
  %34 = load %struct.adcxx*, %struct.adcxx** %3, align 8
  %35 = getelementptr inbounds %struct.adcxx, %struct.adcxx* %34, i32 0, i32 1
  %36 = call i32 @mutex_unlock(i32* %35)
  ret i32 0
}

declare dso_local %struct.adcxx* @spi_get_drvdata(%struct.spi_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @hwmon_device_unregister(i32) #1

declare dso_local i32 @device_remove_file(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
