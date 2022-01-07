; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/extr_industrialio-trigger.c_iio_trigger_put_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/extr_industrialio-trigger.c_iio_trigger_put_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_trigger = type { i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iio_trigger*, i32)* @iio_trigger_put_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iio_trigger_put_irq(%struct.iio_trigger* %0, i32 %1) #0 {
  %3 = alloca %struct.iio_trigger*, align 8
  %4 = alloca i32, align 4
  store %struct.iio_trigger* %0, %struct.iio_trigger** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.iio_trigger*, %struct.iio_trigger** %3, align 8
  %6 = getelementptr inbounds %struct.iio_trigger, %struct.iio_trigger* %5, i32 0, i32 0
  %7 = call i32 @mutex_lock(i32* %6)
  %8 = load i32, i32* %4, align 4
  %9 = sext i32 %8 to i64
  %10 = load %struct.iio_trigger*, %struct.iio_trigger** %3, align 8
  %11 = getelementptr inbounds %struct.iio_trigger, %struct.iio_trigger* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = sub nsw i64 %9, %12
  %14 = load %struct.iio_trigger*, %struct.iio_trigger** %3, align 8
  %15 = getelementptr inbounds %struct.iio_trigger, %struct.iio_trigger* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @clear_bit(i64 %13, i32 %16)
  %18 = load %struct.iio_trigger*, %struct.iio_trigger** %3, align 8
  %19 = getelementptr inbounds %struct.iio_trigger, %struct.iio_trigger* %18, i32 0, i32 0
  %20 = call i32 @mutex_unlock(i32* %19)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @clear_bit(i64, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
