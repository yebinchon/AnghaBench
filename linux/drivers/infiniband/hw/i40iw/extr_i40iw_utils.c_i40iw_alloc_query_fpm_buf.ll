; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_utils.c_i40iw_alloc_query_fpm_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_utils.c_i40iw_alloc_query_fpm_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_sc_dev = type { i64 }
%struct.i40iw_dma_mem = type { i32 }
%struct.i40iw_device = type { i32 }

@I40IW_QUERY_FPM_BUF_SIZE = common dso_local global i32 0, align 4
@I40IW_FPM_QUERY_BUF_ALIGNMENT_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i40iw_alloc_query_fpm_buf(%struct.i40iw_sc_dev* %0, %struct.i40iw_dma_mem* %1) #0 {
  %3 = alloca %struct.i40iw_sc_dev*, align 8
  %4 = alloca %struct.i40iw_dma_mem*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.i40iw_device*, align 8
  store %struct.i40iw_sc_dev* %0, %struct.i40iw_sc_dev** %3, align 8
  store %struct.i40iw_dma_mem* %1, %struct.i40iw_dma_mem** %4, align 8
  %7 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %3, align 8
  %8 = getelementptr inbounds %struct.i40iw_sc_dev, %struct.i40iw_sc_dev* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.i40iw_device*
  store %struct.i40iw_device* %10, %struct.i40iw_device** %6, align 8
  %11 = load %struct.i40iw_device*, %struct.i40iw_device** %6, align 8
  %12 = load %struct.i40iw_dma_mem*, %struct.i40iw_dma_mem** %4, align 8
  %13 = load i32, i32* @I40IW_QUERY_FPM_BUF_SIZE, align 4
  %14 = load i32, i32* @I40IW_FPM_QUERY_BUF_ALIGNMENT_MASK, align 4
  %15 = call i32 @i40iw_obj_aligned_mem(%struct.i40iw_device* %11, %struct.i40iw_dma_mem* %12, i32 %13, i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  ret i32 %16
}

declare dso_local i32 @i40iw_obj_aligned_mem(%struct.i40iw_device*, %struct.i40iw_dma_mem*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
