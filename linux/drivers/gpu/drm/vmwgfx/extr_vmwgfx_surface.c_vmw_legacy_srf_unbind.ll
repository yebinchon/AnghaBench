; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_surface.c_vmw_legacy_srf_unbind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_surface.c_vmw_legacy_srf_unbind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmw_resource = type { i32 }
%struct.ttm_validate_buffer = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vmw_resource*, i32, %struct.ttm_validate_buffer*)* @vmw_legacy_srf_unbind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmw_legacy_srf_unbind(%struct.vmw_resource* %0, i32 %1, %struct.ttm_validate_buffer* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vmw_resource*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ttm_validate_buffer*, align 8
  store %struct.vmw_resource* %0, %struct.vmw_resource** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.ttm_validate_buffer* %2, %struct.ttm_validate_buffer** %7, align 8
  %8 = load i32, i32* %6, align 4
  %9 = call i64 @unlikely(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %3
  %12 = load %struct.vmw_resource*, %struct.vmw_resource** %5, align 8
  %13 = load %struct.ttm_validate_buffer*, %struct.ttm_validate_buffer** %7, align 8
  %14 = call i32 @vmw_legacy_srf_dma(%struct.vmw_resource* %12, %struct.ttm_validate_buffer* %13, i32 0)
  store i32 %14, i32* %4, align 4
  br label %16

15:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %16

16:                                               ; preds = %15, %11
  %17 = load i32, i32* %4, align 4
  ret i32 %17
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @vmw_legacy_srf_dma(%struct.vmw_resource*, %struct.ttm_validate_buffer*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
