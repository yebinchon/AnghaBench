; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-prodikeys.c_pcmidi_snd_terminate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-prodikeys.c_pcmidi_snd_terminate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmidi_snd = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@sysfs_device_attr_channel = common dso_local global i32 0, align 4
@sysfs_device_attr_sustain = common dso_local global i32 0, align 4
@sysfs_device_attr_octave = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcmidi_snd*)* @pcmidi_snd_terminate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcmidi_snd_terminate(%struct.pcmidi_snd* %0) #0 {
  %2 = alloca %struct.pcmidi_snd*, align 8
  store %struct.pcmidi_snd* %0, %struct.pcmidi_snd** %2, align 8
  %3 = load %struct.pcmidi_snd*, %struct.pcmidi_snd** %2, align 8
  %4 = getelementptr inbounds %struct.pcmidi_snd, %struct.pcmidi_snd* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %42

7:                                                ; preds = %1
  %8 = load %struct.pcmidi_snd*, %struct.pcmidi_snd** %2, align 8
  %9 = call i32 @stop_sustain_timers(%struct.pcmidi_snd* %8)
  %10 = load %struct.pcmidi_snd*, %struct.pcmidi_snd** %2, align 8
  %11 = getelementptr inbounds %struct.pcmidi_snd, %struct.pcmidi_snd* %10, i32 0, i32 1
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* @sysfs_device_attr_channel, align 4
  %17 = call i32 @device_remove_file(i32* %15, i32 %16)
  %18 = load %struct.pcmidi_snd*, %struct.pcmidi_snd** %2, align 8
  %19 = getelementptr inbounds %struct.pcmidi_snd, %struct.pcmidi_snd* %18, i32 0, i32 1
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* @sysfs_device_attr_sustain, align 4
  %25 = call i32 @device_remove_file(i32* %23, i32 %24)
  %26 = load %struct.pcmidi_snd*, %struct.pcmidi_snd** %2, align 8
  %27 = getelementptr inbounds %struct.pcmidi_snd, %struct.pcmidi_snd* %26, i32 0, i32 1
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* @sysfs_device_attr_octave, align 4
  %33 = call i32 @device_remove_file(i32* %31, i32 %32)
  %34 = load %struct.pcmidi_snd*, %struct.pcmidi_snd** %2, align 8
  %35 = getelementptr inbounds %struct.pcmidi_snd, %struct.pcmidi_snd* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @snd_card_disconnect(i64 %36)
  %38 = load %struct.pcmidi_snd*, %struct.pcmidi_snd** %2, align 8
  %39 = getelementptr inbounds %struct.pcmidi_snd, %struct.pcmidi_snd* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @snd_card_free_when_closed(i64 %40)
  br label %42

42:                                               ; preds = %7, %1
  ret i32 0
}

declare dso_local i32 @stop_sustain_timers(%struct.pcmidi_snd*) #1

declare dso_local i32 @device_remove_file(i32*, i32) #1

declare dso_local i32 @snd_card_disconnect(i64) #1

declare dso_local i32 @snd_card_free_when_closed(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
