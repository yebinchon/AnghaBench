; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/savage/extr_savage_state.c_savage_dispatch_draw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/savage/extr_savage_state.c_savage_dispatch_draw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32 (%struct.TYPE_19__*, %struct.drm_clip_rect*)* }
%struct.TYPE_20__ = type { %struct.TYPE_18__, %struct.TYPE_17__ }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_17__ = type { i32 }
%struct.drm_buf = type { i32 }
%struct.drm_clip_rect = type { i32 }

@.str = private unnamed_addr constant [46 x i8] c"IMPLEMENTATION ERROR: non-drawing-command %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_19__*, %struct.TYPE_20__*, %struct.TYPE_20__*, %struct.drm_buf*, i32*, i32, i32, i32, %struct.drm_clip_rect*)* @savage_dispatch_draw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @savage_dispatch_draw(%struct.TYPE_19__* %0, %struct.TYPE_20__* %1, %struct.TYPE_20__* %2, %struct.drm_buf* %3, i32* %4, i32 %5, i32 %6, i32 %7, %struct.drm_clip_rect* %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_19__*, align 8
  %12 = alloca %struct.TYPE_20__*, align 8
  %13 = alloca %struct.TYPE_20__*, align 8
  %14 = alloca %struct.drm_buf*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.drm_clip_rect*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.TYPE_20__*, align 8
  %24 = alloca %struct.TYPE_20__, align 4
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %11, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %12, align 8
  store %struct.TYPE_20__* %2, %struct.TYPE_20__** %13, align 8
  store %struct.drm_buf* %3, %struct.drm_buf** %14, align 8
  store i32* %4, i32** %15, align 8
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store %struct.drm_clip_rect* %8, %struct.drm_clip_rect** %19, align 8
  store i32 0, i32* %20, align 4
  br label %25

25:                                               ; preds = %109, %9
  %26 = load i32, i32* %20, align 4
  %27 = load i32, i32* %18, align 4
  %28 = icmp ult i32 %26, %27
  br i1 %28, label %29, label %112

29:                                               ; preds = %25
  %30 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %31 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %30, i32 0, i32 0
  %32 = load i32 (%struct.TYPE_19__*, %struct.drm_clip_rect*)*, i32 (%struct.TYPE_19__*, %struct.drm_clip_rect*)** %31, align 8
  %33 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %34 = load %struct.drm_clip_rect*, %struct.drm_clip_rect** %19, align 8
  %35 = load i32, i32* %20, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds %struct.drm_clip_rect, %struct.drm_clip_rect* %34, i64 %36
  %38 = call i32 %32(%struct.TYPE_19__* %33, %struct.drm_clip_rect* %37)
  %39 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  store %struct.TYPE_20__* %39, %struct.TYPE_20__** %23, align 8
  br label %40

40:                                               ; preds = %107, %29
  %41 = load %struct.TYPE_20__*, %struct.TYPE_20__** %23, align 8
  %42 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %43 = icmp ult %struct.TYPE_20__* %41, %42
  br i1 %43, label %44, label %108

44:                                               ; preds = %40
  %45 = load %struct.TYPE_20__*, %struct.TYPE_20__** %23, align 8
  %46 = bitcast %struct.TYPE_20__* %24 to i8*
  %47 = bitcast %struct.TYPE_20__* %45 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %46, i8* align 4 %47, i64 8, i1 false)
  %48 = load %struct.TYPE_20__*, %struct.TYPE_20__** %23, align 8
  %49 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %48, i32 1
  store %struct.TYPE_20__* %49, %struct.TYPE_20__** %23, align 8
  %50 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %24, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  switch i32 %52, label %95 [
    i32 130, label %53
    i32 128, label %57
    i32 131, label %63
    i32 129, label %78
  ]

53:                                               ; preds = %44
  %54 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %55 = load %struct.drm_buf*, %struct.drm_buf** %14, align 8
  %56 = call i32 @savage_dispatch_dma_prim(%struct.TYPE_19__* %54, %struct.TYPE_20__* %24, %struct.drm_buf* %55)
  store i32 %56, i32* %22, align 4
  br label %102

