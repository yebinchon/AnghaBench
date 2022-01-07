; ModuleID = '/home/carl/AnghaBench/linux/drivers/isdn/mISDN/extr_dsp_audio.c_dsp_audio_generate_seven.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/isdn/mISDN/extr_dsp_audio.c_dsp_audio_generate_seven.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dsp_audio_alaw_to_s32 = common dso_local global i64* null, align 8
@dsp_options = common dso_local global i32 0, align 4
@DSP_OPT_ULAW = common dso_local global i32 0, align 4
@dsp_audio_ulaw_to_alaw = common dso_local global i64* null, align 8
@dsp_audio_law2seven = common dso_local global i32* null, align 8
@dsp_audio_alaw_to_ulaw = common dso_local global i64* null, align 8
@dsp_audio_seven2law = common dso_local global i64* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dsp_audio_generate_seven() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca [256 x i64], align 16
  store i32 0, i32* %1, align 4
  br label %6

6:                                                ; preds = %38, %0
  %7 = load i32, i32* %1, align 4
  %8 = icmp slt i32 %7, 256
  br i1 %8, label %9, label %41

9:                                                ; preds = %6
  store i32 0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  br label %10

10:                                               ; preds = %29, %9
  %11 = load i32, i32* %3, align 4
  %12 = icmp slt i32 %11, 256
  br i1 %12, label %13, label %32

13:                                               ; preds = %10
  %14 = load i64*, i64** @dsp_audio_alaw_to_s32, align 8
  %15 = load i32, i32* %3, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i64, i64* %14, i64 %16
  %18 = load i64, i64* %17, align 8
  %19 = load i64*, i64** @dsp_audio_alaw_to_s32, align 8
  %20 = load i32, i32* %1, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i64, i64* %19, i64 %21
  %23 = load i64, i64* %22, align 8
  %24 = icmp slt i64 %18, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %13
  %26 = load i32, i32* %2, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %2, align 4
  br label %28

28:                                               ; preds = %25, %13
  br label %29

29:                                               ; preds = %28
  %30 = load i32, i32* %3, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %3, align 4
  br label %10

32:                                               ; preds = %10
  %33 = load i32, i32* %1, align 4
  %34 = sext i32 %33 to i64
  %35 = load i32, i32* %2, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [256 x i64], [256 x i64]* %5, i64 0, i64 %36
  store i64 %34, i64* %37, align 8
  br label %38

38:                                               ; preds = %32
  %39 = load i32, i32* %1, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %1, align 4
  br label %6

41:                                               ; preds = %6
  store i32 0, i32* %1, align 4
  br label %42

42:                                               ; preds = %81, %41
  %43 = load i32, i32* %1, align 4
  %44 = icmp slt i32 %43, 256
  br i1 %44, label %45, label %84

45:                                               ; preds = %42
  %46 = load i32, i32* %1, align 4
  %47 = sext i32 %46 to i64
  store i64 %47, i64* %4, align 8
  %48 = load i32, i32* @dsp_options, align 4
  %49 = load i32, i32* @DSP_OPT_ULAW, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %45
  %53 = load i64*, i64** @dsp_audio_ulaw_to_alaw, align 8
  %54 = load i32, i32* %1, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i64, i64* %53, i64 %55
  %57 = load i64, i64* %56, align 8
  store i64 %57, i64* %4, align 8
  br label %58

58:                                               ; preds = %52, %45
  store i32 0, i32* %2, align 4
  br label %59

59:                                               ; preds = %71, %58
  %60 = load i32, i32* %2, align 4
  %61 = icmp slt i32 %60, 256
  br i1 %61, label %62, label %74

62:                                               ; preds = %59
  %63 = load i32, i32* %2, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds [256 x i64], [256 x i64]* %5, i64 0, i64 %64
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* %4, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %62
  br label %74

70:                                               ; preds = %62
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %2, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %2, align 4
  br label %59

74:                                               ; preds = %69, %59
  %75 = load i32, i32* %2, align 4
  %76 = ashr i32 %75, 1
  %77 = load i32*, i32** @dsp_audio_law2seven, align 8
  %78 = load i32, i32* %1, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  store i32 %76, i32* %80, align 4
  br label %81

81:                                               ; preds = %74
  %82 = load i32, i32* %1, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %1, align 4
  br label %42

84:                                               ; preds = %42
  store i32 0, i32* %1, align 4
  br label %85

85:                                               ; preds = %109, %84
  %86 = load i32, i32* %1, align 4
  %87 = icmp slt i32 %86, 128
  br i1 %87, label %88, label %112

88:                                               ; preds = %85
  %89 = load i32, i32* %1, align 4
  %90 = shl i32 %89, 1
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds [256 x i64], [256 x i64]* %5, i64 0, i64 %91
  %93 = load i64, i64* %92, align 8
  store i64 %93, i64* %4, align 8
  %94 = load i32, i32* @dsp_options, align 4
  %95 = load i32, i32* @DSP_OPT_ULAW, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %88
  %99 = load i64*, i64** @dsp_audio_alaw_to_ulaw, align 8
  %100 = load i64, i64* %4, align 8
  %101 = getelementptr inbounds i64, i64* %99, i64 %100
  %102 = load i64, i64* %101, align 8
  store i64 %102, i64* %4, align 8
  br label %103

103:                                              ; preds = %98, %88
  %104 = load i64, i64* %4, align 8
  %105 = load i64*, i64** @dsp_audio_seven2law, align 8
  %106 = load i32, i32* %1, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i64, i64* %105, i64 %107
  store i64 %104, i64* %108, align 8
  br label %109

109:                                              ; preds = %103
  %110 = load i32, i32* %1, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %1, align 4
  br label %85

112:                                              ; preds = %85
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
