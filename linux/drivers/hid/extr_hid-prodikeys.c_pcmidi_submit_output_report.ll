; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-prodikeys.c_pcmidi_submit_output_report.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-prodikeys.c_pcmidi_submit_output_report.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmidi_snd = type { %struct.hid_report*, %struct.TYPE_3__* }
%struct.hid_report = type { %struct.TYPE_4__** }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_3__ = type { %struct.hid_device* }
%struct.hid_device = type { i32 }

@HID_REQ_SET_REPORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pcmidi_snd*, i32)* @pcmidi_submit_output_report to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pcmidi_submit_output_report(%struct.pcmidi_snd* %0, i32 %1) #0 {
  %3 = alloca %struct.pcmidi_snd*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hid_device*, align 8
  %6 = alloca %struct.hid_report*, align 8
  store %struct.pcmidi_snd* %0, %struct.pcmidi_snd** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.pcmidi_snd*, %struct.pcmidi_snd** %3, align 8
  %8 = getelementptr inbounds %struct.pcmidi_snd, %struct.pcmidi_snd* %7, i32 0, i32 1
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load %struct.hid_device*, %struct.hid_device** %10, align 8
  store %struct.hid_device* %11, %struct.hid_device** %5, align 8
  %12 = load %struct.pcmidi_snd*, %struct.pcmidi_snd** %3, align 8
  %13 = getelementptr inbounds %struct.pcmidi_snd, %struct.pcmidi_snd* %12, i32 0, i32 0
  %14 = load %struct.hid_report*, %struct.hid_report** %13, align 8
  store %struct.hid_report* %14, %struct.hid_report** %6, align 8
  %15 = load %struct.hid_report*, %struct.hid_report** %6, align 8
  %16 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %17, i64 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  store i32 1, i32* %22, align 4
  %23 = load i32, i32* %4, align 4
  %24 = load %struct.hid_report*, %struct.hid_report** %6, align 8
  %25 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %26, i64 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 1
  store i32 %23, i32* %31, align 4
  %32 = load %struct.hid_device*, %struct.hid_device** %5, align 8
  %33 = load %struct.hid_report*, %struct.hid_report** %6, align 8
  %34 = load i32, i32* @HID_REQ_SET_REPORT, align 4
  %35 = call i32 @hid_hw_request(%struct.hid_device* %32, %struct.hid_report* %33, i32 %34)
  ret void
}

declare dso_local i32 @hid_hw_request(%struct.hid_device*, %struct.hid_report*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
