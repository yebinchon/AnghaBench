; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_prime.c_vmw_prime_fd_to_handle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_prime.c_vmw_prime_fd_to_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.drm_file = type { i32 }
%struct.ttm_object_file = type { i32 }
%struct.TYPE_2__ = type { %struct.ttm_object_file* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vmw_prime_fd_to_handle(%struct.drm_device* %0, %struct.drm_file* %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.drm_file*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.ttm_object_file*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store %struct.drm_file* %1, %struct.drm_file** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %10 = load %struct.drm_file*, %struct.drm_file** %6, align 8
  %11 = call %struct.TYPE_2__* @vmw_fpriv(%struct.drm_file* %10)
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.ttm_object_file*, %struct.ttm_object_file** %12, align 8
  store %struct.ttm_object_file* %13, %struct.ttm_object_file** %9, align 8
  %14 = load %struct.ttm_object_file*, %struct.ttm_object_file** %9, align 8
  %15 = load i32, i32* %7, align 4
  %16 = load i32*, i32** %8, align 8
  %17 = call i32 @ttm_prime_fd_to_handle(%struct.ttm_object_file* %14, i32 %15, i32* %16)
  ret i32 %17
}

declare dso_local %struct.TYPE_2__* @vmw_fpriv(%struct.drm_file*) #1

declare dso_local i32 @ttm_prime_fd_to_handle(%struct.ttm_object_file*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
