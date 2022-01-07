; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_bma150.c_bma150_poll_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_bma150.c_bma150_poll_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_polled_dev = type { %struct.bma150_data* }
%struct.bma150_data = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.input_polled_dev*)* @bma150_poll_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bma150_poll_open(%struct.input_polled_dev* %0) #0 {
  %2 = alloca %struct.input_polled_dev*, align 8
  %3 = alloca %struct.bma150_data*, align 8
  store %struct.input_polled_dev* %0, %struct.input_polled_dev** %2, align 8
  %4 = load %struct.input_polled_dev*, %struct.input_polled_dev** %2, align 8
  %5 = getelementptr inbounds %struct.input_polled_dev, %struct.input_polled_dev* %4, i32 0, i32 0
  %6 = load %struct.bma150_data*, %struct.bma150_data** %5, align 8
  store %struct.bma150_data* %6, %struct.bma150_data** %3, align 8
  %7 = load %struct.bma150_data*, %struct.bma150_data** %3, align 8
  %8 = call i32 @bma150_open(%struct.bma150_data* %7)
  ret void
}

declare dso_local i32 @bma150_open(%struct.bma150_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
