; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/serio/extr_hyperv-keyboard.c_hv_kbd_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/serio/extr_hyperv-keyboard.c_hv_kbd_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hv_device = type { i32, i32 }
%struct.hv_vmbus_device_id = type { i32 }
%struct.hv_kbd_dev = type { %struct.hv_kbd_dev*, i32, i32, i32, i32, %struct.hv_kbd_dev*, %struct.TYPE_4__, %struct.TYPE_3__, i32, i32, %struct.hv_device* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32* }
%struct.serio = type { %struct.serio*, i32, i32, i32, i32, %struct.serio*, %struct.TYPE_4__, %struct.TYPE_3__, i32, i32, %struct.hv_device* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SERIO_8042_XL = common dso_local global i32 0, align 4
@hv_kbd_start = common dso_local global i32 0, align 4
@hv_kbd_stop = common dso_local global i32 0, align 4
@KBD_VSC_SEND_RING_BUFFER_SIZE = common dso_local global i32 0, align 4
@KBD_VSC_RECV_RING_BUFFER_SIZE = common dso_local global i32 0, align 4
@hv_kbd_on_channel_callback = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hv_device*, %struct.hv_vmbus_device_id*)* @hv_kbd_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hv_kbd_probe(%struct.hv_device* %0, %struct.hv_vmbus_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hv_device*, align 8
  %5 = alloca %struct.hv_vmbus_device_id*, align 8
  %6 = alloca %struct.hv_kbd_dev*, align 8
  %7 = alloca %struct.serio*, align 8
  %8 = alloca i32, align 4
  store %struct.hv_device* %0, %struct.hv_device** %4, align 8
  store %struct.hv_vmbus_device_id* %1, %struct.hv_vmbus_device_id** %5, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.serio* @kzalloc(i32 64, i32 %9)
  %11 = bitcast %struct.serio* %10 to %struct.hv_kbd_dev*
  store %struct.hv_kbd_dev* %11, %struct.hv_kbd_dev** %6, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.serio* @kzalloc(i32 64, i32 %12)
  store %struct.serio* %13, %struct.serio** %7, align 8
  %14 = load %struct.hv_kbd_dev*, %struct.hv_kbd_dev** %6, align 8
  %15 = icmp ne %struct.hv_kbd_dev* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load %struct.serio*, %struct.serio** %7, align 8
  %18 = icmp ne %struct.serio* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %16, %2
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %8, align 4
  br label %104

22:                                               ; preds = %16
  %23 = load %struct.hv_device*, %struct.hv_device** %4, align 8
  %24 = load %struct.hv_kbd_dev*, %struct.hv_kbd_dev** %6, align 8
  %25 = getelementptr inbounds %struct.hv_kbd_dev, %struct.hv_kbd_dev* %24, i32 0, i32 10
  store %struct.hv_device* %23, %struct.hv_device** %25, align 8
  %26 = load %struct.serio*, %struct.serio** %7, align 8
  %27 = bitcast %struct.serio* %26 to %struct.hv_kbd_dev*
  %28 = load %struct.hv_kbd_dev*, %struct.hv_kbd_dev** %6, align 8
  %29 = getelementptr inbounds %struct.hv_kbd_dev, %struct.hv_kbd_dev* %28, i32 0, i32 0
  store %struct.hv_kbd_dev* %27, %struct.hv_kbd_dev** %29, align 8
  %30 = load %struct.hv_kbd_dev*, %struct.hv_kbd_dev** %6, align 8
  %31 = getelementptr inbounds %struct.hv_kbd_dev, %struct.hv_kbd_dev* %30, i32 0, i32 9
  %32 = call i32 @spin_lock_init(i32* %31)
  %33 = load %struct.hv_kbd_dev*, %struct.hv_kbd_dev** %6, align 8
  %34 = getelementptr inbounds %struct.hv_kbd_dev, %struct.hv_kbd_dev* %33, i32 0, i32 8
  %35 = call i32 @init_completion(i32* %34)
  %36 = load %struct.hv_device*, %struct.hv_device** %4, align 8
  %37 = load %struct.hv_kbd_dev*, %struct.hv_kbd_dev** %6, align 8
  %38 = bitcast %struct.hv_kbd_dev* %37 to %struct.serio*
  %39 = call i32 @hv_set_drvdata(%struct.hv_device* %36, %struct.serio* %38)
  %40 = load %struct.hv_device*, %struct.hv_device** %4, align 8
  %41 = getelementptr inbounds %struct.hv_device, %struct.hv_device* %40, i32 0, i32 1
  %42 = load %struct.serio*, %struct.serio** %7, align 8
  %43 = getelementptr inbounds %struct.serio, %struct.serio* %42, i32 0, i32 7
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  store i32* %41, i32** %44, align 8
  %45 = load i32, i32* @SERIO_8042_XL, align 4
  %46 = load %struct.serio*, %struct.serio** %7, align 8
  %47 = getelementptr inbounds %struct.serio, %struct.serio* %46, i32 0, i32 6
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  store i32 %45, i32* %48, align 8
  %49 = load %struct.hv_kbd_dev*, %struct.hv_kbd_dev** %6, align 8
  %50 = bitcast %struct.hv_kbd_dev* %49 to %struct.serio*
  %51 = load %struct.serio*, %struct.serio** %7, align 8
  %52 = getelementptr inbounds %struct.serio, %struct.serio* %51, i32 0, i32 5
  store %struct.serio* %50, %struct.serio** %52, align 8
  %53 = load %struct.serio*, %struct.serio** %7, align 8
  %54 = getelementptr inbounds %struct.serio, %struct.serio* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.hv_device*, %struct.hv_device** %4, align 8
  %57 = getelementptr inbounds %struct.hv_device, %struct.hv_device* %56, i32 0, i32 1
  %58 = call i32 @dev_name(i32* %57)
  %59 = call i32 @strlcpy(i32 %55, i32 %58, i32 4)
  %60 = load %struct.serio*, %struct.serio** %7, align 8
  %61 = getelementptr inbounds %struct.serio, %struct.serio* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.hv_device*, %struct.hv_device** %4, align 8
  %64 = getelementptr inbounds %struct.hv_device, %struct.hv_device* %63, i32 0, i32 1
  %65 = call i32 @dev_name(i32* %64)
  %66 = call i32 @strlcpy(i32 %62, i32 %65, i32 4)
  %67 = load i32, i32* @hv_kbd_start, align 4
  %68 = load %struct.serio*, %struct.serio** %7, align 8
  %69 = getelementptr inbounds %struct.serio, %struct.serio* %68, i32 0, i32 2
  store i32 %67, i32* %69, align 4
  %70 = load i32, i32* @hv_kbd_stop, align 4
  %71 = load %struct.serio*, %struct.serio** %7, align 8
  %72 = getelementptr inbounds %struct.serio, %struct.serio* %71, i32 0, i32 1
  store i32 %70, i32* %72, align 8
  %73 = load %struct.hv_device*, %struct.hv_device** %4, align 8
  %74 = getelementptr inbounds %struct.hv_device, %struct.hv_device* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @KBD_VSC_SEND_RING_BUFFER_SIZE, align 4
  %77 = load i32, i32* @KBD_VSC_RECV_RING_BUFFER_SIZE, align 4
  %78 = load i32, i32* @hv_kbd_on_channel_callback, align 4
  %79 = load %struct.hv_device*, %struct.hv_device** %4, align 8
  %80 = call i32 @vmbus_open(i32 %75, i32 %76, i32 %77, i32* null, i32 0, i32 %78, %struct.hv_device* %79)
  store i32 %80, i32* %8, align 4
  %81 = load i32, i32* %8, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %22
  br label %104

84:                                               ; preds = %22
  %85 = load %struct.hv_device*, %struct.hv_device** %4, align 8
  %86 = call i32 @hv_kbd_connect_to_vsp(%struct.hv_device* %85)
  store i32 %86, i32* %8, align 4
  %87 = load i32, i32* %8, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %84
  br label %99

90:                                               ; preds = %84
  %91 = load %struct.hv_kbd_dev*, %struct.hv_kbd_dev** %6, align 8
  %92 = getelementptr inbounds %struct.hv_kbd_dev, %struct.hv_kbd_dev* %91, i32 0, i32 0
  %93 = load %struct.hv_kbd_dev*, %struct.hv_kbd_dev** %92, align 8
  %94 = bitcast %struct.hv_kbd_dev* %93 to %struct.serio*
  %95 = call i32 @serio_register_port(%struct.serio* %94)
  %96 = load %struct.hv_device*, %struct.hv_device** %4, align 8
  %97 = getelementptr inbounds %struct.hv_device, %struct.hv_device* %96, i32 0, i32 1
  %98 = call i32 @device_init_wakeup(i32* %97, i32 1)
  store i32 0, i32* %3, align 4
  br label %111

99:                                               ; preds = %89
  %100 = load %struct.hv_device*, %struct.hv_device** %4, align 8
  %101 = getelementptr inbounds %struct.hv_device, %struct.hv_device* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @vmbus_close(i32 %102)
  br label %104

104:                                              ; preds = %99, %83, %19
  %105 = load %struct.serio*, %struct.serio** %7, align 8
  %106 = call i32 @kfree(%struct.serio* %105)
  %107 = load %struct.hv_kbd_dev*, %struct.hv_kbd_dev** %6, align 8
  %108 = bitcast %struct.hv_kbd_dev* %107 to %struct.serio*
  %109 = call i32 @kfree(%struct.serio* %108)
  %110 = load i32, i32* %8, align 4
  store i32 %110, i32* %3, align 4
  br label %111

111:                                              ; preds = %104, %90
  %112 = load i32, i32* %3, align 4
  ret i32 %112
}

declare dso_local %struct.serio* @kzalloc(i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @hv_set_drvdata(%struct.hv_device*, %struct.serio*) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i32 @vmbus_open(i32, i32, i32, i32*, i32, i32, %struct.hv_device*) #1

declare dso_local i32 @hv_kbd_connect_to_vsp(%struct.hv_device*) #1

declare dso_local i32 @serio_register_port(%struct.serio*) #1

declare dso_local i32 @device_init_wakeup(i32*, i32) #1

declare dso_local i32 @vmbus_close(i32) #1

declare dso_local i32 @kfree(%struct.serio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
