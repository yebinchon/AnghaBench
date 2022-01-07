; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/extr_evdev.c_evdev_set_clk_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/extr_evdev.c_evdev_set_clk_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evdev_client = type { i32, i64, i64, i64, i32 }

@INPUT_CLK_REAL = common dso_local global i32 0, align 4
@INPUT_CLK_MONO = common dso_local global i32 0, align 4
@INPUT_CLK_BOOT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.evdev_client*, i32)* @evdev_set_clk_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @evdev_set_clk_type(%struct.evdev_client* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.evdev_client*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.evdev_client* %0, %struct.evdev_client** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  switch i32 %8, label %15 [
    i32 128, label %9
    i32 129, label %11
    i32 130, label %13
  ]

9:                                                ; preds = %2
  %10 = load i32, i32* @INPUT_CLK_REAL, align 4
  store i32 %10, i32* %7, align 4
  br label %18

11:                                               ; preds = %2
  %12 = load i32, i32* @INPUT_CLK_MONO, align 4
  store i32 %12, i32* %7, align 4
  br label %18

13:                                               ; preds = %2
  %14 = load i32, i32* @INPUT_CLK_BOOT, align 4
  store i32 %14, i32* %7, align 4
  br label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %55

18:                                               ; preds = %13, %11, %9
  %19 = load %struct.evdev_client*, %struct.evdev_client** %4, align 8
  %20 = getelementptr inbounds %struct.evdev_client, %struct.evdev_client* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* %7, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %54

24:                                               ; preds = %18
  %25 = load i32, i32* %7, align 4
  %26 = load %struct.evdev_client*, %struct.evdev_client** %4, align 8
  %27 = getelementptr inbounds %struct.evdev_client, %struct.evdev_client* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = load %struct.evdev_client*, %struct.evdev_client** %4, align 8
  %29 = getelementptr inbounds %struct.evdev_client, %struct.evdev_client* %28, i32 0, i32 4
  %30 = load i64, i64* %6, align 8
  %31 = call i32 @spin_lock_irqsave(i32* %29, i64 %30)
  %32 = load %struct.evdev_client*, %struct.evdev_client** %4, align 8
  %33 = getelementptr inbounds %struct.evdev_client, %struct.evdev_client* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.evdev_client*, %struct.evdev_client** %4, align 8
  %36 = getelementptr inbounds %struct.evdev_client, %struct.evdev_client* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %34, %37
  br i1 %38, label %39, label %49

39:                                               ; preds = %24
  %40 = load %struct.evdev_client*, %struct.evdev_client** %4, align 8
  %41 = getelementptr inbounds %struct.evdev_client, %struct.evdev_client* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.evdev_client*, %struct.evdev_client** %4, align 8
  %44 = getelementptr inbounds %struct.evdev_client, %struct.evdev_client* %43, i32 0, i32 1
  store i64 %42, i64* %44, align 8
  %45 = load %struct.evdev_client*, %struct.evdev_client** %4, align 8
  %46 = getelementptr inbounds %struct.evdev_client, %struct.evdev_client* %45, i32 0, i32 3
  store i64 %42, i64* %46, align 8
  %47 = load %struct.evdev_client*, %struct.evdev_client** %4, align 8
  %48 = call i32 @__evdev_queue_syn_dropped(%struct.evdev_client* %47)
  br label %49

49:                                               ; preds = %39, %24
  %50 = load %struct.evdev_client*, %struct.evdev_client** %4, align 8
  %51 = getelementptr inbounds %struct.evdev_client, %struct.evdev_client* %50, i32 0, i32 4
  %52 = load i64, i64* %6, align 8
  %53 = call i32 @spin_unlock_irqrestore(i32* %51, i64 %52)
  br label %54

54:                                               ; preds = %49, %18
  store i32 0, i32* %3, align 4
  br label %55

55:                                               ; preds = %54, %15
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @__evdev_queue_syn_dropped(%struct.evdev_client*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
