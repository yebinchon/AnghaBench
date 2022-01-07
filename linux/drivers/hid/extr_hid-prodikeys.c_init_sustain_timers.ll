; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-prodikeys.c_init_sustain_timers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-prodikeys.c_init_sustain_timers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmidi_snd = type { %struct.pcmidi_sustain* }
%struct.pcmidi_sustain = type { i32, %struct.pcmidi_snd*, i64 }

@PCMIDI_SUSTAINED_MAX = common dso_local global i32 0, align 4
@pcmidi_sustained_note_release = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pcmidi_snd*)* @init_sustain_timers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_sustain_timers(%struct.pcmidi_snd* %0) #0 {
  %2 = alloca %struct.pcmidi_snd*, align 8
  %3 = alloca %struct.pcmidi_sustain*, align 8
  %4 = alloca i32, align 4
  store %struct.pcmidi_snd* %0, %struct.pcmidi_snd** %2, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %25, %1
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @PCMIDI_SUSTAINED_MAX, align 4
  %8 = icmp ult i32 %6, %7
  br i1 %8, label %9, label %28

9:                                                ; preds = %5
  %10 = load %struct.pcmidi_snd*, %struct.pcmidi_snd** %2, align 8
  %11 = getelementptr inbounds %struct.pcmidi_snd, %struct.pcmidi_snd* %10, i32 0, i32 0
  %12 = load %struct.pcmidi_sustain*, %struct.pcmidi_sustain** %11, align 8
  %13 = load i32, i32* %4, align 4
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds %struct.pcmidi_sustain, %struct.pcmidi_sustain* %12, i64 %14
  store %struct.pcmidi_sustain* %15, %struct.pcmidi_sustain** %3, align 8
  %16 = load %struct.pcmidi_sustain*, %struct.pcmidi_sustain** %3, align 8
  %17 = getelementptr inbounds %struct.pcmidi_sustain, %struct.pcmidi_sustain* %16, i32 0, i32 2
  store i64 0, i64* %17, align 8
  %18 = load %struct.pcmidi_snd*, %struct.pcmidi_snd** %2, align 8
  %19 = load %struct.pcmidi_sustain*, %struct.pcmidi_sustain** %3, align 8
  %20 = getelementptr inbounds %struct.pcmidi_sustain, %struct.pcmidi_sustain* %19, i32 0, i32 1
  store %struct.pcmidi_snd* %18, %struct.pcmidi_snd** %20, align 8
  %21 = load %struct.pcmidi_sustain*, %struct.pcmidi_sustain** %3, align 8
  %22 = getelementptr inbounds %struct.pcmidi_sustain, %struct.pcmidi_sustain* %21, i32 0, i32 0
  %23 = load i32, i32* @pcmidi_sustained_note_release, align 4
  %24 = call i32 @timer_setup(i32* %22, i32 %23, i32 0)
  br label %25

25:                                               ; preds = %9
  %26 = load i32, i32* %4, align 4
  %27 = add i32 %26, 1
  store i32 %27, i32* %4, align 4
  br label %5

28:                                               ; preds = %5
  ret void
}

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
