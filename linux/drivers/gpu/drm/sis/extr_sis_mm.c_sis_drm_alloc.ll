; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/sis/extr_sis_mm.c_sis_drm_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/sis/extr_sis_mm.c_sis_drm_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64, i64, i64, i64, i32, i32, i32 }
%struct.drm_file = type { %struct.sis_file_private* }
%struct.sis_file_private = type { i32 }
%struct.TYPE_7__ = type { i64, i64, i32 }
%struct.sis_memblock = type { %struct.TYPE_9__, i32, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { i64, i64 }

@.str = private unnamed_addr constant [56 x i8] c"Attempt to allocate from uninitialized memory manager.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SIS_MM_ALIGN_MASK = common dso_local global i64 0, align 8
@SIS_MM_ALIGN_SHIFT = common dso_local global i64 0, align 8
@AGP_TYPE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"alloc %d, size = %ld, offset = %ld\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, %struct.drm_file*, i8*, i32)* @sis_drm_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sis_drm_alloc(%struct.drm_device* %0, %struct.drm_file* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca %struct.TYPE_7__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.sis_memblock*, align 8
  %15 = alloca %struct.sis_file_private*, align 8
  %16 = alloca i64, align 8
  store %struct.drm_device* %0, %struct.drm_device** %6, align 8
  store %struct.drm_file* %1, %struct.drm_file** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %17 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %18 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %17, i32 0, i32 1
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  store %struct.TYPE_6__* %19, %struct.TYPE_6__** %10, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = bitcast i8* %20 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %21, %struct.TYPE_7__** %11, align 8
  store i32 0, i32* %12, align 4
  %22 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %23 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %22, i32 0, i32 0
  %24 = load %struct.sis_file_private*, %struct.sis_file_private** %23, align 8
  store %struct.sis_file_private* %24, %struct.sis_file_private** %15, align 8
  %25 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %26 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %25, i32 0, i32 0
  %27 = call i32 @mutex_lock(i32* %26)
  %28 = load i32, i32* %9, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %4
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  br label %38

34:                                               ; preds = %4
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  br label %38

38:                                               ; preds = %34, %30
  %39 = phi i64 [ %33, %30 ], [ %37, %34 ]
  %40 = icmp eq i64 0, %39
  br i1 %40, label %41, label %48

41:                                               ; preds = %38
  %42 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0))
  %43 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %44 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %43, i32 0, i32 0
  %45 = call i32 @mutex_unlock(i32* %44)
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %5, align 4
  br label %171

48:                                               ; preds = %38
  %49 = load i32, i32* @GFP_KERNEL, align 4
  %50 = call %struct.sis_memblock* @kzalloc(i32 32, i32 %49)
  store %struct.sis_memblock* %50, %struct.sis_memblock** %14, align 8
  %51 = load %struct.sis_memblock*, %struct.sis_memblock** %14, align 8
  %52 = icmp ne %struct.sis_memblock* %51, null
  br i1 %52, label %56, label %53

53:                                               ; preds = %48
  %54 = load i32, i32* @ENOMEM, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %12, align 4
  br label %150

56:                                               ; preds = %48
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @SIS_MM_ALIGN_MASK, align 8
  %61 = add i64 %59, %60
  %62 = load i64, i64* @SIS_MM_ALIGN_SHIFT, align 8
  %63 = lshr i64 %61, %62
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  store i64 %63, i64* %65, align 8
  %66 = load i32, i32* %9, align 4
  %67 = load i32, i32* @AGP_TYPE, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %82

69:                                               ; preds = %56
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 6
  %72 = load %struct.sis_memblock*, %struct.sis_memblock** %14, align 8
  %73 = getelementptr inbounds %struct.sis_memblock, %struct.sis_memblock* %72, i32 0, i32 0
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = call i32 @drm_mm_insert_node(i32* %71, %struct.TYPE_9__* %73, i64 %76)
  store i32 %77, i32* %12, align 4
  %78 = load %struct.sis_memblock*, %struct.sis_memblock** %14, align 8
  %79 = getelementptr inbounds %struct.sis_memblock, %struct.sis_memblock* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  store i64 %81, i64* %16, align 8
  br label %95

82:                                               ; preds = %56
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 5
  %85 = load %struct.sis_memblock*, %struct.sis_memblock** %14, align 8
  %86 = getelementptr inbounds %struct.sis_memblock, %struct.sis_memblock* %85, i32 0, i32 0
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = call i32 @drm_mm_insert_node(i32* %84, %struct.TYPE_9__* %86, i64 %89)
  store i32 %90, i32* %12, align 4
  %91 = load %struct.sis_memblock*, %struct.sis_memblock** %14, align 8
  %92 = getelementptr inbounds %struct.sis_memblock, %struct.sis_memblock* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  store i64 %94, i64* %16, align 8
  br label %95

