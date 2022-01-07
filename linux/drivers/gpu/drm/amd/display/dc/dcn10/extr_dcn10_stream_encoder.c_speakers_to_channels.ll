; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_stream_encoder.c_speakers_to_channels.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_stream_encoder.c_speakers_to_channels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.audio_cea_channels = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i64, i64, i32, i32, i32, i32 }
%struct.audio_speaker_flags = type { i64, i64, i64, i64, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%union.audio_cea_channels*, %struct.audio_speaker_flags*)* @speakers_to_channels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @speakers_to_channels(%union.audio_cea_channels* noalias sret %0, %struct.audio_speaker_flags* byval(%struct.audio_speaker_flags) align 8 %1) #0 {
  %3 = bitcast %union.audio_cea_channels* %0 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %3, i8 0, i64 48, i1 false)
  %4 = getelementptr inbounds %struct.audio_speaker_flags, %struct.audio_speaker_flags* %1, i32 0, i32 6
  %5 = load i32, i32* %4, align 8
  %6 = bitcast %union.audio_cea_channels* %0 to %struct.TYPE_2__*
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 7
  store i32 %5, i32* %7, align 4
  %8 = getelementptr inbounds %struct.audio_speaker_flags, %struct.audio_speaker_flags* %1, i32 0, i32 6
  %9 = load i32, i32* %8, align 8
  %10 = bitcast %union.audio_cea_channels* %0 to %struct.TYPE_2__*
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 6
  store i32 %9, i32* %11, align 8
  %12 = getelementptr inbounds %struct.audio_speaker_flags, %struct.audio_speaker_flags* %1, i32 0, i32 5
  %13 = load i32, i32* %12, align 4
  %14 = bitcast %union.audio_cea_channels* %0 to %struct.TYPE_2__*
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 5
  store i32 %13, i32* %15, align 4
  %16 = getelementptr inbounds %struct.audio_speaker_flags, %struct.audio_speaker_flags* %1, i32 0, i32 4
  %17 = load i32, i32* %16, align 8
  %18 = bitcast %union.audio_cea_channels* %0 to %struct.TYPE_2__*
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 4
  store i32 %17, i32* %19, align 8
  %20 = getelementptr inbounds %struct.audio_speaker_flags, %struct.audio_speaker_flags* %1, i32 0, i32 3
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %36

23:                                               ; preds = %2
  %24 = getelementptr inbounds %struct.audio_speaker_flags, %struct.audio_speaker_flags* %1, i32 0, i32 3
  %25 = load i64, i64* %24, align 8
  %26 = bitcast %union.audio_cea_channels* %0 to %struct.TYPE_2__*
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 2
  store i64 %25, i64* %27, align 8
  %28 = getelementptr inbounds %struct.audio_speaker_flags, %struct.audio_speaker_flags* %1, i32 0, i32 3
  %29 = load i64, i64* %28, align 8
  %30 = bitcast %union.audio_cea_channels* %0 to %struct.TYPE_2__*
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 3
  store i64 %29, i64* %31, align 8
  %32 = getelementptr inbounds %struct.audio_speaker_flags, %struct.audio_speaker_flags* %1, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = bitcast %union.audio_cea_channels* %0 to %struct.TYPE_2__*
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  store i64 %33, i64* %35, align 8
  br label %41

36:                                               ; preds = %2
  %37 = getelementptr inbounds %struct.audio_speaker_flags, %struct.audio_speaker_flags* %1, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = bitcast %union.audio_cea_channels* %0 to %struct.TYPE_2__*
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 2
  store i64 %38, i64* %40, align 8
  br label %41

41:                                               ; preds = %36, %23
  %42 = getelementptr inbounds %struct.audio_speaker_flags, %struct.audio_speaker_flags* %1, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %54

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.audio_speaker_flags, %struct.audio_speaker_flags* %1, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = bitcast %union.audio_cea_channels* %0 to %struct.TYPE_2__*
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  store i64 %47, i64* %49, align 8
  %50 = getelementptr inbounds %struct.audio_speaker_flags, %struct.audio_speaker_flags* %1, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = bitcast %union.audio_cea_channels* %0 to %struct.TYPE_2__*
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  store i64 %51, i64* %53, align 8
  br label %63

54:                                               ; preds = %41
  %55 = getelementptr inbounds %struct.audio_speaker_flags, %struct.audio_speaker_flags* %1, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = bitcast %union.audio_cea_channels* %0 to %struct.TYPE_2__*
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  store i64 %56, i64* %58, align 8
  %59 = getelementptr inbounds %struct.audio_speaker_flags, %struct.audio_speaker_flags* %1, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = bitcast %union.audio_cea_channels* %0 to %struct.TYPE_2__*
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  store i64 %60, i64* %62, align 8
  br label %63

63:                                               ; preds = %54, %45
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
