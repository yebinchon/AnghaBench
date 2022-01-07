; ModuleID = '/home/carl/AnghaBench/linux/drivers/firewire/extr_ohci.c_get_cycle_time.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firewire/extr_ohci.c_get_cycle_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fw_ohci = type { i32 }

@OHCI1394_IsochronousCycleTimer = common dso_local global i32 0, align 4
@QUIRK_CYCLE_TIMER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fw_ohci*)* @get_cycle_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_cycle_time(%struct.fw_ohci* %0) #0 {
  %2 = alloca %struct.fw_ohci*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.fw_ohci* %0, %struct.fw_ohci** %2, align 8
  %12 = load %struct.fw_ohci*, %struct.fw_ohci** %2, align 8
  %13 = load i32, i32* @OHCI1394_IsochronousCycleTimer, align 4
  %14 = call i32 @reg_read(%struct.fw_ohci* %12, i32 %13)
  store i32 %14, i32* %5, align 4
  %15 = load %struct.fw_ohci*, %struct.fw_ohci** %2, align 8
  %16 = getelementptr inbounds %struct.fw_ohci, %struct.fw_ohci* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @QUIRK_CYCLE_TIMER, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %67

21:                                               ; preds = %1
  store i32 0, i32* %11, align 4
  %22 = load i32, i32* %5, align 4
  store i32 %22, i32* %4, align 4
  %23 = load %struct.fw_ohci*, %struct.fw_ohci** %2, align 8
  %24 = load i32, i32* @OHCI1394_IsochronousCycleTimer, align 4
  %25 = call i32 @reg_read(%struct.fw_ohci* %23, i32 %24)
  store i32 %25, i32* %5, align 4
  br label %26

26:                                               ; preds = %64, %21
  %27 = load i32, i32* %4, align 4
  store i32 %27, i32* %3, align 4
  %28 = load i32, i32* %5, align 4
  store i32 %28, i32* %4, align 4
  %29 = load %struct.fw_ohci*, %struct.fw_ohci** %2, align 8
  %30 = load i32, i32* @OHCI1394_IsochronousCycleTimer, align 4
  %31 = call i32 @reg_read(%struct.fw_ohci* %29, i32 %30)
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %3, align 4
  %33 = call i32 @cycle_timer_ticks(i32 %32)
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @cycle_timer_ticks(i32 %34)
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @cycle_timer_ticks(i32 %36)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* %6, align 4
  %40 = sub nsw i32 %38, %39
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* %7, align 4
  %43 = sub nsw i32 %41, %42
  store i32 %43, i32* %10, align 4
  br label %44

44:                                               ; preds = %26
  %45 = load i32, i32* %9, align 4
  %46 = icmp sle i32 %45, 0
  br i1 %46, label %60, label %47

47:                                               ; preds = %44
  %48 = load i32, i32* %10, align 4
  %49 = icmp sle i32 %48, 0
  br i1 %49, label %60, label %50

50:                                               ; preds = %47
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* %10, align 4
  %53 = sdiv i32 %51, %52
  %54 = icmp sge i32 %53, 2
  br i1 %54, label %60, label %55

55:                                               ; preds = %50
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* %9, align 4
  %58 = sdiv i32 %56, %57
  %59 = icmp sge i32 %58, 2
  br i1 %59, label %60, label %64

60:                                               ; preds = %55, %50, %47, %44
  %61 = load i32, i32* %11, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %11, align 4
  %63 = icmp slt i32 %61, 20
  br label %64

64:                                               ; preds = %60, %55
  %65 = phi i1 [ false, %55 ], [ %63, %60 ]
  br i1 %65, label %26, label %66

66:                                               ; preds = %64
  br label %67

67:                                               ; preds = %66, %1
  %68 = load i32, i32* %5, align 4
  ret i32 %68
}

declare dso_local i32 @reg_read(%struct.fw_ohci*, i32) #1

declare dso_local i32 @cycle_timer_ticks(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
