; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_hw_sequencer.c_dcn10_set_cursor_sdr_white_level.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_hw_sequencer.c_dcn10_set_cursor_sdr_white_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pipe_ctx = type { %struct.TYPE_9__, %struct.TYPE_7__* }
%struct.TYPE_9__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 (%struct.TYPE_10__*, %struct.dpp_cursor_attributes*)* }
%struct.dpp_cursor_attributes = type { i32, i64, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.fixed31_32 = type { i32 }
%struct.custom_float_format = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pipe_ctx*)* @dcn10_set_cursor_sdr_white_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dcn10_set_cursor_sdr_white_level(%struct.pipe_ctx* %0) #0 {
  %2 = alloca %struct.pipe_ctx*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.fixed31_32, align 4
  %5 = alloca %struct.dpp_cursor_attributes, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.custom_float_format, align 4
  %8 = alloca %struct.fixed31_32, align 4
  store %struct.pipe_ctx* %0, %struct.pipe_ctx** %2, align 8
  %9 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %10 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %9, i32 0, i32 1
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %3, align 4
  %15 = bitcast %struct.dpp_cursor_attributes* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %15, i8 0, i64 24, i1 false)
  store i32 15360, i32* %6, align 4
  %16 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %17 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load i32 (%struct.TYPE_10__*, %struct.dpp_cursor_attributes*)*, i32 (%struct.TYPE_10__*, %struct.dpp_cursor_attributes*)** %22, align 8
  %24 = icmp ne i32 (%struct.TYPE_10__*, %struct.dpp_cursor_attributes*)* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %1
  br label %58

26:                                               ; preds = %1
  %27 = getelementptr inbounds %struct.custom_float_format, %struct.custom_float_format* %7, i32 0, i32 0
  store i32 5, i32* %27, align 4
  %28 = getelementptr inbounds %struct.custom_float_format, %struct.custom_float_format* %7, i32 0, i32 1
  store i32 10, i32* %28, align 4
  %29 = getelementptr inbounds %struct.custom_float_format, %struct.custom_float_format* %7, i32 0, i32 2
  store i32 1, i32* %29, align 4
  %30 = load i32, i32* %3, align 4
  %31 = icmp sgt i32 %30, 80
  br i1 %31, label %32, label %41

32:                                               ; preds = %26
  %33 = load i32, i32* %3, align 4
  %34 = call i32 @dc_fixpt_from_fraction(i32 %33, i32 80)
  %35 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %8, i32 0, i32 0
  store i32 %34, i32* %35, align 4
  %36 = bitcast %struct.fixed31_32* %4 to i8*
  %37 = bitcast %struct.fixed31_32* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %36, i8* align 4 %37, i64 4, i1 false)
  %38 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %4, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @convert_to_custom_float_format(i32 %39, %struct.custom_float_format* %7, i32* %6)
  br label %41

41:                                               ; preds = %32, %26
  %42 = load i32, i32* %6, align 4
  %43 = getelementptr inbounds %struct.dpp_cursor_attributes, %struct.dpp_cursor_attributes* %5, i32 0, i32 0
  store i32 %42, i32* %43, align 8
  %44 = getelementptr inbounds %struct.dpp_cursor_attributes, %struct.dpp_cursor_attributes* %5, i32 0, i32 1
  store i64 0, i64* %44, align 8
  %45 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %46 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = load i32 (%struct.TYPE_10__*, %struct.dpp_cursor_attributes*)*, i32 (%struct.TYPE_10__*, %struct.dpp_cursor_attributes*)** %51, align 8
  %53 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %54 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %55, align 8
  %57 = call i32 %52(%struct.TYPE_10__* %56, %struct.dpp_cursor_attributes* %5)
  br label %58

58:                                               ; preds = %41, %25
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @dc_fixpt_from_fraction(i32, i32) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @convert_to_custom_float_format(i32, %struct.custom_float_format*, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
