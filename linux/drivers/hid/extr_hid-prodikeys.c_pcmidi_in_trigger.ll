; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-prodikeys.c_pcmidi_in_trigger.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-prodikeys.c_pcmidi_in_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_rawmidi_substream = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.pcmidi_snd* }
%struct.pcmidi_snd = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"pcmidi in trigger %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_rawmidi_substream*, i32)* @pcmidi_in_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pcmidi_in_trigger(%struct.snd_rawmidi_substream* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_rawmidi_substream*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pcmidi_snd*, align 8
  store %struct.snd_rawmidi_substream* %0, %struct.snd_rawmidi_substream** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %3, align 8
  %7 = getelementptr inbounds %struct.snd_rawmidi_substream, %struct.snd_rawmidi_substream* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.pcmidi_snd*, %struct.pcmidi_snd** %9, align 8
  store %struct.pcmidi_snd* %10, %struct.pcmidi_snd** %5, align 8
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @dbg_hid(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = load i32, i32* %4, align 4
  %14 = load %struct.pcmidi_snd*, %struct.pcmidi_snd** %5, align 8
  %15 = getelementptr inbounds %struct.pcmidi_snd, %struct.pcmidi_snd* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 4
  ret void
}

declare dso_local i32 @dbg_hid(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
