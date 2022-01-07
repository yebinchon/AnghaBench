; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/extr_input-poller.c_input_dev_poller_finalize.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/extr_input-poller.c_input_dev_poller_finalize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_dev_poller = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @input_dev_poller_finalize(%struct.input_dev_poller* %0) #0 {
  %2 = alloca %struct.input_dev_poller*, align 8
  store %struct.input_dev_poller* %0, %struct.input_dev_poller** %2, align 8
  %3 = load %struct.input_dev_poller*, %struct.input_dev_poller** %2, align 8
  %4 = getelementptr inbounds %struct.input_dev_poller, %struct.input_dev_poller* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = load %struct.input_dev_poller*, %struct.input_dev_poller** %2, align 8
  %9 = getelementptr inbounds %struct.input_dev_poller, %struct.input_dev_poller* %8, i32 0, i32 0
  store i32 500, i32* %9, align 4
  br label %10

10:                                               ; preds = %7, %1
  %11 = load %struct.input_dev_poller*, %struct.input_dev_poller** %2, align 8
  %12 = getelementptr inbounds %struct.input_dev_poller, %struct.input_dev_poller* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %10
  %16 = load %struct.input_dev_poller*, %struct.input_dev_poller** %2, align 8
  %17 = getelementptr inbounds %struct.input_dev_poller, %struct.input_dev_poller* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.input_dev_poller*, %struct.input_dev_poller** %2, align 8
  %20 = getelementptr inbounds %struct.input_dev_poller, %struct.input_dev_poller* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 4
  br label %21

21:                                               ; preds = %15, %10
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
