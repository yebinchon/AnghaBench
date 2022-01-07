; ModuleID = '/home/carl/AnghaBench/linux/drivers/isdn/mISDN/extr_dsp_audio.c_dsp_audio_generate_law_tables.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/isdn/mISDN/extr_dsp_audio.c_dsp_audio_generate_law_tables.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dsp_audio_alaw_to_s32 = common dso_local global i32* null, align 8
@dsp_audio_ulaw_to_s32 = common dso_local global i32* null, align 8
@dsp_audio_alaw_to_ulaw = common dso_local global i32* null, align 8
@dsp_audio_ulaw_to_alaw = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dsp_audio_generate_law_tables() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  br label %2

2:                                                ; preds = %13, %0
  %3 = load i32, i32* %1, align 4
  %4 = icmp slt i32 %3, 256
  br i1 %4, label %5, label %16

5:                                                ; preds = %2
  %6 = load i32, i32* %1, align 4
  %7 = call i32 @bitrev8(i32 %6)
  %8 = call i32 @alaw2linear(i32 %7)
  %9 = load i32*, i32** @dsp_audio_alaw_to_s32, align 8
  %10 = load i32, i32* %1, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i32, i32* %9, i64 %11
  store i32 %8, i32* %12, align 4
  br label %13

13:                                               ; preds = %5
  %14 = load i32, i32* %1, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %1, align 4
  br label %2

16:                                               ; preds = %2
  store i32 0, i32* %1, align 4
  br label %17

17:                                               ; preds = %28, %16
  %18 = load i32, i32* %1, align 4
  %19 = icmp slt i32 %18, 256
  br i1 %19, label %20, label %31

20:                                               ; preds = %17
  %21 = load i32, i32* %1, align 4
  %22 = call i32 @bitrev8(i32 %21)
  %23 = call i32 @ulaw2linear(i32 %22)
  %24 = load i32*, i32** @dsp_audio_ulaw_to_s32, align 8
  %25 = load i32, i32* %1, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  store i32 %23, i32* %27, align 4
  br label %28

28:                                               ; preds = %20
  %29 = load i32, i32* %1, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %1, align 4
  br label %17

31:                                               ; preds = %17
  store i32 0, i32* %1, align 4
  br label %32

32:                                               ; preds = %56, %31
  %33 = load i32, i32* %1, align 4
  %34 = icmp slt i32 %33, 256
  br i1 %34, label %35, label %59

35:                                               ; preds = %32
  %36 = load i32*, i32** @dsp_audio_alaw_to_s32, align 8
  %37 = load i32, i32* %1, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @linear2ulaw(i32 %40)
  %42 = load i32*, i32** @dsp_audio_alaw_to_ulaw, align 8
  %43 = load i32, i32* %1, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  store i32 %41, i32* %45, align 4
  %46 = load i32*, i32** @dsp_audio_ulaw_to_s32, align 8
  %47 = load i32, i32* %1, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @linear2alaw(i32 %50)
  %52 = load i32*, i32** @dsp_audio_ulaw_to_alaw, align 8
  %53 = load i32, i32* %1, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  store i32 %51, i32* %55, align 4
  br label %56

56:                                               ; preds = %35
  %57 = load i32, i32* %1, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %1, align 4
  br label %32

59:                                               ; preds = %32
  ret void
}

declare dso_local i32 @alaw2linear(i32) #1

declare dso_local i32 @bitrev8(i32) #1

declare dso_local i32 @ulaw2linear(i32) #1

declare dso_local i32 @linear2ulaw(i32) #1

declare dso_local i32 @linear2alaw(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
