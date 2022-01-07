; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/mga/extr_mga_dma.c_mga_freelist_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/mga/extr_mga_dma.c_mga_freelist_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.drm_device_dma* }
%struct.drm_device_dma = type { i32, %struct.drm_buf** }
%struct.drm_buf = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64, i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_6__*, %struct.TYPE_6__*, %struct.drm_buf*, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_6__*, %struct.TYPE_6__* }

@.str = private unnamed_addr constant [10 x i8] c"count=%d\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MGA_BUFFER_USED = common dso_local global i32 0, align 4
@MGA_BUFFER_FREE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, %struct.TYPE_5__*)* @mga_freelist_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mga_freelist_init(%struct.drm_device* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca %struct.drm_device_dma*, align 8
  %7 = alloca %struct.drm_buf*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  %11 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %12 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %11, i32 0, i32 0
  %13 = load %struct.drm_device_dma*, %struct.drm_device_dma** %12, align 8
  store %struct.drm_device_dma* %13, %struct.drm_device_dma** %6, align 8
  %14 = load %struct.drm_device_dma*, %struct.drm_device_dma** %6, align 8
  %15 = getelementptr inbounds %struct.drm_device_dma, %struct.drm_device_dma* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call i8* @kzalloc(i32 32, i32 %18)
  %20 = bitcast i8* %19 to %struct.TYPE_6__*
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  store %struct.TYPE_6__* %20, %struct.TYPE_6__** %22, align 8
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = icmp eq %struct.TYPE_6__* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %2
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %122

30:                                               ; preds = %2
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 3
  %35 = load i32, i32* @MGA_BUFFER_USED, align 4
  %36 = call i32 @SET_AGE(i32* %34, i32 %35, i32 0)
  store i32 0, i32* %10, align 4
  br label %37

37:                                               ; preds = %118, %30
  %38 = load i32, i32* %10, align 4
  %39 = load %struct.drm_device_dma*, %struct.drm_device_dma** %6, align 8
  %40 = getelementptr inbounds %struct.drm_device_dma, %struct.drm_device_dma* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp slt i32 %38, %41
  br i1 %42, label %43, label %121

43:                                               ; preds = %37
  %44 = load %struct.drm_device_dma*, %struct.drm_device_dma** %6, align 8
  %45 = getelementptr inbounds %struct.drm_device_dma, %struct.drm_device_dma* %44, i32 0, i32 1
  %46 = load %struct.drm_buf**, %struct.drm_buf*** %45, align 8
  %47 = load i32, i32* %10, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.drm_buf*, %struct.drm_buf** %46, i64 %48
  %50 = load %struct.drm_buf*, %struct.drm_buf** %49, align 8
  store %struct.drm_buf* %50, %struct.drm_buf** %7, align 8
  %51 = load %struct.drm_buf*, %struct.drm_buf** %7, align 8
  %52 = getelementptr inbounds %struct.drm_buf, %struct.drm_buf* %51, i32 0, i32 0
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %52, align 8
  store %struct.TYPE_7__* %53, %struct.TYPE_7__** %8, align 8
  %54 = load i32, i32* @GFP_KERNEL, align 4
  %55 = call i8* @kzalloc(i32 32, i32 %54)
  %56 = bitcast i8* %55 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %56, %struct.TYPE_6__** %9, align 8
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %58 = icmp eq %struct.TYPE_6__* %57, null
  br i1 %58, label %59, label %62

59:                                               ; preds = %43
  %60 = load i32, i32* @ENOMEM, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %3, align 4
  br label %122

62:                                               ; preds = %43
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %66, align 8
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  store %struct.TYPE_6__* %67, %struct.TYPE_6__** %69, align 8
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %71, align 8
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 1
  store %struct.TYPE_6__* %72, %struct.TYPE_6__** %74, align 8
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 3
  %77 = load i32, i32* @MGA_BUFFER_FREE, align 4
  %78 = call i32 @SET_AGE(i32* %76, i32 %77, i32 0)
  %79 = load %struct.drm_buf*, %struct.drm_buf** %7, align 8
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 2
  store %struct.drm_buf* %79, %struct.drm_buf** %81, align 8
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 0
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %85, align 8
  %87 = icmp ne %struct.TYPE_6__* %86, null
  br i1 %87, label %88, label %96

88:                                               ; preds = %62
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 0
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 1
  store %struct.TYPE_6__* %89, %struct.TYPE_6__** %95, align 8
  br label %96

96:                                               ; preds = %88, %62
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 0
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %98, align 8
  %100 = icmp eq %struct.TYPE_6__* %99, null
  br i1 %100, label %101, label %105

101:                                              ; preds = %96
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 1
  store %struct.TYPE_6__* %102, %struct.TYPE_6__** %104, align 8
  br label %105

105:                                              ; preds = %101, %96
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 2
  store %struct.TYPE_6__* %106, %struct.TYPE_6__** %108, align 8
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 1
  store i64 0, i64* %110, align 8
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 0
  store i64 0, i64* %112, align 8
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %114 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 0
  %116 = load %struct.TYPE_6__*, %struct.TYPE_6__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 0
  store %struct.TYPE_6__* %113, %struct.TYPE_6__** %117, align 8
  br label %118

118:                                              ; preds = %105
  %119 = load i32, i32* %10, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %10, align 4
  br label %37

121:                                              ; preds = %37
  store i32 0, i32* %3, align 4
  br label %122

122:                                              ; preds = %121, %59, %27
  %123 = load i32, i32* %3, align 4
  ret i32 %123
}

declare dso_local i32 @DRM_DEBUG(i8*, i32) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @SET_AGE(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
