; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-logitech-dj.c_logi_hidpp_recv_queue_notif.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-logitech-dj.c_logi_hidpp_recv_queue_notif.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32 }
%struct.hidpp_event = type { i32*, i32 }
%struct.dj_receiver_dev = type { i32, i32 }
%struct.dj_workitem = type { i64, i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c"UNKNOWN\00", align 1
@WORKITEM_TYPE_EMPTY = common dso_local global i64 0, align 8
@HIDPP_PARAM_PROTO_TYPE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"Bluetooth\00", align 1
@HIDPP_PARAM_DEVICE_INFO = common dso_local global i64 0, align 8
@HIDPP_MANUFACTURER_MASK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"Non Logitech device connected on slot %d\0A\00", align 1
@HIDPP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"27 Mhz\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"QUAD or eQUAD\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"eQUAD step 4 DJ\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"DFU Lite\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"eQUAD step 4 Lite\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"eQUAD step 4 Gaming\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"eQUAD step 4 for gamepads\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"eQUAD nano Lite\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"eQUAD Lightspeed 1\00", align 1
@STD_KEYBOARD = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [21 x i8] c"eQUAD Lightspeed 1_1\00", align 1
@.str.13 = private unnamed_addr constant [57 x i8] c"unusable device of type %s (0x%02x) connected on slot %d\00", align 1
@.str.14 = private unnamed_addr constant [48 x i8] c"device of type %s (0x%02x) connected on slot %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hid_device*, %struct.hidpp_event*)* @logi_hidpp_recv_queue_notif to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @logi_hidpp_recv_queue_notif(%struct.hid_device* %0, %struct.hidpp_event* %1) #0 {
  %3 = alloca %struct.hid_device*, align 8
  %4 = alloca %struct.hidpp_event*, align 8
  %5 = alloca %struct.dj_receiver_dev*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.dj_workitem, align 8
  store %struct.hid_device* %0, %struct.hid_device** %3, align 8
  store %struct.hidpp_event* %1, %struct.hidpp_event** %4, align 8
  %8 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %9 = call %struct.dj_receiver_dev* @hid_get_drvdata(%struct.hid_device* %8)
  store %struct.dj_receiver_dev* %9, %struct.dj_receiver_dev** %5, align 8
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  %10 = getelementptr inbounds %struct.dj_workitem, %struct.dj_workitem* %7, i32 0, i32 0
  %11 = load i64, i64* @WORKITEM_TYPE_EMPTY, align 8
  store i64 %11, i64* %10, align 8
  %12 = getelementptr inbounds %struct.dj_workitem, %struct.dj_workitem* %7, i32 0, i32 1
  store i32 0, i32* %12, align 8
  %13 = getelementptr inbounds %struct.dj_workitem, %struct.dj_workitem* %7, i32 0, i32 2
  %14 = load %struct.hidpp_event*, %struct.hidpp_event** %4, align 8
  %15 = getelementptr inbounds %struct.hidpp_event, %struct.hidpp_event* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %13, align 4
  %17 = load %struct.hidpp_event*, %struct.hidpp_event** %4, align 8
  %18 = getelementptr inbounds %struct.hidpp_event, %struct.hidpp_event* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = load i64, i64* @HIDPP_PARAM_PROTO_TYPE, align 8
  %21 = getelementptr inbounds i32, i32* %19, i64 %20
  %22 = load i32, i32* %21, align 4
  switch i32 %22, label %92 [
    i32 1, label %23
    i32 2, label %50
    i32 3, label %54
    i32 4, label %58
    i32 5, label %62
    i32 6, label %63
    i32 7, label %67
    i32 8, label %71
    i32 10, label %72
    i32 12, label %76
    i32 13, label %84
  ]

23:                                               ; preds = %2
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8** %6, align 8
  %24 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %25 = load %struct.hidpp_event*, %struct.hidpp_event** %4, align 8
  %26 = call i32 @logi_hidpp_dev_conn_notif_equad(%struct.hid_device* %24, %struct.hidpp_event* %25, %struct.dj_workitem* %7)
  %27 = load %struct.hidpp_event*, %struct.hidpp_event** %4, align 8
  %28 = getelementptr inbounds %struct.hidpp_event, %struct.hidpp_event* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = load i64, i64* @HIDPP_PARAM_DEVICE_INFO, align 8
  %31 = getelementptr inbounds i32, i32* %29, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @HIDPP_MANUFACTURER_MASK, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %49, label %36

36:                                               ; preds = %23
  %37 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %38 = load %struct.hidpp_event*, %struct.hidpp_event** %4, align 8
  %39 = getelementptr inbounds %struct.hidpp_event, %struct.hidpp_event* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = sext i32 %40 to i64
  %42 = inttoptr i64 %41 to i8*
  %43 = call i32 (%struct.hid_device*, i8*, i8*, ...) @hid_info(%struct.hid_device* %37, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i8* %42)
  %44 = load i32, i32* @HIDPP, align 4
  %45 = xor i32 %44, -1
  %46 = getelementptr inbounds %struct.dj_workitem, %struct.dj_workitem* %7, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = and i32 %47, %45
  store i32 %48, i32* %46, align 8
  br label %49

49:                                               ; preds = %36, %23
  br label %92

50:                                               ; preds = %2
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8** %6, align 8
  %51 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %52 = load %struct.hidpp_event*, %struct.hidpp_event** %4, align 8
  %53 = call i32 @logi_hidpp_dev_conn_notif_27mhz(%struct.hid_device* %51, %struct.hidpp_event* %52, %struct.dj_workitem* %7)
  br label %92

54:                                               ; preds = %2
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i8** %6, align 8
  %55 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %56 = load %struct.hidpp_event*, %struct.hidpp_event** %4, align 8
  %57 = call i32 @logi_hidpp_dev_conn_notif_equad(%struct.hid_device* %55, %struct.hidpp_event* %56, %struct.dj_workitem* %7)
  br label %92

58:                                               ; preds = %2
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i8** %6, align 8
  %59 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %60 = load %struct.hidpp_event*, %struct.hidpp_event** %4, align 8
  %61 = call i32 @logi_hidpp_dev_conn_notif_equad(%struct.hid_device* %59, %struct.hidpp_event* %60, %struct.dj_workitem* %7)
  br label %92

62:                                               ; preds = %2
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i8** %6, align 8
  br label %92

63:                                               ; preds = %2
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0), i8** %6, align 8
  %64 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %65 = load %struct.hidpp_event*, %struct.hidpp_event** %4, align 8
  %66 = call i32 @logi_hidpp_dev_conn_notif_equad(%struct.hid_device* %64, %struct.hidpp_event* %65, %struct.dj_workitem* %7)
  br label %92

