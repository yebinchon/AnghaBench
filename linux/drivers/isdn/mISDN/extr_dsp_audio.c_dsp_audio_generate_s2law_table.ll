; ModuleID = '/home/carl/AnghaBench/linux/drivers/isdn/mISDN/extr_dsp_audio.c_dsp_audio_generate_s2law_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/isdn/mISDN/extr_dsp_audio.c_dsp_audio_generate_s2law_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dsp_options = common dso_local global i32 0, align 4
@DSP_OPT_ULAW = common dso_local global i32 0, align 4
@dsp_audio_s16_to_law = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dsp_audio_generate_s2law_table() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @dsp_options, align 4
  %3 = load i32, i32* @DSP_OPT_ULAW, align 4
  %4 = and i32 %2, %3
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %23

6:                                                ; preds = %0
  store i32 -32768, i32* %1, align 4
  br label %7

7:                                                ; preds = %19, %6
  %8 = load i32, i32* %1, align 4
  %9 = icmp slt i32 %8, 32768
  br i1 %9, label %10, label %22

10:                                               ; preds = %7
  %11 = load i32, i32* %1, align 4
  %12 = call i32 @linear2ulaw(i32 %11)
  %13 = call i32 @bitrev8(i32 %12)
  %14 = load i32*, i32** @dsp_audio_s16_to_law, align 8
  %15 = load i32, i32* %1, align 4
  %16 = and i32 %15, 65535
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %14, i64 %17
  store i32 %13, i32* %18, align 4
  br label %19

19:                                               ; preds = %10
  %20 = load i32, i32* %1, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %1, align 4
  br label %7

22:                                               ; preds = %7
  br label %40

23:                                               ; preds = %0
  store i32 -32768, i32* %1, align 4
  br label %24

24:                                               ; preds = %36, %23
  %25 = load i32, i32* %1, align 4
  %26 = icmp slt i32 %25, 32768
  br i1 %26, label %27, label %39

27:                                               ; preds = %24
  %28 = load i32, i32* %1, align 4
  %29 = call i32 @linear2alaw(i32 %28)
  %30 = call i32 @bitrev8(i32 %29)
  %31 = load i32*, i32** @dsp_audio_s16_to_law, align 8
  %32 = load i32, i32* %1, align 4
  %33 = and i32 %32, 65535
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %31, i64 %34
  store i32 %30, i32* %35, align 4
  br label %36

36:                                               ; preds = %27
  %37 = load i32, i32* %1, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %1, align 4
  br label %24

39:                                               ; preds = %24
  br label %40

40:                                               ; preds = %39, %22
  ret void
}

declare dso_local i32 @bitrev8(i32) #1

declare dso_local i32 @linear2ulaw(i32) #1

declare dso_local i32 @linear2alaw(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
