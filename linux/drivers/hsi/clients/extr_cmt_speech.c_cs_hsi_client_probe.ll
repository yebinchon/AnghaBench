; ModuleID = '/home/carl/AnghaBench/linux/drivers/hsi/clients/extr_cmt_speech.c_cs_hsi_client_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hsi/clients/extr_cmt_speech.c_cs_hsi_client_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i32*, %struct.hsi_client*, i64, i32, i32 }
%struct.hsi_client = type { i32 }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"hsi_client_probe\0A\00", align 1
@cs_char_data = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"speech-control\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"Could not get cmd channel (%d)\0A\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"speech-data\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"Could not get data channel (%d)\0A\00", align 1
@cs_char_miscdev = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [24 x i8] c"Failed to register: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @cs_hsi_client_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cs_hsi_client_probe(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hsi_client*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store i32 0, i32* %4, align 4
  %6 = load %struct.device*, %struct.device** %3, align 8
  %7 = call %struct.hsi_client* @to_hsi_client(%struct.device* %6)
  store %struct.hsi_client* %7, %struct.hsi_client** %5, align 8
  %8 = load %struct.device*, %struct.device** %3, align 8
  %9 = call i32 @dev_dbg(%struct.device* %8, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %10 = call i32 @init_waitqueue_head(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cs_char_data, i32 0, i32 8))
  %11 = call i32 @spin_lock_init(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cs_char_data, i32 0, i32 7))
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cs_char_data, i32 0, i32 6), align 8
  %12 = load %struct.hsi_client*, %struct.hsi_client** %5, align 8
  store %struct.hsi_client* %12, %struct.hsi_client** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cs_char_data, i32 0, i32 5), align 8
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cs_char_data, i32 0, i32 4), align 8
  %13 = call i32 @INIT_LIST_HEAD(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cs_char_data, i32 0, i32 3))
  %14 = call i32 @INIT_LIST_HEAD(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cs_char_data, i32 0, i32 2))
  %15 = load %struct.hsi_client*, %struct.hsi_client** %5, align 8
  %16 = call i8* @hsi_get_channel_id_by_name(%struct.hsi_client* %15, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %17 = ptrtoint i8* %16 to i32
  store i32 %17, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cs_char_data, i32 0, i32 0), align 8
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cs_char_data, i32 0, i32 0), align 8
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %1
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cs_char_data, i32 0, i32 0), align 8
  store i32 %21, i32* %4, align 4
  %22 = load %struct.device*, %struct.device** %3, align 8
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @dev_err(%struct.device* %22, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %23)
  %25 = load i32, i32* %4, align 4
  store i32 %25, i32* %2, align 4
  br label %48

26:                                               ; preds = %1
  %27 = load %struct.hsi_client*, %struct.hsi_client** %5, align 8
  %28 = call i8* @hsi_get_channel_id_by_name(%struct.hsi_client* %27, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %29 = ptrtoint i8* %28 to i32
  store i32 %29, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cs_char_data, i32 0, i32 1), align 4
  %30 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cs_char_data, i32 0, i32 1), align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %26
  %33 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cs_char_data, i32 0, i32 1), align 4
  store i32 %33, i32* %4, align 4
  %34 = load %struct.device*, %struct.device** %3, align 8
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @dev_err(%struct.device* %34, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* %4, align 4
  store i32 %37, i32* %2, align 4
  br label %48

38:                                               ; preds = %26
  %39 = call i32 @misc_register(i32* @cs_char_miscdev)
  store i32 %39, i32* %4, align 4
  %40 = load i32, i32* %4, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %38
  %43 = load %struct.device*, %struct.device** %3, align 8
  %44 = load i32, i32* %4, align 4
  %45 = call i32 @dev_err(%struct.device* %43, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i32 %44)
  br label %46

46:                                               ; preds = %42, %38
  %47 = load i32, i32* %4, align 4
  store i32 %47, i32* %2, align 4
  br label %48

48:                                               ; preds = %46, %32, %20
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local %struct.hsi_client* @to_hsi_client(%struct.device*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i8* @hsi_get_channel_id_by_name(%struct.hsi_client*, i8*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @misc_register(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
