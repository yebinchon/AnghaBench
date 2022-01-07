; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_execbuf.c_vmw_execbuf_info_from_res.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_execbuf.c_vmw_execbuf_info_from_res.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmw_ctx_validation_info = type { i32 }
%struct.vmw_sw_context = type { %struct.vmw_res_cache_entry* }
%struct.vmw_res_cache_entry = type { %struct.vmw_ctx_validation_info*, %struct.vmw_resource*, i64 }
%struct.vmw_resource = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.vmw_ctx_validation_info* (%struct.vmw_sw_context*, %struct.vmw_resource*)* @vmw_execbuf_info_from_res to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.vmw_ctx_validation_info* @vmw_execbuf_info_from_res(%struct.vmw_sw_context* %0, %struct.vmw_resource* %1) #0 {
  %3 = alloca %struct.vmw_ctx_validation_info*, align 8
  %4 = alloca %struct.vmw_sw_context*, align 8
  %5 = alloca %struct.vmw_resource*, align 8
  %6 = alloca %struct.vmw_res_cache_entry*, align 8
  store %struct.vmw_sw_context* %0, %struct.vmw_sw_context** %4, align 8
  store %struct.vmw_resource* %1, %struct.vmw_resource** %5, align 8
  %7 = load %struct.vmw_sw_context*, %struct.vmw_sw_context** %4, align 8
  %8 = getelementptr inbounds %struct.vmw_sw_context, %struct.vmw_sw_context* %7, i32 0, i32 0
  %9 = load %struct.vmw_res_cache_entry*, %struct.vmw_res_cache_entry** %8, align 8
  %10 = load %struct.vmw_resource*, %struct.vmw_resource** %5, align 8
  %11 = call i64 @vmw_res_type(%struct.vmw_resource* %10)
  %12 = getelementptr inbounds %struct.vmw_res_cache_entry, %struct.vmw_res_cache_entry* %9, i64 %11
  store %struct.vmw_res_cache_entry* %12, %struct.vmw_res_cache_entry** %6, align 8
  %13 = load %struct.vmw_res_cache_entry*, %struct.vmw_res_cache_entry** %6, align 8
  %14 = getelementptr inbounds %struct.vmw_res_cache_entry, %struct.vmw_res_cache_entry* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %27

17:                                               ; preds = %2
  %18 = load %struct.vmw_res_cache_entry*, %struct.vmw_res_cache_entry** %6, align 8
  %19 = getelementptr inbounds %struct.vmw_res_cache_entry, %struct.vmw_res_cache_entry* %18, i32 0, i32 1
  %20 = load %struct.vmw_resource*, %struct.vmw_resource** %19, align 8
  %21 = load %struct.vmw_resource*, %struct.vmw_resource** %5, align 8
  %22 = icmp eq %struct.vmw_resource* %20, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %17
  %24 = load %struct.vmw_res_cache_entry*, %struct.vmw_res_cache_entry** %6, align 8
  %25 = getelementptr inbounds %struct.vmw_res_cache_entry, %struct.vmw_res_cache_entry* %24, i32 0, i32 0
  %26 = load %struct.vmw_ctx_validation_info*, %struct.vmw_ctx_validation_info** %25, align 8
  store %struct.vmw_ctx_validation_info* %26, %struct.vmw_ctx_validation_info** %3, align 8
  br label %29

27:                                               ; preds = %17, %2
  %28 = call i32 @WARN_ON_ONCE(i32 1)
  store %struct.vmw_ctx_validation_info* null, %struct.vmw_ctx_validation_info** %3, align 8
  br label %29

29:                                               ; preds = %27, %23
  %30 = load %struct.vmw_ctx_validation_info*, %struct.vmw_ctx_validation_info** %3, align 8
  ret %struct.vmw_ctx_validation_info* %30
}

declare dso_local i64 @vmw_res_type(%struct.vmw_resource*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
