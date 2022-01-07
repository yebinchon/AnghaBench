; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_bo.c_nv84_bo_move_exec.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_bo.c_nv84_bo_move_exec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_channel = type { i32 }
%struct.ttm_buffer_object = type { i32 }
%struct.ttm_mem_reg = type { i32 }
%struct.nouveau_mem = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@NvSubCopy = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nouveau_channel*, %struct.ttm_buffer_object*, %struct.ttm_mem_reg*, %struct.ttm_mem_reg*)* @nv84_bo_move_exec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv84_bo_move_exec(%struct.nouveau_channel* %0, %struct.ttm_buffer_object* %1, %struct.ttm_mem_reg* %2, %struct.ttm_mem_reg* %3) #0 {
  %5 = alloca %struct.nouveau_channel*, align 8
  %6 = alloca %struct.ttm_buffer_object*, align 8
  %7 = alloca %struct.ttm_mem_reg*, align 8
  %8 = alloca %struct.ttm_mem_reg*, align 8
  %9 = alloca %struct.nouveau_mem*, align 8
  %10 = alloca i32, align 4
  store %struct.nouveau_channel* %0, %struct.nouveau_channel** %5, align 8
  store %struct.ttm_buffer_object* %1, %struct.ttm_buffer_object** %6, align 8
  store %struct.ttm_mem_reg* %2, %struct.ttm_mem_reg** %7, align 8
  store %struct.ttm_mem_reg* %3, %struct.ttm_mem_reg** %8, align 8
  %11 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %7, align 8
  %12 = call %struct.nouveau_mem* @nouveau_mem(%struct.ttm_mem_reg* %11)
  store %struct.nouveau_mem* %12, %struct.nouveau_mem** %9, align 8
  %13 = load %struct.nouveau_channel*, %struct.nouveau_channel** %5, align 8
  %14 = call i32 @RING_SPACE(%struct.nouveau_channel* %13, i32 7)
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* %10, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %66

17:                                               ; preds = %4
  %18 = load %struct.nouveau_channel*, %struct.nouveau_channel** %5, align 8
  %19 = load i32, i32* @NvSubCopy, align 4
  %20 = call i32 @BEGIN_NV04(%struct.nouveau_channel* %18, i32 %19, i32 772, i32 6)
  %21 = load %struct.nouveau_channel*, %struct.nouveau_channel** %5, align 8
  %22 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %8, align 8
  %23 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @PAGE_SHIFT, align 4
  %26 = shl i32 %24, %25
  %27 = call i32 @OUT_RING(%struct.nouveau_channel* %21, i32 %26)
  %28 = load %struct.nouveau_channel*, %struct.nouveau_channel** %5, align 8
  %29 = load %struct.nouveau_mem*, %struct.nouveau_mem** %9, align 8
  %30 = getelementptr inbounds %struct.nouveau_mem, %struct.nouveau_mem* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i64 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @upper_32_bits(i32 %34)
  %36 = call i32 @OUT_RING(%struct.nouveau_channel* %28, i32 %35)
  %37 = load %struct.nouveau_channel*, %struct.nouveau_channel** %5, align 8
  %38 = load %struct.nouveau_mem*, %struct.nouveau_mem** %9, align 8
  %39 = getelementptr inbounds %struct.nouveau_mem, %struct.nouveau_mem* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i64 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @lower_32_bits(i32 %43)
  %45 = call i32 @OUT_RING(%struct.nouveau_channel* %37, i32 %44)
  %46 = load %struct.nouveau_channel*, %struct.nouveau_channel** %5, align 8
  %47 = load %struct.nouveau_mem*, %struct.nouveau_mem** %9, align 8
  %48 = getelementptr inbounds %struct.nouveau_mem, %struct.nouveau_mem* %47, i32 0, i32 0
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i64 1
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @upper_32_bits(i32 %52)
  %54 = call i32 @OUT_RING(%struct.nouveau_channel* %46, i32 %53)
  %55 = load %struct.nouveau_channel*, %struct.nouveau_channel** %5, align 8
  %56 = load %struct.nouveau_mem*, %struct.nouveau_mem** %9, align 8
  %57 = getelementptr inbounds %struct.nouveau_mem, %struct.nouveau_mem* %56, i32 0, i32 0
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i64 1
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @lower_32_bits(i32 %61)
  %63 = call i32 @OUT_RING(%struct.nouveau_channel* %55, i32 %62)
  %64 = load %struct.nouveau_channel*, %struct.nouveau_channel** %5, align 8
  %65 = call i32 @OUT_RING(%struct.nouveau_channel* %64, i32 0)
  br label %66

66:                                               ; preds = %17, %4
  %67 = load i32, i32* %10, align 4
  ret i32 %67
}

declare dso_local %struct.nouveau_mem* @nouveau_mem(%struct.ttm_mem_reg*) #1

declare dso_local i32 @RING_SPACE(%struct.nouveau_channel*, i32) #1

declare dso_local i32 @BEGIN_NV04(%struct.nouveau_channel*, i32, i32, i32) #1

declare dso_local i32 @OUT_RING(%struct.nouveau_channel*, i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
