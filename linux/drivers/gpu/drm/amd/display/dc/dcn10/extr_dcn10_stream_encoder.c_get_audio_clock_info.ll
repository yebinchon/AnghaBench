; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_stream_encoder.c_get_audio_clock_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_stream_encoder.c_get_audio_clock_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audio_clock_info = type { i32, i32, i32, i32, i32, i32, i32 }

@audio_clock_info_table_48bpc = common dso_local global %struct.audio_clock_info* null, align 8
@audio_clock_info_table_36bpc = common dso_local global %struct.audio_clock_info* null, align 8
@audio_clock_info_table = common dso_local global %struct.audio_clock_info* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @get_audio_clock_info(i32 %0, i32 %1, i32 %2, %struct.audio_clock_info* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.audio_clock_info*, align 8
  %9 = alloca %struct.audio_clock_info*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.audio_clock_info* %3, %struct.audio_clock_info** %8, align 8
  %13 = load i32, i32* %6, align 4
  %14 = sdiv i32 %13, 100
  store i32 %14, i32* %11, align 4
  %15 = load i32, i32* %5, align 4
  switch i32 %15, label %24 [
    i32 128, label %16
    i32 129, label %20
  ]

16:                                               ; preds = %4
  %17 = load %struct.audio_clock_info*, %struct.audio_clock_info** @audio_clock_info_table_48bpc, align 8
  store %struct.audio_clock_info* %17, %struct.audio_clock_info** %9, align 8
  %18 = load %struct.audio_clock_info*, %struct.audio_clock_info** @audio_clock_info_table_48bpc, align 8
  %19 = call i32 @ARRAY_SIZE(%struct.audio_clock_info* %18)
  store i32 %19, i32* %12, align 4
  br label %28

20:                                               ; preds = %4
  %21 = load %struct.audio_clock_info*, %struct.audio_clock_info** @audio_clock_info_table_36bpc, align 8
  store %struct.audio_clock_info* %21, %struct.audio_clock_info** %9, align 8
  %22 = load %struct.audio_clock_info*, %struct.audio_clock_info** @audio_clock_info_table_36bpc, align 8
  %23 = call i32 @ARRAY_SIZE(%struct.audio_clock_info* %22)
  store i32 %23, i32* %12, align 4
  br label %28

24:                                               ; preds = %4
  %25 = load %struct.audio_clock_info*, %struct.audio_clock_info** @audio_clock_info_table, align 8
  store %struct.audio_clock_info* %25, %struct.audio_clock_info** %9, align 8
  %26 = load %struct.audio_clock_info*, %struct.audio_clock_info** @audio_clock_info_table, align 8
  %27 = call i32 @ARRAY_SIZE(%struct.audio_clock_info* %26)
  store i32 %27, i32* %12, align 4
  br label %28

28:                                               ; preds = %24, %20, %16
  %29 = load %struct.audio_clock_info*, %struct.audio_clock_info** %9, align 8
  %30 = icmp ne %struct.audio_clock_info* %29, null
  br i1 %30, label %31, label %69

31:                                               ; preds = %28
  store i32 0, i32* %10, align 4
  br label %32

32:                                               ; preds = %65, %31
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* %12, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %68

36:                                               ; preds = %32
  %37 = load %struct.audio_clock_info*, %struct.audio_clock_info** %9, align 8
  %38 = load i32, i32* %10, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.audio_clock_info, %struct.audio_clock_info* %37, i64 %39
  %41 = getelementptr inbounds %struct.audio_clock_info, %struct.audio_clock_info* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %11, align 4
  %44 = icmp sgt i32 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %36
  br label %68

46:                                               ; preds = %36
  %47 = load %struct.audio_clock_info*, %struct.audio_clock_info** %9, align 8
  %48 = load i32, i32* %10, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.audio_clock_info, %struct.audio_clock_info* %47, i64 %49
  %51 = getelementptr inbounds %struct.audio_clock_info, %struct.audio_clock_info* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %11, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %63

55:                                               ; preds = %46
  %56 = load %struct.audio_clock_info*, %struct.audio_clock_info** %8, align 8
  %57 = load %struct.audio_clock_info*, %struct.audio_clock_info** %9, align 8
  %58 = load i32, i32* %10, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.audio_clock_info, %struct.audio_clock_info* %57, i64 %59
  %61 = bitcast %struct.audio_clock_info* %56 to i8*
  %62 = bitcast %struct.audio_clock_info* %60 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %61, i8* align 4 %62, i64 28, i1 false)
  br label %97

63:                                               ; preds = %46
  br label %64

64:                                               ; preds = %63
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %10, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %10, align 4
  br label %32

68:                                               ; preds = %45, %32
  br label %69

69:                                               ; preds = %68, %28
  %70 = load i32, i32* %7, align 4
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %69
  %73 = load i32, i32* %6, align 4
  store i32 %73, i32* %7, align 4
  br label %74

74:                                               ; preds = %72, %69
  %75 = load i32, i32* %7, align 4
  %76 = sdiv i32 %75, 100
  %77 = load %struct.audio_clock_info*, %struct.audio_clock_info** %8, align 8
  %78 = getelementptr inbounds %struct.audio_clock_info, %struct.audio_clock_info* %77, i32 0, i32 0
  store i32 %76, i32* %78, align 4
  %79 = load i32, i32* %7, align 4
  %80 = sdiv i32 %79, 10
  %81 = load %struct.audio_clock_info*, %struct.audio_clock_info** %8, align 8
  %82 = getelementptr inbounds %struct.audio_clock_info, %struct.audio_clock_info* %81, i32 0, i32 1
  store i32 %80, i32* %82, align 4
  %83 = load i32, i32* %7, align 4
  %84 = sdiv i32 %83, 10
  %85 = load %struct.audio_clock_info*, %struct.audio_clock_info** %8, align 8
  %86 = getelementptr inbounds %struct.audio_clock_info, %struct.audio_clock_info* %85, i32 0, i32 2
  store i32 %84, i32* %86, align 4
  %87 = load i32, i32* %7, align 4
  %88 = sdiv i32 %87, 10
  %89 = load %struct.audio_clock_info*, %struct.audio_clock_info** %8, align 8
  %90 = getelementptr inbounds %struct.audio_clock_info, %struct.audio_clock_info* %89, i32 0, i32 3
  store i32 %88, i32* %90, align 4
  %91 = load %struct.audio_clock_info*, %struct.audio_clock_info** %8, align 8
  %92 = getelementptr inbounds %struct.audio_clock_info, %struct.audio_clock_info* %91, i32 0, i32 4
  store i32 4096, i32* %92, align 4
  %93 = load %struct.audio_clock_info*, %struct.audio_clock_info** %8, align 8
  %94 = getelementptr inbounds %struct.audio_clock_info, %struct.audio_clock_info* %93, i32 0, i32 5
  store i32 6272, i32* %94, align 4
  %95 = load %struct.audio_clock_info*, %struct.audio_clock_info** %8, align 8
  %96 = getelementptr inbounds %struct.audio_clock_info, %struct.audio_clock_info* %95, i32 0, i32 6
  store i32 6144, i32* %96, align 4
  br label %97

97:                                               ; preds = %74, %55
  ret void
}

declare dso_local i32 @ARRAY_SIZE(%struct.audio_clock_info*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
