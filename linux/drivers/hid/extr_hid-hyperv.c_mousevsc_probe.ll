; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-hyperv.c_mousevsc_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-hyperv.c_mousevsc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hv_device = type { i32, i32 }
%struct.hv_vmbus_device_id = type { i32 }
%struct.mousevsc_dev = type { i32*, i32, i32, %struct.hid_device*, %struct.TYPE_2__ }
%struct.hid_device = type { i32, i32, i32, i32, i32, i32*, i32* }
%struct.TYPE_2__ = type { i32, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@INPUTVSC_SEND_RING_BUFFER_SIZE = common dso_local global i32 0, align 4
@INPUTVSC_RECV_RING_BUFFER_SIZE = common dso_local global i32 0, align 4
@mousevsc_on_channel_callback = common dso_local global i32 0, align 4
@mousevsc_ll_driver = common dso_local global i32 0, align 4
@mousevsc_hid_driver = common dso_local global i32 0, align 4
@BUS_VIRTUAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"Microsoft Vmbus HID-compliant Mouse\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"parse failed\0A\00", align 1
@HID_CONNECT_HIDINPUT = common dso_local global i32 0, align 4
@HID_CONNECT_HIDDEV = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"hw start failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hv_device*, %struct.hv_vmbus_device_id*)* @mousevsc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mousevsc_probe(%struct.hv_device* %0, %struct.hv_vmbus_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hv_device*, align 8
  %5 = alloca %struct.hv_vmbus_device_id*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mousevsc_dev*, align 8
  %8 = alloca %struct.hid_device*, align 8
  store %struct.hv_device* %0, %struct.hv_device** %4, align 8
  store %struct.hv_vmbus_device_id* %1, %struct.hv_vmbus_device_id** %5, align 8
  %9 = load %struct.hv_device*, %struct.hv_device** %4, align 8
  %10 = call %struct.mousevsc_dev* @mousevsc_alloc_device(%struct.hv_device* %9)
  store %struct.mousevsc_dev* %10, %struct.mousevsc_dev** %7, align 8
  %11 = load %struct.mousevsc_dev*, %struct.mousevsc_dev** %7, align 8
  %12 = icmp ne %struct.mousevsc_dev* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %135

16:                                               ; preds = %2
  %17 = load %struct.hv_device*, %struct.hv_device** %4, align 8
  %18 = getelementptr inbounds %struct.hv_device, %struct.hv_device* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @INPUTVSC_SEND_RING_BUFFER_SIZE, align 4
  %21 = load i32, i32* @INPUTVSC_RECV_RING_BUFFER_SIZE, align 4
  %22 = load i32, i32* @mousevsc_on_channel_callback, align 4
  %23 = load %struct.hv_device*, %struct.hv_device** %4, align 8
  %24 = call i32 @vmbus_open(i32 %19, i32 %20, i32 %21, i32* null, i32 0, i32 %22, %struct.hv_device* %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %16
  br label %131

28:                                               ; preds = %16
  %29 = load %struct.hv_device*, %struct.hv_device** %4, align 8
  %30 = call i32 @mousevsc_connect_to_vsp(%struct.hv_device* %29)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  br label %126

34:                                               ; preds = %28
  %35 = load %struct.mousevsc_dev*, %struct.mousevsc_dev** %7, align 8
  %36 = getelementptr inbounds %struct.mousevsc_dev, %struct.mousevsc_dev* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 14
  %39 = load i32, i32* %38, align 4
  %40 = icmp eq i32 %39, 37
  br i1 %40, label %41, label %46

41:                                               ; preds = %34
  %42 = load %struct.mousevsc_dev*, %struct.mousevsc_dev** %7, align 8
  %43 = getelementptr inbounds %struct.mousevsc_dev, %struct.mousevsc_dev* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 14
  store i32 41, i32* %45, align 4
  br label %46

46:                                               ; preds = %41, %34
  %47 = call %struct.hid_device* (...) @hid_allocate_device()
  store %struct.hid_device* %47, %struct.hid_device** %8, align 8
  %48 = load %struct.hid_device*, %struct.hid_device** %8, align 8
  %49 = call i64 @IS_ERR(%struct.hid_device* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %46
  %52 = load %struct.hid_device*, %struct.hid_device** %8, align 8
  %53 = call i32 @PTR_ERR(%struct.hid_device* %52)
  store i32 %53, i32* %6, align 4
  br label %126

54:                                               ; preds = %46
  %55 = load %struct.hid_device*, %struct.hid_device** %8, align 8
  %56 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %55, i32 0, i32 6
  store i32* @mousevsc_ll_driver, i32** %56, align 8
  %57 = load %struct.hid_device*, %struct.hid_device** %8, align 8
  %58 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %57, i32 0, i32 5
  store i32* @mousevsc_hid_driver, i32** %58, align 8
  %59 = load i32, i32* @BUS_VIRTUAL, align 4
  %60 = load %struct.hid_device*, %struct.hid_device** %8, align 8
  %61 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %60, i32 0, i32 4
  store i32 %59, i32* %61, align 8
  %62 = load %struct.mousevsc_dev*, %struct.mousevsc_dev** %7, align 8
  %63 = getelementptr inbounds %struct.mousevsc_dev, %struct.mousevsc_dev* %62, i32 0, i32 4
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.hid_device*, %struct.hid_device** %8, align 8
  %67 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %66, i32 0, i32 3
  store i32 %65, i32* %67, align 4
  %68 = load %struct.mousevsc_dev*, %struct.mousevsc_dev** %7, align 8
  %69 = getelementptr inbounds %struct.mousevsc_dev, %struct.mousevsc_dev* %68, i32 0, i32 4
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.hid_device*, %struct.hid_device** %8, align 8
  %73 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %72, i32 0, i32 2
  store i32 %71, i32* %73, align 8
  %74 = load %struct.mousevsc_dev*, %struct.mousevsc_dev** %7, align 8
  %75 = getelementptr inbounds %struct.mousevsc_dev, %struct.mousevsc_dev* %74, i32 0, i32 4
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.hid_device*, %struct.hid_device** %8, align 8
  %79 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %78, i32 0, i32 1
  store i32 %77, i32* %79, align 4
  %80 = load %struct.hid_device*, %struct.hid_device** %8, align 8
  %81 = load %struct.mousevsc_dev*, %struct.mousevsc_dev** %7, align 8
  %82 = getelementptr inbounds %struct.mousevsc_dev, %struct.mousevsc_dev* %81, i32 0, i32 3
  store %struct.hid_device* %80, %struct.hid_device** %82, align 8
  %83 = load %struct.hid_device*, %struct.hid_device** %8, align 8
  %84 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @sprintf(i32 %85, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %87 = load %struct.hid_device*, %struct.hid_device** %8, align 8
  %88 = load %struct.hv_device*, %struct.hv_device** %4, align 8
  %89 = call i32 @hid_set_drvdata(%struct.hid_device* %87, %struct.hv_device* %88)
  %90 = load %struct.hid_device*, %struct.hid_device** %8, align 8
  %91 = call i32 @hid_add_device(%struct.hid_device* %90)
  store i32 %91, i32* %6, align 4
  %92 = load i32, i32* %6, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %54
  br label %126

95:                                               ; preds = %54
  %96 = load %struct.hid_device*, %struct.hid_device** %8, align 8
  %97 = call i32 @hid_parse(%struct.hid_device* %96)
  store i32 %97, i32* %6, align 4
  %98 = load i32, i32* %6, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %95
  %101 = load %struct.hid_device*, %struct.hid_device** %8, align 8
  %102 = call i32 @hid_err(%struct.hid_device* %101, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  br label %123

103:                                              ; preds = %95
  %104 = load %struct.hid_device*, %struct.hid_device** %8, align 8
  %105 = load i32, i32* @HID_CONNECT_HIDINPUT, align 4
  %106 = load i32, i32* @HID_CONNECT_HIDDEV, align 4
  %107 = or i32 %105, %106
  %108 = call i32 @hid_hw_start(%struct.hid_device* %104, i32 %107)
  store i32 %108, i32* %6, align 4
  %109 = load i32, i32* %6, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %103
  %112 = load %struct.hid_device*, %struct.hid_device** %8, align 8
  %113 = call i32 @hid_err(%struct.hid_device* %112, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  br label %123

114:                                              ; preds = %103
  %115 = load %struct.hv_device*, %struct.hv_device** %4, align 8
  %116 = getelementptr inbounds %struct.hv_device, %struct.hv_device* %115, i32 0, i32 1
  %117 = call i32 @device_init_wakeup(i32* %116, i32 1)
  %118 = load %struct.mousevsc_dev*, %struct.mousevsc_dev** %7, align 8
  %119 = getelementptr inbounds %struct.mousevsc_dev, %struct.mousevsc_dev* %118, i32 0, i32 1
  store i32 1, i32* %119, align 8
  %120 = load %struct.mousevsc_dev*, %struct.mousevsc_dev** %7, align 8
  %121 = getelementptr inbounds %struct.mousevsc_dev, %struct.mousevsc_dev* %120, i32 0, i32 2
  store i32 1, i32* %121, align 4
  %122 = load i32, i32* %6, align 4
  store i32 %122, i32* %3, align 4
  br label %135

123:                                              ; preds = %111, %100
  %124 = load %struct.hid_device*, %struct.hid_device** %8, align 8
  %125 = call i32 @hid_destroy_device(%struct.hid_device* %124)
  br label %126

126:                                              ; preds = %123, %94, %51, %33
  %127 = load %struct.hv_device*, %struct.hv_device** %4, align 8
  %128 = getelementptr inbounds %struct.hv_device, %struct.hv_device* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @vmbus_close(i32 %129)
  br label %131

131:                                              ; preds = %126, %27
  %132 = load %struct.mousevsc_dev*, %struct.mousevsc_dev** %7, align 8
  %133 = call i32 @mousevsc_free_device(%struct.mousevsc_dev* %132)
  %134 = load i32, i32* %6, align 4
  store i32 %134, i32* %3, align 4
  br label %135

135:                                              ; preds = %131, %114, %13
  %136 = load i32, i32* %3, align 4
  ret i32 %136
}

declare dso_local %struct.mousevsc_dev* @mousevsc_alloc_device(%struct.hv_device*) #1

declare dso_local i32 @vmbus_open(i32, i32, i32, i32*, i32, i32, %struct.hv_device*) #1

declare dso_local i32 @mousevsc_connect_to_vsp(%struct.hv_device*) #1

declare dso_local %struct.hid_device* @hid_allocate_device(...) #1

declare dso_local i64 @IS_ERR(%struct.hid_device*) #1

declare dso_local i32 @PTR_ERR(%struct.hid_device*) #1

declare dso_local i32 @sprintf(i32, i8*, i8*) #1

declare dso_local i32 @hid_set_drvdata(%struct.hid_device*, %struct.hv_device*) #1

declare dso_local i32 @hid_add_device(%struct.hid_device*) #1

declare dso_local i32 @hid_parse(%struct.hid_device*) #1

declare dso_local i32 @hid_err(%struct.hid_device*, i8*) #1

declare dso_local i32 @hid_hw_start(%struct.hid_device*, i32) #1

declare dso_local i32 @device_init_wakeup(i32*, i32) #1

declare dso_local i32 @hid_destroy_device(%struct.hid_device*) #1

declare dso_local i32 @vmbus_close(i32) #1

declare dso_local i32 @mousevsc_free_device(%struct.mousevsc_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
