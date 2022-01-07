; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_shader.c_vmw_dx_shader_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_shader.c_vmw_dx_shader_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_operation_ctx = type { i32, i32 }
%struct.vmw_cmdbuf_res_manager = type { i32 }
%struct.vmw_resource = type { i32, i32, %struct.vmw_private* }
%struct.vmw_private = type { i32 }
%struct.list_head = type { i32 }
%struct.vmw_dx_shader = type { i32, i32, i32, i32, %struct.vmw_resource*, %struct.vmw_resource }

@__const.vmw_dx_shader_add.ttm_opt_ctx = private unnamed_addr constant %struct.ttm_operation_ctx { i32 1, i32 0 }, align 4
@vmw_shader_dx_size = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Out of graphics memory for shader creation.\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SVGA_COTABLE_DXSHADER = common dso_local global i32 0, align 4
@vmw_dx_shader_res_free = common dso_local global i32 0, align 4
@vmw_dx_shader_func = common dso_local global i32 0, align 4
@vmw_cmdbuf_res_shader = common dso_local global i32 0, align 4
@vmw_hw_shader_destroy = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vmw_dx_shader_add(%struct.vmw_cmdbuf_res_manager* %0, %struct.vmw_resource* %1, i32 %2, i32 %3, %struct.list_head* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.vmw_cmdbuf_res_manager*, align 8
  %8 = alloca %struct.vmw_resource*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.list_head*, align 8
  %12 = alloca %struct.vmw_dx_shader*, align 8
  %13 = alloca %struct.vmw_resource*, align 8
  %14 = alloca %struct.vmw_private*, align 8
  %15 = alloca %struct.ttm_operation_ctx, align 4
  %16 = alloca i32, align 4
  store %struct.vmw_cmdbuf_res_manager* %0, %struct.vmw_cmdbuf_res_manager** %7, align 8
  store %struct.vmw_resource* %1, %struct.vmw_resource** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.list_head* %4, %struct.list_head** %11, align 8
  %17 = load %struct.vmw_resource*, %struct.vmw_resource** %8, align 8
  %18 = getelementptr inbounds %struct.vmw_resource, %struct.vmw_resource* %17, i32 0, i32 2
  %19 = load %struct.vmw_private*, %struct.vmw_private** %18, align 8
  store %struct.vmw_private* %19, %struct.vmw_private** %14, align 8
  %20 = bitcast %struct.ttm_operation_ctx* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %20, i8* align 4 bitcast (%struct.ttm_operation_ctx* @__const.vmw_dx_shader_add.ttm_opt_ctx to i8*), i64 8, i1 false)
  %21 = load i64, i64* @vmw_shader_dx_size, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %5
  %24 = call i64 @ttm_round_pot(i32 40)
  store i64 %24, i64* @vmw_shader_dx_size, align 8
  br label %25

