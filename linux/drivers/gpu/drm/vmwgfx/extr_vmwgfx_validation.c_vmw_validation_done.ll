; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_validation.c_vmw_validation_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_validation.c_vmw_validation_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmw_validation_context = type { i64 }
%struct.vmw_fence_obj = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vmw_validation_done(%struct.vmw_validation_context* %0, %struct.vmw_fence_obj* %1) #0 {
  %3 = alloca %struct.vmw_validation_context*, align 8
  %4 = alloca %struct.vmw_fence_obj*, align 8
  store %struct.vmw_validation_context* %0, %struct.vmw_validation_context** %3, align 8
  store %struct.vmw_fence_obj* %1, %struct.vmw_fence_obj** %4, align 8
  %5 = load %struct.vmw_validation_context*, %struct.vmw_validation_context** %3, align 8
  %6 = load %struct.vmw_fence_obj*, %struct.vmw_fence_obj** %4, align 8
  %7 = call i32 @vmw_validation_bo_fence(%struct.vmw_validation_context* %5, %struct.vmw_fence_obj* %6)
  %8 = load %struct.vmw_validation_context*, %struct.vmw_validation_context** %3, align 8
  %9 = call i32 @vmw_validation_res_unreserve(%struct.vmw_validation_context* %8, i32 0)
  %10 = load %struct.vmw_validation_context*, %struct.vmw_validation_context** %3, align 8
  %11 = getelementptr inbounds %struct.vmw_validation_context, %struct.vmw_validation_context* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %2
  %15 = load %struct.vmw_validation_context*, %struct.vmw_validation_context** %3, align 8
  %16 = getelementptr inbounds %struct.vmw_validation_context, %struct.vmw_validation_context* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = call i32 @mutex_unlock(i64 %17)
  br label %19

19:                                               ; preds = %14, %2
  %20 = load %struct.vmw_validation_context*, %struct.vmw_validation_context** %3, align 8
  %21 = call i32 @vmw_validation_unref_lists(%struct.vmw_validation_context* %20)
  ret void
}

declare dso_local i32 @vmw_validation_bo_fence(%struct.vmw_validation_context*, %struct.vmw_fence_obj*) #1

declare dso_local i32 @vmw_validation_res_unreserve(%struct.vmw_validation_context*, i32) #1

declare dso_local i32 @mutex_unlock(i64) #1

declare dso_local i32 @vmw_validation_unref_lists(%struct.vmw_validation_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
