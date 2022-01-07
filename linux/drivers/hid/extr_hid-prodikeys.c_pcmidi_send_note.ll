; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-prodikeys.c_pcmidi_send_note.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-prodikeys.c_pcmidi_send_note.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmidi_snd = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pcmidi_snd*, i8, i8, i8)* @pcmidi_send_note to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pcmidi_send_note(%struct.pcmidi_snd* %0, i8 zeroext %1, i8 zeroext %2, i8 zeroext %3) #0 {
  %5 = alloca %struct.pcmidi_snd*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i64, align 8
  %10 = alloca [3 x i8], align 1
  store %struct.pcmidi_snd* %0, %struct.pcmidi_snd** %5, align 8
  store i8 %1, i8* %6, align 1
  store i8 %2, i8* %7, align 1
  store i8 %3, i8* %8, align 1
  %11 = load i8, i8* %6, align 1
  %12 = getelementptr inbounds [3 x i8], [3 x i8]* %10, i64 0, i64 0
  store i8 %11, i8* %12, align 1
  %13 = load i8, i8* %7, align 1
  %14 = getelementptr inbounds [3 x i8], [3 x i8]* %10, i64 0, i64 1
  store i8 %13, i8* %14, align 1
  %15 = load i8, i8* %8, align 1
  %16 = getelementptr inbounds [3 x i8], [3 x i8]* %10, i64 0, i64 2
  store i8 %15, i8* %16, align 1
  %17 = load %struct.pcmidi_snd*, %struct.pcmidi_snd** %5, align 8
  %18 = getelementptr inbounds %struct.pcmidi_snd, %struct.pcmidi_snd* %17, i32 0, i32 0
  %19 = load i64, i64* %9, align 8
  %20 = call i32 @spin_lock_irqsave(i32* %18, i64 %19)
  %21 = load %struct.pcmidi_snd*, %struct.pcmidi_snd** %5, align 8
  %22 = getelementptr inbounds %struct.pcmidi_snd, %struct.pcmidi_snd* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = icmp ne %struct.TYPE_2__* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %4
  br label %43

26:                                               ; preds = %4
  %27 = load %struct.pcmidi_snd*, %struct.pcmidi_snd** %5, align 8
  %28 = getelementptr inbounds %struct.pcmidi_snd, %struct.pcmidi_snd* %27, i32 0, i32 1
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.pcmidi_snd*, %struct.pcmidi_snd** %5, align 8
  %33 = getelementptr inbounds %struct.pcmidi_snd, %struct.pcmidi_snd* %32, i32 0, i32 2
  %34 = call i32 @test_bit(i32 %31, i32* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %26
  br label %43

37:                                               ; preds = %26
  %38 = load %struct.pcmidi_snd*, %struct.pcmidi_snd** %5, align 8
  %39 = getelementptr inbounds %struct.pcmidi_snd, %struct.pcmidi_snd* %38, i32 0, i32 1
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds [3 x i8], [3 x i8]* %10, i64 0, i64 0
  %42 = call i32 @snd_rawmidi_receive(%struct.TYPE_2__* %40, i8* %41, i32 3)
  br label %43

43:                                               ; preds = %37, %36, %25
  %44 = load %struct.pcmidi_snd*, %struct.pcmidi_snd** %5, align 8
  %45 = getelementptr inbounds %struct.pcmidi_snd, %struct.pcmidi_snd* %44, i32 0, i32 0
  %46 = load i64, i64* %9, align 8
  %47 = call i32 @spin_unlock_irqrestore(i32* %45, i64 %46)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @snd_rawmidi_receive(%struct.TYPE_2__*, i8*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
