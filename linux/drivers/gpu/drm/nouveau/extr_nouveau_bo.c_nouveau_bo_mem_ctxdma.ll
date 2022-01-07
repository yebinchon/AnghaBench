; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_bo.c_nouveau_bo_mem_ctxdma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_bo.c_nouveau_bo_mem_ctxdma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_buffer_object = type { i32 }
%struct.nouveau_channel = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.ttm_mem_reg = type { i64 }

@TTM_PL_TT = common dso_local global i64 0, align 8
@NvDmaTT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ttm_buffer_object*, %struct.nouveau_channel*, %struct.ttm_mem_reg*)* @nouveau_bo_mem_ctxdma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nouveau_bo_mem_ctxdma(%struct.ttm_buffer_object* %0, %struct.nouveau_channel* %1, %struct.ttm_mem_reg* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ttm_buffer_object*, align 8
  %6 = alloca %struct.nouveau_channel*, align 8
  %7 = alloca %struct.ttm_mem_reg*, align 8
  store %struct.ttm_buffer_object* %0, %struct.ttm_buffer_object** %5, align 8
  store %struct.nouveau_channel* %1, %struct.nouveau_channel** %6, align 8
  store %struct.ttm_mem_reg* %2, %struct.ttm_mem_reg** %7, align 8
  %8 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %7, align 8
  %9 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @TTM_PL_TT, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %3
  %14 = load i32, i32* @NvDmaTT, align 4
  store i32 %14, i32* %4, align 4
  br label %20

15:                                               ; preds = %3
  %16 = load %struct.nouveau_channel*, %struct.nouveau_channel** %6, align 8
  %17 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %4, align 4
  br label %20

20:                                               ; preds = %15, %13
  %21 = load i32, i32* %4, align 4
  ret i32 %21
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
