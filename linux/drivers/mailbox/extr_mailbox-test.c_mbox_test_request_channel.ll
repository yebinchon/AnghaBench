; ModuleID = '/home/carl/AnghaBench/linux/drivers/mailbox/extr_mailbox-test.c_mbox_test_request_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mailbox/extr_mailbox-test.c_mbox_test_request_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbox_chan = type { i32 }
%struct.platform_device = type { i32 }
%struct.mbox_client = type { i32, i32, i32, i32, i32, i32, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@mbox_test_receive_message = common dso_local global i32 0, align 4
@mbox_test_prepare_message = common dso_local global i32 0, align 4
@mbox_test_message_sent = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Failed to request %s channel\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mbox_chan* (%struct.platform_device*, i8*)* @mbox_test_request_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mbox_chan* @mbox_test_request_channel(%struct.platform_device* %0, i8* %1) #0 {
  %3 = alloca %struct.mbox_chan*, align 8
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.mbox_client*, align 8
  %7 = alloca %struct.mbox_chan*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.mbox_client* @devm_kzalloc(i32* %9, i32 32, i32 %10)
  store %struct.mbox_client* %11, %struct.mbox_client** %6, align 8
  %12 = load %struct.mbox_client*, %struct.mbox_client** %6, align 8
  %13 = icmp ne %struct.mbox_client* %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  %17 = call %struct.mbox_chan* @ERR_PTR(i32 %16)
  store %struct.mbox_chan* %17, %struct.mbox_chan** %3, align 8
  br label %51

18:                                               ; preds = %2
  %19 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %20 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %19, i32 0, i32 0
  %21 = load %struct.mbox_client*, %struct.mbox_client** %6, align 8
  %22 = getelementptr inbounds %struct.mbox_client, %struct.mbox_client* %21, i32 0, i32 6
  store i32* %20, i32** %22, align 8
  %23 = load i32, i32* @mbox_test_receive_message, align 4
  %24 = load %struct.mbox_client*, %struct.mbox_client** %6, align 8
  %25 = getelementptr inbounds %struct.mbox_client, %struct.mbox_client* %24, i32 0, i32 5
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* @mbox_test_prepare_message, align 4
  %27 = load %struct.mbox_client*, %struct.mbox_client** %6, align 8
  %28 = getelementptr inbounds %struct.mbox_client, %struct.mbox_client* %27, i32 0, i32 4
  store i32 %26, i32* %28, align 8
  %29 = load i32, i32* @mbox_test_message_sent, align 4
  %30 = load %struct.mbox_client*, %struct.mbox_client** %6, align 8
  %31 = getelementptr inbounds %struct.mbox_client, %struct.mbox_client* %30, i32 0, i32 3
  store i32 %29, i32* %31, align 4
  %32 = load %struct.mbox_client*, %struct.mbox_client** %6, align 8
  %33 = getelementptr inbounds %struct.mbox_client, %struct.mbox_client* %32, i32 0, i32 0
  store i32 1, i32* %33, align 8
  %34 = load %struct.mbox_client*, %struct.mbox_client** %6, align 8
  %35 = getelementptr inbounds %struct.mbox_client, %struct.mbox_client* %34, i32 0, i32 1
  store i32 0, i32* %35, align 4
  %36 = load %struct.mbox_client*, %struct.mbox_client** %6, align 8
  %37 = getelementptr inbounds %struct.mbox_client, %struct.mbox_client* %36, i32 0, i32 2
  store i32 500, i32* %37, align 8
  %38 = load %struct.mbox_client*, %struct.mbox_client** %6, align 8
  %39 = load i8*, i8** %5, align 8
  %40 = call %struct.mbox_chan* @mbox_request_channel_byname(%struct.mbox_client* %38, i8* %39)
  store %struct.mbox_chan* %40, %struct.mbox_chan** %7, align 8
  %41 = load %struct.mbox_chan*, %struct.mbox_chan** %7, align 8
  %42 = call i64 @IS_ERR(%struct.mbox_chan* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %18
  %45 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %46 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %45, i32 0, i32 0
  %47 = load i8*, i8** %5, align 8
  %48 = call i32 @dev_warn(i32* %46, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8* %47)
  store %struct.mbox_chan* null, %struct.mbox_chan** %3, align 8
  br label %51

49:                                               ; preds = %18
  %50 = load %struct.mbox_chan*, %struct.mbox_chan** %7, align 8
  store %struct.mbox_chan* %50, %struct.mbox_chan** %3, align 8
  br label %51

51:                                               ; preds = %49, %44, %14
  %52 = load %struct.mbox_chan*, %struct.mbox_chan** %3, align 8
  ret %struct.mbox_chan* %52
}

declare dso_local %struct.mbox_client* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local %struct.mbox_chan* @ERR_PTR(i32) #1

declare dso_local %struct.mbox_chan* @mbox_request_channel_byname(%struct.mbox_client*, i8*) #1

declare dso_local i64 @IS_ERR(%struct.mbox_chan*) #1

declare dso_local i32 @dev_warn(i32*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
