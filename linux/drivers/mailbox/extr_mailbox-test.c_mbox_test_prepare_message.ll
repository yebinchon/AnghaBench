; ModuleID = '/home/carl/AnghaBench/linux/drivers/mailbox/extr_mailbox-test.c_mbox_test_prepare_message.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mailbox/extr_mailbox-test.c_mbox_test_prepare_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbox_client = type { i32 }
%struct.mbox_test_device = type { i8*, i64, i64 }

@MBOX_MAX_MSG_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mbox_client*, i8*)* @mbox_test_prepare_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mbox_test_prepare_message(%struct.mbox_client* %0, i8* %1) #0 {
  %3 = alloca %struct.mbox_client*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.mbox_test_device*, align 8
  store %struct.mbox_client* %0, %struct.mbox_client** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.mbox_client*, %struct.mbox_client** %3, align 8
  %7 = getelementptr inbounds %struct.mbox_client, %struct.mbox_client* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.mbox_test_device* @dev_get_drvdata(i32 %8)
  store %struct.mbox_test_device* %9, %struct.mbox_test_device** %5, align 8
  %10 = load %struct.mbox_test_device*, %struct.mbox_test_device** %5, align 8
  %11 = getelementptr inbounds %struct.mbox_test_device, %struct.mbox_test_device* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %36

14:                                               ; preds = %2
  %15 = load %struct.mbox_test_device*, %struct.mbox_test_device** %5, align 8
  %16 = getelementptr inbounds %struct.mbox_test_device, %struct.mbox_test_device* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %14
  %20 = load %struct.mbox_test_device*, %struct.mbox_test_device** %5, align 8
  %21 = getelementptr inbounds %struct.mbox_test_device, %struct.mbox_test_device* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.mbox_test_device*, %struct.mbox_test_device** %5, align 8
  %24 = getelementptr inbounds %struct.mbox_test_device, %struct.mbox_test_device* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = load i32, i32* @MBOX_MAX_MSG_LEN, align 4
  %27 = call i32 @memcpy_toio(i64 %22, i8* %25, i32 %26)
  br label %35

28:                                               ; preds = %14
  %29 = load %struct.mbox_test_device*, %struct.mbox_test_device** %5, align 8
  %30 = getelementptr inbounds %struct.mbox_test_device, %struct.mbox_test_device* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i8*, i8** %4, align 8
  %33 = load i32, i32* @MBOX_MAX_MSG_LEN, align 4
  %34 = call i32 @memcpy_toio(i64 %31, i8* %32, i32 %33)
  br label %35

35:                                               ; preds = %28, %19
  br label %36

36:                                               ; preds = %35, %2
  ret void
}

declare dso_local %struct.mbox_test_device* @dev_get_drvdata(i32) #1

declare dso_local i32 @memcpy_toio(i64, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
