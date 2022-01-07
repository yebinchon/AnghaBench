; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_binding.c_vmw_binding_state_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_binding.c_vmw_binding_state_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmw_ctx_binding_state = type { i32, %struct.vmw_private* }
%struct.vmw_private = type { i32 }
%struct.ttm_operation_ctx = type { i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.vmw_ctx_binding_state* @vmw_binding_state_alloc(%struct.vmw_private* %0) #0 {
  %2 = alloca %struct.vmw_ctx_binding_state*, align 8
  %3 = alloca %struct.vmw_private*, align 8
  %4 = alloca %struct.vmw_ctx_binding_state*, align 8
  %5 = alloca %struct.ttm_operation_ctx, align 4
  %6 = alloca i32, align 4
  store %struct.vmw_private* %0, %struct.vmw_private** %3, align 8
  %7 = bitcast %struct.ttm_operation_ctx* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %7, i8 0, i64 8, i1 false)
  %8 = load %struct.vmw_private*, %struct.vmw_private** %3, align 8
  %9 = call i32 @vmw_mem_glob(%struct.vmw_private* %8)
  %10 = call i32 @ttm_mem_global_alloc(i32 %9, i32 16, %struct.ttm_operation_ctx* %5)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load i32, i32* %6, align 4
  %15 = call %struct.vmw_ctx_binding_state* @ERR_PTR(i32 %14)
  store %struct.vmw_ctx_binding_state* %15, %struct.vmw_ctx_binding_state** %2, align 8
  br label %35

16:                                               ; preds = %1
  %17 = call %struct.vmw_ctx_binding_state* @vzalloc(i32 16)
  store %struct.vmw_ctx_binding_state* %17, %struct.vmw_ctx_binding_state** %4, align 8
  %18 = load %struct.vmw_ctx_binding_state*, %struct.vmw_ctx_binding_state** %4, align 8
  %19 = icmp ne %struct.vmw_ctx_binding_state* %18, null
  br i1 %19, label %27, label %20

20:                                               ; preds = %16
  %21 = load %struct.vmw_private*, %struct.vmw_private** %3, align 8
  %22 = call i32 @vmw_mem_glob(%struct.vmw_private* %21)
  %23 = call i32 @ttm_mem_global_free(i32 %22, i32 16)
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  %26 = call %struct.vmw_ctx_binding_state* @ERR_PTR(i32 %25)
  store %struct.vmw_ctx_binding_state* %26, %struct.vmw_ctx_binding_state** %2, align 8
  br label %35

27:                                               ; preds = %16
  %28 = load %struct.vmw_private*, %struct.vmw_private** %3, align 8
  %29 = load %struct.vmw_ctx_binding_state*, %struct.vmw_ctx_binding_state** %4, align 8
  %30 = getelementptr inbounds %struct.vmw_ctx_binding_state, %struct.vmw_ctx_binding_state* %29, i32 0, i32 1
  store %struct.vmw_private* %28, %struct.vmw_private** %30, align 8
  %31 = load %struct.vmw_ctx_binding_state*, %struct.vmw_ctx_binding_state** %4, align 8
  %32 = getelementptr inbounds %struct.vmw_ctx_binding_state, %struct.vmw_ctx_binding_state* %31, i32 0, i32 0
  %33 = call i32 @INIT_LIST_HEAD(i32* %32)
  %34 = load %struct.vmw_ctx_binding_state*, %struct.vmw_ctx_binding_state** %4, align 8
  store %struct.vmw_ctx_binding_state* %34, %struct.vmw_ctx_binding_state** %2, align 8
  br label %35

35:                                               ; preds = %27, %20, %13
  %36 = load %struct.vmw_ctx_binding_state*, %struct.vmw_ctx_binding_state** %2, align 8
  ret %struct.vmw_ctx_binding_state* %36
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @ttm_mem_global_alloc(i32, i32, %struct.ttm_operation_ctx*) #2

declare dso_local i32 @vmw_mem_glob(%struct.vmw_private*) #2

declare dso_local %struct.vmw_ctx_binding_state* @ERR_PTR(i32) #2

declare dso_local %struct.vmw_ctx_binding_state* @vzalloc(i32) #2

declare dso_local i32 @ttm_mem_global_free(i32, i32) #2

declare dso_local i32 @INIT_LIST_HEAD(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
