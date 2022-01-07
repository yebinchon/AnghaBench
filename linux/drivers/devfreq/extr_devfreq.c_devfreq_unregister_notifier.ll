; ModuleID = '/home/carl/AnghaBench/linux/drivers/devfreq/extr_devfreq.c_devfreq_unregister_notifier.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/devfreq/extr_devfreq.c_devfreq_unregister_notifier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devfreq = type { i32 }
%struct.notifier_block = type { i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @devfreq_unregister_notifier(%struct.devfreq* %0, %struct.notifier_block* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.devfreq*, align 8
  %6 = alloca %struct.notifier_block*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.devfreq* %0, %struct.devfreq** %5, align 8
  store %struct.notifier_block* %1, %struct.notifier_block** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %9 = load %struct.devfreq*, %struct.devfreq** %5, align 8
  %10 = icmp ne %struct.devfreq* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %3
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %4, align 4
  br label %26

14:                                               ; preds = %3
  %15 = load i32, i32* %7, align 4
  switch i32 %15, label %21 [
    i32 128, label %16
  ]

16:                                               ; preds = %14
  %17 = load %struct.devfreq*, %struct.devfreq** %5, align 8
  %18 = getelementptr inbounds %struct.devfreq, %struct.devfreq* %17, i32 0, i32 0
  %19 = load %struct.notifier_block*, %struct.notifier_block** %6, align 8
  %20 = call i32 @srcu_notifier_chain_unregister(i32* %18, %struct.notifier_block* %19)
  store i32 %20, i32* %8, align 4
  br label %24

21:                                               ; preds = %14
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %8, align 4
  br label %24

24:                                               ; preds = %21, %16
  %25 = load i32, i32* %8, align 4
  store i32 %25, i32* %4, align 4
  br label %26

26:                                               ; preds = %24, %11
  %27 = load i32, i32* %4, align 4
  ret i32 %27
}

declare dso_local i32 @srcu_notifier_chain_unregister(i32*, %struct.notifier_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
