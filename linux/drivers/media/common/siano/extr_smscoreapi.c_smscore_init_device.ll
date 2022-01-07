; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/common/siano/extr_smscoreapi.c_smscore_init_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/common/siano/extr_smscoreapi.c_smscore_init_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smscore_device_t = type { i32, i32 }
%struct.sms_msg_data = type { i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@SMS_DMA_ALIGNMENT = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MSG_SMS_INIT_DEVICE_REQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smscore_device_t*, i32)* @smscore_init_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smscore_init_device(%struct.smscore_device_t* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.smscore_device_t*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.sms_msg_data*, align 8
  %8 = alloca i32, align 4
  store %struct.smscore_device_t* %0, %struct.smscore_device_t** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %8, align 4
  %9 = load i64, i64* @SMS_DMA_ALIGNMENT, align 8
  %10 = add i64 16, %9
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = load %struct.smscore_device_t*, %struct.smscore_device_t** %4, align 8
  %13 = getelementptr inbounds %struct.smscore_device_t, %struct.smscore_device_t* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = or i32 %11, %14
  %16 = call i8* @kmalloc(i64 %10, i32 %15)
  store i8* %16, i8** %6, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %47

22:                                               ; preds = %2
  %23 = load i8*, i8** %6, align 8
  %24 = call i64 @SMS_ALIGN_ADDRESS(i8* %23)
  %25 = inttoptr i64 %24 to %struct.sms_msg_data*
  store %struct.sms_msg_data* %25, %struct.sms_msg_data** %7, align 8
  %26 = load %struct.sms_msg_data*, %struct.sms_msg_data** %7, align 8
  %27 = getelementptr inbounds %struct.sms_msg_data, %struct.sms_msg_data* %26, i32 0, i32 1
  %28 = load i32, i32* @MSG_SMS_INIT_DEVICE_REQ, align 4
  %29 = call i32 @SMS_INIT_MSG(%struct.TYPE_2__* %27, i32 %28, i32 16)
  %30 = load i32, i32* %5, align 4
  %31 = load %struct.sms_msg_data*, %struct.sms_msg_data** %7, align 8
  %32 = getelementptr inbounds %struct.sms_msg_data, %struct.sms_msg_data* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  store i32 %30, i32* %34, align 4
  %35 = load %struct.smscore_device_t*, %struct.smscore_device_t** %4, align 8
  %36 = load %struct.sms_msg_data*, %struct.sms_msg_data** %7, align 8
  %37 = load %struct.sms_msg_data*, %struct.sms_msg_data** %7, align 8
  %38 = getelementptr inbounds %struct.sms_msg_data, %struct.sms_msg_data* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.smscore_device_t*, %struct.smscore_device_t** %4, align 8
  %42 = getelementptr inbounds %struct.smscore_device_t, %struct.smscore_device_t* %41, i32 0, i32 1
  %43 = call i32 @smscore_sendrequest_and_wait(%struct.smscore_device_t* %35, %struct.sms_msg_data* %36, i32 %40, i32* %42)
  store i32 %43, i32* %8, align 4
  %44 = load i8*, i8** %6, align 8
  %45 = call i32 @kfree(i8* %44)
  %46 = load i32, i32* %8, align 4
  store i32 %46, i32* %3, align 4
  br label %47

47:                                               ; preds = %22, %19
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i8* @kmalloc(i64, i32) #1

declare dso_local i64 @SMS_ALIGN_ADDRESS(i8*) #1

declare dso_local i32 @SMS_INIT_MSG(%struct.TYPE_2__*, i32, i32) #1

declare dso_local i32 @smscore_sendrequest_and_wait(%struct.smscore_device_t*, %struct.sms_msg_data*, i32, i32*) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
