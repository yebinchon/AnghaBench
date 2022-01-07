; ModuleID = '/home/carl/AnghaBench/linux/drivers/mailbox/extr_mailbox-test.c_mbox_test_receive_message.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mailbox/extr_mailbox-test.c_mbox_test_receive_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbox_client = type { i32 }
%struct.mbox_test_device = type { i8*, i32, i32, i32, i64 }

@MBOX_MAX_MSG_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Client: Received [MMIO]: \00", align 1
@DUMP_PREFIX_ADDRESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Client: Received [API]: \00", align 1
@mbox_data_ready = common dso_local global i32 0, align 4
@SIGIO = common dso_local global i32 0, align 4
@POLL_IN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mbox_client*, i8*)* @mbox_test_receive_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mbox_test_receive_message(%struct.mbox_client* %0, i8* %1) #0 {
  %3 = alloca %struct.mbox_client*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.mbox_test_device*, align 8
  %6 = alloca i64, align 8
  store %struct.mbox_client* %0, %struct.mbox_client** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load %struct.mbox_client*, %struct.mbox_client** %3, align 8
  %8 = getelementptr inbounds %struct.mbox_client, %struct.mbox_client* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.mbox_test_device* @dev_get_drvdata(i32 %9)
  store %struct.mbox_test_device* %10, %struct.mbox_test_device** %5, align 8
  %11 = load %struct.mbox_test_device*, %struct.mbox_test_device** %5, align 8
  %12 = getelementptr inbounds %struct.mbox_test_device, %struct.mbox_test_device* %11, i32 0, i32 3
  %13 = load i64, i64* %6, align 8
  %14 = call i32 @spin_lock_irqsave(i32* %12, i64 %13)
  %15 = load %struct.mbox_test_device*, %struct.mbox_test_device** %5, align 8
  %16 = getelementptr inbounds %struct.mbox_test_device, %struct.mbox_test_device* %15, i32 0, i32 4
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %34

19:                                               ; preds = %2
  %20 = load %struct.mbox_test_device*, %struct.mbox_test_device** %5, align 8
  %21 = getelementptr inbounds %struct.mbox_test_device, %struct.mbox_test_device* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = load %struct.mbox_test_device*, %struct.mbox_test_device** %5, align 8
  %24 = getelementptr inbounds %struct.mbox_test_device, %struct.mbox_test_device* %23, i32 0, i32 4
  %25 = load i64, i64* %24, align 8
  %26 = load i32, i32* @MBOX_MAX_MSG_LEN, align 4
  %27 = call i32 @memcpy_fromio(i8* %22, i64 %25, i32 %26)
  %28 = load i32, i32* @DUMP_PREFIX_ADDRESS, align 4
  %29 = load %struct.mbox_test_device*, %struct.mbox_test_device** %5, align 8
  %30 = getelementptr inbounds %struct.mbox_test_device, %struct.mbox_test_device* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = load i32, i32* @MBOX_MAX_MSG_LEN, align 4
  %33 = call i32 @print_hex_dump_bytes(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %28, i8* %31, i32 %32)
  br label %49

34:                                               ; preds = %2
  %35 = load i8*, i8** %4, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %48

37:                                               ; preds = %34
  %38 = load i32, i32* @DUMP_PREFIX_ADDRESS, align 4
  %39 = load i8*, i8** %4, align 8
  %40 = load i32, i32* @MBOX_MAX_MSG_LEN, align 4
  %41 = call i32 @print_hex_dump_bytes(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %38, i8* %39, i32 %40)
  %42 = load %struct.mbox_test_device*, %struct.mbox_test_device** %5, align 8
  %43 = getelementptr inbounds %struct.mbox_test_device, %struct.mbox_test_device* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = load i8*, i8** %4, align 8
  %46 = load i32, i32* @MBOX_MAX_MSG_LEN, align 4
  %47 = call i32 @memcpy(i8* %44, i8* %45, i32 %46)
  br label %48

48:                                               ; preds = %37, %34
  br label %49

49:                                               ; preds = %48, %19
  store i32 1, i32* @mbox_data_ready, align 4
  %50 = load %struct.mbox_test_device*, %struct.mbox_test_device** %5, align 8
  %51 = getelementptr inbounds %struct.mbox_test_device, %struct.mbox_test_device* %50, i32 0, i32 3
  %52 = load i64, i64* %6, align 8
  %53 = call i32 @spin_unlock_irqrestore(i32* %51, i64 %52)
  %54 = load %struct.mbox_test_device*, %struct.mbox_test_device** %5, align 8
  %55 = getelementptr inbounds %struct.mbox_test_device, %struct.mbox_test_device* %54, i32 0, i32 2
  %56 = call i32 @wake_up_interruptible(i32* %55)
  %57 = load %struct.mbox_test_device*, %struct.mbox_test_device** %5, align 8
  %58 = getelementptr inbounds %struct.mbox_test_device, %struct.mbox_test_device* %57, i32 0, i32 1
  %59 = load i32, i32* @SIGIO, align 4
  %60 = load i32, i32* @POLL_IN, align 4
  %61 = call i32 @kill_fasync(i32* %58, i32 %59, i32 %60)
  ret void
}

declare dso_local %struct.mbox_test_device* @dev_get_drvdata(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @memcpy_fromio(i8*, i64, i32) #1

declare dso_local i32 @print_hex_dump_bytes(i8*, i32, i8*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local i32 @kill_fasync(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
