; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-prodikeys.c_pcmidi_setup_extra_keys.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-prodikeys.c_pcmidi_setup_extra_keys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmidi_snd = type { i32, %struct.input_dev*, i64* }
%struct.input_dev = type { i32 }

@pcmidi_setup_extra_keys.keys = internal constant [21 x i32] [i32 142, i32 139, i32 146, i32 147, i32 143, i32 128, i32 130, i32 144, i32 140, i32 132, i32 134, i32 141, i32 138, i32 137, i32 145, i32 133, i32 129, i32 135, i32 131, i32 136, i32 0], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pcmidi_snd*, %struct.input_dev*)* @pcmidi_setup_extra_keys to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pcmidi_setup_extra_keys(%struct.pcmidi_snd* %0, %struct.input_dev* %1) #0 {
  %3 = alloca %struct.pcmidi_snd*, align 8
  %4 = alloca %struct.input_dev*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i16, align 2
  store %struct.pcmidi_snd* %0, %struct.pcmidi_snd** %3, align 8
  store %struct.input_dev* %1, %struct.input_dev** %4, align 8
  store i32* getelementptr inbounds ([21 x i32], [21 x i32]* @pcmidi_setup_extra_keys.keys, i64 0, i64 0), i32** %5, align 8
  %7 = load %struct.pcmidi_snd*, %struct.pcmidi_snd** %3, align 8
  %8 = getelementptr inbounds %struct.pcmidi_snd, %struct.pcmidi_snd* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, 1
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %46

12:                                               ; preds = %2
  %13 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %14 = load %struct.pcmidi_snd*, %struct.pcmidi_snd** %3, align 8
  %15 = getelementptr inbounds %struct.pcmidi_snd, %struct.pcmidi_snd* %14, i32 0, i32 1
  store %struct.input_dev* %13, %struct.input_dev** %15, align 8
  store i16 0, i16* %6, align 2
  br label %16

16:                                               ; preds = %27, %12
  %17 = load i16, i16* %6, align 2
  %18 = zext i16 %17 to i32
  %19 = icmp slt i32 %18, 24
  br i1 %19, label %20, label %30

20:                                               ; preds = %16
  %21 = load %struct.pcmidi_snd*, %struct.pcmidi_snd** %3, align 8
  %22 = getelementptr inbounds %struct.pcmidi_snd, %struct.pcmidi_snd* %21, i32 0, i32 2
  %23 = load i64*, i64** %22, align 8
  %24 = load i16, i16* %6, align 2
  %25 = zext i16 %24 to i64
  %26 = getelementptr inbounds i64, i64* %23, i64 %25
  store i64 0, i64* %26, align 8
  br label %27

27:                                               ; preds = %20
  %28 = load i16, i16* %6, align 2
  %29 = add i16 %28, 1
  store i16 %29, i16* %6, align 2
  br label %16

30:                                               ; preds = %16
  br label %31

31:                                               ; preds = %35, %30
  %32 = load i32*, i32** %5, align 8
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %46

35:                                               ; preds = %31
  %36 = load i32*, i32** %5, align 8
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.pcmidi_snd*, %struct.pcmidi_snd** %3, align 8
  %39 = getelementptr inbounds %struct.pcmidi_snd, %struct.pcmidi_snd* %38, i32 0, i32 1
  %40 = load %struct.input_dev*, %struct.input_dev** %39, align 8
  %41 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @set_bit(i32 %37, i32 %42)
  %44 = load i32*, i32** %5, align 8
  %45 = getelementptr inbounds i32, i32* %44, i32 1
  store i32* %45, i32** %5, align 8
  br label %31

46:                                               ; preds = %11, %31
  ret void
}

declare dso_local i32 @set_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
