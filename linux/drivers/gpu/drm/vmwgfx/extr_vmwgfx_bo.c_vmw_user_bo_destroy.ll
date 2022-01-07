; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_bo.c_vmw_user_bo_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_bo.c_vmw_user_bo_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_buffer_object = type { i32 }
%struct.vmw_user_buffer_object = type { i32 }

@prime = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ttm_buffer_object*)* @vmw_user_bo_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vmw_user_bo_destroy(%struct.ttm_buffer_object* %0) #0 {
  %2 = alloca %struct.ttm_buffer_object*, align 8
  %3 = alloca %struct.vmw_user_buffer_object*, align 8
  store %struct.ttm_buffer_object* %0, %struct.ttm_buffer_object** %2, align 8
  %4 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %2, align 8
  %5 = call %struct.vmw_user_buffer_object* @vmw_user_buffer_object(%struct.ttm_buffer_object* %4)
  store %struct.vmw_user_buffer_object* %5, %struct.vmw_user_buffer_object** %3, align 8
  %6 = load %struct.vmw_user_buffer_object*, %struct.vmw_user_buffer_object** %3, align 8
  %7 = getelementptr inbounds %struct.vmw_user_buffer_object, %struct.vmw_user_buffer_object* %6, i32 0, i32 0
  %8 = call i32 @vmw_bo_unmap(i32* %7)
  %9 = load %struct.vmw_user_buffer_object*, %struct.vmw_user_buffer_object** %3, align 8
  %10 = load i32, i32* @prime, align 4
  %11 = call i32 @ttm_prime_object_kfree(%struct.vmw_user_buffer_object* %9, i32 %10)
  ret void
}

declare dso_local %struct.vmw_user_buffer_object* @vmw_user_buffer_object(%struct.ttm_buffer_object*) #1

declare dso_local i32 @vmw_bo_unmap(i32*) #1

declare dso_local i32 @ttm_prime_object_kfree(%struct.vmw_user_buffer_object*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
