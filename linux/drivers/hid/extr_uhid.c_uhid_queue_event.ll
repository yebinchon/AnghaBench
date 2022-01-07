; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_uhid.c_uhid_queue_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_uhid.c_uhid_queue_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uhid_device = type { i32 }
%struct.uhid_event = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uhid_device*, i32)* @uhid_queue_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uhid_queue_event(%struct.uhid_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.uhid_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.uhid_event*, align 8
  store %struct.uhid_device* %0, %struct.uhid_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.uhid_event* @kzalloc(i32 4, i32 %8)
  store %struct.uhid_event* %9, %struct.uhid_event** %7, align 8
  %10 = load %struct.uhid_event*, %struct.uhid_event** %7, align 8
  %11 = icmp ne %struct.uhid_event* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %30

15:                                               ; preds = %2
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.uhid_event*, %struct.uhid_event** %7, align 8
  %18 = getelementptr inbounds %struct.uhid_event, %struct.uhid_event* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  %19 = load %struct.uhid_device*, %struct.uhid_device** %4, align 8
  %20 = getelementptr inbounds %struct.uhid_device, %struct.uhid_device* %19, i32 0, i32 0
  %21 = load i64, i64* %6, align 8
  %22 = call i32 @spin_lock_irqsave(i32* %20, i64 %21)
  %23 = load %struct.uhid_device*, %struct.uhid_device** %4, align 8
  %24 = load %struct.uhid_event*, %struct.uhid_event** %7, align 8
  %25 = call i32 @uhid_queue(%struct.uhid_device* %23, %struct.uhid_event* %24)
  %26 = load %struct.uhid_device*, %struct.uhid_device** %4, align 8
  %27 = getelementptr inbounds %struct.uhid_device, %struct.uhid_device* %26, i32 0, i32 0
  %28 = load i64, i64* %6, align 8
  %29 = call i32 @spin_unlock_irqrestore(i32* %27, i64 %28)
  store i32 0, i32* %3, align 4
  br label %30

30:                                               ; preds = %15, %12
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local %struct.uhid_event* @kzalloc(i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @uhid_queue(%struct.uhid_device*, %struct.uhid_event*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