57:                                               ; preds = %44
  %58 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %59 = load i32*, i32** %15, align 8
  %60 = load i32, i32* %16, align 4
  %61 = load i32, i32* %17, align 4
  %62 = call i32 @savage_dispatch_vb_prim(%struct.TYPE_19__* %58, %struct.TYPE_20__* %24, i32* %59, i32 %60, i32 %61)
  store i32 %62, i32* %22, align 4
  br label %102

63:                                               ; preds = %44
  %64 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %24, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = add nsw i32 %66, 3
  %68 = sdiv i32 %67, 4
  store i32 %68, i32* %21, align 4
  %69 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %70 = load %struct.TYPE_20__*, %struct.TYPE_20__** %23, align 8
  %71 = bitcast %struct.TYPE_20__* %70 to i32*
  %72 = load %struct.drm_buf*, %struct.drm_buf** %14, align 8
  %73 = call i32 @savage_dispatch_dma_idx(%struct.TYPE_19__* %69, %struct.TYPE_20__* %24, i32* %71, %struct.drm_buf* %72)
  store i32 %73, i32* %22, align 4
  %74 = load i32, i32* %21, align 4
  %75 = load %struct.TYPE_20__*, %struct.TYPE_20__** %23, align 8
  %76 = zext i32 %74 to i64
  %77 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %75, i64 %76
  store %struct.TYPE_20__* %77, %struct.TYPE_20__** %23, align 8
  br label %102

78:                                               ; preds = %44
  %79 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %24, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = add nsw i32 %81, 3
  %83 = sdiv i32 %82, 4
  store i32 %83, i32* %21, align 4
  %84 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %85 = load %struct.TYPE_20__*, %struct.TYPE_20__** %23, align 8
  %86 = bitcast %struct.TYPE_20__* %85 to i32*
  %87 = load i32*, i32** %15, align 8
  %88 = load i32, i32* %16, align 4
  %89 = load i32, i32* %17, align 4
  %90 = call i32 @savage_dispatch_vb_idx(%struct.TYPE_19__* %84, %struct.TYPE_20__* %24, i32* %86, i32* %87, i32 %88, i32 %89)
  store i32 %90, i32* %22, align 4
  %91 = load i32, i32* %21, align 4
  %92 = load %struct.TYPE_20__*, %struct.TYPE_20__** %23, align 8
  %93 = zext i32 %91 to i64
  %94 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %92, i64 %93
  store %struct.TYPE_20__* %94, %struct.TYPE_20__** %23, align 8
  br label %102

95:                                               ; preds = %44
  %96 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %24, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %98)
  %100 = load i32, i32* @EINVAL, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %10, align 4
  br label %113

102:                                              ; preds = %78, %63, %57, %53
  %103 = load i32, i32* %22, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %102
  %106 = load i32, i32* %22, align 4
  store i32 %106, i32* %10, align 4
  br label %113

107:                                              ; preds = %102
  br label %40

108:                                              ; preds = %40
  br label %109

109:                                              ; preds = %108
  %110 = load i32, i32* %20, align 4
  %111 = add i32 %110, 1
  store i32 %111, i32* %20, align 4
  br label %25

112:                                              ; preds = %25
  store i32 0, i32* %10, align 4
  br label %113

113:                                              ; preds = %112, %105, %95
  %114 = load i32, i32* %10, align 4
  ret i32 %114
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @savage_dispatch_dma_prim(%struct.TYPE_19__*, %struct.TYPE_20__*, %struct.drm_buf*) #2

declare dso_local i32 @savage_dispatch_vb_prim(%struct.TYPE_19__*, %struct.TYPE_20__*, i32*, i32, i32) #2

declare dso_local i32 @savage_dispatch_dma_idx(%struct.TYPE_19__*, %struct.TYPE_20__*, i32*, %struct.drm_buf*) #2

declare dso_local i32 @savage_dispatch_vb_idx(%struct.TYPE_19__*, %struct.TYPE_20__*, i32*, i32*, i32, i32) #2

declare dso_local i32 @DRM_ERROR(i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
