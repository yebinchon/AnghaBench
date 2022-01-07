; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/mmu/extr_base.c_nvkm_mmu_heap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/mmu/extr_base.c_nvkm_mmu_heap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_mmu = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_mmu*, i32, i64)* @nvkm_mmu_heap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvkm_mmu_heap(%struct.nvkm_mmu* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nvkm_mmu*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.nvkm_mmu* %0, %struct.nvkm_mmu** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %47

10:                                               ; preds = %3
  %11 = load %struct.nvkm_mmu*, %struct.nvkm_mmu** %5, align 8
  %12 = getelementptr inbounds %struct.nvkm_mmu, %struct.nvkm_mmu* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.nvkm_mmu*, %struct.nvkm_mmu** %5, align 8
  %15 = getelementptr inbounds %struct.nvkm_mmu, %struct.nvkm_mmu* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = call i64 @ARRAY_SIZE(%struct.TYPE_2__* %16)
  %18 = icmp eq i64 %13, %17
  %19 = zext i1 %18 to i32
  %20 = call i32 @WARN_ON(i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %46, label %22

22:                                               ; preds = %10
  %23 = load i32, i32* %6, align 4
  %24 = load %struct.nvkm_mmu*, %struct.nvkm_mmu** %5, align 8
  %25 = getelementptr inbounds %struct.nvkm_mmu, %struct.nvkm_mmu* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = load %struct.nvkm_mmu*, %struct.nvkm_mmu** %5, align 8
  %28 = getelementptr inbounds %struct.nvkm_mmu, %struct.nvkm_mmu* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  store i32 %23, i32* %31, align 8
  %32 = load i64, i64* %7, align 8
  %33 = load %struct.nvkm_mmu*, %struct.nvkm_mmu** %5, align 8
  %34 = getelementptr inbounds %struct.nvkm_mmu, %struct.nvkm_mmu* %33, i32 0, i32 1
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = load %struct.nvkm_mmu*, %struct.nvkm_mmu** %5, align 8
  %37 = getelementptr inbounds %struct.nvkm_mmu, %struct.nvkm_mmu* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  store i64 %32, i64* %40, align 8
  %41 = load %struct.nvkm_mmu*, %struct.nvkm_mmu** %5, align 8
  %42 = getelementptr inbounds %struct.nvkm_mmu, %struct.nvkm_mmu* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = add i64 %43, 1
  store i64 %44, i64* %42, align 8
  %45 = trunc i64 %43 to i32
  store i32 %45, i32* %4, align 4
  br label %50

46:                                               ; preds = %10
  br label %47

47:                                               ; preds = %46, %3
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %4, align 4
  br label %50

50:                                               ; preds = %47, %22
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i64 @ARRAY_SIZE(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
