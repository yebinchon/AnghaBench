; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/common/siano/extr_smscoreapi.c_smscore_configure_board.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/common/siano/extr_smscoreapi.c_smscore_configure_board.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smscore_device_t = type { i32, i32 (i32, %struct.sms_msg_data*, i32)*, i32 }
%struct.sms_msg_data = type opaque
%struct.sms_board = type { i64, i64 }
%struct.sms_msg_data.0 = type { i64*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i64, i32, i64 }

@.str = private unnamed_addr constant [31 x i8] c"no board configuration exist.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"set max transmit unit %d\0A\00", align 1
@HIF_TASK = common dso_local global i32 0, align 4
@MSG_SMS_SET_MAX_TX_MSG_LEN_REQ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"set crystal value %d\0A\00", align 1
@MSG_SMS_NEW_CRYSTAL_REQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smscore_device_t*)* @smscore_configure_board to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smscore_configure_board(%struct.smscore_device_t* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.smscore_device_t*, align 8
  %4 = alloca %struct.sms_board*, align 8
  %5 = alloca %struct.sms_msg_data.0, align 8
  %6 = alloca %struct.sms_msg_data.0, align 8
  store %struct.smscore_device_t* %0, %struct.smscore_device_t** %3, align 8
  %7 = load %struct.smscore_device_t*, %struct.smscore_device_t** %3, align 8
  %8 = getelementptr inbounds %struct.smscore_device_t, %struct.smscore_device_t* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 8
  %10 = call %struct.sms_board* @sms_get_board(i32 %9)
  store %struct.sms_board* %10, %struct.sms_board** %4, align 8
  %11 = load %struct.sms_board*, %struct.sms_board** %4, align 8
  %12 = icmp ne %struct.sms_board* %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %1
  %14 = call i32 @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %81

17:                                               ; preds = %1
  %18 = load %struct.sms_board*, %struct.sms_board** %4, align 8
  %19 = getelementptr inbounds %struct.sms_board, %struct.sms_board* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %53

22:                                               ; preds = %17
  %23 = load %struct.sms_board*, %struct.sms_board** %4, align 8
  %24 = getelementptr inbounds %struct.sms_board, %struct.sms_board* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @pr_debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i64 %25)
  %27 = getelementptr inbounds %struct.sms_msg_data.0, %struct.sms_msg_data.0* %5, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 4
  store i64 0, i64* %28, align 8
  %29 = load i32, i32* @HIF_TASK, align 4
  %30 = getelementptr inbounds %struct.sms_msg_data.0, %struct.sms_msg_data.0* %5, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 3
  store i32 %29, i32* %31, align 8
  %32 = getelementptr inbounds %struct.sms_msg_data.0, %struct.sms_msg_data.0* %5, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 2
  store i64 0, i64* %33, align 8
  %34 = load i32, i32* @MSG_SMS_SET_MAX_TX_MSG_LEN_REQ, align 4
  %35 = getelementptr inbounds %struct.sms_msg_data.0, %struct.sms_msg_data.0* %5, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = getelementptr inbounds %struct.sms_msg_data.0, %struct.sms_msg_data.0* %5, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  store i32 40, i32* %38, align 8
  %39 = load %struct.sms_board*, %struct.sms_board** %4, align 8
  %40 = getelementptr inbounds %struct.sms_board, %struct.sms_board* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr inbounds %struct.sms_msg_data.0, %struct.sms_msg_data.0* %5, i32 0, i32 0
  %43 = load i64*, i64** %42, align 8
  %44 = getelementptr inbounds i64, i64* %43, i64 0
  store i64 %41, i64* %44, align 8
  %45 = load %struct.smscore_device_t*, %struct.smscore_device_t** %3, align 8
  %46 = getelementptr inbounds %struct.smscore_device_t, %struct.smscore_device_t* %45, i32 0, i32 1
  %47 = load i32 (i32, %struct.sms_msg_data*, i32)*, i32 (i32, %struct.sms_msg_data*, i32)** %46, align 8
  %48 = load %struct.smscore_device_t*, %struct.smscore_device_t** %3, align 8
  %49 = getelementptr inbounds %struct.smscore_device_t, %struct.smscore_device_t* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = bitcast %struct.sms_msg_data.0* %5 to %struct.sms_msg_data*
  %52 = call i32 %47(i32 %50, %struct.sms_msg_data* %51, i32 40)
  br label %53

53:                                               ; preds = %22, %17
  %54 = load %struct.sms_board*, %struct.sms_board** %4, align 8
  %55 = getelementptr inbounds %struct.sms_board, %struct.sms_board* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %80

58:                                               ; preds = %53
  %59 = load %struct.sms_board*, %struct.sms_board** %4, align 8
  %60 = getelementptr inbounds %struct.sms_board, %struct.sms_board* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = call i32 @pr_debug(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i64 %61)
  %63 = getelementptr inbounds %struct.sms_msg_data.0, %struct.sms_msg_data.0* %6, i32 0, i32 1
  %64 = load i32, i32* @MSG_SMS_NEW_CRYSTAL_REQ, align 4
  %65 = call i32 @SMS_INIT_MSG(%struct.TYPE_2__* %63, i32 %64, i32 40)
  %66 = load %struct.sms_board*, %struct.sms_board** %4, align 8
  %67 = getelementptr inbounds %struct.sms_board, %struct.sms_board* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = getelementptr inbounds %struct.sms_msg_data.0, %struct.sms_msg_data.0* %6, i32 0, i32 0
  %70 = load i64*, i64** %69, align 8
  %71 = getelementptr inbounds i64, i64* %70, i64 0
  store i64 %68, i64* %71, align 8
  %72 = load %struct.smscore_device_t*, %struct.smscore_device_t** %3, align 8
  %73 = getelementptr inbounds %struct.smscore_device_t, %struct.smscore_device_t* %72, i32 0, i32 1
  %74 = load i32 (i32, %struct.sms_msg_data*, i32)*, i32 (i32, %struct.sms_msg_data*, i32)** %73, align 8
  %75 = load %struct.smscore_device_t*, %struct.smscore_device_t** %3, align 8
  %76 = getelementptr inbounds %struct.smscore_device_t, %struct.smscore_device_t* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = bitcast %struct.sms_msg_data.0* %6 to %struct.sms_msg_data*
  %79 = call i32 %74(i32 %77, %struct.sms_msg_data* %78, i32 40)
  br label %80

80:                                               ; preds = %58, %53
  store i32 0, i32* %2, align 4
  br label %81

81:                                               ; preds = %80, %13
  %82 = load i32, i32* %2, align 4
  ret i32 %82
}

declare dso_local %struct.sms_board* @sms_get_board(i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @pr_debug(i8*, i64) #1

declare dso_local i32 @SMS_INIT_MSG(%struct.TYPE_2__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
