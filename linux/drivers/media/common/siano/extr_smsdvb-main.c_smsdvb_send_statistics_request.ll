; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/common/siano/extr_smsdvb-main.c_smsdvb_send_statistics_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/common/siano/extr_smsdvb-main.c_smsdvb_send_statistics_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smsdvb_client_t = type { i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.sms_msg_hdr = type { i32, i8*, i64, i32, i32 }

@jiffies = common dso_local global i64 0, align 8
@DVBT_BDA_CONTROL_MSG_ID = common dso_local global i32 0, align 4
@HIF_TASK = common dso_local global i32 0, align 4
@MSG_SMS_GET_STATISTICS_EX_REQ = common dso_local global i8* null, align 8
@MSG_SMS_GET_STATISTICS_REQ = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smsdvb_client_t*)* @smsdvb_send_statistics_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smsdvb_send_statistics_request(%struct.smsdvb_client_t* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.smsdvb_client_t*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sms_msg_hdr, align 8
  store %struct.smsdvb_client_t* %0, %struct.smsdvb_client_t** %3, align 8
  %6 = load %struct.smsdvb_client_t*, %struct.smsdvb_client_t** %3, align 8
  %7 = getelementptr inbounds %struct.smsdvb_client_t, %struct.smsdvb_client_t* %6, i32 0, i32 2
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %18

10:                                               ; preds = %1
  %11 = load i64, i64* @jiffies, align 8
  %12 = load %struct.smsdvb_client_t*, %struct.smsdvb_client_t** %3, align 8
  %13 = getelementptr inbounds %struct.smsdvb_client_t, %struct.smsdvb_client_t* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = call i32 @time_after(i64 %11, i64 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %10
  store i32 0, i32* %2, align 4
  br label %57

18:                                               ; preds = %10, %1
  %19 = load i64, i64* @jiffies, align 8
  %20 = call i64 @msecs_to_jiffies(i32 100)
  %21 = add nsw i64 %19, %20
  %22 = load %struct.smsdvb_client_t*, %struct.smsdvb_client_t** %3, align 8
  %23 = getelementptr inbounds %struct.smsdvb_client_t, %struct.smsdvb_client_t* %22, i32 0, i32 2
  store i64 %21, i64* %23, align 8
  %24 = load i32, i32* @DVBT_BDA_CONTROL_MSG_ID, align 4
  %25 = getelementptr inbounds %struct.sms_msg_hdr, %struct.sms_msg_hdr* %5, i32 0, i32 4
  store i32 %24, i32* %25, align 4
  %26 = load i32, i32* @HIF_TASK, align 4
  %27 = getelementptr inbounds %struct.sms_msg_hdr, %struct.sms_msg_hdr* %5, i32 0, i32 3
  store i32 %26, i32* %27, align 8
  %28 = getelementptr inbounds %struct.sms_msg_hdr, %struct.sms_msg_hdr* %5, i32 0, i32 2
  store i64 0, i64* %28, align 8
  %29 = getelementptr inbounds %struct.sms_msg_hdr, %struct.sms_msg_hdr* %5, i32 0, i32 0
  store i32 32, i32* %29, align 8
  %30 = load %struct.smsdvb_client_t*, %struct.smsdvb_client_t** %3, align 8
  %31 = getelementptr inbounds %struct.smsdvb_client_t, %struct.smsdvb_client_t* %30, i32 0, i32 1
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = call i32 @smscore_get_device_mode(%struct.TYPE_2__* %32)
  switch i32 %33, label %48 [
    i32 129, label %34
    i32 128, label %34
  ]

34:                                               ; preds = %18, %18
  %35 = load %struct.smsdvb_client_t*, %struct.smsdvb_client_t** %3, align 8
  %36 = getelementptr inbounds %struct.smsdvb_client_t, %struct.smsdvb_client_t* %35, i32 0, i32 1
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp sge i32 %39, 2048
  br i1 %40, label %41, label %44

41:                                               ; preds = %34
  %42 = load i8*, i8** @MSG_SMS_GET_STATISTICS_EX_REQ, align 8
  %43 = getelementptr inbounds %struct.sms_msg_hdr, %struct.sms_msg_hdr* %5, i32 0, i32 1
  store i8* %42, i8** %43, align 8
  br label %47

44:                                               ; preds = %34
  %45 = load i8*, i8** @MSG_SMS_GET_STATISTICS_REQ, align 8
  %46 = getelementptr inbounds %struct.sms_msg_hdr, %struct.sms_msg_hdr* %5, i32 0, i32 1
  store i8* %45, i8** %46, align 8
  br label %47

47:                                               ; preds = %44, %41
  br label %51

48:                                               ; preds = %18
  %49 = load i8*, i8** @MSG_SMS_GET_STATISTICS_REQ, align 8
  %50 = getelementptr inbounds %struct.sms_msg_hdr, %struct.sms_msg_hdr* %5, i32 0, i32 1
  store i8* %49, i8** %50, align 8
  br label %51

51:                                               ; preds = %48, %47
  %52 = load %struct.smsdvb_client_t*, %struct.smsdvb_client_t** %3, align 8
  %53 = load %struct.smsdvb_client_t*, %struct.smsdvb_client_t** %3, align 8
  %54 = getelementptr inbounds %struct.smsdvb_client_t, %struct.smsdvb_client_t* %53, i32 0, i32 0
  %55 = call i32 @smsdvb_sendrequest_and_wait(%struct.smsdvb_client_t* %52, %struct.sms_msg_hdr* %5, i32 32, i32* %54)
  store i32 %55, i32* %4, align 4
  %56 = load i32, i32* %4, align 4
  store i32 %56, i32* %2, align 4
  br label %57

57:                                               ; preds = %51, %17
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local i32 @time_after(i64, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @smscore_get_device_mode(%struct.TYPE_2__*) #1

declare dso_local i32 @smsdvb_sendrequest_and_wait(%struct.smsdvb_client_t*, %struct.sms_msg_hdr*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
