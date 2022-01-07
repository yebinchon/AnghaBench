; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_xilinx-xadc-core.c_xadc_alloc_trigger.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_xilinx-xadc-core.c_xadc_alloc_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_trigger = type { i32*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.iio_dev = type { %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"%s%d-%s\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@xadc_trigger_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.iio_trigger* (%struct.iio_dev*, i8*)* @xadc_alloc_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.iio_trigger* @xadc_alloc_trigger(%struct.iio_dev* %0, i8* %1) #0 {
  %3 = alloca %struct.iio_trigger*, align 8
  %4 = alloca %struct.iio_dev*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.iio_trigger*, align 8
  %7 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %9 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %12 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load i8*, i8** %5, align 8
  %15 = call %struct.iio_trigger* @iio_trigger_alloc(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %10, i32 %13, i8* %14)
  store %struct.iio_trigger* %15, %struct.iio_trigger** %6, align 8
  %16 = load %struct.iio_trigger*, %struct.iio_trigger** %6, align 8
  %17 = icmp eq %struct.iio_trigger* %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %2
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  %21 = call %struct.iio_trigger* @ERR_PTR(i32 %20)
  store %struct.iio_trigger* %21, %struct.iio_trigger** %3, align 8
  br label %48

22:                                               ; preds = %2
  %23 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %24 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.iio_trigger*, %struct.iio_trigger** %6, align 8
  %28 = getelementptr inbounds %struct.iio_trigger, %struct.iio_trigger* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  store i32 %26, i32* %29, align 8
  %30 = load %struct.iio_trigger*, %struct.iio_trigger** %6, align 8
  %31 = getelementptr inbounds %struct.iio_trigger, %struct.iio_trigger* %30, i32 0, i32 0
  store i32* @xadc_trigger_ops, i32** %31, align 8
  %32 = load %struct.iio_trigger*, %struct.iio_trigger** %6, align 8
  %33 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %34 = call i32 @iio_priv(%struct.iio_dev* %33)
  %35 = call i32 @iio_trigger_set_drvdata(%struct.iio_trigger* %32, i32 %34)
  %36 = load %struct.iio_trigger*, %struct.iio_trigger** %6, align 8
  %37 = call i32 @iio_trigger_register(%struct.iio_trigger* %36)
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %22
  br label %43

41:                                               ; preds = %22
  %42 = load %struct.iio_trigger*, %struct.iio_trigger** %6, align 8
  store %struct.iio_trigger* %42, %struct.iio_trigger** %3, align 8
  br label %48

43:                                               ; preds = %40
  %44 = load %struct.iio_trigger*, %struct.iio_trigger** %6, align 8
  %45 = call i32 @iio_trigger_free(%struct.iio_trigger* %44)
  %46 = load i32, i32* %7, align 4
  %47 = call %struct.iio_trigger* @ERR_PTR(i32 %46)
  store %struct.iio_trigger* %47, %struct.iio_trigger** %3, align 8
  br label %48

48:                                               ; preds = %43, %41, %18
  %49 = load %struct.iio_trigger*, %struct.iio_trigger** %3, align 8
  ret %struct.iio_trigger* %49
}

declare dso_local %struct.iio_trigger* @iio_trigger_alloc(i8*, i32, i32, i8*) #1

declare dso_local %struct.iio_trigger* @ERR_PTR(i32) #1

declare dso_local i32 @iio_trigger_set_drvdata(%struct.iio_trigger*, i32) #1

declare dso_local i32 @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @iio_trigger_register(%struct.iio_trigger*) #1

declare dso_local i32 @iio_trigger_free(%struct.iio_trigger*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
