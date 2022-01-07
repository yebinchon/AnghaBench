; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/via/extr_via_mm.c_via_mem_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/via/extr_via_mm.c_via_mem_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32, i64 }
%struct.drm_file = type { %struct.via_file_private* }
%struct.via_file_private = type { i32 }
%struct.TYPE_6__ = type { i64, i64, i32, i64 }
%struct.via_memblock = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_5__ = type { i64, i64, i64, i64, i32, i32, i32 }

@VIA_MEM_AGP = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"Unknown memory type allocation\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@VIA_MEM_VIDEO = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [56 x i8] c"Attempt to allocate from uninitialized memory manager.\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@VIA_MM_ALIGN_MASK = common dso_local global i64 0, align 8
@VIA_MM_ALIGN_SHIFT = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [32 x i8] c"Video memory allocation failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @via_mem_alloc(%struct.drm_device* %0, i8* %1, %struct.drm_file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.via_memblock*, align 8
  %12 = alloca %struct.TYPE_5__*, align 8
  %13 = alloca %struct.via_file_private*, align 8
  %14 = alloca i64, align 8
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.drm_file* %2, %struct.drm_file** %7, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = bitcast i8* %15 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %16, %struct.TYPE_6__** %8, align 8
  store i32 0, i32* %9, align 4
  %17 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %18 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %20, %struct.TYPE_5__** %12, align 8
  %21 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %22 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %21, i32 0, i32 0
  %23 = load %struct.via_file_private*, %struct.via_file_private** %22, align 8
  store %struct.via_file_private* %23, %struct.via_file_private** %13, align 8
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @VIA_MEM_AGP, align 8
  %28 = icmp sgt i64 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %3
  %30 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %163

33:                                               ; preds = %3
  %34 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %35 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %34, i32 0, i32 0
  %36 = call i32 @mutex_lock(i32* %35)
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @VIA_MEM_VIDEO, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %33
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  br label %50

46:                                               ; preds = %33
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  br label %50

50:                                               ; preds = %46, %42
  %51 = phi i64 [ %45, %42 ], [ %49, %46 ]
  %52 = icmp eq i64 0, %51
  br i1 %52, label %53, label %60

53:                                               ; preds = %50
  %54 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0))
  %55 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %56 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %55, i32 0, i32 0
  %57 = call i32 @mutex_unlock(i32* %56)
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %4, align 4
  br label %163

60:                                               ; preds = %50
  %61 = load i32, i32* @GFP_KERNEL, align 4
  %62 = call %struct.via_memblock* @kzalloc(i32 16, i32 %61)
  store %struct.via_memblock* %62, %struct.via_memblock** %11, align 8
  %63 = load %struct.via_memblock*, %struct.via_memblock** %11, align 8
  %64 = icmp ne %struct.via_memblock* %63, null
  br i1 %64, label %68, label %65

65:                                               ; preds = %60
  %66 = load i32, i32* @ENOMEM, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %9, align 4
  br label %149

68:                                               ; preds = %60
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @VIA_MM_ALIGN_MASK, align 8
  %73 = add i64 %71, %72
  %74 = load i64, i64* @VIA_MM_ALIGN_SHIFT, align 8
  %75 = lshr i64 %73, %74
  store i64 %75, i64* %14, align 8
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @VIA_MEM_AGP, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %88

81:                                               ; preds = %68
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 6
  %84 = load %struct.via_memblock*, %struct.via_memblock** %11, align 8
  %85 = getelementptr inbounds %struct.via_memblock, %struct.via_memblock* %84, i32 0, i32 0
  %86 = load i64, i64* %14, align 8
  %87 = call i32 @drm_mm_insert_node(i32* %83, %struct.TYPE_7__* %85, i64 %86)
  store i32 %87, i32* %9, align 4
  br label %95

88:                                               ; preds = %68
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 5
  %91 = load %struct.via_memblock*, %struct.via_memblock** %11, align 8
  %92 = getelementptr inbounds %struct.via_memblock, %struct.via_memblock* %91, i32 0, i32 0
  %93 = load i64, i64* %14, align 8
  %94 = call i32 @drm_mm_insert_node(i32* %90, %struct.TYPE_7__* %92, i64 %93)
  store i32 %94, i32* %9, align 4
  br label %95

