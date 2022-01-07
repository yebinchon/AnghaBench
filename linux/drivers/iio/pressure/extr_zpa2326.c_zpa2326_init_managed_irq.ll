; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/pressure/extr_zpa2326.c_zpa2326_init_managed_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/pressure/extr_zpa2326.c_zpa2326_init_managed_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.iio_dev = type { i32 }
%struct.zpa2326_private = type { i32, i32 }

@.str = private unnamed_addr constant [44 x i8] c"no interrupt found, running in polling mode\00", align 1
@zpa2326_handle_irq = common dso_local global i32 0, align 4
@zpa2326_handle_threaded_irq = common dso_local global i32 0, align 4
@IRQF_TRIGGER_RISING = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"failed to request interrupt %d (%d)\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"using interrupt %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.iio_dev*, %struct.zpa2326_private*, i32)* @zpa2326_init_managed_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zpa2326_init_managed_irq(%struct.device* %0, %struct.iio_dev* %1, %struct.zpa2326_private* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.zpa2326_private*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.iio_dev* %1, %struct.iio_dev** %7, align 8
  store %struct.zpa2326_private* %2, %struct.zpa2326_private** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load i32, i32* %9, align 4
  %12 = load %struct.zpa2326_private*, %struct.zpa2326_private** %8, align 8
  %13 = getelementptr inbounds %struct.zpa2326_private, %struct.zpa2326_private* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 4
  %14 = load i32, i32* %9, align 4
  %15 = icmp sle i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %4
  %17 = load %struct.device*, %struct.device** %6, align 8
  %18 = call i32 (%struct.device*, i8*, ...) @dev_info(%struct.device* %17, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %46

19:                                               ; preds = %4
  %20 = load %struct.zpa2326_private*, %struct.zpa2326_private** %8, align 8
  %21 = getelementptr inbounds %struct.zpa2326_private, %struct.zpa2326_private* %20, i32 0, i32 1
  %22 = call i32 @init_completion(i32* %21)
  %23 = load %struct.device*, %struct.device** %6, align 8
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* @zpa2326_handle_irq, align 4
  %26 = load i32, i32* @zpa2326_handle_threaded_irq, align 4
  %27 = load i32, i32* @IRQF_TRIGGER_RISING, align 4
  %28 = load i32, i32* @IRQF_ONESHOT, align 4
  %29 = or i32 %27, %28
  %30 = load %struct.device*, %struct.device** %6, align 8
  %31 = call i32 @dev_name(%struct.device* %30)
  %32 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %33 = call i32 @devm_request_threaded_irq(%struct.device* %23, i32 %24, i32 %25, i32 %26, i32 %29, i32 %31, %struct.iio_dev* %32)
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %10, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %19
  %37 = load %struct.device*, %struct.device** %6, align 8
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* %10, align 4
  %40 = call i32 @dev_err(%struct.device* %37, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %38, i32 %39)
  %41 = load i32, i32* %10, align 4
  store i32 %41, i32* %5, align 4
  br label %46

42:                                               ; preds = %19
  %43 = load %struct.device*, %struct.device** %6, align 8
  %44 = load i32, i32* %9, align 4
  %45 = call i32 (%struct.device*, i8*, ...) @dev_info(%struct.device* %43, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %44)
  store i32 0, i32* %5, align 4
  br label %46

46:                                               ; preds = %42, %36, %16
  %47 = load i32, i32* %5, align 4
  ret i32 %47
}

declare dso_local i32 @dev_info(%struct.device*, i8*, ...) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @devm_request_threaded_irq(%struct.device*, i32, i32, i32, i32, i32, %struct.iio_dev*) #1

declare dso_local i32 @dev_name(%struct.device*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
