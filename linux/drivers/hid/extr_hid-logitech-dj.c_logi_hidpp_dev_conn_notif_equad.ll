; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-logitech-dj.c_logi_hidpp_dev_conn_notif_equad.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-logitech-dj.c_logi_hidpp_dev_conn_notif_equad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32 }
%struct.hidpp_event = type { i32* }
%struct.dj_workitem = type { i32, i32, i32, i32, i32 }
%struct.dj_receiver_dev = type { i32 }

@WORKITEM_TYPE_PAIRED = common dso_local global i32 0, align 4
@HIDPP_PARAM_DEVICE_INFO = common dso_local global i64 0, align 8
@HIDPP_DEVICE_TYPE_MASK = common dso_local global i32 0, align 4
@HIDPP_PARAM_EQUAD_MSB = common dso_local global i64 0, align 8
@HIDPP_PARAM_EQUAD_LSB = common dso_local global i64 0, align 8
@STD_KEYBOARD = common dso_local global i32 0, align 4
@MULTIMEDIA = common dso_local global i32 0, align 4
@POWER_KEYS = common dso_local global i32 0, align 4
@MEDIA_CENTER = common dso_local global i32 0, align 4
@HIDPP = common dso_local global i32 0, align 4
@STD_MOUSE = common dso_local global i32 0, align 4
@recvr_type_mouse_only = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hid_device*, %struct.hidpp_event*, %struct.dj_workitem*)* @logi_hidpp_dev_conn_notif_equad to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @logi_hidpp_dev_conn_notif_equad(%struct.hid_device* %0, %struct.hidpp_event* %1, %struct.dj_workitem* %2) #0 {
  %4 = alloca %struct.hid_device*, align 8
  %5 = alloca %struct.hidpp_event*, align 8
  %6 = alloca %struct.dj_workitem*, align 8
  %7 = alloca %struct.dj_receiver_dev*, align 8
  store %struct.hid_device* %0, %struct.hid_device** %4, align 8
  store %struct.hidpp_event* %1, %struct.hidpp_event** %5, align 8
  store %struct.dj_workitem* %2, %struct.dj_workitem** %6, align 8
  %8 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %9 = call %struct.dj_receiver_dev* @hid_get_drvdata(%struct.hid_device* %8)
  store %struct.dj_receiver_dev* %9, %struct.dj_receiver_dev** %7, align 8
  %10 = load i32, i32* @WORKITEM_TYPE_PAIRED, align 4
  %11 = load %struct.dj_workitem*, %struct.dj_workitem** %6, align 8
  %12 = getelementptr inbounds %struct.dj_workitem, %struct.dj_workitem* %11, i32 0, i32 4
  store i32 %10, i32* %12, align 4
  %13 = load %struct.hidpp_event*, %struct.hidpp_event** %5, align 8
  %14 = getelementptr inbounds %struct.hidpp_event, %struct.hidpp_event* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = load i64, i64* @HIDPP_PARAM_DEVICE_INFO, align 8
  %17 = getelementptr inbounds i32, i32* %15, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @HIDPP_DEVICE_TYPE_MASK, align 4
  %20 = and i32 %18, %19
  %21 = load %struct.dj_workitem*, %struct.dj_workitem** %6, align 8
  %22 = getelementptr inbounds %struct.dj_workitem, %struct.dj_workitem* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  %23 = load %struct.hidpp_event*, %struct.hidpp_event** %5, align 8
  %24 = getelementptr inbounds %struct.hidpp_event, %struct.hidpp_event* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load i64, i64* @HIDPP_PARAM_EQUAD_MSB, align 8
  %27 = getelementptr inbounds i32, i32* %25, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.dj_workitem*, %struct.dj_workitem** %6, align 8
  %30 = getelementptr inbounds %struct.dj_workitem, %struct.dj_workitem* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = load %struct.hidpp_event*, %struct.hidpp_event** %5, align 8
  %32 = getelementptr inbounds %struct.hidpp_event, %struct.hidpp_event* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = load i64, i64* @HIDPP_PARAM_EQUAD_LSB, align 8
  %35 = getelementptr inbounds i32, i32* %33, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.dj_workitem*, %struct.dj_workitem** %6, align 8
  %38 = getelementptr inbounds %struct.dj_workitem, %struct.dj_workitem* %37, i32 0, i32 2
  store i32 %36, i32* %38, align 4
  %39 = load %struct.dj_workitem*, %struct.dj_workitem** %6, align 8
  %40 = getelementptr inbounds %struct.dj_workitem, %struct.dj_workitem* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  switch i32 %41, label %76 [
    i32 129, label %42
    i32 128, label %56
  ]

42:                                               ; preds = %3
  %43 = load i32, i32* @STD_KEYBOARD, align 4
  %44 = load i32, i32* @MULTIMEDIA, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @POWER_KEYS, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* @MEDIA_CENTER, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* @HIDPP, align 4
  %51 = or i32 %49, %50
  %52 = load %struct.dj_workitem*, %struct.dj_workitem** %6, align 8
  %53 = getelementptr inbounds %struct.dj_workitem, %struct.dj_workitem* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = or i32 %54, %51
  store i32 %55, i32* %53, align 4
  br label %76

56:                                               ; preds = %3
  %57 = load i32, i32* @STD_MOUSE, align 4
  %58 = load i32, i32* @HIDPP, align 4
  %59 = or i32 %57, %58
  %60 = load %struct.dj_workitem*, %struct.dj_workitem** %6, align 8
  %61 = getelementptr inbounds %struct.dj_workitem, %struct.dj_workitem* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = or i32 %62, %59
  store i32 %63, i32* %61, align 4
  %64 = load %struct.dj_receiver_dev*, %struct.dj_receiver_dev** %7, align 8
  %65 = getelementptr inbounds %struct.dj_receiver_dev, %struct.dj_receiver_dev* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @recvr_type_mouse_only, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %75

69:                                               ; preds = %56
  %70 = load i32, i32* @MULTIMEDIA, align 4
  %71 = load %struct.dj_workitem*, %struct.dj_workitem** %6, align 8
  %72 = getelementptr inbounds %struct.dj_workitem, %struct.dj_workitem* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = or i32 %73, %70
  store i32 %74, i32* %72, align 4
  br label %75

75:                                               ; preds = %69, %56
  br label %76

76:                                               ; preds = %3, %75, %42
  ret void
}

declare dso_local %struct.dj_receiver_dev* @hid_get_drvdata(%struct.hid_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
