; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/dummy/extr_iio_dummy_evgen.c_iio_dummy_evgen_release_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/dummy/extr_iio_dummy_evgen.c_iio_dummy_evgen_release_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32*, i32, i32 }

@iio_evgen = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iio_dummy_evgen_release_irq(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load %struct.TYPE_2__*, %struct.TYPE_2__** @iio_evgen, align 8
  %4 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %3, i32 0, i32 2
  %5 = call i32 @mutex_lock(i32* %4)
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** @iio_evgen, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8
  %9 = load i32, i32* %2, align 4
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** @iio_evgen, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = sub nsw i32 %9, %12
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i32, i32* %8, i64 %14
  store i32 0, i32* %15, align 4
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** @iio_evgen, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 2
  %18 = call i32 @mutex_unlock(i32* %17)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
