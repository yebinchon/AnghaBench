; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_rtl2832_sdr.c_rtl2832_sdr_stop_streaming.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_rtl2832_sdr.c_rtl2832_sdr_stop_streaming.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_queue = type { i32 }
%struct.rtl2832_sdr_dev = type { i32, i32, i32, %struct.platform_device* }
%struct.platform_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.rtl2832_sdr_platform_data* }
%struct.rtl2832_sdr_platform_data = type { i32, %struct.dvb_usb_device* }
%struct.dvb_usb_device = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.dvb_usb_device*, i32)*, i32 (i32, i32)* }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@core = common dso_local global i32 0, align 4
@s_power = common dso_local global i32 0, align 4
@POWER_ON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vb2_queue*)* @rtl2832_sdr_stop_streaming to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl2832_sdr_stop_streaming(%struct.vb2_queue* %0) #0 {
  %2 = alloca %struct.vb2_queue*, align 8
  %3 = alloca %struct.rtl2832_sdr_dev*, align 8
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca %struct.rtl2832_sdr_platform_data*, align 8
  %6 = alloca %struct.dvb_usb_device*, align 8
  store %struct.vb2_queue* %0, %struct.vb2_queue** %2, align 8
  %7 = load %struct.vb2_queue*, %struct.vb2_queue** %2, align 8
  %8 = call %struct.rtl2832_sdr_dev* @vb2_get_drv_priv(%struct.vb2_queue* %7)
  store %struct.rtl2832_sdr_dev* %8, %struct.rtl2832_sdr_dev** %3, align 8
  %9 = load %struct.rtl2832_sdr_dev*, %struct.rtl2832_sdr_dev** %3, align 8
  %10 = getelementptr inbounds %struct.rtl2832_sdr_dev, %struct.rtl2832_sdr_dev* %9, i32 0, i32 3
  %11 = load %struct.platform_device*, %struct.platform_device** %10, align 8
  store %struct.platform_device* %11, %struct.platform_device** %4, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load %struct.rtl2832_sdr_platform_data*, %struct.rtl2832_sdr_platform_data** %14, align 8
  store %struct.rtl2832_sdr_platform_data* %15, %struct.rtl2832_sdr_platform_data** %5, align 8
  %16 = load %struct.rtl2832_sdr_platform_data*, %struct.rtl2832_sdr_platform_data** %5, align 8
  %17 = getelementptr inbounds %struct.rtl2832_sdr_platform_data, %struct.rtl2832_sdr_platform_data* %16, i32 0, i32 1
  %18 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %17, align 8
  store %struct.dvb_usb_device* %18, %struct.dvb_usb_device** %6, align 8
  %19 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %20 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %19, i32 0, i32 0
  %21 = call i32 @dev_dbg(%struct.TYPE_4__* %20, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %22 = load %struct.rtl2832_sdr_dev*, %struct.rtl2832_sdr_dev** %3, align 8
  %23 = getelementptr inbounds %struct.rtl2832_sdr_dev, %struct.rtl2832_sdr_dev* %22, i32 0, i32 0
  %24 = call i32 @mutex_lock(i32* %23)
  %25 = load %struct.rtl2832_sdr_dev*, %struct.rtl2832_sdr_dev** %3, align 8
  %26 = call i32 @rtl2832_sdr_kill_urbs(%struct.rtl2832_sdr_dev* %25)
  %27 = load %struct.rtl2832_sdr_dev*, %struct.rtl2832_sdr_dev** %3, align 8
  %28 = call i32 @rtl2832_sdr_free_urbs(%struct.rtl2832_sdr_dev* %27)
  %29 = load %struct.rtl2832_sdr_dev*, %struct.rtl2832_sdr_dev** %3, align 8
  %30 = call i32 @rtl2832_sdr_free_stream_bufs(%struct.rtl2832_sdr_dev* %29)
  %31 = load %struct.rtl2832_sdr_dev*, %struct.rtl2832_sdr_dev** %3, align 8
  %32 = call i32 @rtl2832_sdr_cleanup_queued_bufs(%struct.rtl2832_sdr_dev* %31)
  %33 = load %struct.rtl2832_sdr_dev*, %struct.rtl2832_sdr_dev** %3, align 8
  %34 = call i32 @rtl2832_sdr_unset_adc(%struct.rtl2832_sdr_dev* %33)
  %35 = load %struct.rtl2832_sdr_dev*, %struct.rtl2832_sdr_dev** %3, align 8
  %36 = getelementptr inbounds %struct.rtl2832_sdr_dev, %struct.rtl2832_sdr_dev* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @core, align 4
  %39 = load i32, i32* @s_power, align 4
  %40 = call i64 @V4L2_SUBDEV_HAS_OP(i32 %37, i32 %38, i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %1
  %43 = load %struct.rtl2832_sdr_dev*, %struct.rtl2832_sdr_dev** %3, align 8
  %44 = getelementptr inbounds %struct.rtl2832_sdr_dev, %struct.rtl2832_sdr_dev* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @core, align 4
  %47 = load i32, i32* @s_power, align 4
  %48 = call i32 @v4l2_subdev_call(i32 %45, i32 %46, i32 %47, i32 0)
  br label %52

49:                                               ; preds = %1
  %50 = load %struct.rtl2832_sdr_dev*, %struct.rtl2832_sdr_dev** %3, align 8
  %51 = call i32 @rtl2832_sdr_unset_tuner(%struct.rtl2832_sdr_dev* %50)
  br label %52

52:                                               ; preds = %49, %42
  %53 = load i32, i32* @POWER_ON, align 4
  %54 = load %struct.rtl2832_sdr_dev*, %struct.rtl2832_sdr_dev** %3, align 8
  %55 = getelementptr inbounds %struct.rtl2832_sdr_dev, %struct.rtl2832_sdr_dev* %54, i32 0, i32 1
  %56 = call i32 @clear_bit(i32 %53, i32* %55)
  %57 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %6, align 8
  %58 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %57, i32 0, i32 0
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 1
  %61 = load i32 (i32, i32)*, i32 (i32, i32)** %60, align 8
  %62 = icmp ne i32 (i32, i32)* %61, null
  br i1 %62, label %63, label %73

63:                                               ; preds = %52
  %64 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %6, align 8
  %65 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %64, i32 0, i32 0
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 1
  %68 = load i32 (i32, i32)*, i32 (i32, i32)** %67, align 8
  %69 = load %struct.rtl2832_sdr_platform_data*, %struct.rtl2832_sdr_platform_data** %5, align 8
  %70 = getelementptr inbounds %struct.rtl2832_sdr_platform_data, %struct.rtl2832_sdr_platform_data* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i32 %68(i32 %71, i32 0)
  br label %73

73:                                               ; preds = %63, %52
  %74 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %6, align 8
  %75 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %74, i32 0, i32 0
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  %78 = load i32 (%struct.dvb_usb_device*, i32)*, i32 (%struct.dvb_usb_device*, i32)** %77, align 8
  %79 = icmp ne i32 (%struct.dvb_usb_device*, i32)* %78, null
  br i1 %79, label %80, label %88

80:                                               ; preds = %73
  %81 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %6, align 8
  %82 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %81, i32 0, i32 0
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 0
  %85 = load i32 (%struct.dvb_usb_device*, i32)*, i32 (%struct.dvb_usb_device*, i32)** %84, align 8
  %86 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %6, align 8
  %87 = call i32 %85(%struct.dvb_usb_device* %86, i32 0)
  br label %88

88:                                               ; preds = %80, %73
  %89 = load %struct.rtl2832_sdr_dev*, %struct.rtl2832_sdr_dev** %3, align 8
  %90 = getelementptr inbounds %struct.rtl2832_sdr_dev, %struct.rtl2832_sdr_dev* %89, i32 0, i32 0
  %91 = call i32 @mutex_unlock(i32* %90)
  ret void
}

declare dso_local %struct.rtl2832_sdr_dev* @vb2_get_drv_priv(%struct.vb2_queue*) #1

declare dso_local i32 @dev_dbg(%struct.TYPE_4__*, i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @rtl2832_sdr_kill_urbs(%struct.rtl2832_sdr_dev*) #1

declare dso_local i32 @rtl2832_sdr_free_urbs(%struct.rtl2832_sdr_dev*) #1

declare dso_local i32 @rtl2832_sdr_free_stream_bufs(%struct.rtl2832_sdr_dev*) #1

declare dso_local i32 @rtl2832_sdr_cleanup_queued_bufs(%struct.rtl2832_sdr_dev*) #1

declare dso_local i32 @rtl2832_sdr_unset_adc(%struct.rtl2832_sdr_dev*) #1

declare dso_local i64 @V4L2_SUBDEV_HAS_OP(i32, i32, i32) #1

declare dso_local i32 @v4l2_subdev_call(i32, i32, i32, i32) #1

declare dso_local i32 @rtl2832_sdr_unset_tuner(%struct.rtl2832_sdr_dev*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
