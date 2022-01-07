; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-prodikeys.c_pk_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-prodikeys.c_pk_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.hid_device_id = type { i64 }
%struct.usb_interface = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i16 }
%struct.pk_device = type { i16, %struct.pk_device*, %struct.pk_device*, %struct.hid_device* }
%struct.pcmidi_snd = type { i16, %struct.pcmidi_snd*, %struct.pcmidi_snd*, %struct.hid_device* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"can't alloc descriptor\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"hid parse failed\0A\00", align 1
@PK_QUIRK_NOGET = common dso_local global i64 0, align 8
@HID_QUIRK_NOGET = common dso_local global i32 0, align 4
@HID_CONNECT_DEFAULT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"hw start failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_device*, %struct.hid_device_id*)* @pk_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pk_probe(%struct.hid_device* %0, %struct.hid_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hid_device*, align 8
  %5 = alloca %struct.hid_device_id*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.usb_interface*, align 8
  %8 = alloca i16, align 2
  %9 = alloca i64, align 8
  %10 = alloca %struct.pk_device*, align 8
  %11 = alloca %struct.pcmidi_snd*, align 8
  store %struct.hid_device* %0, %struct.hid_device** %4, align 8
  store %struct.hid_device_id* %1, %struct.hid_device_id** %5, align 8
  %12 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %13 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.usb_interface* @to_usb_interface(i32 %15)
  store %struct.usb_interface* %16, %struct.usb_interface** %7, align 8
  %17 = load %struct.usb_interface*, %struct.usb_interface** %7, align 8
  %18 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %17, i32 0, i32 0
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i16, i16* %21, align 2
  store i16 %22, i16* %8, align 2
  %23 = load %struct.hid_device_id*, %struct.hid_device_id** %5, align 8
  %24 = getelementptr inbounds %struct.hid_device_id, %struct.hid_device_id* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %9, align 8
  store %struct.pcmidi_snd* null, %struct.pcmidi_snd** %11, align 8
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call %struct.pk_device* @kzalloc(i32 32, i32 %26)
  store %struct.pk_device* %27, %struct.pk_device** %10, align 8
  %28 = load %struct.pk_device*, %struct.pk_device** %10, align 8
  %29 = icmp eq %struct.pk_device* %28, null
  br i1 %29, label %30, label %35

30:                                               ; preds = %2
  %31 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %32 = call i32 @hid_err(%struct.hid_device* %31, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %110

35:                                               ; preds = %2
  %36 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %37 = load %struct.pk_device*, %struct.pk_device** %10, align 8
  %38 = getelementptr inbounds %struct.pk_device, %struct.pk_device* %37, i32 0, i32 3
  store %struct.hid_device* %36, %struct.hid_device** %38, align 8
  %39 = load i32, i32* @GFP_KERNEL, align 4
  %40 = call %struct.pk_device* @kzalloc(i32 32, i32 %39)
  %41 = bitcast %struct.pk_device* %40 to %struct.pcmidi_snd*
  store %struct.pcmidi_snd* %41, %struct.pcmidi_snd** %11, align 8
  %42 = load %struct.pcmidi_snd*, %struct.pcmidi_snd** %11, align 8
  %43 = icmp eq %struct.pcmidi_snd* %42, null
  br i1 %43, label %44, label %49

44:                                               ; preds = %35
  %45 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %46 = call i32 @hid_err(%struct.hid_device* %45, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %47 = load i32, i32* @ENOMEM, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %6, align 4
  br label %106

49:                                               ; preds = %35
  %50 = load %struct.pk_device*, %struct.pk_device** %10, align 8
  %51 = bitcast %struct.pk_device* %50 to %struct.pcmidi_snd*
  %52 = load %struct.pcmidi_snd*, %struct.pcmidi_snd** %11, align 8
  %53 = getelementptr inbounds %struct.pcmidi_snd, %struct.pcmidi_snd* %52, i32 0, i32 2
  store %struct.pcmidi_snd* %51, %struct.pcmidi_snd** %53, align 8
  %54 = load %struct.pcmidi_snd*, %struct.pcmidi_snd** %11, align 8
  %55 = bitcast %struct.pcmidi_snd* %54 to %struct.pk_device*
  %56 = load %struct.pk_device*, %struct.pk_device** %10, align 8
  %57 = getelementptr inbounds %struct.pk_device, %struct.pk_device* %56, i32 0, i32 1
  store %struct.pk_device* %55, %struct.pk_device** %57, align 8
  %58 = load i16, i16* %8, align 2
  %59 = load %struct.pcmidi_snd*, %struct.pcmidi_snd** %11, align 8
  %60 = getelementptr inbounds %struct.pcmidi_snd, %struct.pcmidi_snd* %59, i32 0, i32 0
  store i16 %58, i16* %60, align 8
  %61 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %62 = load %struct.pk_device*, %struct.pk_device** %10, align 8
  %63 = call i32 @hid_set_drvdata(%struct.hid_device* %61, %struct.pk_device* %62)
  %64 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %65 = call i32 @hid_parse(%struct.hid_device* %64)
  store i32 %65, i32* %6, align 4
  %66 = load i32, i32* %6, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %49
  %69 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %70 = call i32 @hid_err(%struct.hid_device* %69, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  br label %102

71:                                               ; preds = %49
  %72 = load i64, i64* %9, align 8
  %73 = load i64, i64* @PK_QUIRK_NOGET, align 8
  %74 = and i64 %72, %73
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %71
  %77 = load i32, i32* @HID_QUIRK_NOGET, align 4
  %78 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %79 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = or i32 %80, %77
  store i32 %81, i32* %79, align 4
  br label %82

82:                                               ; preds = %76, %71
  %83 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %84 = load i32, i32* @HID_CONNECT_DEFAULT, align 4
  %85 = call i32 @hid_hw_start(%struct.hid_device* %83, i32 %84)
  store i32 %85, i32* %6, align 4
  %86 = load i32, i32* %6, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %82
  %89 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %90 = call i32 @hid_err(%struct.hid_device* %89, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  br label %102

91:                                               ; preds = %82
  %92 = load %struct.pcmidi_snd*, %struct.pcmidi_snd** %11, align 8
  %93 = bitcast %struct.pcmidi_snd* %92 to %struct.pk_device*
  %94 = call i32 @pcmidi_snd_initialise(%struct.pk_device* %93)
  store i32 %94, i32* %6, align 4
  %95 = load i32, i32* %6, align 4
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %91
  br label %99

98:                                               ; preds = %91
  store i32 0, i32* %3, align 4
  br label %110

99:                                               ; preds = %97
  %100 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %101 = call i32 @hid_hw_stop(%struct.hid_device* %100)
  br label %102

102:                                              ; preds = %99, %88, %68
  %103 = load %struct.pcmidi_snd*, %struct.pcmidi_snd** %11, align 8
  %104 = bitcast %struct.pcmidi_snd* %103 to %struct.pk_device*
  %105 = call i32 @kfree(%struct.pk_device* %104)
  br label %106

106:                                              ; preds = %102, %44
  %107 = load %struct.pk_device*, %struct.pk_device** %10, align 8
  %108 = call i32 @kfree(%struct.pk_device* %107)
  %109 = load i32, i32* %6, align 4
  store i32 %109, i32* %3, align 4
  br label %110

110:                                              ; preds = %106, %98, %30
  %111 = load i32, i32* %3, align 4
  ret i32 %111
}

declare dso_local %struct.usb_interface* @to_usb_interface(i32) #1

declare dso_local %struct.pk_device* @kzalloc(i32, i32) #1

declare dso_local i32 @hid_err(%struct.hid_device*, i8*) #1

declare dso_local i32 @hid_set_drvdata(%struct.hid_device*, %struct.pk_device*) #1

declare dso_local i32 @hid_parse(%struct.hid_device*) #1

declare dso_local i32 @hid_hw_start(%struct.hid_device*, i32) #1

declare dso_local i32 @pcmidi_snd_initialise(%struct.pk_device*) #1

declare dso_local i32 @hid_hw_stop(%struct.hid_device*) #1

declare dso_local i32 @kfree(%struct.pk_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
