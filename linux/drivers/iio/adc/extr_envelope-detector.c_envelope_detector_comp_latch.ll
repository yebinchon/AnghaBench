; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_envelope-detector.c_envelope_detector_comp_latch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_envelope-detector.c_envelope_detector_comp_latch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.envelope = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.envelope*)* @envelope_detector_comp_latch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @envelope_detector_comp_latch(%struct.envelope* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.envelope*, align 8
  %4 = alloca i32, align 4
  store %struct.envelope* %0, %struct.envelope** %3, align 8
  %5 = load %struct.envelope*, %struct.envelope** %3, align 8
  %6 = getelementptr inbounds %struct.envelope, %struct.envelope* %5, i32 0, i32 2
  %7 = call i32 @spin_lock_irq(i32* %6)
  %8 = load %struct.envelope*, %struct.envelope** %3, align 8
  %9 = getelementptr inbounds %struct.envelope, %struct.envelope* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %4, align 4
  %11 = load %struct.envelope*, %struct.envelope** %3, align 8
  %12 = getelementptr inbounds %struct.envelope, %struct.envelope* %11, i32 0, i32 0
  store i32 0, i32* %12, align 4
  %13 = load %struct.envelope*, %struct.envelope** %3, align 8
  %14 = getelementptr inbounds %struct.envelope, %struct.envelope* %13, i32 0, i32 2
  %15 = call i32 @spin_unlock_irq(i32* %14)
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %47

19:                                               ; preds = %1
  %20 = load %struct.envelope*, %struct.envelope** %3, align 8
  %21 = getelementptr inbounds %struct.envelope, %struct.envelope* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @enable_irq(i32 %22)
  %24 = load %struct.envelope*, %struct.envelope** %3, align 8
  %25 = getelementptr inbounds %struct.envelope, %struct.envelope* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @synchronize_irq(i32 %26)
  %28 = load %struct.envelope*, %struct.envelope** %3, align 8
  %29 = getelementptr inbounds %struct.envelope, %struct.envelope* %28, i32 0, i32 2
  %30 = call i32 @spin_lock_irq(i32* %29)
  %31 = load %struct.envelope*, %struct.envelope** %3, align 8
  %32 = getelementptr inbounds %struct.envelope, %struct.envelope* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %4, align 4
  %34 = load %struct.envelope*, %struct.envelope** %3, align 8
  %35 = getelementptr inbounds %struct.envelope, %struct.envelope* %34, i32 0, i32 0
  store i32 0, i32* %35, align 4
  %36 = load %struct.envelope*, %struct.envelope** %3, align 8
  %37 = getelementptr inbounds %struct.envelope, %struct.envelope* %36, i32 0, i32 2
  %38 = call i32 @spin_unlock_irq(i32* %37)
  %39 = load i32, i32* %4, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %19
  %42 = load %struct.envelope*, %struct.envelope** %3, align 8
  %43 = getelementptr inbounds %struct.envelope, %struct.envelope* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @enable_irq(i32 %44)
  br label %46

46:                                               ; preds = %41, %19
  store i32 1, i32* %2, align 4
  br label %47

47:                                               ; preds = %46, %18
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @enable_irq(i32) #1

declare dso_local i32 @synchronize_irq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
