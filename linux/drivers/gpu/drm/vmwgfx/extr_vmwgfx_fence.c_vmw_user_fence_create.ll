; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_fence.c_vmw_user_fence_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_fence.c_vmw_user_fence_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_file = type { i32 }
%struct.vmw_fence_manager = type { i32, i32 }
%struct.vmw_fence_obj = type { i32 }
%struct.ttm_object_file = type { i32 }
%struct.vmw_user_fence = type { %struct.vmw_fence_obj, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.ttm_mem_global = type { i32 }
%struct.ttm_operation_ctx = type { i32, i32 }
%struct.TYPE_3__ = type { %struct.ttm_object_file* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@vmw_user_fence_destroy = common dso_local global i32 0, align 4
@VMW_RES_FENCE = common dso_local global i32 0, align 4
@vmw_user_fence_base_release = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vmw_user_fence_create(%struct.drm_file* %0, %struct.vmw_fence_manager* %1, i32 %2, %struct.vmw_fence_obj** %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca %struct.vmw_fence_manager*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.vmw_fence_obj**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.ttm_object_file*, align 8
  %13 = alloca %struct.vmw_user_fence*, align 8
  %14 = alloca %struct.vmw_fence_obj*, align 8
  %15 = alloca %struct.ttm_mem_global*, align 8
  %16 = alloca %struct.ttm_operation_ctx, align 4
  %17 = alloca i32, align 4
  store %struct.drm_file* %0, %struct.drm_file** %7, align 8
  store %struct.vmw_fence_manager* %1, %struct.vmw_fence_manager** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.vmw_fence_obj** %3, %struct.vmw_fence_obj*** %10, align 8
  store i32* %4, i32** %11, align 8
  %18 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %19 = call %struct.TYPE_3__* @vmw_fpriv(%struct.drm_file* %18)
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load %struct.ttm_object_file*, %struct.ttm_object_file** %20, align 8
  store %struct.ttm_object_file* %21, %struct.ttm_object_file** %12, align 8
  %22 = load %struct.vmw_fence_manager*, %struct.vmw_fence_manager** %8, align 8
  %23 = getelementptr inbounds %struct.vmw_fence_manager, %struct.vmw_fence_manager* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call %struct.ttm_mem_global* @vmw_mem_glob(i32 %24)
  store %struct.ttm_mem_global* %25, %struct.ttm_mem_global** %15, align 8
  %26 = bitcast %struct.ttm_operation_ctx* %16 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %26, i8 0, i64 8, i1 false)
  %27 = load %struct.ttm_mem_global*, %struct.ttm_mem_global** %15, align 8
  %28 = load %struct.vmw_fence_manager*, %struct.vmw_fence_manager** %8, align 8
  %29 = getelementptr inbounds %struct.vmw_fence_manager, %struct.vmw_fence_manager* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @ttm_mem_global_alloc(%struct.ttm_mem_global* %27, i32 %30, %struct.ttm_operation_ctx* %16)
  store i32 %31, i32* %17, align 4
  %32 = load i32, i32* %17, align 4
  %33 = icmp ne i32 %32, 0
  %34 = zext i1 %33 to i32
  %35 = call i64 @unlikely(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %5
  %38 = load i32, i32* %17, align 4
  store i32 %38, i32* %6, align 4
  br label %102

39:                                               ; preds = %5
  %40 = load i32, i32* @GFP_KERNEL, align 4
  %41 = call %struct.vmw_user_fence* @kzalloc(i32 8, i32 %40)
  store %struct.vmw_user_fence* %41, %struct.vmw_user_fence** %13, align 8
  %42 = load %struct.vmw_user_fence*, %struct.vmw_user_fence** %13, align 8
  %43 = icmp ne %struct.vmw_user_fence* %42, null
  %44 = xor i1 %43, true
  %45 = zext i1 %44 to i32
  %46 = call i64 @unlikely(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %39
  %49 = load i32, i32* @ENOMEM, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %17, align 4
  br label %95

51:                                               ; preds = %39
  %52 = load %struct.vmw_fence_manager*, %struct.vmw_fence_manager** %8, align 8
  %53 = load %struct.vmw_user_fence*, %struct.vmw_user_fence** %13, align 8
  %54 = getelementptr inbounds %struct.vmw_user_fence, %struct.vmw_user_fence* %53, i32 0, i32 0
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* @vmw_user_fence_destroy, align 4
  %57 = call i32 @vmw_fence_obj_init(%struct.vmw_fence_manager* %52, %struct.vmw_fence_obj* %54, i32 %55, i32 %56)
  store i32 %57, i32* %17, align 4
  %58 = load i32, i32* %17, align 4
  %59 = icmp ne i32 %58, 0
  %60 = zext i1 %59 to i32
  %61 = call i64 @unlikely(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %51
  %64 = load %struct.vmw_user_fence*, %struct.vmw_user_fence** %13, align 8
  %65 = call i32 @kfree(%struct.vmw_user_fence* %64)
  br label %95

66:                                               ; preds = %51
  %67 = load %struct.vmw_user_fence*, %struct.vmw_user_fence** %13, align 8
  %68 = getelementptr inbounds %struct.vmw_user_fence, %struct.vmw_user_fence* %67, i32 0, i32 0
  %69 = call %struct.vmw_fence_obj* @vmw_fence_obj_reference(%struct.vmw_fence_obj* %68)
  store %struct.vmw_fence_obj* %69, %struct.vmw_fence_obj** %14, align 8
  %70 = load %struct.ttm_object_file*, %struct.ttm_object_file** %12, align 8
  %71 = load %struct.vmw_user_fence*, %struct.vmw_user_fence** %13, align 8
  %72 = getelementptr inbounds %struct.vmw_user_fence, %struct.vmw_user_fence* %71, i32 0, i32 1
  %73 = load i32, i32* @VMW_RES_FENCE, align 4
  %74 = call i32 @ttm_base_object_init(%struct.ttm_object_file* %70, %struct.TYPE_4__* %72, i32 0, i32 %73, i32* @vmw_user_fence_base_release, i32* null)
  store i32 %74, i32* %17, align 4
  %75 = load i32, i32* %17, align 4
  %76 = icmp ne i32 %75, 0
  %77 = zext i1 %76 to i32
  %78 = call i64 @unlikely(i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %66
  %81 = call i32 @vmw_fence_obj_unreference(%struct.vmw_fence_obj** %14)
  br label %91

82:                                               ; preds = %66
  %83 = load %struct.vmw_user_fence*, %struct.vmw_user_fence** %13, align 8
  %84 = getelementptr inbounds %struct.vmw_user_fence, %struct.vmw_user_fence* %83, i32 0, i32 0
  %85 = load %struct.vmw_fence_obj**, %struct.vmw_fence_obj*** %10, align 8
  store %struct.vmw_fence_obj* %84, %struct.vmw_fence_obj** %85, align 8
  %86 = load %struct.vmw_user_fence*, %struct.vmw_user_fence** %13, align 8
  %87 = getelementptr inbounds %struct.vmw_user_fence, %struct.vmw_user_fence* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32*, i32** %11, align 8
  store i32 %89, i32* %90, align 4
  store i32 0, i32* %6, align 4
  br label %102

91:                                               ; preds = %80
  %92 = load %struct.vmw_user_fence*, %struct.vmw_user_fence** %13, align 8
  %93 = getelementptr inbounds %struct.vmw_user_fence, %struct.vmw_user_fence* %92, i32 0, i32 0
  store %struct.vmw_fence_obj* %93, %struct.vmw_fence_obj** %14, align 8
  %94 = call i32 @vmw_fence_obj_unreference(%struct.vmw_fence_obj** %14)
  br label %95

95:                                               ; preds = %91, %63, %48
  %96 = load %struct.ttm_mem_global*, %struct.ttm_mem_global** %15, align 8
  %97 = load %struct.vmw_fence_manager*, %struct.vmw_fence_manager** %8, align 8
  %98 = getelementptr inbounds %struct.vmw_fence_manager, %struct.vmw_fence_manager* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @ttm_mem_global_free(%struct.ttm_mem_global* %96, i32 %99)
  %101 = load i32, i32* %17, align 4
  store i32 %101, i32* %6, align 4
  br label %102

102:                                              ; preds = %95, %82, %37
  %103 = load i32, i32* %6, align 4
  ret i32 %103
}

declare dso_local %struct.TYPE_3__* @vmw_fpriv(%struct.drm_file*) #1

declare dso_local %struct.ttm_mem_global* @vmw_mem_glob(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @ttm_mem_global_alloc(%struct.ttm_mem_global*, i32, %struct.ttm_operation_ctx*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.vmw_user_fence* @kzalloc(i32, i32) #1

declare dso_local i32 @vmw_fence_obj_init(%struct.vmw_fence_manager*, %struct.vmw_fence_obj*, i32, i32) #1

declare dso_local i32 @kfree(%struct.vmw_user_fence*) #1

declare dso_local %struct.vmw_fence_obj* @vmw_fence_obj_reference(%struct.vmw_fence_obj*) #1

declare dso_local i32 @ttm_base_object_init(%struct.ttm_object_file*, %struct.TYPE_4__*, i32, i32, i32*, i32*) #1

declare dso_local i32 @vmw_fence_obj_unreference(%struct.vmw_fence_obj**) #1

declare dso_local i32 @ttm_mem_global_free(%struct.ttm_mem_global*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
