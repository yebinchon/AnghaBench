; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_shader.c_vmw_user_shader_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_shader.c_vmw_user_shader_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_operation_ctx = type { i32, i32 }
%struct.vmw_private = type { i32 }
%struct.vmw_buffer_object = type { i32 }
%struct.ttm_object_file = type { i32 }
%struct.vmw_user_shader = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32, i32* }
%struct.TYPE_3__ = type { %struct.vmw_resource }
%struct.vmw_resource = type { i32 }

@__const.vmw_user_shader_alloc.ctx = private unnamed_addr constant %struct.ttm_operation_ctx { i32 1, i32 0 }, align 4
@vmw_user_shader_size = common dso_local global i64 0, align 8
@VMW_IDA_ACC_SIZE = common dso_local global i64 0, align 8
@TTM_OBJ_EXTRA_SIZE = common dso_local global i64 0, align 8
@ERESTARTSYS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Out of graphics memory for shader creation.\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@vmw_user_shader_free = common dso_local global i32 0, align 4
@VMW_RES_SHADER = common dso_local global i32 0, align 4
@vmw_user_shader_base_release = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vmw_private*, %struct.vmw_buffer_object*, i64, i64, i32, i32, i32, %struct.ttm_object_file*, i32*)* @vmw_user_shader_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmw_user_shader_alloc(%struct.vmw_private* %0, %struct.vmw_buffer_object* %1, i64 %2, i64 %3, i32 %4, i32 %5, i32 %6, %struct.ttm_object_file* %7, i32* %8) #0 {
  %10 = alloca %struct.vmw_private*, align 8
  %11 = alloca %struct.vmw_buffer_object*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.ttm_object_file*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca %struct.vmw_user_shader*, align 8
  %20 = alloca %struct.vmw_resource*, align 8
  %21 = alloca %struct.vmw_resource*, align 8
  %22 = alloca %struct.ttm_operation_ctx, align 4
  %23 = alloca i32, align 4
  store %struct.vmw_private* %0, %struct.vmw_private** %10, align 8
  store %struct.vmw_buffer_object* %1, %struct.vmw_buffer_object** %11, align 8
  store i64 %2, i64* %12, align 8
  store i64 %3, i64* %13, align 8
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store %struct.ttm_object_file* %7, %struct.ttm_object_file** %17, align 8
  store i32* %8, i32** %18, align 8
  %24 = bitcast %struct.ttm_operation_ctx* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %24, i8* align 4 bitcast (%struct.ttm_operation_ctx* @__const.vmw_user_shader_alloc.ctx to i8*), i64 8, i1 false)
  %25 = load i64, i64* @vmw_user_shader_size, align 8
  %26 = icmp eq i64 %25, 0
  %27 = zext i1 %26 to i32
  %28 = call i64 @unlikely(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %9
  %31 = call i64 @ttm_round_pot(i32 24)
  %32 = load i64, i64* @VMW_IDA_ACC_SIZE, align 8
  %33 = add nsw i64 %31, %32
  %34 = load i64, i64* @TTM_OBJ_EXTRA_SIZE, align 8
  %35 = add nsw i64 %33, %34
  store i64 %35, i64* @vmw_user_shader_size, align 8
  br label %36

36:                                               ; preds = %30, %9
  %37 = load %struct.vmw_private*, %struct.vmw_private** %10, align 8
  %38 = call i32 @vmw_mem_glob(%struct.vmw_private* %37)
  %39 = load i64, i64* @vmw_user_shader_size, align 8
  %40 = call i32 @ttm_mem_global_alloc(i32 %38, i64 %39, %struct.ttm_operation_ctx* %22)
  store i32 %40, i32* %23, align 4
  %41 = load i32, i32* %23, align 4
  %42 = icmp ne i32 %41, 0
  %43 = zext i1 %42 to i32
  %44 = call i64 @unlikely(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %36
  %47 = load i32, i32* %23, align 4
  %48 = load i32, i32* @ERESTARTSYS, align 4
  %49 = sub nsw i32 0, %48
  %50 = icmp ne i32 %47, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %46
  %52 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  br label %53

53:                                               ; preds = %51, %46
  br label %123

54:                                               ; preds = %36
  %55 = load i32, i32* @GFP_KERNEL, align 4
  %56 = call %struct.vmw_user_shader* @kzalloc(i32 24, i32 %55)
  store %struct.vmw_user_shader* %56, %struct.vmw_user_shader** %19, align 8
  %57 = load %struct.vmw_user_shader*, %struct.vmw_user_shader** %19, align 8
  %58 = icmp ne %struct.vmw_user_shader* %57, null
  %59 = xor i1 %58, true
  %60 = zext i1 %59 to i32
  %61 = call i64 @unlikely(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %54
  %64 = load %struct.vmw_private*, %struct.vmw_private** %10, align 8
  %65 = call i32 @vmw_mem_glob(%struct.vmw_private* %64)
  %66 = load i64, i64* @vmw_user_shader_size, align 8
  %67 = call i32 @ttm_mem_global_free(i32 %65, i64 %66)
  %68 = load i32, i32* @ENOMEM, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %23, align 4
  br label %123

70:                                               ; preds = %54
  %71 = load %struct.vmw_user_shader*, %struct.vmw_user_shader** %19, align 8
  %72 = getelementptr inbounds %struct.vmw_user_shader, %struct.vmw_user_shader* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  store %struct.vmw_resource* %73, %struct.vmw_resource** %20, align 8
  %74 = load %struct.vmw_user_shader*, %struct.vmw_user_shader** %19, align 8
  %75 = getelementptr inbounds %struct.vmw_user_shader, %struct.vmw_user_shader* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  store i32 0, i32* %76, align 8
  %77 = load %struct.vmw_user_shader*, %struct.vmw_user_shader** %19, align 8
  %78 = getelementptr inbounds %struct.vmw_user_shader, %struct.vmw_user_shader* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 2
  store i32* null, i32** %79, align 8
  %80 = load %struct.vmw_private*, %struct.vmw_private** %10, align 8
  %81 = load %struct.vmw_resource*, %struct.vmw_resource** %20, align 8
  %82 = load i64, i64* %12, align 8
  %83 = load i64, i64* %13, align 8
  %84 = load i32, i32* %14, align 4
  %85 = load i32, i32* %15, align 4
  %86 = load i32, i32* %16, align 4
  %87 = load %struct.vmw_buffer_object*, %struct.vmw_buffer_object** %11, align 8
  %88 = load i32, i32* @vmw_user_shader_free, align 4
  %89 = call i32 @vmw_gb_shader_init(%struct.vmw_private* %80, %struct.vmw_resource* %81, i64 %82, i64 %83, i32 %84, i32 %85, i32 %86, %struct.vmw_buffer_object* %87, i32 %88)
  store i32 %89, i32* %23, align 4
  %90 = load i32, i32* %23, align 4
  %91 = icmp ne i32 %90, 0
  %92 = zext i1 %91 to i32
  %93 = call i64 @unlikely(i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %70
  br label %123

96:                                               ; preds = %70
  %97 = load %struct.vmw_resource*, %struct.vmw_resource** %20, align 8
  %98 = call %struct.vmw_resource* @vmw_resource_reference(%struct.vmw_resource* %97)
  store %struct.vmw_resource* %98, %struct.vmw_resource** %21, align 8
  %99 = load %struct.ttm_object_file*, %struct.ttm_object_file** %17, align 8
  %100 = load %struct.vmw_user_shader*, %struct.vmw_user_shader** %19, align 8
  %101 = getelementptr inbounds %struct.vmw_user_shader, %struct.vmw_user_shader* %100, i32 0, i32 0
  %102 = load i32, i32* @VMW_RES_SHADER, align 4
  %103 = call i32 @ttm_base_object_init(%struct.ttm_object_file* %99, %struct.TYPE_4__* %101, i32 0, i32 %102, i32* @vmw_user_shader_base_release, i32* null)
  store i32 %103, i32* %23, align 4
  %104 = load i32, i32* %23, align 4
  %105 = icmp ne i32 %104, 0
  %106 = zext i1 %105 to i32
  %107 = call i64 @unlikely(i32 %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %96
  %110 = call i32 @vmw_resource_unreference(%struct.vmw_resource** %21)
  br label %121

111:                                              ; preds = %96
  %112 = load i32*, i32** %18, align 8
  %113 = icmp ne i32* %112, null
  br i1 %113, label %114, label %120

114:                                              ; preds = %111
  %115 = load %struct.vmw_user_shader*, %struct.vmw_user_shader** %19, align 8
  %116 = getelementptr inbounds %struct.vmw_user_shader, %struct.vmw_user_shader* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = load i32*, i32** %18, align 8
  store i32 %118, i32* %119, align 4
  br label %120

120:                                              ; preds = %114, %111
  br label %121

121:                                              ; preds = %120, %109
  %122 = call i32 @vmw_resource_unreference(%struct.vmw_resource** %20)
  br label %123

123:                                              ; preds = %121, %95, %63, %53
  %124 = load i32, i32* %23, align 4
  ret i32 %124
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @unlikely(i32) #2

declare dso_local i64 @ttm_round_pot(i32) #2

declare dso_local i32 @ttm_mem_global_alloc(i32, i64, %struct.ttm_operation_ctx*) #2

declare dso_local i32 @vmw_mem_glob(%struct.vmw_private*) #2

declare dso_local i32 @DRM_ERROR(i8*) #2

declare dso_local %struct.vmw_user_shader* @kzalloc(i32, i32) #2

declare dso_local i32 @ttm_mem_global_free(i32, i64) #2

declare dso_local i32 @vmw_gb_shader_init(%struct.vmw_private*, %struct.vmw_resource*, i64, i64, i32, i32, i32, %struct.vmw_buffer_object*, i32) #2

declare dso_local %struct.vmw_resource* @vmw_resource_reference(%struct.vmw_resource*) #2

declare dso_local i32 @ttm_base_object_init(%struct.ttm_object_file*, %struct.TYPE_4__*, i32, i32, i32*, i32*) #2

declare dso_local i32 @vmw_resource_unreference(%struct.vmw_resource**) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
