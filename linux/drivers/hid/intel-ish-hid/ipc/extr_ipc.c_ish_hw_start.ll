; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/intel-ish-hid/ipc/extr_ipc.c_ish_hw_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/intel-ish-hid/ipc/extr_ipc.c_ish_hw_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ishtp_device = type { i32, i32, i32 }

@HZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"[ishtp-ish]: Timed out waiting for FW-initiated reset\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ish_hw_start(%struct.ishtp_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ishtp_device*, align 8
  store %struct.ishtp_device* %0, %struct.ishtp_device** %3, align 8
  %4 = load %struct.ishtp_device*, %struct.ishtp_device** %3, align 8
  %5 = call i32 @ish_set_host_rdy(%struct.ishtp_device* %4)
  %6 = load %struct.ishtp_device*, %struct.ishtp_device** %3, align 8
  %7 = call i32 @set_host_ready(%struct.ishtp_device* %6)
  %8 = load %struct.ishtp_device*, %struct.ishtp_device** %3, align 8
  %9 = call i32 @ish_wakeup(%struct.ishtp_device* %8)
  %10 = load %struct.ishtp_device*, %struct.ishtp_device** %3, align 8
  %11 = getelementptr inbounds %struct.ishtp_device, %struct.ishtp_device* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %24, label %14

14:                                               ; preds = %1
  %15 = load %struct.ishtp_device*, %struct.ishtp_device** %3, align 8
  %16 = getelementptr inbounds %struct.ishtp_device, %struct.ishtp_device* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.ishtp_device*, %struct.ishtp_device** %3, align 8
  %19 = getelementptr inbounds %struct.ishtp_device, %struct.ishtp_device* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @HZ, align 4
  %22 = mul nsw i32 10, %21
  %23 = call i32 @wait_event_interruptible_timeout(i32 %17, i32 %20, i32 %22)
  br label %24

24:                                               ; preds = %14, %1
  %25 = load %struct.ishtp_device*, %struct.ishtp_device** %3, align 8
  %26 = getelementptr inbounds %struct.ishtp_device, %struct.ishtp_device* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %36, label %29

29:                                               ; preds = %24
  %30 = load %struct.ishtp_device*, %struct.ishtp_device** %3, align 8
  %31 = getelementptr inbounds %struct.ishtp_device, %struct.ishtp_device* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @dev_err(i32 %32, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0))
  %34 = load i32, i32* @ENODEV, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %37

36:                                               ; preds = %24
  store i32 0, i32* %2, align 4
  br label %37

37:                                               ; preds = %36, %29
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local i32 @ish_set_host_rdy(%struct.ishtp_device*) #1

declare dso_local i32 @set_host_ready(%struct.ishtp_device*) #1

declare dso_local i32 @ish_wakeup(%struct.ishtp_device*) #1

declare dso_local i32 @wait_event_interruptible_timeout(i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
