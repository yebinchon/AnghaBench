; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_shader.c_vmw_shader_define.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_shader.c_vmw_shader_define.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.drm_file = type { i32 }
%struct.vmw_private = type { i32 }
%struct.ttm_object_file = type { i32 }
%struct.vmw_buffer_object = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.TYPE_4__ = type { %struct.ttm_object_file* }

@SVGA3D_INVALID_ID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Couldn't find buffer for shader creation.\0A\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Illegal buffer- or shader size.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@SVGA3D_SHADERTYPE_VS = common dso_local global i32 0, align 4
@SVGA3D_SHADERTYPE_PS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"Illegal shader type.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, %struct.drm_file*, i32, i32, i64, i64, i32, i32, i32*)* @vmw_shader_define to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmw_shader_define(%struct.drm_device* %0, %struct.drm_file* %1, i32 %2, i32 %3, i64 %4, i64 %5, i32 %6, i32 %7, i32* %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.drm_device*, align 8
  %12 = alloca %struct.drm_file*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca %struct.vmw_private*, align 8
  %21 = alloca %struct.ttm_object_file*, align 8
  %22 = alloca %struct.vmw_buffer_object*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %11, align 8
  store %struct.drm_file* %1, %struct.drm_file** %12, align 8
  store i32 %2, i32* %13, align 4
  store i32 %3, i32* %14, align 4
  store i64 %4, i64* %15, align 8
  store i64 %5, i64* %16, align 8
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store i32* %8, i32** %19, align 8
  %25 = load %struct.drm_device*, %struct.drm_device** %11, align 8
  %26 = call %struct.vmw_private* @vmw_priv(%struct.drm_device* %25)
  store %struct.vmw_private* %26, %struct.vmw_private** %20, align 8
  %27 = load %struct.drm_file*, %struct.drm_file** %12, align 8
  %28 = call %struct.TYPE_4__* @vmw_fpriv(%struct.drm_file* %27)
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load %struct.ttm_object_file*, %struct.ttm_object_file** %29, align 8
  store %struct.ttm_object_file* %30, %struct.ttm_object_file** %21, align 8
  store %struct.vmw_buffer_object* null, %struct.vmw_buffer_object** %22, align 8
  %31 = load i32, i32* %14, align 4
  %32 = load i32, i32* @SVGA3D_INVALID_ID, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %65

34:                                               ; preds = %9
  %35 = load %struct.ttm_object_file*, %struct.ttm_object_file** %21, align 8
  %36 = load i32, i32* %14, align 4
  %37 = call i32 @vmw_user_bo_lookup(%struct.ttm_object_file* %35, i32 %36, %struct.vmw_buffer_object** %22, i32* null)
  store i32 %37, i32* %24, align 4
  %38 = load i32, i32* %24, align 4
  %39 = icmp ne i32 %38, 0
  %40 = zext i1 %39 to i32
  %41 = call i64 @unlikely(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %34
  %44 = call i32 @VMW_DEBUG_USER(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %45 = load i32, i32* %24, align 4
  store i32 %45, i32* %10, align 4
  br label %102

46:                                               ; preds = %34
  %47 = load %struct.vmw_buffer_object*, %struct.vmw_buffer_object** %22, align 8
  %48 = getelementptr inbounds %struct.vmw_buffer_object, %struct.vmw_buffer_object* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = trunc i64 %50 to i32
  %52 = load i32, i32* @PAGE_SIZE, align 4
  %53 = mul nsw i32 %51, %52
  %54 = load i64, i64* %15, align 8
  %55 = trunc i64 %54 to i32
  %56 = load i64, i64* %16, align 8
  %57 = trunc i64 %56 to i32
  %58 = add nsw i32 %55, %57
  %59 = icmp slt i32 %53, %58
  br i1 %59, label %60, label %64

60:                                               ; preds = %46
  %61 = call i32 @VMW_DEBUG_USER(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %24, align 4
  br label %99

64:                                               ; preds = %46
  br label %65

65:                                               ; preds = %64, %9
  %66 = load i32, i32* %13, align 4
  switch i32 %66, label %71 [
    i32 128, label %67
    i32 129, label %69
  ]

67:                                               ; preds = %65
  %68 = load i32, i32* @SVGA3D_SHADERTYPE_VS, align 4
  store i32 %68, i32* %23, align 4
  br label %75

69:                                               ; preds = %65
  %70 = load i32, i32* @SVGA3D_SHADERTYPE_PS, align 4
  store i32 %70, i32* %23, align 4
  br label %75

71:                                               ; preds = %65
  %72 = call i32 @VMW_DEBUG_USER(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %73 = load i32, i32* @EINVAL, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %24, align 4
  br label %99

75:                                               ; preds = %69, %67
  %76 = load %struct.vmw_private*, %struct.vmw_private** %20, align 8
  %77 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %76, i32 0, i32 0
  %78 = call i32 @ttm_read_lock(i32* %77, i32 1)
  store i32 %78, i32* %24, align 4
  %79 = load i32, i32* %24, align 4
  %80 = icmp ne i32 %79, 0
  %81 = zext i1 %80 to i32
  %82 = call i64 @unlikely(i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %75
  br label %99

85:                                               ; preds = %75
  %86 = load %struct.vmw_private*, %struct.vmw_private** %20, align 8
  %87 = load %struct.vmw_buffer_object*, %struct.vmw_buffer_object** %22, align 8
  %88 = load i64, i64* %15, align 8
  %89 = load i64, i64* %16, align 8
  %90 = load i32, i32* %23, align 4
  %91 = load i32, i32* %17, align 4
  %92 = load i32, i32* %18, align 4
  %93 = load %struct.ttm_object_file*, %struct.ttm_object_file** %21, align 8
  %94 = load i32*, i32** %19, align 8
  %95 = call i32 @vmw_user_shader_alloc(%struct.vmw_private* %86, %struct.vmw_buffer_object* %87, i64 %88, i64 %89, i32 %90, i32 %91, i32 %92, %struct.ttm_object_file* %93, i32* %94)
  store i32 %95, i32* %24, align 4
  %96 = load %struct.vmw_private*, %struct.vmw_private** %20, align 8
  %97 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %96, i32 0, i32 0
  %98 = call i32 @ttm_read_unlock(i32* %97)
  br label %99

99:                                               ; preds = %85, %84, %71, %60
  %100 = call i32 @vmw_bo_unreference(%struct.vmw_buffer_object** %22)
  %101 = load i32, i32* %24, align 4
  store i32 %101, i32* %10, align 4
  br label %102

102:                                              ; preds = %99, %43
  %103 = load i32, i32* %10, align 4
  ret i32 %103
}

declare dso_local %struct.vmw_private* @vmw_priv(%struct.drm_device*) #1

declare dso_local %struct.TYPE_4__* @vmw_fpriv(%struct.drm_file*) #1

declare dso_local i32 @vmw_user_bo_lookup(%struct.ttm_object_file*, i32, %struct.vmw_buffer_object**, i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @VMW_DEBUG_USER(i8*) #1

declare dso_local i32 @ttm_read_lock(i32*, i32) #1

declare dso_local i32 @vmw_user_shader_alloc(%struct.vmw_private*, %struct.vmw_buffer_object*, i64, i64, i32, i32, i32, %struct.ttm_object_file*, i32*) #1

declare dso_local i32 @ttm_read_unlock(i32*) #1

declare dso_local i32 @vmw_bo_unreference(%struct.vmw_buffer_object**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
