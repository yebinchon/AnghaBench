; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/dummy/extr_iio_dummy_evgen.c_iio_dummy_evgen_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/dummy/extr_iio_dummy_evgen.c_iio_dummy_evgen_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@iio_evgen = common dso_local global %struct.TYPE_4__* null, align 8
@ENOMEM = common dso_local global i32 0, align 4
@IIO_EVENTGEN_NO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @iio_dummy_evgen_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iio_dummy_evgen_create() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @GFP_KERNEL, align 4
  %4 = call %struct.TYPE_4__* @kzalloc(i32 12, i32 %3)
  store %struct.TYPE_4__* %4, %struct.TYPE_4__** @iio_evgen, align 8
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** @iio_evgen, align 8
  %6 = icmp ne %struct.TYPE_4__* %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %0
  %8 = load i32, i32* @ENOMEM, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %1, align 4
  br label %30

10:                                               ; preds = %0
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** @iio_evgen, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  %13 = load i32, i32* @IIO_EVENTGEN_NO, align 4
  %14 = call i32 @irq_sim_init(i32* %12, i32 %13)
  store i32 %14, i32* %2, align 4
  %15 = load i32, i32* %2, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %10
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** @iio_evgen, align 8
  %19 = call i32 @kfree(%struct.TYPE_4__* %18)
  %20 = load i32, i32* %2, align 4
  store i32 %20, i32* %1, align 4
  br label %30

21:                                               ; preds = %10
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** @iio_evgen, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  %24 = call i32 @irq_sim_irqnum(i32* %23, i32 0)
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** @iio_evgen, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 2
  store i32 %24, i32* %26, align 4
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** @iio_evgen, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = call i32 @mutex_init(i32* %28)
  store i32 0, i32* %1, align 4
  br label %30

30:                                               ; preds = %21, %17, %7
  %31 = load i32, i32* %1, align 4
  ret i32 %31
}

declare dso_local %struct.TYPE_4__* @kzalloc(i32, i32) #1

declare dso_local i32 @irq_sim_init(i32*, i32) #1

declare dso_local i32 @kfree(%struct.TYPE_4__*) #1

declare dso_local i32 @irq_sim_irqnum(i32*, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
