; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_shader.c_vmw_compat_shader_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_shader.c_vmw_compat_shader_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_operation_ctx = type { i32, i32 }
%struct.vmw_private = type { i32 }
%struct.vmw_cmdbuf_res_manager = type { i32 }
%struct.list_head = type { i32 }
%struct.vmw_buffer_object = type { i32 }
%struct.ttm_bo_kmap_obj = type { i32 }
%struct.vmw_resource = type { i32 }

@__const.vmw_compat_shader_add.ctx = private unnamed_addr constant %struct.ttm_operation_ctx { i32 0, i32 1 }, align 4
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@vmw_sys_ne_placement = common dso_local global i32 0, align 4
@vmw_bo_bo_free = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@vmw_sys_placement = common dso_local global i32 0, align 4
@vmw_cmdbuf_res_shader = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vmw_compat_shader_add(%struct.vmw_private* %0, %struct.vmw_cmdbuf_res_manager* %1, i32 %2, i8* %3, i32 %4, i64 %5, %struct.list_head* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.vmw_private*, align 8
  %10 = alloca %struct.vmw_cmdbuf_res_manager*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca %struct.list_head*, align 8
  %16 = alloca %struct.ttm_operation_ctx, align 4
  %17 = alloca %struct.vmw_buffer_object*, align 8
  %18 = alloca %struct.ttm_bo_kmap_obj, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.vmw_resource*, align 8
  store %struct.vmw_private* %0, %struct.vmw_private** %9, align 8
  store %struct.vmw_cmdbuf_res_manager* %1, %struct.vmw_cmdbuf_res_manager** %10, align 8
  store i32 %2, i32* %11, align 4
  store i8* %3, i8** %12, align 8
  store i32 %4, i32* %13, align 4
  store i64 %5, i64* %14, align 8
  store %struct.list_head* %6, %struct.list_head** %15, align 8
  %22 = bitcast %struct.ttm_operation_ctx* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %22, i8* align 4 bitcast (%struct.ttm_operation_ctx* @__const.vmw_compat_shader_add.ctx to i8*), i64 8, i1 false)
  %23 = load i32, i32* %11, align 4
  %24 = load i32, i32* %13, align 4
  %25 = call i32 @vmw_shader_id_ok(i32 %23, i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %7
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %8, align 4
  br label %124

30:                                               ; preds = %7
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = call %struct.vmw_buffer_object* @kzalloc(i32 4, i32 %31)
  store %struct.vmw_buffer_object* %32, %struct.vmw_buffer_object** %17, align 8
  %33 = load %struct.vmw_buffer_object*, %struct.vmw_buffer_object** %17, align 8
  %34 = icmp ne %struct.vmw_buffer_object* %33, null
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  %37 = call i64 @unlikely(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %30
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %8, align 4
  br label %124

42:                                               ; preds = %30
  %43 = load %struct.vmw_private*, %struct.vmw_private** %9, align 8
  %44 = load %struct.vmw_buffer_object*, %struct.vmw_buffer_object** %17, align 8
  %45 = load i64, i64* %14, align 8
  %46 = load i32, i32* @vmw_bo_bo_free, align 4
  %47 = call i32 @vmw_bo_init(%struct.vmw_private* %43, %struct.vmw_buffer_object* %44, i64 %45, i32* @vmw_sys_ne_placement, i32 1, i32 %46)
  store i32 %47, i32* %20, align 4
  %48 = load i32, i32* %20, align 4
  %49 = icmp ne i32 %48, 0
  %50 = zext i1 %49 to i32
  %51 = call i64 @unlikely(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %42
  br label %122

54:                                               ; preds = %42
  %55 = load %struct.vmw_buffer_object*, %struct.vmw_buffer_object** %17, align 8
  %56 = getelementptr inbounds %struct.vmw_buffer_object, %struct.vmw_buffer_object* %55, i32 0, i32 0
  %57 = call i32 @ttm_bo_reserve(i32* %56, i32 0, i32 1, i32* null)
  store i32 %57, i32* %20, align 4
  %58 = load i32, i32* %20, align 4
  %59 = icmp ne i32 %58, 0
  %60 = zext i1 %59 to i32
  %61 = call i64 @unlikely(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %54
  br label %120

64:                                               ; preds = %54
  %65 = load %struct.vmw_buffer_object*, %struct.vmw_buffer_object** %17, align 8
  %66 = getelementptr inbounds %struct.vmw_buffer_object, %struct.vmw_buffer_object* %65, i32 0, i32 0
  %67 = load i64, i64* %14, align 8
  %68 = call i32 @PAGE_ALIGN(i64 %67)
  %69 = load i32, i32* @PAGE_SHIFT, align 4
  %70 = ashr i32 %68, %69
  %71 = call i32 @ttm_bo_kmap(i32* %66, i32 0, i32 %70, %struct.ttm_bo_kmap_obj* %18)
  store i32 %71, i32* %20, align 4
  %72 = load i32, i32* %20, align 4
  %73 = icmp ne i32 %72, 0
  %74 = zext i1 %73 to i32
  %75 = call i64 @unlikely(i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %64
  %78 = load %struct.vmw_buffer_object*, %struct.vmw_buffer_object** %17, align 8
  %79 = getelementptr inbounds %struct.vmw_buffer_object, %struct.vmw_buffer_object* %78, i32 0, i32 0
  %80 = call i32 @ttm_bo_unreserve(i32* %79)
  br label %120

81:                                               ; preds = %64
  %82 = call i32 @ttm_kmap_obj_virtual(%struct.ttm_bo_kmap_obj* %18, i32* %19)
  %83 = load i8*, i8** %12, align 8
  %84 = load i64, i64* %14, align 8
  %85 = call i32 @memcpy(i32 %82, i8* %83, i64 %84)
  %86 = load i32, i32* %19, align 4
  %87 = call i32 @WARN_ON(i32 %86)
  %88 = call i32 @ttm_bo_kunmap(%struct.ttm_bo_kmap_obj* %18)
  %89 = load %struct.vmw_buffer_object*, %struct.vmw_buffer_object** %17, align 8
  %90 = getelementptr inbounds %struct.vmw_buffer_object, %struct.vmw_buffer_object* %89, i32 0, i32 0
  %91 = call i32 @ttm_bo_validate(i32* %90, i32* @vmw_sys_placement, %struct.ttm_operation_ctx* %16)
  store i32 %91, i32* %20, align 4
  %92 = load i32, i32* %20, align 4
  %93 = icmp ne i32 %92, 0
  %94 = zext i1 %93 to i32
  %95 = call i32 @WARN_ON(i32 %94)
  %96 = load %struct.vmw_buffer_object*, %struct.vmw_buffer_object** %17, align 8
  %97 = getelementptr inbounds %struct.vmw_buffer_object, %struct.vmw_buffer_object* %96, i32 0, i32 0
  %98 = call i32 @ttm_bo_unreserve(i32* %97)
  %99 = load %struct.vmw_private*, %struct.vmw_private** %9, align 8
  %100 = load %struct.vmw_buffer_object*, %struct.vmw_buffer_object** %17, align 8
  %101 = load i64, i64* %14, align 8
  %102 = load i32, i32* %13, align 4
  %103 = call %struct.vmw_resource* @vmw_shader_alloc(%struct.vmw_private* %99, %struct.vmw_buffer_object* %100, i64 %101, i32 0, i32 %102)
  store %struct.vmw_resource* %103, %struct.vmw_resource** %21, align 8
  %104 = load i32, i32* %20, align 4
  %105 = icmp ne i32 %104, 0
  %106 = zext i1 %105 to i32
  %107 = call i64 @unlikely(i32 %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %81
  br label %120

110:                                              ; preds = %81
  %111 = load %struct.vmw_cmdbuf_res_manager*, %struct.vmw_cmdbuf_res_manager** %10, align 8
  %112 = load i32, i32* @vmw_cmdbuf_res_shader, align 4
  %113 = load i32, i32* %11, align 4
  %114 = load i32, i32* %13, align 4
  %115 = call i32 @vmw_shader_key(i32 %113, i32 %114)
  %116 = load %struct.vmw_resource*, %struct.vmw_resource** %21, align 8
  %117 = load %struct.list_head*, %struct.list_head** %15, align 8
  %118 = call i32 @vmw_cmdbuf_res_add(%struct.vmw_cmdbuf_res_manager* %111, i32 %112, i32 %115, %struct.vmw_resource* %116, %struct.list_head* %117)
  store i32 %118, i32* %20, align 4
  %119 = call i32 @vmw_resource_unreference(%struct.vmw_resource** %21)
  br label %120

120:                                              ; preds = %110, %109, %77, %63
  %121 = call i32 @vmw_bo_unreference(%struct.vmw_buffer_object** %17)
  br label %122

122:                                              ; preds = %120, %53
  %123 = load i32, i32* %20, align 4
  store i32 %123, i32* %8, align 4
  br label %124

124:                                              ; preds = %122, %39, %27
  %125 = load i32, i32* %8, align 4
  ret i32 %125
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @vmw_shader_id_ok(i32, i32) #2

declare dso_local %struct.vmw_buffer_object* @kzalloc(i32, i32) #2

declare dso_local i64 @unlikely(i32) #2

declare dso_local i32 @vmw_bo_init(%struct.vmw_private*, %struct.vmw_buffer_object*, i64, i32*, i32, i32) #2

declare dso_local i32 @ttm_bo_reserve(i32*, i32, i32, i32*) #2

declare dso_local i32 @ttm_bo_kmap(i32*, i32, i32, %struct.ttm_bo_kmap_obj*) #2

declare dso_local i32 @PAGE_ALIGN(i64) #2

declare dso_local i32 @ttm_bo_unreserve(i32*) #2

declare dso_local i32 @memcpy(i32, i8*, i64) #2

declare dso_local i32 @ttm_kmap_obj_virtual(%struct.ttm_bo_kmap_obj*, i32*) #2

declare dso_local i32 @WARN_ON(i32) #2

declare dso_local i32 @ttm_bo_kunmap(%struct.ttm_bo_kmap_obj*) #2

declare dso_local i32 @ttm_bo_validate(i32*, i32*, %struct.ttm_operation_ctx*) #2

declare dso_local %struct.vmw_resource* @vmw_shader_alloc(%struct.vmw_private*, %struct.vmw_buffer_object*, i64, i32, i32) #2

declare dso_local i32 @vmw_cmdbuf_res_add(%struct.vmw_cmdbuf_res_manager*, i32, i32, %struct.vmw_resource*, %struct.list_head*) #2

declare dso_local i32 @vmw_shader_key(i32, i32) #2

declare dso_local i32 @vmw_resource_unreference(%struct.vmw_resource**) #2

declare dso_local i32 @vmw_bo_unreference(%struct.vmw_buffer_object**) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
