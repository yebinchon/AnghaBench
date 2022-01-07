; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/mga/extr_mga_state.c_mga_dma_dispatch_vertex.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/mga/extr_mga_state.c_mga_dma_dispatch_vertex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32*, i32 }
%struct.drm_buf = type { i64, i64, i32, i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i64 }

@DMA_LOCALS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"buf=%d used=%d\0A\00", align 1
@MGA_DMAPAD = common dso_local global i32 0, align 4
@MGA_SECADDRESS = common dso_local global i32 0, align 4
@MGA_DMA_VERTEX = common dso_local global i32 0, align 4
@MGA_SECEND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_device*, %struct.drm_buf*)* @mga_dma_dispatch_vertex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mga_dma_dispatch_vertex(%struct.drm_device* %0, %struct.drm_buf* %1) #0 {
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.drm_buf*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  store %struct.drm_buf* %1, %struct.drm_buf** %4, align 8
  %11 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %12 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %11, i32 0, i32 0
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  store %struct.TYPE_8__* %13, %struct.TYPE_8__** %5, align 8
  %14 = load %struct.drm_buf*, %struct.drm_buf** %4, align 8
  %15 = getelementptr inbounds %struct.drm_buf, %struct.drm_buf* %14, i32 0, i32 4
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  store %struct.TYPE_9__* %16, %struct.TYPE_9__** %6, align 8
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  store %struct.TYPE_7__* %19, %struct.TYPE_7__** %7, align 8
  %20 = load %struct.drm_buf*, %struct.drm_buf** %4, align 8
  %21 = getelementptr inbounds %struct.drm_buf, %struct.drm_buf* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %8, align 4
  %23 = load %struct.drm_buf*, %struct.drm_buf** %4, align 8
  %24 = getelementptr inbounds %struct.drm_buf, %struct.drm_buf* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %27 = load i32, i32* @DMA_LOCALS, align 4
  %28 = load %struct.drm_buf*, %struct.drm_buf** %4, align 8
  %29 = getelementptr inbounds %struct.drm_buf, %struct.drm_buf* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.drm_buf*, %struct.drm_buf** %4, align 8
  %32 = getelementptr inbounds %struct.drm_buf, %struct.drm_buf* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %30, i64 %33)
  %35 = load %struct.drm_buf*, %struct.drm_buf** %4, align 8
  %36 = getelementptr inbounds %struct.drm_buf, %struct.drm_buf* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %88

39:                                               ; preds = %2
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  store i32 1, i32* %41, align 8
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @MGA_EMIT_STATE(%struct.TYPE_8__* %42, i32 %45)
  br label %47

47:                                               ; preds = %80, %39
  %48 = load i32, i32* %10, align 4
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp slt i32 %48, %51
  br i1 %52, label %53, label %62

53:                                               ; preds = %47
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %10, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = call i32 @mga_emit_clip_rect(%struct.TYPE_8__* %54, i32* %60)
  br label %62

62:                                               ; preds = %53, %47
  %63 = call i32 @BEGIN_DMA(i32 1)
  %64 = load i32, i32* @MGA_DMAPAD, align 4
  %65 = load i32, i32* @MGA_DMAPAD, align 4
  %66 = load i32, i32* @MGA_SECADDRESS, align 4
  %67 = load i32, i32* %8, align 4
  %68 = load i32, i32* @MGA_DMA_VERTEX, align 4
  %69 = or i32 %67, %68
  %70 = load i32, i32* @MGA_SECEND, align 4
  %71 = load i32, i32* %8, align 4
  %72 = load i32, i32* %9, align 4
  %73 = add nsw i32 %71, %72
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = or i32 %73, %76
  %78 = call i32 @DMA_BLOCK(i32 %64, i32 0, i32 %65, i32 0, i32 %66, i32 %69, i32 %70, i32 %77)
  %79 = call i32 (...) @ADVANCE_DMA()
  br label %80

80:                                               ; preds = %62
  %81 = load i32, i32* %10, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %10, align 4
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = icmp slt i32 %82, %85
  br i1 %86, label %47, label %87

87:                                               ; preds = %80
  br label %88

88:                                               ; preds = %87, %2
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %105

93:                                               ; preds = %88
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %95 = call i32 @AGE_BUFFER(%struct.TYPE_9__* %94)
  %96 = load %struct.drm_buf*, %struct.drm_buf** %4, align 8
  %97 = getelementptr inbounds %struct.drm_buf, %struct.drm_buf* %96, i32 0, i32 1
  store i64 0, i64* %97, align 8
  %98 = load %struct.drm_buf*, %struct.drm_buf** %4, align 8
  %99 = getelementptr inbounds %struct.drm_buf, %struct.drm_buf* %98, i32 0, i32 0
  store i64 0, i64* %99, align 8
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 0
  store i32 0, i32* %101, align 8
  %102 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %103 = load %struct.drm_buf*, %struct.drm_buf** %4, align 8
  %104 = call i32 @mga_freelist_put(%struct.drm_device* %102, %struct.drm_buf* %103)
  br label %105

105:                                              ; preds = %93, %88
  %106 = call i32 (...) @FLUSH_DMA()
  ret void
}

declare dso_local i32 @DRM_DEBUG(i8*, i32, i64) #1

declare dso_local i32 @MGA_EMIT_STATE(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @mga_emit_clip_rect(%struct.TYPE_8__*, i32*) #1

declare dso_local i32 @BEGIN_DMA(i32) #1

declare dso_local i32 @DMA_BLOCK(i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ADVANCE_DMA(...) #1

declare dso_local i32 @AGE_BUFFER(%struct.TYPE_9__*) #1

declare dso_local i32 @mga_freelist_put(%struct.drm_device*, %struct.drm_buf*) #1

declare dso_local i32 @FLUSH_DMA(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
