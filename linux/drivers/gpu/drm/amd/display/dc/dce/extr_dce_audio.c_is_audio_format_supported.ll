; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_audio.c_is_audio_format_supported.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_audio.c_is_audio_format_supported.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audio_info = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.audio_info*, i32, i64*)* @is_audio_format_supported to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_audio_format_supported(%struct.audio_info* %0, i32 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.audio_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.audio_info* %0, %struct.audio_info** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64* %2, i64** %7, align 8
  store i64 0, i64* %9, align 8
  store i32 0, i32* %10, align 4
  %11 = load %struct.audio_info*, %struct.audio_info** %5, align 8
  %12 = icmp eq %struct.audio_info* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %3
  %14 = load i32, i32* %10, align 4
  store i32 %14, i32* %4, align 4
  br label %72

15:                                               ; preds = %3
  store i64 0, i64* %8, align 8
  br label %16

16:                                               ; preds = %58, %15
  %17 = load i64, i64* %8, align 8
  %18 = load %struct.audio_info*, %struct.audio_info** %5, align 8
  %19 = getelementptr inbounds %struct.audio_info, %struct.audio_info* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ult i64 %17, %20
  br i1 %21, label %22, label %61

22:                                               ; preds = %16
  %23 = load %struct.audio_info*, %struct.audio_info** %5, align 8
  %24 = getelementptr inbounds %struct.audio_info, %struct.audio_info* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = load i64, i64* %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* %6, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %57

32:                                               ; preds = %22
  %33 = load i32, i32* %10, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %54

35:                                               ; preds = %32
  %36 = load %struct.audio_info*, %struct.audio_info** %5, align 8
  %37 = getelementptr inbounds %struct.audio_info, %struct.audio_info* %36, i32 0, i32 1
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = load i64, i64* %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.audio_info*, %struct.audio_info** %5, align 8
  %44 = getelementptr inbounds %struct.audio_info, %struct.audio_info* %43, i32 0, i32 1
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = load i64, i64* %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp sgt i64 %42, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %35
  %52 = load i64, i64* %8, align 8
  store i64 %52, i64* %9, align 8
  br label %53

53:                                               ; preds = %51, %35
  br label %56

54:                                               ; preds = %32
  store i32 1, i32* %10, align 4
  %55 = load i64, i64* %8, align 8
  store i64 %55, i64* %9, align 8
  br label %56

56:                                               ; preds = %54, %53
  br label %57

57:                                               ; preds = %56, %22
  br label %58

58:                                               ; preds = %57
  %59 = load i64, i64* %8, align 8
  %60 = add i64 %59, 1
  store i64 %60, i64* %8, align 8
  br label %16

61:                                               ; preds = %16
  %62 = load i32, i32* %10, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %61
  %65 = load i64*, i64** %7, align 8
  %66 = icmp ne i64* %65, null
  br i1 %66, label %67, label %70

67:                                               ; preds = %64
  %68 = load i64, i64* %9, align 8
  %69 = load i64*, i64** %7, align 8
  store i64 %68, i64* %69, align 8
  br label %70

70:                                               ; preds = %67, %64, %61
  %71 = load i32, i32* %10, align 4
  store i32 %71, i32* %4, align 4
  br label %72

72:                                               ; preds = %70, %13
  %73 = load i32, i32* %4, align 4
  ret i32 %73
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
