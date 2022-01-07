; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_context.c_vmw_context_define.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_context.c_vmw_context_define.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_operation_ctx = type { i32, i32 }
%struct.drm_device = type { i32 }
%struct.drm_file = type { i32 }
%struct.vmw_private = type { i32, i64, i32 }
%struct.vmw_user_context = type { %struct.TYPE_4__, %struct.vmw_resource }
%struct.TYPE_4__ = type { i32, i32, i32* }
%struct.vmw_resource = type { i32 }
%struct.drm_vmw_context_arg = type { i32 }
%struct.ttm_object_file = type { i32 }
%struct.TYPE_3__ = type { %struct.ttm_object_file* }

@__const.vmw_context_define.ttm_opt_ctx = private unnamed_addr constant %struct.ttm_operation_ctx { i32 1, i32 0 }, align 4
@.str = private unnamed_addr constant [38 x i8] c"DX contexts not supported by device.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@vmw_user_context_size = common dso_local global i64 0, align 8
@VMW_IDA_ACC_SIZE = common dso_local global i32 0, align 4
@TTM_OBJ_EXTRA_SIZE = common dso_local global i64 0, align 8
@ERESTARTSYS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"Out of graphics memory for context creation.\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@vmw_user_context_free = common dso_local global i32 0, align 4
@VMW_RES_CONTEXT = common dso_local global i32 0, align 4
@vmw_user_context_base_release = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, i8*, %struct.drm_file*, i32)* @vmw_context_define to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmw_context_define(%struct.drm_device* %0, i8* %1, %struct.drm_file* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.drm_file*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.vmw_private*, align 8
  %11 = alloca %struct.vmw_user_context*, align 8
  %12 = alloca %struct.vmw_resource*, align 8
  %13 = alloca %struct.vmw_resource*, align 8
  %14 = alloca %struct.drm_vmw_context_arg*, align 8
  %15 = alloca %struct.ttm_object_file*, align 8
  %16 = alloca %struct.ttm_operation_ctx, align 4
  %17 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.drm_file* %2, %struct.drm_file** %8, align 8
  store i32 %3, i32* %9, align 4
  %18 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %19 = call %struct.vmw_private* @vmw_priv(%struct.drm_device* %18)
  store %struct.vmw_private* %19, %struct.vmw_private** %10, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = bitcast i8* %20 to %struct.drm_vmw_context_arg*
  store %struct.drm_vmw_context_arg* %21, %struct.drm_vmw_context_arg** %14, align 8
  %22 = load %struct.drm_file*, %struct.drm_file** %8, align 8
  %23 = call %struct.TYPE_3__* @vmw_fpriv(%struct.drm_file* %22)
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load %struct.ttm_object_file*, %struct.ttm_object_file** %24, align 8
  store %struct.ttm_object_file* %25, %struct.ttm_object_file** %15, align 8
  %26 = bitcast %struct.ttm_operation_ctx* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %26, i8* align 4 bitcast (%struct.ttm_operation_ctx* @__const.vmw_context_define.ttm_opt_ctx to i8*), i64 8, i1 false)
  %27 = load %struct.vmw_private*, %struct.vmw_private** %10, align 8
  %28 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %38, label %31