67:                                               ; preds = %2
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0), i8** %6, align 8
  %68 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %69 = load %struct.hidpp_event*, %struct.hidpp_event** %4, align 8
  %70 = call i32 @logi_hidpp_dev_conn_notif_equad(%struct.hid_device* %68, %struct.hidpp_event* %69, %struct.dj_workitem* %7)
  br label %92

71:                                               ; preds = %2
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0), i8** %6, align 8
  br label %92

72:                                               ; preds = %2
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0), i8** %6, align 8
  %73 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %74 = load %struct.hidpp_event*, %struct.hidpp_event** %4, align 8
  %75 = call i32 @logi_hidpp_dev_conn_notif_equad(%struct.hid_device* %73, %struct.hidpp_event* %74, %struct.dj_workitem* %7)
  br label %92

76:                                               ; preds = %2
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i64 0, i64 0), i8** %6, align 8
  %77 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %78 = load %struct.hidpp_event*, %struct.hidpp_event** %4, align 8
  %79 = call i32 @logi_hidpp_dev_conn_notif_equad(%struct.hid_device* %77, %struct.hidpp_event* %78, %struct.dj_workitem* %7)
  %80 = load i32, i32* @STD_KEYBOARD, align 4
  %81 = getelementptr inbounds %struct.dj_workitem, %struct.dj_workitem* %7, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = or i32 %82, %80
  store i32 %83, i32* %81, align 8
  br label %92

