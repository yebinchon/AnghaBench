; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_uhid.c_uhid_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_uhid.c_uhid_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uhid_device = type { i32, i32, i32, i32, %struct.uhid_event** }
%struct.uhid_event = type { i32 }

@UHID_BUFSIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Output queue is full\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uhid_device*, %struct.uhid_event*)* @uhid_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uhid_queue(%struct.uhid_device* %0, %struct.uhid_event* %1) #0 {
  %3 = alloca %struct.uhid_device*, align 8
  %4 = alloca %struct.uhid_event*, align 8
  %5 = alloca i32, align 4
  store %struct.uhid_device* %0, %struct.uhid_device** %3, align 8
  store %struct.uhid_event* %1, %struct.uhid_event** %4, align 8
  %6 = load %struct.uhid_device*, %struct.uhid_device** %3, align 8
  %7 = getelementptr inbounds %struct.uhid_device, %struct.uhid_device* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = add nsw i32 %8, 1
  %10 = load i32, i32* @UHID_BUFSIZE, align 4
  %11 = srem i32 %9, %10
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = load %struct.uhid_device*, %struct.uhid_device** %3, align 8
  %14 = getelementptr inbounds %struct.uhid_device, %struct.uhid_device* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %12, %15
  br i1 %16, label %17, label %33

17:                                               ; preds = %2
  %18 = load %struct.uhid_event*, %struct.uhid_event** %4, align 8
  %19 = load %struct.uhid_device*, %struct.uhid_device** %3, align 8
  %20 = getelementptr inbounds %struct.uhid_device, %struct.uhid_device* %19, i32 0, i32 4
  %21 = load %struct.uhid_event**, %struct.uhid_event*** %20, align 8
  %22 = load %struct.uhid_device*, %struct.uhid_device** %3, align 8
  %23 = getelementptr inbounds %struct.uhid_device, %struct.uhid_device* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.uhid_event*, %struct.uhid_event** %21, i64 %25
  store %struct.uhid_event* %18, %struct.uhid_event** %26, align 8
  %27 = load i32, i32* %5, align 4
  %28 = load %struct.uhid_device*, %struct.uhid_device** %3, align 8
  %29 = getelementptr inbounds %struct.uhid_device, %struct.uhid_device* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  %30 = load %struct.uhid_device*, %struct.uhid_device** %3, align 8
  %31 = getelementptr inbounds %struct.uhid_device, %struct.uhid_device* %30, i32 0, i32 3
  %32 = call i32 @wake_up_interruptible(i32* %31)
  br label %40

33:                                               ; preds = %2
  %34 = load %struct.uhid_device*, %struct.uhid_device** %3, align 8
  %35 = getelementptr inbounds %struct.uhid_device, %struct.uhid_device* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @hid_warn(i32 %36, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %38 = load %struct.uhid_event*, %struct.uhid_event** %4, align 8
  %39 = call i32 @kfree(%struct.uhid_event* %38)
  br label %40

40:                                               ; preds = %33, %17
  ret void
}

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local i32 @hid_warn(i32, i8*) #1

declare dso_local i32 @kfree(%struct.uhid_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