25:                                               ; preds = %23, %5
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* %10, align 4
  %28 = call i32 @vmw_shader_id_ok(i32 %26, i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %25
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %6, align 4
  br label %111

33:                                               ; preds = %25
  %34 = load %struct.vmw_private*, %struct.vmw_private** %14, align 8
  %35 = call i32 @vmw_mem_glob(%struct.vmw_private* %34)
  %36 = load i64, i64* @vmw_shader_dx_size, align 8
  %37 = call i32 @ttm_mem_global_alloc(i32 %35, i64 %36, %struct.ttm_operation_ctx* %15)
  store i32 %37, i32* %16, align 4
  %38 = load i32, i32* %16, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %33
  %41 = load i32, i32* %16, align 4
  %42 = load i32, i32* @ERESTARTSYS, align 4
  %43 = sub nsw i32 0, %42
  %44 = icmp ne i32 %41, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %40
  %46 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  br label %47

47:                                               ; preds = %45, %40
  %48 = load i32, i32* %16, align 4
  store i32 %48, i32* %6, align 4
  br label %111

49:                                               ; preds = %33
  %50 = load i32, i32* @GFP_KERNEL, align 4
  %51 = call %struct.vmw_dx_shader* @kmalloc(i32 40, i32 %50)
  store %struct.vmw_dx_shader* %51, %struct.vmw_dx_shader** %12, align 8
  %52 = load %struct.vmw_dx_shader*, %struct.vmw_dx_shader** %12, align 8
  %53 = icmp ne %struct.vmw_dx_shader* %52, null
  br i1 %53, label %61, label %54

54:                                               ; preds = %49
  %55 = load %struct.vmw_private*, %struct.vmw_private** %14, align 8
  %56 = call i32 @vmw_mem_glob(%struct.vmw_private* %55)
  %57 = load i64, i64* @vmw_shader_dx_size, align 8
  %58 = call i32 @ttm_mem_global_free(i32 %56, i64 %57)
  %59 = load i32, i32* @ENOMEM, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %6, align 4
  br label %111

61:                                               ; preds = %49
  %62 = load %struct.vmw_dx_shader*, %struct.vmw_dx_shader** %12, align 8
  %63 = getelementptr inbounds %struct.vmw_dx_shader, %struct.vmw_dx_shader* %62, i32 0, i32 5
  store %struct.vmw_resource* %63, %struct.vmw_resource** %13, align 8
  %64 = load %struct.vmw_resource*, %struct.vmw_resource** %8, align 8
  %65 = load %struct.vmw_dx_shader*, %struct.vmw_dx_shader** %12, align 8
  %66 = getelementptr inbounds %struct.vmw_dx_shader, %struct.vmw_dx_shader* %65, i32 0, i32 4
  store %struct.vmw_resource* %64, %struct.vmw_resource** %66, align 8
  %67 = load %struct.vmw_resource*, %struct.vmw_resource** %8, align 8
  %68 = load i32, i32* @SVGA_COTABLE_DXSHADER, align 4
  %69 = call i32 @vmw_context_cotable(%struct.vmw_resource* %67, i32 %68)
  %70 = call i32 @vmw_resource_reference(i32 %69)
  %71 = load %struct.vmw_dx_shader*, %struct.vmw_dx_shader** %12, align 8
  %72 = getelementptr inbounds %struct.vmw_dx_shader, %struct.vmw_dx_shader* %71, i32 0, i32 3
  store i32 %70, i32* %72, align 4
  %73 = load i32, i32* %9, align 4
  %74 = load %struct.vmw_dx_shader*, %struct.vmw_dx_shader** %12, align 8
  %75 = getelementptr inbounds %struct.vmw_dx_shader, %struct.vmw_dx_shader* %74, i32 0, i32 1
  store i32 %73, i32* %75, align 4
  %76 = load %struct.vmw_dx_shader*, %struct.vmw_dx_shader** %12, align 8
  %77 = getelementptr inbounds %struct.vmw_dx_shader, %struct.vmw_dx_shader* %76, i32 0, i32 0
  store i32 0, i32* %77, align 8
  %78 = load %struct.vmw_dx_shader*, %struct.vmw_dx_shader** %12, align 8
  %79 = getelementptr inbounds %struct.vmw_dx_shader, %struct.vmw_dx_shader* %78, i32 0, i32 2
  %80 = call i32 @INIT_LIST_HEAD(i32* %79)
  %81 = load %struct.vmw_private*, %struct.vmw_private** %14, align 8
  %82 = load %struct.vmw_resource*, %struct.vmw_resource** %13, align 8
  %83 = load i32, i32* @vmw_dx_shader_res_free, align 4
  %84 = call i32 @vmw_resource_init(%struct.vmw_private* %81, %struct.vmw_resource* %82, i32 1, i32 %83, i32* @vmw_dx_shader_func)
  store i32 %84, i32* %16, align 4
  %85 = load i32, i32* %16, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %61
  br label %108

88:                                               ; preds = %61
  %89 = load %struct.vmw_cmdbuf_res_manager*, %struct.vmw_cmdbuf_res_manager** %7, align 8
  %90 = load i32, i32* @vmw_cmdbuf_res_shader, align 4
  %91 = load i32, i32* %9, align 4
  %92 = call i32 @vmw_shader_key(i32 %91, i32 0)
  %93 = load %struct.vmw_resource*, %struct.vmw_resource** %13, align 8
  %94 = load %struct.list_head*, %struct.list_head** %11, align 8
  %95 = call i32 @vmw_cmdbuf_res_add(%struct.vmw_cmdbuf_res_manager* %89, i32 %90, i32 %92, %struct.vmw_resource* %93, %struct.list_head* %94)
  store i32 %95, i32* %16, align 4
  %96 = load i32, i32* %16, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %88
  br label %108

99:                                               ; preds = %88
  %100 = load %struct.vmw_dx_shader*, %struct.vmw_dx_shader** %12, align 8
  %101 = getelementptr inbounds %struct.vmw_dx_shader, %struct.vmw_dx_shader* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.vmw_resource*, %struct.vmw_resource** %13, align 8
  %104 = getelementptr inbounds %struct.vmw_resource, %struct.vmw_resource* %103, i32 0, i32 1
  store i32 %102, i32* %104, align 4
  %105 = load i32, i32* @vmw_hw_shader_destroy, align 4
  %106 = load %struct.vmw_resource*, %struct.vmw_resource** %13, align 8
  %107 = getelementptr inbounds %struct.vmw_resource, %struct.vmw_resource* %106, i32 0, i32 0
  store i32 %105, i32* %107, align 8
  br label %108

108:                                              ; preds = %99, %98, %87
  %109 = call i32 @vmw_resource_unreference(%struct.vmw_resource** %13)
  %110 = load i32, i32* %16, align 4
  store i32 %110, i32* %6, align 4
  br label %111

111:                                              ; preds = %108, %54, %47, %30
  %112 = load i32, i32* %6, align 4
  ret i32 %112
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @ttm_round_pot(i32) #2

declare dso_local i32 @vmw_shader_id_ok(i32, i32) #2

declare dso_local i32 @ttm_mem_global_alloc(i32, i64, %struct.ttm_operation_ctx*) #2

declare dso_local i32 @vmw_mem_glob(%struct.vmw_private*) #2

declare dso_local i32 @DRM_ERROR(i8*) #2

declare dso_local %struct.vmw_dx_shader* @kmalloc(i32, i32) #2

declare dso_local i32 @ttm_mem_global_free(i32, i64) #2

declare dso_local i32 @vmw_resource_reference(i32) #2

declare dso_local i32 @vmw_context_cotable(%struct.vmw_resource*, i32) #2

declare dso_local i32 @INIT_LIST_HEAD(i32*) #2

declare dso_local i32 @vmw_resource_init(%struct.vmw_private*, %struct.vmw_resource*, i32, i32, i32*) #2

declare dso_local i32 @vmw_cmdbuf_res_add(%struct.vmw_cmdbuf_res_manager*, i32, i32, %struct.vmw_resource*, %struct.list_head*) #2

declare dso_local i32 @vmw_shader_key(i32, i32) #2

declare dso_local i32 @vmw_resource_unreference(%struct.vmw_resource**) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