84:                                               ; preds = %2
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i64 0, i64 0), i8** %6, align 8
  %85 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %86 = load %struct.hidpp_event*, %struct.hidpp_event** %4, align 8
  %87 = call i32 @logi_hidpp_dev_conn_notif_equad(%struct.hid_device* %85, %struct.hidpp_event* %86, %struct.dj_workitem* %7)
  %88 = load i32, i32* @STD_KEYBOARD, align 4
  %89 = getelementptr inbounds %struct.dj_workitem, %struct.dj_workitem* %7, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = or i32 %90, %88
  store i32 %91, i32* %89, align 8
  br label %92

92:                                               ; preds = %2, %84, %76, %72, %71, %67, %63, %62, %58, %54, %50, %49
  %93 = getelementptr inbounds %struct.dj_workitem, %struct.dj_workitem* %7, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @WORKITEM_TYPE_EMPTY, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %110

97:                                               ; preds = %92
  %98 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %99 = load i8*, i8** %6, align 8
  %100 = load %struct.hidpp_event*, %struct.hidpp_event** %4, align 8
  %101 = getelementptr inbounds %struct.hidpp_event, %struct.hidpp_event* %100, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  %103 = load i64, i64* @HIDPP_PARAM_PROTO_TYPE, align 8
  %104 = getelementptr inbounds i32, i32* %102, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.hidpp_event*, %struct.hidpp_event** %4, align 8
  %107 = getelementptr inbounds %struct.hidpp_event, %struct.hidpp_event* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @hid_warn(%struct.hid_device* %98, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.13, i64 0, i64 0), i8* %99, i32 %105, i32 %108)
  br label %129

110:                                              ; preds = %92
  %111 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %112 = load i8*, i8** %6, align 8
  %113 = load %struct.hidpp_event*, %struct.hidpp_event** %4, align 8
  %114 = getelementptr inbounds %struct.hidpp_event, %struct.hidpp_event* %113, i32 0, i32 0
  %115 = load i32*, i32** %114, align 8
  %116 = load i64, i64* @HIDPP_PARAM_PROTO_TYPE, align 8
  %117 = getelementptr inbounds i32, i32* %115, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.hidpp_event*, %struct.hidpp_event** %4, align 8
  %120 = getelementptr inbounds %struct.hidpp_event, %struct.hidpp_event* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = call i32 (%struct.hid_device*, i8*, i8*, ...) @hid_info(%struct.hid_device* %111, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.14, i64 0, i64 0), i8* %112, i32 %118, i32 %121)
  %123 = load %struct.dj_receiver_dev*, %struct.dj_receiver_dev** %5, align 8
  %124 = getelementptr inbounds %struct.dj_receiver_dev, %struct.dj_receiver_dev* %123, i32 0, i32 1
  %125 = call i32 @kfifo_in(i32* %124, %struct.dj_workitem* %7, i32 16)
  %126 = load %struct.dj_receiver_dev*, %struct.dj_receiver_dev** %5, align 8
  %127 = getelementptr inbounds %struct.dj_receiver_dev, %struct.dj_receiver_dev* %126, i32 0, i32 0
  %128 = call i32 @schedule_work(i32* %127)
  br label %129

129:                                              ; preds = %110, %97
  ret void
}

declare dso_local %struct.dj_receiver_dev* @hid_get_drvdata(%struct.hid_device*) #1

declare dso_local i32 @logi_hidpp_dev_conn_notif_equad(%struct.hid_device*, %struct.hidpp_event*, %struct.dj_workitem*) #1

declare dso_local i32 @hid_info(%struct.hid_device*, i8*, i8*, ...) #1

declare dso_local i32 @logi_hidpp_dev_conn_notif_27mhz(%struct.hid_device*, %struct.hidpp_event*, %struct.dj_workitem*) #1

declare dso_local i32 @hid_warn(%struct.hid_device*, i8*, i8*, i32, i32) #1

declare dso_local i32 @kfifo_in(i32*, %struct.dj_workitem*, i32) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
