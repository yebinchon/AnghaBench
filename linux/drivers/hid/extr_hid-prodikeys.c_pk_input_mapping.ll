; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-prodikeys.c_pk_input_mapping.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-prodikeys.c_pk_input_mapping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32 }
%struct.hid_input = type { i32 }
%struct.hid_field = type { i32 }
%struct.hid_usage = type { i32 }
%struct.pk_device = type { %struct.pcmidi_snd* }
%struct.pcmidi_snd = type { i32 }

@HID_UP_MSVENDOR = common dso_local global i32 0, align 4
@HID_USAGE_PAGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_device*, %struct.hid_input*, %struct.hid_field*, %struct.hid_usage*, i64**, i32*)* @pk_input_mapping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pk_input_mapping(%struct.hid_device* %0, %struct.hid_input* %1, %struct.hid_field* %2, %struct.hid_usage* %3, i64** %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.hid_device*, align 8
  %9 = alloca %struct.hid_input*, align 8
  %10 = alloca %struct.hid_field*, align 8
  %11 = alloca %struct.hid_usage*, align 8
  %12 = alloca i64**, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.pk_device*, align 8
  %15 = alloca %struct.pcmidi_snd*, align 8
  store %struct.hid_device* %0, %struct.hid_device** %8, align 8
  store %struct.hid_input* %1, %struct.hid_input** %9, align 8
  store %struct.hid_field* %2, %struct.hid_field** %10, align 8
  store %struct.hid_usage* %3, %struct.hid_usage** %11, align 8
  store i64** %4, i64*** %12, align 8
  store i32* %5, i32** %13, align 8
  %16 = load %struct.hid_device*, %struct.hid_device** %8, align 8
  %17 = call %struct.pk_device* @hid_get_drvdata(%struct.hid_device* %16)
  store %struct.pk_device* %17, %struct.pk_device** %14, align 8
  %18 = load %struct.pk_device*, %struct.pk_device** %14, align 8
  %19 = getelementptr inbounds %struct.pk_device, %struct.pk_device* %18, i32 0, i32 0
  %20 = load %struct.pcmidi_snd*, %struct.pcmidi_snd** %19, align 8
  store %struct.pcmidi_snd* %20, %struct.pcmidi_snd** %15, align 8
  %21 = load i32, i32* @HID_UP_MSVENDOR, align 4
  %22 = load %struct.hid_usage*, %struct.hid_usage** %11, align 8
  %23 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @HID_USAGE_PAGE, align 4
  %26 = and i32 %24, %25
  %27 = icmp eq i32 %21, %26
  br i1 %27, label %28, label %39

28:                                               ; preds = %6
  %29 = load %struct.pcmidi_snd*, %struct.pcmidi_snd** %15, align 8
  %30 = getelementptr inbounds %struct.pcmidi_snd, %struct.pcmidi_snd* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp eq i32 1, %31
  br i1 %32, label %33, label %39

33:                                               ; preds = %28
  %34 = load %struct.pcmidi_snd*, %struct.pcmidi_snd** %15, align 8
  %35 = load %struct.hid_input*, %struct.hid_input** %9, align 8
  %36 = getelementptr inbounds %struct.hid_input, %struct.hid_input* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @pcmidi_setup_extra_keys(%struct.pcmidi_snd* %34, i32 %37)
  store i32 0, i32* %7, align 4
  br label %40

39:                                               ; preds = %28, %6
  store i32 0, i32* %7, align 4
  br label %40

40:                                               ; preds = %39, %33
  %41 = load i32, i32* %7, align 4
  ret i32 %41
}

declare dso_local %struct.pk_device* @hid_get_drvdata(%struct.hid_device*) #1

declare dso_local i32 @pcmidi_setup_extra_keys(%struct.pcmidi_snd*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