95:                                               ; preds = %88, %81
  %96 = load i32, i32* %9, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %95
  br label %149

99:                                               ; preds = %95
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 4
  %102 = load %struct.via_memblock*, %struct.via_memblock** %11, align 8
  %103 = load i32, i32* @GFP_KERNEL, align 4
  %104 = call i32 @idr_alloc(i32* %101, %struct.via_memblock* %102, i32 1, i32 0, i32 %103)
  store i32 %104, i32* %9, align 4
  %105 = load i32, i32* %9, align 4
  %106 = icmp slt i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %99
  br label %145

108:                                              ; preds = %99
  %109 = load i32, i32* %9, align 4
  store i32 %109, i32* %10, align 4
  %110 = load %struct.via_memblock*, %struct.via_memblock** %11, align 8
  %111 = getelementptr inbounds %struct.via_memblock, %struct.via_memblock* %110, i32 0, i32 1
  %112 = load %struct.via_file_private*, %struct.via_file_private** %13, align 8
  %113 = getelementptr inbounds %struct.via_file_private, %struct.via_file_private* %112, i32 0, i32 0
  %114 = call i32 @list_add(i32* %111, i32* %113)
  %115 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %116 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %115, i32 0, i32 0
  %117 = call i32 @mutex_unlock(i32* %116)
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @VIA_MEM_VIDEO, align 8
  %122 = icmp eq i64 %120, %121
  br i1 %122, label %123, label %127

123:                                              ; preds = %108
  %124 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 3
  %126 = load i64, i64* %125, align 8
  br label %131

127:                                              ; preds = %108
  %128 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 2
  %130 = load i64, i64* %129, align 8
  br label %131

131:                                              ; preds = %127, %123
  %132 = phi i64 [ %126, %123 ], [ %130, %127 ]
  %133 = load %struct.via_memblock*, %struct.via_memblock** %11, align 8
  %134 = getelementptr inbounds %struct.via_memblock, %struct.via_memblock* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* @VIA_MM_ALIGN_SHIFT, align 8
  %138 = shl i64 %136, %137
  %139 = add i64 %132, %138
  %140 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 3
  store i64 %139, i64* %141, align 8
  %142 = load i32, i32* %10, align 4
  %143 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 2
  store i32 %142, i32* %144, align 8
  store i32 0, i32* %4, align 4
  br label %163

145:                                              ; preds = %107
  %146 = load %struct.via_memblock*, %struct.via_memblock** %11, align 8
  %147 = getelementptr inbounds %struct.via_memblock, %struct.via_memblock* %146, i32 0, i32 0
  %148 = call i32 @drm_mm_remove_node(%struct.TYPE_7__* %147)
  br label %149

149:                                              ; preds = %145, %98, %65
  %150 = load %struct.via_memblock*, %struct.via_memblock** %11, align 8
  %151 = call i32 @kfree(%struct.via_memblock* %150)
  %152 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %153 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %152, i32 0, i32 0
  %154 = call i32 @mutex_unlock(i32* %153)
  %155 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %156 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %155, i32 0, i32 3
  store i64 0, i64* %156, align 8
  %157 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %158 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %157, i32 0, i32 1
  store i64 0, i64* %158, align 8
  %159 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %159, i32 0, i32 2
  store i32 0, i32* %160, align 8
  %161 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %162 = load i32, i32* %9, align 4
  store i32 %162, i32* %4, align 4
  br label %163

163:                                              ; preds = %149, %131, %53, %29
  %164 = load i32, i32* %4, align 4
  ret i32 %164
}

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local %struct.via_memblock* @kzalloc(i32, i32) #1

declare dso_local i32 @drm_mm_insert_node(i32*, %struct.TYPE_7__*, i64) #1

declare dso_local i32 @idr_alloc(i32*, %struct.via_memblock*, i32, i32, i32) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @drm_mm_remove_node(%struct.TYPE_7__*) #1

declare dso_local i32 @kfree(%struct.via_memblock*) #1

declare dso_local i32 @DRM_DEBUG(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
