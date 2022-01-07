; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_rtl2832_sdr.c_rtl2832_sdr_start_streaming.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_rtl2832_sdr.c_rtl2832_sdr_start_streaming.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_queue = type { i32 }
%struct.rtl2832_sdr_dev = type { i32, i64, i32, i32, i32, %struct.platform_device* }
%struct.platform_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.rtl2832_sdr_platform_data* }
%struct.rtl2832_sdr_platform_data = type { i32, %struct.dvb_usb_device* }
%struct.dvb_usb_device = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (i32, i32)*, i32 (%struct.dvb_usb_device*, i32)* }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@POWER_ON = common dso_local global i32 0, align 4
@core = common dso_local global i32 0, align 4
@s_power = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vb2_queue*, i32)* @rtl2832_sdr_start_streaming to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl2832_sdr_start_streaming(%struct.vb2_queue* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vb2_queue*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.rtl2832_sdr_dev*, align 8
  %7 = alloca %struct.platform_device*, align 8
  %8 = alloca %struct.rtl2832_sdr_platform_data*, align 8
  %9 = alloca %struct.dvb_usb_device*, align 8
  %10 = alloca i32, align 4
  store %struct.vb2_queue* %0, %struct.vb2_queue** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.vb2_queue*, %struct.vb2_queue** %4, align 8
  %12 = call %struct.rtl2832_sdr_dev* @vb2_get_drv_priv(%struct.vb2_queue* %11)
  store %struct.rtl2832_sdr_dev* %12, %struct.rtl2832_sdr_dev** %6, align 8
  %13 = load %struct.rtl2832_sdr_dev*, %struct.rtl2832_sdr_dev** %6, align 8
  %14 = getelementptr inbounds %struct.rtl2832_sdr_dev, %struct.rtl2832_sdr_dev* %13, i32 0, i32 5
  %15 = load %struct.platform_device*, %struct.platform_device** %14, align 8
  store %struct.platform_device* %15, %struct.platform_device** %7, align 8
  %16 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %17 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load %struct.rtl2832_sdr_platform_data*, %struct.rtl2832_sdr_platform_data** %18, align 8
  store %struct.rtl2832_sdr_platform_data* %19, %struct.rtl2832_sdr_platform_data** %8, align 8
  %20 = load %struct.rtl2832_sdr_platform_data*, %struct.rtl2832_sdr_platform_data** %8, align 8
  %21 = getelementptr inbounds %struct.rtl2832_sdr_platform_data, %struct.rtl2832_sdr_platform_data* %20, i32 0, i32 1
  %22 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %21, align 8
  store %struct.dvb_usb_device* %22, %struct.dvb_usb_device** %9, align 8
  %23 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %24 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %23, i32 0, i32 0
  %25 = call i32 @dev_dbg(%struct.TYPE_4__* %24, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %26 = load %struct.rtl2832_sdr_dev*, %struct.rtl2832_sdr_dev** %6, align 8
  %27 = getelementptr inbounds %struct.rtl2832_sdr_dev, %struct.rtl2832_sdr_dev* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %2
  %31 = load i32, i32* @ENODEV, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %137

33:                                               ; preds = %2
  %34 = load %struct.rtl2832_sdr_dev*, %struct.rtl2832_sdr_dev** %6, align 8
  %35 = getelementptr inbounds %struct.rtl2832_sdr_dev, %struct.rtl2832_sdr_dev* %34, i32 0, i32 0
  %36 = call i64 @mutex_lock_interruptible(i32* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load i32, i32* @ERESTARTSYS, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %137

41:                                               ; preds = %33
  %42 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %9, align 8
  %43 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %42, i32 0, i32 0
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  %46 = load i32 (%struct.dvb_usb_device*, i32)*, i32 (%struct.dvb_usb_device*, i32)** %45, align 8
  %47 = icmp ne i32 (%struct.dvb_usb_device*, i32)* %46, null
  br i1 %47, label %48, label %56

48:                                               ; preds = %41
  %49 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %9, align 8
  %50 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %49, i32 0, i32 0
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 1
  %53 = load i32 (%struct.dvb_usb_device*, i32)*, i32 (%struct.dvb_usb_device*, i32)** %52, align 8
  %54 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %9, align 8
  %55 = call i32 %53(%struct.dvb_usb_device* %54, i32 1)
  br label %56

56:                                               ; preds = %48, %41
  %57 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %9, align 8
  %58 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %57, i32 0, i32 0
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i32 (i32, i32)*, i32 (i32, i32)** %60, align 8
  %62 = icmp ne i32 (i32, i32)* %61, null
  br i1 %62, label %63, label %73

63:                                               ; preds = %56
  %64 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %9, align 8
  %65 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %64, i32 0, i32 0
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  %68 = load i32 (i32, i32)*, i32 (i32, i32)** %67, align 8
  %69 = load %struct.rtl2832_sdr_platform_data*, %struct.rtl2832_sdr_platform_data** %8, align 8
  %70 = getelementptr inbounds %struct.rtl2832_sdr_platform_data, %struct.rtl2832_sdr_platform_data* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i32 %68(i32 %71, i32 1)
  br label %73

73:                                               ; preds = %63, %56
  %74 = load i32, i32* @POWER_ON, align 4
  %75 = load %struct.rtl2832_sdr_dev*, %struct.rtl2832_sdr_dev** %6, align 8
  %76 = getelementptr inbounds %struct.rtl2832_sdr_dev, %struct.rtl2832_sdr_dev* %75, i32 0, i32 3
  %77 = call i32 @set_bit(i32 %74, i32* %76)
  %78 = load %struct.rtl2832_sdr_dev*, %struct.rtl2832_sdr_dev** %6, align 8
  %79 = getelementptr inbounds %struct.rtl2832_sdr_dev, %struct.rtl2832_sdr_dev* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @core, align 4
  %82 = load i32, i32* @s_power, align 4
  %83 = call i64 @V4L2_SUBDEV_HAS_OP(i32 %80, i32 %81, i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %92

85:                                               ; preds = %73
  %86 = load %struct.rtl2832_sdr_dev*, %struct.rtl2832_sdr_dev** %6, align 8
  %87 = getelementptr inbounds %struct.rtl2832_sdr_dev, %struct.rtl2832_sdr_dev* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @core, align 4
  %90 = load i32, i32* @s_power, align 4
  %91 = call i32 @v4l2_subdev_call(i32 %88, i32 %89, i32 %90, i32 1)
  store i32 %91, i32* %10, align 4
  br label %95

92:                                               ; preds = %73
  %93 = load %struct.rtl2832_sdr_dev*, %struct.rtl2832_sdr_dev** %6, align 8
  %94 = call i32 @rtl2832_sdr_set_tuner(%struct.rtl2832_sdr_dev* %93)
  store i32 %94, i32* %10, align 4
  br label %95

95:                                               ; preds = %92, %85
  %96 = load i32, i32* %10, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %95
  br label %132

99:                                               ; preds = %95
  %100 = load %struct.rtl2832_sdr_dev*, %struct.rtl2832_sdr_dev** %6, align 8
  %101 = call i32 @rtl2832_sdr_set_tuner_freq(%struct.rtl2832_sdr_dev* %100)
  store i32 %101, i32* %10, align 4
  %102 = load i32, i32* %10, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %99
  br label %132

105:                                              ; preds = %99
  %106 = load %struct.rtl2832_sdr_dev*, %struct.rtl2832_sdr_dev** %6, align 8
  %107 = call i32 @rtl2832_sdr_set_adc(%struct.rtl2832_sdr_dev* %106)
  store i32 %107, i32* %10, align 4
  %108 = load i32, i32* %10, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %105
  br label %132

111:                                              ; preds = %105
  %112 = load %struct.rtl2832_sdr_dev*, %struct.rtl2832_sdr_dev** %6, align 8
  %113 = call i32 @rtl2832_sdr_alloc_stream_bufs(%struct.rtl2832_sdr_dev* %112)
  store i32 %113, i32* %10, align 4
  %114 = load i32, i32* %10, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %111
  br label %132

117:                                              ; preds = %111
  %118 = load %struct.rtl2832_sdr_dev*, %struct.rtl2832_sdr_dev** %6, align 8
  %119 = call i32 @rtl2832_sdr_alloc_urbs(%struct.rtl2832_sdr_dev* %118)
  store i32 %119, i32* %10, align 4
  %120 = load i32, i32* %10, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %117
  br label %132

123:                                              ; preds = %117
  %124 = load %struct.rtl2832_sdr_dev*, %struct.rtl2832_sdr_dev** %6, align 8
  %125 = getelementptr inbounds %struct.rtl2832_sdr_dev, %struct.rtl2832_sdr_dev* %124, i32 0, i32 1
  store i64 0, i64* %125, align 8
  %126 = load %struct.rtl2832_sdr_dev*, %struct.rtl2832_sdr_dev** %6, align 8
  %127 = call i32 @rtl2832_sdr_submit_urbs(%struct.rtl2832_sdr_dev* %126)
  store i32 %127, i32* %10, align 4
  %128 = load i32, i32* %10, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %123
  br label %132

131:                                              ; preds = %123
  br label %132

132:                                              ; preds = %131, %130, %122, %116, %110, %104, %98
  %133 = load %struct.rtl2832_sdr_dev*, %struct.rtl2832_sdr_dev** %6, align 8
  %134 = getelementptr inbounds %struct.rtl2832_sdr_dev, %struct.rtl2832_sdr_dev* %133, i32 0, i32 0
  %135 = call i32 @mutex_unlock(i32* %134)
  %136 = load i32, i32* %10, align 4
  store i32 %136, i32* %3, align 4
  br label %137

137:                                              ; preds = %132, %38, %30
  %138 = load i32, i32* %3, align 4
  ret i32 %138
}

declare dso_local %struct.rtl2832_sdr_dev* @vb2_get_drv_priv(%struct.vb2_queue*) #1

declare dso_local i32 @dev_dbg(%struct.TYPE_4__*, i8*) #1

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i64 @V4L2_SUBDEV_HAS_OP(i32, i32, i32) #1

declare dso_local i32 @v4l2_subdev_call(i32, i32, i32, i32) #1

declare dso_local i32 @rtl2832_sdr_set_tuner(%struct.rtl2832_sdr_dev*) #1

declare dso_local i32 @rtl2832_sdr_set_tuner_freq(%struct.rtl2832_sdr_dev*) #1

declare dso_local i32 @rtl2832_sdr_set_adc(%struct.rtl2832_sdr_dev*) #1

declare dso_local i32 @rtl2832_sdr_alloc_stream_bufs(%struct.rtl2832_sdr_dev*) #1

declare dso_local i32 @rtl2832_sdr_alloc_urbs(%struct.rtl2832_sdr_dev*) #1

declare dso_local i32 @rtl2832_sdr_submit_urbs(%struct.rtl2832_sdr_dev*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
