; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/common/siano/extr_smscoreapi.c_smscore_detect_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/common/siano/extr_smscoreapi.c_smscore_detect_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smscore_device_t = type { i32, i32, i32 }
%struct.sms_msg_hdr = type { i32 }

@SMS_DMA_ALIGNMENT = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MSG_SMS_GET_VERSION_EX_REQ = common dso_local global i32 0, align 4
@ETIME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"MSG_SMS_GET_VERSION_EX_REQ failed first try\0A\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"MSG_SMS_GET_VERSION_EX_REQ failed second try, rc %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smscore_device_t*)* @smscore_detect_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smscore_detect_mode(%struct.smscore_device_t* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.smscore_device_t*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sms_msg_hdr*, align 8
  %6 = alloca i32, align 4
  store %struct.smscore_device_t* %0, %struct.smscore_device_t** %3, align 8
  %7 = load i64, i64* @SMS_DMA_ALIGNMENT, align 8
  %8 = add i64 4, %7
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = load %struct.smscore_device_t*, %struct.smscore_device_t** %3, align 8
  %11 = getelementptr inbounds %struct.smscore_device_t, %struct.smscore_device_t* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = or i32 %9, %12
  %14 = call i8* @kmalloc(i64 %8, i32 %13)
  store i8* %14, i8** %4, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = call i64 @SMS_ALIGN_ADDRESS(i8* %15)
  %17 = inttoptr i64 %16 to %struct.sms_msg_hdr*
  store %struct.sms_msg_hdr* %17, %struct.sms_msg_hdr** %5, align 8
  %18 = load i8*, i8** %4, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %1
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %69

23:                                               ; preds = %1
  %24 = load %struct.sms_msg_hdr*, %struct.sms_msg_hdr** %5, align 8
  %25 = load i32, i32* @MSG_SMS_GET_VERSION_EX_REQ, align 4
  %26 = call i32 @SMS_INIT_MSG(%struct.sms_msg_hdr* %24, i32 %25, i32 4)
  %27 = load %struct.smscore_device_t*, %struct.smscore_device_t** %3, align 8
  %28 = load %struct.sms_msg_hdr*, %struct.sms_msg_hdr** %5, align 8
  %29 = load %struct.sms_msg_hdr*, %struct.sms_msg_hdr** %5, align 8
  %30 = getelementptr inbounds %struct.sms_msg_hdr, %struct.sms_msg_hdr* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.smscore_device_t*, %struct.smscore_device_t** %3, align 8
  %33 = getelementptr inbounds %struct.smscore_device_t, %struct.smscore_device_t* %32, i32 0, i32 1
  %34 = call i32 @smscore_sendrequest_and_wait(%struct.smscore_device_t* %27, %struct.sms_msg_hdr* %28, i32 %31, i32* %33)
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @ETIME, align 4
  %37 = sub nsw i32 0, %36
  %38 = icmp eq i32 %35, %37
  br i1 %38, label %39, label %65

39:                                               ; preds = %23
  %40 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %41 = load %struct.smscore_device_t*, %struct.smscore_device_t** %3, align 8
  %42 = getelementptr inbounds %struct.smscore_device_t, %struct.smscore_device_t* %41, i32 0, i32 2
  %43 = call i32 @msecs_to_jiffies(i32 5000)
  %44 = call i64 @wait_for_completion_timeout(i32* %42, i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %61

46:                                               ; preds = %39
  %47 = load %struct.smscore_device_t*, %struct.smscore_device_t** %3, align 8
  %48 = load %struct.sms_msg_hdr*, %struct.sms_msg_hdr** %5, align 8
  %49 = load %struct.sms_msg_hdr*, %struct.sms_msg_hdr** %5, align 8
  %50 = getelementptr inbounds %struct.sms_msg_hdr, %struct.sms_msg_hdr* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.smscore_device_t*, %struct.smscore_device_t** %3, align 8
  %53 = getelementptr inbounds %struct.smscore_device_t, %struct.smscore_device_t* %52, i32 0, i32 1
  %54 = call i32 @smscore_sendrequest_and_wait(%struct.smscore_device_t* %47, %struct.sms_msg_hdr* %48, i32 %51, i32* %53)
  store i32 %54, i32* %6, align 4
  %55 = load i32, i32* %6, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %46
  %58 = load i32, i32* %6, align 4
  %59 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i32 %58)
  br label %60

60:                                               ; preds = %57, %46
  br label %64

61:                                               ; preds = %39
  %62 = load i32, i32* @ETIME, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %6, align 4
  br label %64

64:                                               ; preds = %61, %60
  br label %65

65:                                               ; preds = %64, %23
  %66 = load i8*, i8** %4, align 8
  %67 = call i32 @kfree(i8* %66)
  %68 = load i32, i32* %6, align 4
  store i32 %68, i32* %2, align 4
  br label %69

69:                                               ; preds = %65, %20
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local i8* @kmalloc(i64, i32) #1

declare dso_local i64 @SMS_ALIGN_ADDRESS(i8*) #1

declare dso_local i32 @SMS_INIT_MSG(%struct.sms_msg_hdr*, i32, i32) #1

declare dso_local i32 @smscore_sendrequest_and_wait(%struct.smscore_device_t*, %struct.sms_msg_hdr*, i32, i32*) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i64 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
