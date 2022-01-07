; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/extr_industrialio-trigger.c_iio_trigger_detach_poll_func.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/extr_industrialio-trigger.c_iio_trigger_detach_poll_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_trigger = type { i32, %struct.TYPE_7__, %struct.TYPE_5__*, i32 }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_5__ = type { i32 (%struct.iio_trigger*, i32)* }
%struct.iio_poll_func = type { %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }

@CONFIG_IIO_CONSUMERS_PER_TRIGGER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_trigger*, %struct.iio_poll_func*)* @iio_trigger_detach_poll_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iio_trigger_detach_poll_func(%struct.iio_trigger* %0, %struct.iio_poll_func* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iio_trigger*, align 8
  %5 = alloca %struct.iio_poll_func*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.iio_trigger* %0, %struct.iio_trigger** %4, align 8
  store %struct.iio_poll_func* %1, %struct.iio_poll_func** %5, align 8
  store i32 0, i32* %6, align 4
  %8 = load %struct.iio_trigger*, %struct.iio_trigger** %4, align 8
  %9 = getelementptr inbounds %struct.iio_trigger, %struct.iio_trigger* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @CONFIG_IIO_CONSUMERS_PER_TRIGGER, align 4
  %12 = call i32 @bitmap_weight(i32 %10, i32 %11)
  %13 = icmp eq i32 %12, 1
  %14 = zext i1 %13 to i32
  store i32 %14, i32* %7, align 4
  %15 = load %struct.iio_trigger*, %struct.iio_trigger** %4, align 8
  %16 = getelementptr inbounds %struct.iio_trigger, %struct.iio_trigger* %15, i32 0, i32 2
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = icmp ne %struct.TYPE_5__* %17, null
  br i1 %18, label %19, label %42

19:                                               ; preds = %2
  %20 = load %struct.iio_trigger*, %struct.iio_trigger** %4, align 8
  %21 = getelementptr inbounds %struct.iio_trigger, %struct.iio_trigger* %20, i32 0, i32 2
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32 (%struct.iio_trigger*, i32)*, i32 (%struct.iio_trigger*, i32)** %23, align 8
  %25 = icmp ne i32 (%struct.iio_trigger*, i32)* %24, null
  br i1 %25, label %26, label %42

26:                                               ; preds = %19
  %27 = load i32, i32* %7, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %42

29:                                               ; preds = %26
  %30 = load %struct.iio_trigger*, %struct.iio_trigger** %4, align 8
  %31 = getelementptr inbounds %struct.iio_trigger, %struct.iio_trigger* %30, i32 0, i32 2
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i32 (%struct.iio_trigger*, i32)*, i32 (%struct.iio_trigger*, i32)** %33, align 8
  %35 = load %struct.iio_trigger*, %struct.iio_trigger** %4, align 8
  %36 = call i32 %34(%struct.iio_trigger* %35, i32 0)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %29
  %40 = load i32, i32* %6, align 4
  store i32 %40, i32* %3, align 4
  br label %75

41:                                               ; preds = %29
  br label %42

42:                                               ; preds = %41, %26, %19, %2
  %43 = load %struct.iio_poll_func*, %struct.iio_poll_func** %5, align 8
  %44 = getelementptr inbounds %struct.iio_poll_func, %struct.iio_poll_func* %43, i32 0, i32 0
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.iio_trigger*, %struct.iio_trigger** %4, align 8
  %50 = getelementptr inbounds %struct.iio_trigger, %struct.iio_trigger* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp eq i64 %48, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %42
  %55 = load %struct.iio_trigger*, %struct.iio_trigger** %4, align 8
  %56 = getelementptr inbounds %struct.iio_trigger, %struct.iio_trigger* %55, i32 0, i32 0
  store i32 0, i32* %56, align 8
  br label %57

57:                                               ; preds = %54, %42
  %58 = load %struct.iio_trigger*, %struct.iio_trigger** %4, align 8
  %59 = load %struct.iio_poll_func*, %struct.iio_poll_func** %5, align 8
  %60 = getelementptr inbounds %struct.iio_poll_func, %struct.iio_poll_func* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @iio_trigger_put_irq(%struct.iio_trigger* %58, i32 %61)
  %63 = load %struct.iio_poll_func*, %struct.iio_poll_func** %5, align 8
  %64 = getelementptr inbounds %struct.iio_poll_func, %struct.iio_poll_func* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.iio_poll_func*, %struct.iio_poll_func** %5, align 8
  %67 = call i32 @free_irq(i32 %65, %struct.iio_poll_func* %66)
  %68 = load %struct.iio_poll_func*, %struct.iio_poll_func** %5, align 8
  %69 = getelementptr inbounds %struct.iio_poll_func, %struct.iio_poll_func* %68, i32 0, i32 0
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @module_put(i32 %72)
  %74 = load i32, i32* %6, align 4
  store i32 %74, i32* %3, align 4
  br label %75

75:                                               ; preds = %57, %39
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local i32 @bitmap_weight(i32, i32) #1

declare dso_local i32 @iio_trigger_put_irq(%struct.iio_trigger*, i32) #1

declare dso_local i32 @free_irq(i32, %struct.iio_poll_func*) #1

declare dso_local i32 @module_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
