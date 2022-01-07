; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/pressure/extr_zpa2326.c_zpa2326_init_managed_trigger.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/pressure/extr_zpa2326.c_zpa2326_init_managed_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.iio_dev = type { i32, i32 }
%struct.zpa2326_private = type { %struct.iio_trigger* }
%struct.iio_trigger = type { i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.device* }

@.str = private unnamed_addr constant [9 x i8] c"%s-dev%d\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@zpa2326_trigger_ops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"failed to register hardware trigger (%d)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.iio_dev*, %struct.zpa2326_private*, i32)* @zpa2326_init_managed_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zpa2326_init_managed_trigger(%struct.device* %0, %struct.iio_dev* %1, %struct.zpa2326_private* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.zpa2326_private*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.iio_trigger*, align 8
  %11 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.iio_dev* %1, %struct.iio_dev** %7, align 8
  store %struct.zpa2326_private* %2, %struct.zpa2326_private** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* %9, align 4
  %13 = icmp sle i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %50

15:                                               ; preds = %4
  %16 = load %struct.device*, %struct.device** %6, align 8
  %17 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %18 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %21 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.iio_trigger* @devm_iio_trigger_alloc(%struct.device* %16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %22)
  store %struct.iio_trigger* %23, %struct.iio_trigger** %10, align 8
  %24 = load %struct.iio_trigger*, %struct.iio_trigger** %10, align 8
  %25 = icmp ne %struct.iio_trigger* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %15
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %5, align 4
  br label %50

29:                                               ; preds = %15
  %30 = load %struct.device*, %struct.device** %6, align 8
  %31 = load %struct.iio_trigger*, %struct.iio_trigger** %10, align 8
  %32 = getelementptr inbounds %struct.iio_trigger, %struct.iio_trigger* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  store %struct.device* %30, %struct.device** %33, align 8
  %34 = load %struct.iio_trigger*, %struct.iio_trigger** %10, align 8
  %35 = getelementptr inbounds %struct.iio_trigger, %struct.iio_trigger* %34, i32 0, i32 0
  store i32* @zpa2326_trigger_ops, i32** %35, align 8
  %36 = load %struct.iio_trigger*, %struct.iio_trigger** %10, align 8
  %37 = load %struct.zpa2326_private*, %struct.zpa2326_private** %8, align 8
  %38 = getelementptr inbounds %struct.zpa2326_private, %struct.zpa2326_private* %37, i32 0, i32 0
  store %struct.iio_trigger* %36, %struct.iio_trigger** %38, align 8
  %39 = load %struct.device*, %struct.device** %6, align 8
  %40 = load %struct.iio_trigger*, %struct.iio_trigger** %10, align 8
  %41 = call i32 @devm_iio_trigger_register(%struct.device* %39, %struct.iio_trigger* %40)
  store i32 %41, i32* %11, align 4
  %42 = load i32, i32* %11, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %29
  %45 = load %struct.device*, %struct.device** %6, align 8
  %46 = load i32, i32* %11, align 4
  %47 = call i32 @dev_err(%struct.device* %45, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %46)
  br label %48

48:                                               ; preds = %44, %29
  %49 = load i32, i32* %11, align 4
  store i32 %49, i32* %5, align 4
  br label %50

50:                                               ; preds = %48, %26, %14
  %51 = load i32, i32* %5, align 4
  ret i32 %51
}

declare dso_local %struct.iio_trigger* @devm_iio_trigger_alloc(%struct.device*, i8*, i32, i32) #1

declare dso_local i32 @devm_iio_trigger_register(%struct.device*, %struct.iio_trigger*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
