; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_shader.c_vmw_shader_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_shader.c_vmw_shader_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_operation_ctx = type { i32, i32 }
%struct.vmw_resource = type { i32 }
%struct.vmw_private = type { i32 }
%struct.vmw_buffer_object = type { i32 }
%struct.vmw_shader = type { %struct.vmw_resource }

@__const.vmw_shader_alloc.ctx = private unnamed_addr constant %struct.ttm_operation_ctx { i32 1, i32 0 }, align 4
@vmw_shader_size = common dso_local global i64 0, align 8
@VMW_IDA_ACC_SIZE = common dso_local global i64 0, align 8
@ERESTARTSYS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Out of graphics memory for shader creation.\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@vmw_shader_free = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.vmw_resource* (%struct.vmw_private*, %struct.vmw_buffer_object*, i64, i64, i32)* @vmw_shader_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.vmw_resource* @vmw_shader_alloc(%struct.vmw_private* %0, %struct.vmw_buffer_object* %1, i64 %2, i64 %3, i32 %4) #0 {
  %6 = alloca %struct.vmw_private*, align 8
  %7 = alloca %struct.vmw_buffer_object*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.vmw_shader*, align 8
  %12 = alloca %struct.vmw_resource*, align 8
  %13 = alloca %struct.ttm_operation_ctx, align 4
  %14 = alloca i32, align 4
  store %struct.vmw_private* %0, %struct.vmw_private** %6, align 8
  store %struct.vmw_buffer_object* %1, %struct.vmw_buffer_object** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  %15 = bitcast %struct.ttm_operation_ctx* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %15, i8* align 4 bitcast (%struct.ttm_operation_ctx* @__const.vmw_shader_alloc.ctx to i8*), i64 8, i1 false)
  %16 = load i64, i64* @vmw_shader_size, align 8
  %17 = icmp eq i64 %16, 0
  %18 = zext i1 %17 to i32
  %19 = call i64 @unlikely(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %5
  %22 = call i64 @ttm_round_pot(i32 4)
  %23 = load i64, i64* @VMW_IDA_ACC_SIZE, align 8
  %24 = add nsw i64 %22, %23
  store i64 %24, i64* @vmw_shader_size, align 8
  br label %25

25:                                               ; preds = %21, %5
  %26 = load %struct.vmw_private*, %struct.vmw_private** %6, align 8
  %27 = call i32 @vmw_mem_glob(%struct.vmw_private* %26)
  %28 = load i64, i64* @vmw_shader_size, align 8
  %29 = call i32 @ttm_mem_global_alloc(i32 %27, i64 %28, %struct.ttm_operation_ctx* %13)
  store i32 %29, i32* %14, align 4
  %30 = load i32, i32* %14, align 4
  %31 = icmp ne i32 %30, 0
  %32 = zext i1 %31 to i32
  %33 = call i64 @unlikely(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %25
  %36 = load i32, i32* %14, align 4
  %37 = load i32, i32* @ERESTARTSYS, align 4
  %38 = sub nsw i32 0, %37
  %39 = icmp ne i32 %36, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  br label %42

42:                                               ; preds = %40, %35
  br label %70

43:                                               ; preds = %25
  %44 = load i32, i32* @GFP_KERNEL, align 4
  %45 = call %struct.vmw_shader* @kzalloc(i32 4, i32 %44)
  store %struct.vmw_shader* %45, %struct.vmw_shader** %11, align 8
  %46 = load %struct.vmw_shader*, %struct.vmw_shader** %11, align 8
  %47 = icmp ne %struct.vmw_shader* %46, null
  %48 = xor i1 %47, true
  %49 = zext i1 %48 to i32
  %50 = call i64 @unlikely(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %43
  %53 = load %struct.vmw_private*, %struct.vmw_private** %6, align 8
  %54 = call i32 @vmw_mem_glob(%struct.vmw_private* %53)
  %55 = load i64, i64* @vmw_shader_size, align 8
  %56 = call i32 @ttm_mem_global_free(i32 %54, i64 %55)
  %57 = load i32, i32* @ENOMEM, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %14, align 4
  br label %70

59:                                               ; preds = %43
  %60 = load %struct.vmw_shader*, %struct.vmw_shader** %11, align 8
  %61 = getelementptr inbounds %struct.vmw_shader, %struct.vmw_shader* %60, i32 0, i32 0
  store %struct.vmw_resource* %61, %struct.vmw_resource** %12, align 8
  %62 = load %struct.vmw_private*, %struct.vmw_private** %6, align 8
  %63 = load %struct.vmw_resource*, %struct.vmw_resource** %12, align 8
  %64 = load i64, i64* %8, align 8
  %65 = load i64, i64* %9, align 8
  %66 = load i32, i32* %10, align 4
  %67 = load %struct.vmw_buffer_object*, %struct.vmw_buffer_object** %7, align 8
  %68 = load i32, i32* @vmw_shader_free, align 4
  %69 = call i32 @vmw_gb_shader_init(%struct.vmw_private* %62, %struct.vmw_resource* %63, i64 %64, i64 %65, i32 %66, i32 0, i32 0, %struct.vmw_buffer_object* %67, i32 %68)
  store i32 %69, i32* %14, align 4
  br label %70

70:                                               ; preds = %59, %52, %42
  %71 = load i32, i32* %14, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %70
  %74 = load i32, i32* %14, align 4
  %75 = call %struct.vmw_resource* @ERR_PTR(i32 %74)
  br label %78

76:                                               ; preds = %70
  %77 = load %struct.vmw_resource*, %struct.vmw_resource** %12, align 8
  br label %78

78:                                               ; preds = %76, %73
  %79 = phi %struct.vmw_resource* [ %75, %73 ], [ %77, %76 ]
  ret %struct.vmw_resource* %79
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @unlikely(i32) #2

declare dso_local i64 @ttm_round_pot(i32) #2

declare dso_local i32 @ttm_mem_global_alloc(i32, i64, %struct.ttm_operation_ctx*) #2

declare dso_local i32 @vmw_mem_glob(%struct.vmw_private*) #2

declare dso_local i32 @DRM_ERROR(i8*) #2

declare dso_local %struct.vmw_shader* @kzalloc(i32, i32) #2

declare dso_local i32 @ttm_mem_global_free(i32, i64) #2

declare dso_local i32 @vmw_gb_shader_init(%struct.vmw_private*, %struct.vmw_resource*, i64, i64, i32, i32, i32, %struct.vmw_buffer_object*, i32) #2

declare dso_local %struct.vmw_resource* @ERR_PTR(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