31:                                               ; preds = %4
  %32 = load i32, i32* %9, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %31
  %35 = call i32 @VMW_DEBUG_USER(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %5, align 4
  br label %157

38:                                               ; preds = %31, %4
  %39 = load i64, i64* @vmw_user_context_size, align 8
  %40 = icmp eq i64 %39, 0
  %41 = zext i1 %40 to i32
  %42 = call i64 @unlikely(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %62

44:                                               ; preds = %38
  %45 = call i64 @ttm_round_pot(i32 24)
  %46 = load %struct.vmw_private*, %struct.vmw_private** %10, align 8
  %47 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %44
  %51 = call i32 (...) @vmw_cmdbuf_res_man_size()
  br label %53

52:                                               ; preds = %44
  br label %53

53:                                               ; preds = %52, %50
  %54 = phi i32 [ %51, %50 ], [ 0, %52 ]
  %55 = sext i32 %54 to i64
  %56 = add nsw i64 %45, %55
  %57 = load i32, i32* @VMW_IDA_ACC_SIZE, align 4
  %58 = sext i32 %57 to i64
  %59 = add nsw i64 %56, %58
  %60 = load i64, i64* @TTM_OBJ_EXTRA_SIZE, align 8
  %61 = add nsw i64 %59, %60
  store i64 %61, i64* @vmw_user_context_size, align 8
  br label %62

62:                                               ; preds = %53, %38
  %63 = load %struct.vmw_private*, %struct.vmw_private** %10, align 8
  %64 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %63, i32 0, i32 0
  %65 = call i32 @ttm_read_lock(i32* %64, i32 1)
  store i32 %65, i32* %17, align 4
  %66 = load i32, i32* %17, align 4
  %67 = icmp ne i32 %66, 0
  %68 = zext i1 %67 to i32
  %69 = call i64 @unlikely(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %62
  %72 = load i32, i32* %17, align 4
  store i32 %72, i32* %5, align 4
  br label %157

73:                                               ; preds = %62
  %74 = load %struct.vmw_private*, %struct.vmw_private** %10, align 8
  %75 = call i32 @vmw_mem_glob(%struct.vmw_private* %74)
  %76 = load i64, i64* @vmw_user_context_size, align 8
  %77 = call i32 @ttm_mem_global_alloc(i32 %75, i64 %76, %struct.ttm_operation_ctx* %16)
  store i32 %77, i32* %17, align 4
  %78 = load i32, i32* %17, align 4
  %79 = icmp ne i32 %78, 0
  %80 = zext i1 %79 to i32
  %81 = call i64 @unlikely(i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %91

83:                                               ; preds = %73
  %84 = load i32, i32* %17, align 4
  %85 = load i32, i32* @ERESTARTSYS, align 4
  %86 = sub nsw i32 0, %85
  %87 = icmp ne i32 %84, %86
  br i1 %87, label %88, label %90

88:                                               ; preds = %83
  %89 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  br label %90

90:                                               ; preds = %88, %83
  br label %152

91:                                               ; preds = %73
  %92 = load i32, i32* @GFP_KERNEL, align 4
  %93 = call %struct.vmw_user_context* @kzalloc(i32 24, i32 %92)
  store %struct.vmw_user_context* %93, %struct.vmw_user_context** %11, align 8
  %94 = load %struct.vmw_user_context*, %struct.vmw_user_context** %11, align 8
  %95 = icmp ne %struct.vmw_user_context* %94, null
  %96 = xor i1 %95, true
  %97 = zext i1 %96 to i32
  %98 = call i64 @unlikely(i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %107

100:                                              ; preds = %91
  %101 = load %struct.vmw_private*, %struct.vmw_private** %10, align 8
  %102 = call i32 @vmw_mem_glob(%struct.vmw_private* %101)
  %103 = load i64, i64* @vmw_user_context_size, align 8
  %104 = call i32 @ttm_mem_global_free(i32 %102, i64 %103)
  %105 = load i32, i32* @ENOMEM, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %17, align 4
  br label %152

107:                                              ; preds = %91
  %108 = load %struct.vmw_user_context*, %struct.vmw_user_context** %11, align 8
  %109 = getelementptr inbounds %struct.vmw_user_context, %struct.vmw_user_context* %108, i32 0, i32 1
  store %struct.vmw_resource* %109, %struct.vmw_resource** %12, align 8
  %110 = load %struct.vmw_user_context*, %struct.vmw_user_context** %11, align 8
  %111 = getelementptr inbounds %struct.vmw_user_context, %struct.vmw_user_context* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 0
  store i32 0, i32* %112, align 8
  %113 = load %struct.vmw_user_context*, %struct.vmw_user_context** %11, align 8
  %114 = getelementptr inbounds %struct.vmw_user_context, %struct.vmw_user_context* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 2
  store i32* null, i32** %115, align 8
  %116 = load %struct.vmw_private*, %struct.vmw_private** %10, align 8
  %117 = load %struct.vmw_resource*, %struct.vmw_resource** %12, align 8
  %118 = load i32, i32* @vmw_user_context_free, align 4
  %119 = load i32, i32* %9, align 4
  %120 = call i32 @vmw_context_init(%struct.vmw_private* %116, %struct.vmw_resource* %117, i32 %118, i32 %119)
  store i32 %120, i32* %17, align 4
  %121 = load i32, i32* %17, align 4
  %122 = icmp ne i32 %121, 0
  %123 = zext i1 %122 to i32
  %124 = call i64 @unlikely(i32 %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %107
  br label %152

127:                                              ; preds = %107
  %128 = load %struct.vmw_user_context*, %struct.vmw_user_context** %11, align 8
  %129 = getelementptr inbounds %struct.vmw_user_context, %struct.vmw_user_context* %128, i32 0, i32 1
  %130 = call %struct.vmw_resource* @vmw_resource_reference(%struct.vmw_resource* %129)
  store %struct.vmw_resource* %130, %struct.vmw_resource** %13, align 8
  %131 = load %struct.ttm_object_file*, %struct.ttm_object_file** %15, align 8
  %132 = load %struct.vmw_user_context*, %struct.vmw_user_context** %11, align 8
  %133 = getelementptr inbounds %struct.vmw_user_context, %struct.vmw_user_context* %132, i32 0, i32 0
  %134 = load i32, i32* @VMW_RES_CONTEXT, align 4
  %135 = call i32 @ttm_base_object_init(%struct.ttm_object_file* %131, %struct.TYPE_4__* %133, i32 0, i32 %134, i32* @vmw_user_context_base_release, i32* null)
  store i32 %135, i32* %17, align 4
  %136 = load i32, i32* %17, align 4
  %137 = icmp ne i32 %136, 0
  %138 = zext i1 %137 to i32
  %139 = call i64 @unlikely(i32 %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %143

141:                                              ; preds = %127
  %142 = call i32 @vmw_resource_unreference(%struct.vmw_resource** %13)
  br label %150

143:                                              ; preds = %127
  %144 = load %struct.vmw_user_context*, %struct.vmw_user_context** %11, align 8
  %145 = getelementptr inbounds %struct.vmw_user_context, %struct.vmw_user_context* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.drm_vmw_context_arg*, %struct.drm_vmw_context_arg** %14, align 8
  %149 = getelementptr inbounds %struct.drm_vmw_context_arg, %struct.drm_vmw_context_arg* %148, i32 0, i32 0
  store i32 %147, i32* %149, align 4
  br label %150

150:                                              ; preds = %143, %141
  %151 = call i32 @vmw_resource_unreference(%struct.vmw_resource** %12)
  br label %152

152:                                              ; preds = %150, %126, %100, %90
  %153 = load %struct.vmw_private*, %struct.vmw_private** %10, align 8
  %154 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %153, i32 0, i32 0
  %155 = call i32 @ttm_read_unlock(i32* %154)
  %156 = load i32, i32* %17, align 4
  store i32 %156, i32* %5, align 4
  br label %157

157:                                              ; preds = %152, %71, %34
  %158 = load i32, i32* %5, align 4
  ret i32 %158
}

declare dso_local %struct.vmw_private* @vmw_priv(%struct.drm_device*) #1

declare dso_local %struct.TYPE_3__* @vmw_fpriv(%struct.drm_file*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @VMW_DEBUG_USER(i8*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @ttm_round_pot(i32) #1

declare dso_local i32 @vmw_cmdbuf_res_man_size(...) #1

declare dso_local i32 @ttm_read_lock(i32*, i32) #1

declare dso_local i32 @ttm_mem_global_alloc(i32, i64, %struct.ttm_operation_ctx*) #1

declare dso_local i32 @vmw_mem_glob(%struct.vmw_private*) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local %struct.vmw_user_context* @kzalloc(i32, i32) #1

declare dso_local i32 @ttm_mem_global_free(i32, i64) #1

declare dso_local i32 @vmw_context_init(%struct.vmw_private*, %struct.vmw_resource*, i32, i32) #1

declare dso_local %struct.vmw_resource* @vmw_resource_reference(%struct.vmw_resource*) #1

declare dso_local i32 @ttm_base_object_init(%struct.ttm_object_file*, %struct.TYPE_4__*, i32, i32, i32*, i32*) #1

declare dso_local i32 @vmw_resource_unreference(%struct.vmw_resource**) #1

declare dso_local i32 @ttm_read_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
