; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/common/siano/extr_smscoreapi.c_smscore_init_ir.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/common/siano/extr_smscoreapi.c_smscore_init_ir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smscore_device_t = type { i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32* }
%struct.sms_msg_data2 = type { %struct.TYPE_8__, i32* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"IR loading\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"Error initialization DTV IR sub-module\0A\00", align 1
@SMS_DMA_ALIGNMENT = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@MSG_SMS_START_IR_REQ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"Sending IR initialization message failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"IR port has not been detected\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smscore_device_t*)* @smscore_init_ir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smscore_init_ir(%struct.smscore_device_t* %0) #0 {
  %2 = alloca %struct.smscore_device_t*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.sms_msg_data2*, align 8
  store %struct.smscore_device_t* %0, %struct.smscore_device_t** %2, align 8
  %7 = load %struct.smscore_device_t*, %struct.smscore_device_t** %2, align 8
  %8 = getelementptr inbounds %struct.smscore_device_t, %struct.smscore_device_t* %7, i32 0, i32 2
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 2
  store i32* null, i32** %9, align 8
  %10 = load %struct.smscore_device_t*, %struct.smscore_device_t** %2, align 8
  %11 = call i32 @smscore_get_board_id(%struct.smscore_device_t* %10)
  %12 = call %struct.TYPE_7__* @sms_get_board(i32 %11)
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* %3, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %76

18:                                               ; preds = %1
  %19 = call i32 @pr_debug(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.smscore_device_t*, %struct.smscore_device_t** %2, align 8
  %21 = call i32 @sms_ir_init(%struct.smscore_device_t* %20)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %18
  %25 = call i32 @pr_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  br label %75

26:                                               ; preds = %18
  %27 = load i64, i64* @SMS_DMA_ALIGNMENT, align 8
  %28 = add i64 16, %27
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = load %struct.smscore_device_t*, %struct.smscore_device_t** %2, align 8
  %31 = getelementptr inbounds %struct.smscore_device_t, %struct.smscore_device_t* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = or i32 %29, %32
  %34 = call i8* @kmalloc(i64 %28, i32 %33)
  store i8* %34, i8** %5, align 8
  %35 = load i8*, i8** %5, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %72

37:                                               ; preds = %26
  %38 = load i8*, i8** %5, align 8
  %39 = call i64 @SMS_ALIGN_ADDRESS(i8* %38)
  %40 = inttoptr i64 %39 to %struct.sms_msg_data2*
  store %struct.sms_msg_data2* %40, %struct.sms_msg_data2** %6, align 8
  %41 = load %struct.sms_msg_data2*, %struct.sms_msg_data2** %6, align 8
  %42 = getelementptr inbounds %struct.sms_msg_data2, %struct.sms_msg_data2* %41, i32 0, i32 0
  %43 = load i32, i32* @MSG_SMS_START_IR_REQ, align 4
  %44 = call i32 @SMS_INIT_MSG(%struct.TYPE_8__* %42, i32 %43, i32 16)
  %45 = load %struct.smscore_device_t*, %struct.smscore_device_t** %2, align 8
  %46 = getelementptr inbounds %struct.smscore_device_t, %struct.smscore_device_t* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.sms_msg_data2*, %struct.sms_msg_data2** %6, align 8
  %50 = getelementptr inbounds %struct.sms_msg_data2, %struct.sms_msg_data2* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 0
  store i32 %48, i32* %52, align 4
  %53 = load %struct.smscore_device_t*, %struct.smscore_device_t** %2, align 8
  %54 = getelementptr inbounds %struct.smscore_device_t, %struct.smscore_device_t* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.sms_msg_data2*, %struct.sms_msg_data2** %6, align 8
  %58 = getelementptr inbounds %struct.sms_msg_data2, %struct.sms_msg_data2* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 1
  store i32 %56, i32* %60, align 4
  %61 = load %struct.smscore_device_t*, %struct.smscore_device_t** %2, align 8
  %62 = load %struct.sms_msg_data2*, %struct.sms_msg_data2** %6, align 8
  %63 = load %struct.sms_msg_data2*, %struct.sms_msg_data2** %6, align 8
  %64 = getelementptr inbounds %struct.sms_msg_data2, %struct.sms_msg_data2* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.smscore_device_t*, %struct.smscore_device_t** %2, align 8
  %68 = getelementptr inbounds %struct.smscore_device_t, %struct.smscore_device_t* %67, i32 0, i32 1
  %69 = call i32 @smscore_sendrequest_and_wait(%struct.smscore_device_t* %61, %struct.sms_msg_data2* %62, i32 %66, i32* %68)
  store i32 %69, i32* %4, align 4
  %70 = load i8*, i8** %5, align 8
  %71 = call i32 @kfree(i8* %70)
  br label %74

72:                                               ; preds = %26
  %73 = call i32 @pr_err(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  br label %74

74:                                               ; preds = %72, %37
  br label %75

75:                                               ; preds = %74, %24
  br label %78

76:                                               ; preds = %1
  %77 = call i32 @pr_info(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  br label %78

78:                                               ; preds = %76, %75
  ret i32 0
}

declare dso_local %struct.TYPE_7__* @sms_get_board(i32) #1

declare dso_local i32 @smscore_get_board_id(%struct.smscore_device_t*) #1

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @sms_ir_init(%struct.smscore_device_t*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i8* @kmalloc(i64, i32) #1

declare dso_local i64 @SMS_ALIGN_ADDRESS(i8*) #1

declare dso_local i32 @SMS_INIT_MSG(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @smscore_sendrequest_and_wait(%struct.smscore_device_t*, %struct.sms_msg_data2*, i32, i32*) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @pr_info(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
