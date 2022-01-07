; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-prodikeys.c_pk_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-prodikeys.c_pk_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32 }
%struct.pk_device = type { %struct.pk_device* }
%struct.pcmidi_snd = type { %struct.pcmidi_snd* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hid_device*)* @pk_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pk_remove(%struct.hid_device* %0) #0 {
  %2 = alloca %struct.hid_device*, align 8
  %3 = alloca %struct.pk_device*, align 8
  %4 = alloca %struct.pcmidi_snd*, align 8
  store %struct.hid_device* %0, %struct.hid_device** %2, align 8
  %5 = load %struct.hid_device*, %struct.hid_device** %2, align 8
  %6 = call %struct.pk_device* @hid_get_drvdata(%struct.hid_device* %5)
  store %struct.pk_device* %6, %struct.pk_device** %3, align 8
  %7 = load %struct.pk_device*, %struct.pk_device** %3, align 8
  %8 = getelementptr inbounds %struct.pk_device, %struct.pk_device* %7, i32 0, i32 0
  %9 = load %struct.pk_device*, %struct.pk_device** %8, align 8
  %10 = bitcast %struct.pk_device* %9 to %struct.pcmidi_snd*
  store %struct.pcmidi_snd* %10, %struct.pcmidi_snd** %4, align 8
  %11 = load %struct.pcmidi_snd*, %struct.pcmidi_snd** %4, align 8
  %12 = icmp ne %struct.pcmidi_snd* %11, null
  br i1 %12, label %13, label %20

13:                                               ; preds = %1
  %14 = load %struct.pcmidi_snd*, %struct.pcmidi_snd** %4, align 8
  %15 = bitcast %struct.pcmidi_snd* %14 to %struct.pk_device*
  %16 = call i32 @pcmidi_snd_terminate(%struct.pk_device* %15)
  %17 = load %struct.pcmidi_snd*, %struct.pcmidi_snd** %4, align 8
  %18 = bitcast %struct.pcmidi_snd* %17 to %struct.pk_device*
  %19 = call i32 @kfree(%struct.pk_device* %18)
  br label %20

20:                                               ; preds = %13, %1
  %21 = load %struct.hid_device*, %struct.hid_device** %2, align 8
  %22 = call i32 @hid_hw_stop(%struct.hid_device* %21)
  %23 = load %struct.pk_device*, %struct.pk_device** %3, align 8
  %24 = call i32 @kfree(%struct.pk_device* %23)
  ret void
}

declare dso_local %struct.pk_device* @hid_get_drvdata(%struct.hid_device*) #1

declare dso_local i32 @pcmidi_snd_terminate(%struct.pk_device*) #1

declare dso_local i32 @kfree(%struct.pk_device*) #1

declare dso_local i32 @hid_hw_stop(%struct.hid_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
