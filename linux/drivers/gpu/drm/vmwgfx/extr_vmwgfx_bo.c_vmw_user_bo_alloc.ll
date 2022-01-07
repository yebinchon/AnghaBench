; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_bo.c_vmw_user_bo_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_bo.c_vmw_user_bo_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmw_private = type { i64 }
%struct.ttm_object_file = type { i32 }
%struct.vmw_buffer_object = type { i32 }
%struct.ttm_base_object = type { i32, i32 }
%struct.vmw_user_buffer_object = type { %struct.TYPE_2__, %struct.vmw_buffer_object }
%struct.TYPE_2__ = type { %struct.ttm_base_object }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Failed to allocate a buffer.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@vmw_sys_placement = common dso_local global i32 0, align 4
@vmw_vram_sys_placement = common dso_local global i32 0, align 4
@vmw_user_bo_destroy = common dso_local global i32 0, align 4
@ttm_buffer_type = common dso_local global i32 0, align 4
@vmw_user_bo_release = common dso_local global i32 0, align 4
@vmw_user_bo_ref_obj_release = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vmw_user_bo_alloc(%struct.vmw_private* %0, %struct.ttm_object_file* %1, i32 %2, i32 %3, i32* %4, %struct.vmw_buffer_object** %5, %struct.ttm_base_object** %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.vmw_private*, align 8
  %10 = alloca %struct.ttm_object_file*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca %struct.vmw_buffer_object**, align 8
  %15 = alloca %struct.ttm_base_object**, align 8
  %16 = alloca %struct.vmw_user_buffer_object*, align 8
  %17 = alloca i32, align 4
  store %struct.vmw_private* %0, %struct.vmw_private** %9, align 8
  store %struct.ttm_object_file* %1, %struct.ttm_object_file** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32* %4, i32** %13, align 8
  store %struct.vmw_buffer_object** %5, %struct.vmw_buffer_object*** %14, align 8
  store %struct.ttm_base_object** %6, %struct.ttm_base_object*** %15, align 8
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.vmw_user_buffer_object* @kzalloc(i32 12, i32 %18)
  store %struct.vmw_user_buffer_object* %19, %struct.vmw_user_buffer_object** %16, align 8
  %20 = load %struct.vmw_user_buffer_object*, %struct.vmw_user_buffer_object** %16, align 8
  %21 = icmp ne %struct.vmw_user_buffer_object* %20, null
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = call i64 @unlikely(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %7
  %27 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %8, align 4
  br label %95

30:                                               ; preds = %7
  %31 = load %struct.vmw_private*, %struct.vmw_private** %9, align 8
  %32 = load %struct.vmw_user_buffer_object*, %struct.vmw_user_buffer_object** %16, align 8
  %33 = getelementptr inbounds %struct.vmw_user_buffer_object, %struct.vmw_user_buffer_object* %32, i32 0, i32 1
  %34 = load i32, i32* %11, align 4
  %35 = load %struct.vmw_private*, %struct.vmw_private** %9, align 8
  %36 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  %39 = zext i1 %38 to i64
  %40 = select i1 %38, i32* @vmw_sys_placement, i32* @vmw_vram_sys_placement
  %41 = call i32 @vmw_bo_init(%struct.vmw_private* %31, %struct.vmw_buffer_object* %33, i32 %34, i32* %40, i32 1, i32* @vmw_user_bo_destroy)
  store i32 %41, i32* %17, align 4
  %42 = load i32, i32* %17, align 4
  %43 = icmp ne i32 %42, 0
  %44 = zext i1 %43 to i32
  %45 = call i64 @unlikely(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %30
  %48 = load i32, i32* %17, align 4
  store i32 %48, i32* %8, align 4
  br label %95

49:                                               ; preds = %30
  %50 = load %struct.vmw_user_buffer_object*, %struct.vmw_user_buffer_object** %16, align 8
  %51 = getelementptr inbounds %struct.vmw_user_buffer_object, %struct.vmw_user_buffer_object* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.vmw_buffer_object, %struct.vmw_buffer_object* %51, i32 0, i32 0
  %53 = call i32 @ttm_bo_get(i32* %52)
  %54 = load %struct.ttm_object_file*, %struct.ttm_object_file** %10, align 8
  %55 = load i32, i32* %11, align 4
  %56 = load %struct.vmw_user_buffer_object*, %struct.vmw_user_buffer_object** %16, align 8
  %57 = getelementptr inbounds %struct.vmw_user_buffer_object, %struct.vmw_user_buffer_object* %56, i32 0, i32 0
  %58 = load i32, i32* %12, align 4
  %59 = load i32, i32* @ttm_buffer_type, align 4
  %60 = call i32 @ttm_prime_object_init(%struct.ttm_object_file* %54, i32 %55, %struct.TYPE_2__* %57, i32 %58, i32 %59, i32* @vmw_user_bo_release, i32* @vmw_user_bo_ref_obj_release)
  store i32 %60, i32* %17, align 4
  %61 = load i32, i32* %17, align 4
  %62 = icmp ne i32 %61, 0
  %63 = zext i1 %62 to i32
  %64 = call i64 @unlikely(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %49
  %67 = load %struct.vmw_user_buffer_object*, %struct.vmw_user_buffer_object** %16, align 8
  %68 = getelementptr inbounds %struct.vmw_user_buffer_object, %struct.vmw_user_buffer_object* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.vmw_buffer_object, %struct.vmw_buffer_object* %68, i32 0, i32 0
  %70 = call i32 @ttm_bo_put(i32* %69)
  br label %93

71:                                               ; preds = %49
  %72 = load %struct.vmw_user_buffer_object*, %struct.vmw_user_buffer_object** %16, align 8
  %73 = getelementptr inbounds %struct.vmw_user_buffer_object, %struct.vmw_user_buffer_object* %72, i32 0, i32 1
  %74 = load %struct.vmw_buffer_object**, %struct.vmw_buffer_object*** %14, align 8
  store %struct.vmw_buffer_object* %73, %struct.vmw_buffer_object** %74, align 8
  %75 = load %struct.ttm_base_object**, %struct.ttm_base_object*** %15, align 8
  %76 = icmp ne %struct.ttm_base_object** %75, null
  br i1 %76, label %77, label %86

77:                                               ; preds = %71
  %78 = load %struct.vmw_user_buffer_object*, %struct.vmw_user_buffer_object** %16, align 8
  %79 = getelementptr inbounds %struct.vmw_user_buffer_object, %struct.vmw_user_buffer_object* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load %struct.ttm_base_object**, %struct.ttm_base_object*** %15, align 8
  store %struct.ttm_base_object* %80, %struct.ttm_base_object** %81, align 8
  %82 = load %struct.ttm_base_object**, %struct.ttm_base_object*** %15, align 8
  %83 = load %struct.ttm_base_object*, %struct.ttm_base_object** %82, align 8
  %84 = getelementptr inbounds %struct.ttm_base_object, %struct.ttm_base_object* %83, i32 0, i32 1
  %85 = call i32 @kref_get(i32* %84)
  br label %86

86:                                               ; preds = %77, %71
  %87 = load %struct.vmw_user_buffer_object*, %struct.vmw_user_buffer_object** %16, align 8
  %88 = getelementptr inbounds %struct.vmw_user_buffer_object, %struct.vmw_user_buffer_object* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.ttm_base_object, %struct.ttm_base_object* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32*, i32** %13, align 8
  store i32 %91, i32* %92, align 4
  br label %93

93:                                               ; preds = %86, %66
  %94 = load i32, i32* %17, align 4
  store i32 %94, i32* %8, align 4
  br label %95

95:                                               ; preds = %93, %47, %26
  %96 = load i32, i32* %8, align 4
  ret i32 %96
}

declare dso_local %struct.vmw_user_buffer_object* @kzalloc(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @vmw_bo_init(%struct.vmw_private*, %struct.vmw_buffer_object*, i32, i32*, i32, i32*) #1

declare dso_local i32 @ttm_bo_get(i32*) #1

declare dso_local i32 @ttm_prime_object_init(%struct.ttm_object_file*, i32, %struct.TYPE_2__*, i32, i32, i32*, i32*) #1

declare dso_local i32 @ttm_bo_put(i32*) #1

declare dso_local i32 @kref_get(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
