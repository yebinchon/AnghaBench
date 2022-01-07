; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/gyro/extr_itg3200_buffer.c_itg3200_remove_trigger.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/gyro/extr_itg3200_buffer.c_itg3200_remove_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.itg3200 = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @itg3200_remove_trigger(%struct.iio_dev* %0) #0 {
  %2 = alloca %struct.iio_dev*, align 8
  %3 = alloca %struct.itg3200*, align 8
  store %struct.iio_dev* %0, %struct.iio_dev** %2, align 8
  %4 = load %struct.iio_dev*, %struct.iio_dev** %2, align 8
  %5 = call %struct.itg3200* @iio_priv(%struct.iio_dev* %4)
  store %struct.itg3200* %5, %struct.itg3200** %3, align 8
  %6 = load %struct.itg3200*, %struct.itg3200** %3, align 8
  %7 = getelementptr inbounds %struct.itg3200, %struct.itg3200* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = call i32 @iio_trigger_unregister(i32 %8)
  %10 = load %struct.itg3200*, %struct.itg3200** %3, align 8
  %11 = getelementptr inbounds %struct.itg3200, %struct.itg3200* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.itg3200*, %struct.itg3200** %3, align 8
  %16 = getelementptr inbounds %struct.itg3200, %struct.itg3200* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @free_irq(i32 %14, i32 %17)
  %19 = load %struct.itg3200*, %struct.itg3200** %3, align 8
  %20 = getelementptr inbounds %struct.itg3200, %struct.itg3200* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @iio_trigger_free(i32 %21)
  ret void
}

declare dso_local %struct.itg3200* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @iio_trigger_unregister(i32) #1

declare dso_local i32 @free_irq(i32, i32) #1

declare dso_local i32 @iio_trigger_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
