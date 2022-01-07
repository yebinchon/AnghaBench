; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/pressure/extr_ms5611_core.c_ms5611_fini.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/pressure/extr_ms5611_core.c_ms5611_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.ms5611_state = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iio_dev*)* @ms5611_fini to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ms5611_fini(%struct.iio_dev* %0) #0 {
  %2 = alloca %struct.iio_dev*, align 8
  %3 = alloca %struct.ms5611_state*, align 8
  store %struct.iio_dev* %0, %struct.iio_dev** %2, align 8
  %4 = load %struct.iio_dev*, %struct.iio_dev** %2, align 8
  %5 = call %struct.ms5611_state* @iio_priv(%struct.iio_dev* %4)
  store %struct.ms5611_state* %5, %struct.ms5611_state** %3, align 8
  %6 = load %struct.ms5611_state*, %struct.ms5611_state** %3, align 8
  %7 = getelementptr inbounds %struct.ms5611_state, %struct.ms5611_state* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @regulator_disable(i32 %8)
  ret void
}

declare dso_local %struct.ms5611_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @regulator_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
