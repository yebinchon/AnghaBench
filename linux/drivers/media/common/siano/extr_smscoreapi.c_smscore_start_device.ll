; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/common/siano/extr_smscoreapi.c_smscore_start_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/common/siano/extr_smscoreapi.c_smscore_start_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smscore_device_t = type { i32, i32 }
%struct.TYPE_2__ = type { i32 }

@SMS_BOARD_UNKNOWN = common dso_local global i32 0, align 4
@DEVICE_MODE_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"set device mode failed , rc %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"configure board failed , rc %d\0A\00", align 1
@g_smscore_deviceslock = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"device %p started, rc %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smscore_start_device(%struct.smscore_device_t* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.smscore_device_t*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.smscore_device_t* %0, %struct.smscore_device_t** %3, align 8
  %7 = load %struct.smscore_device_t*, %struct.smscore_device_t** %3, align 8
  %8 = call i32 @smscore_get_board_id(%struct.smscore_device_t* %7)
  store i32 %8, i32* %5, align 4
  %9 = load %struct.smscore_device_t*, %struct.smscore_device_t** %3, align 8
  %10 = getelementptr inbounds %struct.smscore_device_t, %struct.smscore_device_t* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @smscore_registry_getmode(i32 %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @SMS_BOARD_UNKNOWN, align 4
  %15 = icmp ne i32 %13, %14
  br i1 %15, label %16, label %25

16:                                               ; preds = %1
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @DEVICE_MODE_NONE, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %25

20:                                               ; preds = %16
  %21 = load i32, i32* %5, align 4
  %22 = call %struct.TYPE_2__* @sms_get_board(i32 %21)
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %6, align 4
  br label %25

25:                                               ; preds = %20, %16, %1
  %26 = load %struct.smscore_device_t*, %struct.smscore_device_t** %3, align 8
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @smscore_set_device_mode(%struct.smscore_device_t* %26, i32 %27)
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %25
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @pr_info(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* %4, align 4
  store i32 %34, i32* %2, align 4
  br label %58

35:                                               ; preds = %25
  %36 = load %struct.smscore_device_t*, %struct.smscore_device_t** %3, align 8
  %37 = call i32 @smscore_configure_board(%struct.smscore_device_t* %36)
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* %4, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %35
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @pr_info(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %41)
  %43 = load i32, i32* %4, align 4
  store i32 %43, i32* %2, align 4
  br label %58

44:                                               ; preds = %35
  %45 = call i32 @kmutex_lock(i32* @g_smscore_deviceslock)
  %46 = load %struct.smscore_device_t*, %struct.smscore_device_t** %3, align 8
  %47 = load %struct.smscore_device_t*, %struct.smscore_device_t** %3, align 8
  %48 = getelementptr inbounds %struct.smscore_device_t, %struct.smscore_device_t* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @smscore_notify_callbacks(%struct.smscore_device_t* %46, i32 %49, i32 1)
  store i32 %50, i32* %4, align 4
  %51 = load %struct.smscore_device_t*, %struct.smscore_device_t** %3, align 8
  %52 = call i32 @smscore_init_ir(%struct.smscore_device_t* %51)
  %53 = load %struct.smscore_device_t*, %struct.smscore_device_t** %3, align 8
  %54 = load i32, i32* %4, align 4
  %55 = call i32 @pr_debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), %struct.smscore_device_t* %53, i32 %54)
  %56 = call i32 @kmutex_unlock(i32* @g_smscore_deviceslock)
  %57 = load i32, i32* %4, align 4
  store i32 %57, i32* %2, align 4
  br label %58

58:                                               ; preds = %44, %40, %31
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local i32 @smscore_get_board_id(%struct.smscore_device_t*) #1

declare dso_local i32 @smscore_registry_getmode(i32) #1

declare dso_local %struct.TYPE_2__* @sms_get_board(i32) #1

declare dso_local i32 @smscore_set_device_mode(%struct.smscore_device_t*, i32) #1

declare dso_local i32 @pr_info(i8*, i32) #1

declare dso_local i32 @smscore_configure_board(%struct.smscore_device_t*) #1

declare dso_local i32 @kmutex_lock(i32*) #1

declare dso_local i32 @smscore_notify_callbacks(%struct.smscore_device_t*, i32, i32) #1

declare dso_local i32 @smscore_init_ir(%struct.smscore_device_t*) #1

declare dso_local i32 @pr_debug(i8*, %struct.smscore_device_t*, i32) #1

declare dso_local i32 @kmutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
