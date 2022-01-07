; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_ttm_glue.c_vmw_validation_mem_init_ttm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_ttm_glue.c_vmw_validation_mem_init_ttm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmw_private = type { %struct.vmw_validation_mem }
%struct.vmw_validation_mem = type { i64, i32, i32 }

@vmw_vmt_reserve = common dso_local global i32 0, align 4
@vmw_vmt_unreserve = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vmw_validation_mem_init_ttm(%struct.vmw_private* %0, i64 %1) #0 {
  %3 = alloca %struct.vmw_private*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.vmw_validation_mem*, align 8
  store %struct.vmw_private* %0, %struct.vmw_private** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.vmw_private*, %struct.vmw_private** %3, align 8
  %7 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %6, i32 0, i32 0
  store %struct.vmw_validation_mem* %7, %struct.vmw_validation_mem** %5, align 8
  %8 = load i32, i32* @vmw_vmt_reserve, align 4
  %9 = load %struct.vmw_validation_mem*, %struct.vmw_validation_mem** %5, align 8
  %10 = getelementptr inbounds %struct.vmw_validation_mem, %struct.vmw_validation_mem* %9, i32 0, i32 2
  store i32 %8, i32* %10, align 4
  %11 = load i32, i32* @vmw_vmt_unreserve, align 4
  %12 = load %struct.vmw_validation_mem*, %struct.vmw_validation_mem** %5, align 8
  %13 = getelementptr inbounds %struct.vmw_validation_mem, %struct.vmw_validation_mem* %12, i32 0, i32 1
  store i32 %11, i32* %13, align 8
  %14 = load i64, i64* %4, align 8
  %15 = load %struct.vmw_validation_mem*, %struct.vmw_validation_mem** %5, align 8
  %16 = getelementptr inbounds %struct.vmw_validation_mem, %struct.vmw_validation_mem* %15, i32 0, i32 0
  store i64 %14, i64* %16, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
