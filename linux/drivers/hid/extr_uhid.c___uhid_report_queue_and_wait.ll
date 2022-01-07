; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_uhid.c___uhid_report_queue_and_wait.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_uhid.c___uhid_report_queue_and_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uhid_device = type { i32, i32, i32, i32, i64, i64 }
%struct.uhid_event = type { i64 }

@HZ = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uhid_device*, %struct.uhid_event*, i64*)* @__uhid_report_queue_and_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__uhid_report_queue_and_wait(%struct.uhid_device* %0, %struct.uhid_event* %1, i64* %2) #0 {
  %4 = alloca %struct.uhid_device*, align 8
  %5 = alloca %struct.uhid_event*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.uhid_device* %0, %struct.uhid_device** %4, align 8
  store %struct.uhid_event* %1, %struct.uhid_event** %5, align 8
  store i64* %2, i64** %6, align 8
  %9 = load %struct.uhid_device*, %struct.uhid_device** %4, align 8
  %10 = getelementptr inbounds %struct.uhid_device, %struct.uhid_device* %9, i32 0, i32 3
  %11 = load i64, i64* %7, align 8
  %12 = call i32 @spin_lock_irqsave(i32* %10, i64 %11)
  %13 = load %struct.uhid_device*, %struct.uhid_device** %4, align 8
  %14 = getelementptr inbounds %struct.uhid_device, %struct.uhid_device* %13, i32 0, i32 5
  %15 = load i64, i64* %14, align 8
  %16 = add nsw i64 %15, 1
  store i64 %16, i64* %14, align 8
  %17 = load i64*, i64** %6, align 8
  store i64 %16, i64* %17, align 8
  %18 = load %struct.uhid_event*, %struct.uhid_event** %5, align 8
  %19 = getelementptr inbounds %struct.uhid_event, %struct.uhid_event* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = add nsw i64 %20, 1
  %22 = load %struct.uhid_device*, %struct.uhid_device** %4, align 8
  %23 = getelementptr inbounds %struct.uhid_device, %struct.uhid_device* %22, i32 0, i32 4
  store i64 %21, i64* %23, align 8
  %24 = load %struct.uhid_device*, %struct.uhid_device** %4, align 8
  %25 = getelementptr inbounds %struct.uhid_device, %struct.uhid_device* %24, i32 0, i32 0
  store i32 1, i32* %25, align 8
  %26 = load %struct.uhid_device*, %struct.uhid_device** %4, align 8
  %27 = load %struct.uhid_event*, %struct.uhid_event** %5, align 8
  %28 = call i32 @uhid_queue(%struct.uhid_device* %26, %struct.uhid_event* %27)
  %29 = load %struct.uhid_device*, %struct.uhid_device** %4, align 8
  %30 = getelementptr inbounds %struct.uhid_device, %struct.uhid_device* %29, i32 0, i32 3
  %31 = load i64, i64* %7, align 8
  %32 = call i32 @spin_unlock_irqrestore(i32* %30, i64 %31)
  %33 = load %struct.uhid_device*, %struct.uhid_device** %4, align 8
  %34 = getelementptr inbounds %struct.uhid_device, %struct.uhid_device* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.uhid_device*, %struct.uhid_device** %4, align 8
  %37 = getelementptr inbounds %struct.uhid_device, %struct.uhid_device* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %3
  %41 = load %struct.uhid_device*, %struct.uhid_device** %4, align 8
  %42 = getelementptr inbounds %struct.uhid_device, %struct.uhid_device* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  %45 = xor i1 %44, true
  br label %46

46:                                               ; preds = %40, %3
  %47 = phi i1 [ true, %3 ], [ %45, %40 ]
  %48 = zext i1 %47 to i32
  %49 = load i32, i32* @HZ, align 4
  %50 = mul nsw i32 5, %49
  %51 = call i32 @wait_event_interruptible_timeout(i32 %35, i32 %48, i32 %50)
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %8, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %64

54:                                               ; preds = %46
  %55 = load %struct.uhid_device*, %struct.uhid_device** %4, align 8
  %56 = getelementptr inbounds %struct.uhid_device, %struct.uhid_device* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %54
  %60 = load %struct.uhid_device*, %struct.uhid_device** %4, align 8
  %61 = getelementptr inbounds %struct.uhid_device, %struct.uhid_device* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %59, %54, %46
  %65 = load i32, i32* @EIO, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %8, align 4
  br label %75

67:                                               ; preds = %59
  %68 = load i32, i32* %8, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %67
  %71 = load i32, i32* @ERESTARTSYS, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %8, align 4
  br label %74

73:                                               ; preds = %67
  store i32 0, i32* %8, align 4
  br label %74

74:                                               ; preds = %73, %70
  br label %75

75:                                               ; preds = %74, %64
  %76 = load %struct.uhid_device*, %struct.uhid_device** %4, align 8
  %77 = getelementptr inbounds %struct.uhid_device, %struct.uhid_device* %76, i32 0, i32 0
  store i32 0, i32* %77, align 8
  %78 = load i32, i32* %8, align 4
  ret i32 %78
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @uhid_queue(%struct.uhid_device*, %struct.uhid_event*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @wait_event_interruptible_timeout(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
