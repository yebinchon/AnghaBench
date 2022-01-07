; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-prodikeys.c_pcmidi_handle_report.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-prodikeys.c_pcmidi_handle_report.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmidi_snd = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcmidi_snd*, i32, i32*, i32)* @pcmidi_handle_report to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcmidi_handle_report(%struct.pcmidi_snd* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.pcmidi_snd*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.pcmidi_snd* %0, %struct.pcmidi_snd** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %10 = load i32, i32* %6, align 4
  switch i32 %10, label %24 [
    i32 1, label %11
    i32 3, label %15
    i32 4, label %20
  ]

11:                                               ; preds = %4
  %12 = load %struct.pcmidi_snd*, %struct.pcmidi_snd** %5, align 8
  %13 = load i32*, i32** %7, align 8
  %14 = call i32 @pcmidi_handle_report1(%struct.pcmidi_snd* %12, i32* %13)
  store i32 %14, i32* %9, align 4
  br label %24

15:                                               ; preds = %4
  %16 = load %struct.pcmidi_snd*, %struct.pcmidi_snd** %5, align 8
  %17 = load i32*, i32** %7, align 8
  %18 = load i32, i32* %8, align 4
  %19 = call i32 @pcmidi_handle_report3(%struct.pcmidi_snd* %16, i32* %17, i32 %18)
  store i32 %19, i32* %9, align 4
  br label %24

20:                                               ; preds = %4
  %21 = load %struct.pcmidi_snd*, %struct.pcmidi_snd** %5, align 8
  %22 = load i32*, i32** %7, align 8
  %23 = call i32 @pcmidi_handle_report4(%struct.pcmidi_snd* %21, i32* %22)
  store i32 %23, i32* %9, align 4
  br label %24

24:                                               ; preds = %4, %20, %15, %11
  %25 = load i32, i32* %9, align 4
  ret i32 %25
}

declare dso_local i32 @pcmidi_handle_report1(%struct.pcmidi_snd*, i32*) #1

declare dso_local i32 @pcmidi_handle_report3(%struct.pcmidi_snd*, i32*, i32) #1

declare dso_local i32 @pcmidi_handle_report4(%struct.pcmidi_snd*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
