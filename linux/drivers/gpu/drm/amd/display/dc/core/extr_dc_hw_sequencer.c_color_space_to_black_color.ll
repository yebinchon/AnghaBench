; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_hw_sequencer.c_color_space_to_black_color.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_hw_sequencer.c_color_space_to_black_color.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tg_color = type { i32 }
%struct.dc = type { i32 }

@black_color_format = common dso_local global %struct.tg_color* null, align 8
@BLACK_COLOR_FORMAT_YUV_CV = common dso_local global i64 0, align 8
@BLACK_COLOR_FORMAT_RGB_LIMITED = common dso_local global i64 0, align 8
@BLACK_COLOR_FORMAT_RGB_FULLRANGE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @color_space_to_black_color(%struct.dc* %0, i32 %1, %struct.tg_color* %2) #0 {
  %4 = alloca %struct.dc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.tg_color*, align 8
  store %struct.dc* %0, %struct.dc** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.tg_color* %2, %struct.tg_color** %6, align 8
  %7 = load i32, i32* %5, align 4
  switch i32 %7, label %29 [
    i32 132, label %8
    i32 130, label %8
    i32 129, label %8
    i32 131, label %8
    i32 128, label %8
    i32 146, label %8
    i32 137, label %15
    i32 136, label %22
    i32 138, label %22
    i32 135, label %22
    i32 139, label %22
    i32 133, label %22
    i32 134, label %22
    i32 148, label %22
    i32 147, label %22
    i32 145, label %22
    i32 142, label %22
    i32 141, label %22
    i32 140, label %22
    i32 144, label %22
    i32 143, label %22
  ]

8:                                                ; preds = %3, %3, %3, %3, %3, %3
  %9 = load %struct.tg_color*, %struct.tg_color** %6, align 8
  %10 = load %struct.tg_color*, %struct.tg_color** @black_color_format, align 8
  %11 = load i64, i64* @BLACK_COLOR_FORMAT_YUV_CV, align 8
  %12 = getelementptr inbounds %struct.tg_color, %struct.tg_color* %10, i64 %11
  %13 = bitcast %struct.tg_color* %9 to i8*
  %14 = bitcast %struct.tg_color* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %13, i8* align 4 %14, i64 4, i1 false)
  br label %29

15:                                               ; preds = %3
  %16 = load %struct.tg_color*, %struct.tg_color** %6, align 8
  %17 = load %struct.tg_color*, %struct.tg_color** @black_color_format, align 8
  %18 = load i64, i64* @BLACK_COLOR_FORMAT_RGB_LIMITED, align 8
  %19 = getelementptr inbounds %struct.tg_color, %struct.tg_color* %17, i64 %18
  %20 = bitcast %struct.tg_color* %16 to i8*
  %21 = bitcast %struct.tg_color* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %20, i8* align 4 %21, i64 4, i1 false)
  br label %29

22:                                               ; preds = %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3
  %23 = load %struct.tg_color*, %struct.tg_color** %6, align 8
  %24 = load %struct.tg_color*, %struct.tg_color** @black_color_format, align 8
  %25 = load i64, i64* @BLACK_COLOR_FORMAT_RGB_FULLRANGE, align 8
  %26 = getelementptr inbounds %struct.tg_color, %struct.tg_color* %24, i64 %25
  %27 = bitcast %struct.tg_color* %23 to i8*
  %28 = bitcast %struct.tg_color* %26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %27, i8* align 4 %28, i64 4, i1 false)
  br label %29

29:                                               ; preds = %3, %22, %15, %8
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