95:                                               ; preds = %82, %69
  %96 = load i32, i32* %12, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %95
  br label %150

99:                                               ; preds = %95
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 4
  %102 = load %struct.sis_memblock*, %struct.sis_memblock** %14, align 8
  %103 = load i32, i32* @GFP_KERNEL, align 4
  %104 = call i32 @idr_alloc(i32* %101, %struct.sis_memblock* %102, i32 1, i32 0, i32 %103)
  store i32 %104, i32* %12, align 4
  %105 = load i32, i32* %12, align 4
  %106 = icmp slt i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %99
  br label %146

108:                                              ; preds = %99
  %109 = load i32, i32* %12, align 4
  store i32 %109, i32* %13, align 4
  %110 = load %struct.sis_memblock*, %struct.sis_memblock** %14, align 8
  %111 = getelementptr inbounds %struct.sis_memblock, %struct.sis_memblock* %110, i32 0, i32 1
  %112 = load %struct.sis_file_private*, %struct.sis_file_private** %15, align 8
  %113 = getelementptr inbounds %struct.sis_file_private, %struct.sis_file_private* %112, i32 0, i32 0
  %114 = call i32 @list_add(i32* %111, i32* %113)
  %115 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %116 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %115, i32 0, i32 0
  %117 = call i32 @mutex_unlock(i32* %116)
  %118 = load i32, i32* %9, align 4
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %108
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 2
  %123 = load i64, i64* %122, align 8
  br label %128

124:                                              ; preds = %108
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 3
  %127 = load i64, i64* %126, align 8
  br label %128

128:                                              ; preds = %124, %120
  %129 = phi i64 [ %123, %120 ], [ %127, %124 ]
  %130 = load i64, i64* %16, align 8
  %131 = load i64, i64* @SIS_MM_ALIGN_SHIFT, align 8
  %132 = shl i64 %130, %131
  %133 = add i64 %129, %132
  %134 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 1
  store i64 %133, i64* %135, align 8
  %136 = load i32, i32* %13, align 4
  %137 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 2
  store i32 %136, i32* %138, align 8
  %139 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = load i64, i64* @SIS_MM_ALIGN_SHIFT, align 8
  %143 = shl i64 %141, %142
  %144 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %145 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %144, i32 0, i32 0
  store i64 %143, i64* %145, align 8
  store i32 0, i32* %5, align 4
  br label %171

146:                                              ; preds = %107
  %147 = load %struct.sis_memblock*, %struct.sis_memblock** %14, align 8
  %148 = getelementptr inbounds %struct.sis_memblock, %struct.sis_memblock* %147, i32 0, i32 0
  %149 = call i32 @drm_mm_remove_node(%struct.TYPE_9__* %148)
  br label %150

150:                                              ; preds = %146, %98, %53
  %151 = load %struct.sis_memblock*, %struct.sis_memblock** %14, align 8
  %152 = call i32 @kfree(%struct.sis_memblock* %151)
  %153 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %154 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %153, i32 0, i32 0
  %155 = call i32 @mutex_unlock(i32* %154)
  %156 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %157 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %156, i32 0, i32 1
  store i64 0, i64* %157, align 8
  %158 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %159 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %158, i32 0, i32 0
  store i64 0, i64* %159, align 8
  %160 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %161 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %160, i32 0, i32 2
  store i32 0, i32* %161, align 8
  %162 = load i32, i32* %9, align 4
  %163 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %164 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %167 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %166, i32 0, i32 1
  %168 = load i64, i64* %167, align 8
  %169 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %162, i64 %165, i64 %168)
  %170 = load i32, i32* %12, align 4
  store i32 %170, i32* %5, align 4
  br label %171

171:                                              ; preds = %150, %128, %41
  %172 = load i32, i32* %5, align 4
  ret i32 %172
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local %struct.sis_memblock* @kzalloc(i32, i32) #1

declare dso_local i32 @drm_mm_insert_node(i32*, %struct.TYPE_9__*, i64) #1

declare dso_local i32 @idr_alloc(i32*, %struct.sis_memblock*, i32, i32, i32) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @drm_mm_remove_node(%struct.TYPE_9__*) #1

declare dso_local i32 @kfree(%struct.sis_memblock*) #1

declare dso_local i32 @DRM_DEBUG(i8*, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
