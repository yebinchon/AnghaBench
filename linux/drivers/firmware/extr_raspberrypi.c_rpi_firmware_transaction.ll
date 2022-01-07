; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/extr_raspberrypi.c_rpi_firmware_transaction.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/extr_raspberrypi.c_rpi_firmware_transaction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpi_firmware = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@transaction_lock = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Firmware transaction timeout\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"mbox_send_message returned %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rpi_firmware*, i32, i32)* @rpi_firmware_transaction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rpi_firmware_transaction(%struct.rpi_firmware* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.rpi_firmware*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.rpi_firmware* %0, %struct.rpi_firmware** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* %6, align 4
  %11 = call i32 @MBOX_MSG(i32 %9, i32 %10)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %6, align 4
  %13 = and i32 %12, 15
  %14 = call i32 @WARN_ON(i32 %13)
  %15 = call i32 @mutex_lock(i32* @transaction_lock)
  %16 = load %struct.rpi_firmware*, %struct.rpi_firmware** %4, align 8
  %17 = getelementptr inbounds %struct.rpi_firmware, %struct.rpi_firmware* %16, i32 0, i32 1
  %18 = call i32 @reinit_completion(i32* %17)
  %19 = load %struct.rpi_firmware*, %struct.rpi_firmware** %4, align 8
  %20 = getelementptr inbounds %struct.rpi_firmware, %struct.rpi_firmware* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @mbox_send_message(i32 %21, i32* %7)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp sge i32 %23, 0
  br i1 %24, label %25, label %37

25:                                               ; preds = %3
  %26 = load %struct.rpi_firmware*, %struct.rpi_firmware** %4, align 8
  %27 = getelementptr inbounds %struct.rpi_firmware, %struct.rpi_firmware* %26, i32 0, i32 1
  %28 = load i32, i32* @HZ, align 4
  %29 = call i64 @wait_for_completion_timeout(i32* %27, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  store i32 0, i32* %8, align 4
  br label %36

32:                                               ; preds = %25
  %33 = load i32, i32* @ETIMEDOUT, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %8, align 4
  %35 = call i32 @WARN_ONCE(i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %36

36:                                               ; preds = %32, %31
  br label %44

37:                                               ; preds = %3
  %38 = load %struct.rpi_firmware*, %struct.rpi_firmware** %4, align 8
  %39 = getelementptr inbounds %struct.rpi_firmware, %struct.rpi_firmware* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @dev_err(i32 %41, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %42)
  br label %44

44:                                               ; preds = %37, %36
  %45 = call i32 @mutex_unlock(i32* @transaction_lock)
  %46 = load i32, i32* %8, align 4
  ret i32 %46
}

declare dso_local i32 @MBOX_MSG(i32, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i32 @mbox_send_message(i32, i32*) #1

declare dso_local i64 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @WARN_ONCE(i32, i8*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
