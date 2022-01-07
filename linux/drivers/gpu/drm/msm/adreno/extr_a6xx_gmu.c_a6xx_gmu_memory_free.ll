; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_a6xx_gmu.c_a6xx_gmu_memory_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_a6xx_gmu.c_a6xx_gmu_memory_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.a6xx_gmu = type { i32 }
%struct.a6xx_gmu_bo = type { i32, %struct.a6xx_gmu_bo*, i32 }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.a6xx_gmu*, %struct.a6xx_gmu_bo*)* @a6xx_gmu_memory_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @a6xx_gmu_memory_free(%struct.a6xx_gmu* %0, %struct.a6xx_gmu_bo* %1) #0 {
  %3 = alloca %struct.a6xx_gmu*, align 8
  %4 = alloca %struct.a6xx_gmu_bo*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.a6xx_gmu* %0, %struct.a6xx_gmu** %3, align 8
  store %struct.a6xx_gmu_bo* %1, %struct.a6xx_gmu_bo** %4, align 8
  %8 = load %struct.a6xx_gmu_bo*, %struct.a6xx_gmu_bo** %4, align 8
  %9 = call i64 @IS_ERR_OR_NULL(%struct.a6xx_gmu_bo* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %54

12:                                               ; preds = %2
  %13 = load %struct.a6xx_gmu_bo*, %struct.a6xx_gmu_bo** %4, align 8
  %14 = getelementptr inbounds %struct.a6xx_gmu_bo, %struct.a6xx_gmu_bo* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @PAGE_SHIFT, align 4
  %17 = ashr i32 %15, %16
  store i32 %17, i32* %5, align 4
  %18 = load %struct.a6xx_gmu_bo*, %struct.a6xx_gmu_bo** %4, align 8
  %19 = getelementptr inbounds %struct.a6xx_gmu_bo, %struct.a6xx_gmu_bo* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %21

21:                                               ; preds = %39, %12
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %47

25:                                               ; preds = %21
  %26 = load %struct.a6xx_gmu*, %struct.a6xx_gmu** %3, align 8
  %27 = getelementptr inbounds %struct.a6xx_gmu, %struct.a6xx_gmu* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %7, align 4
  %30 = load i64, i64* @PAGE_SIZE, align 8
  %31 = call i32 @iommu_unmap(i32 %28, i32 %29, i64 %30)
  %32 = load %struct.a6xx_gmu_bo*, %struct.a6xx_gmu_bo** %4, align 8
  %33 = getelementptr inbounds %struct.a6xx_gmu_bo, %struct.a6xx_gmu_bo* %32, i32 0, i32 1
  %34 = load %struct.a6xx_gmu_bo*, %struct.a6xx_gmu_bo** %33, align 8
  %35 = load i32, i32* %6, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.a6xx_gmu_bo, %struct.a6xx_gmu_bo* %34, i64 %36
  %38 = call i32 @__free_pages(%struct.a6xx_gmu_bo* byval(%struct.a6xx_gmu_bo) align 8 %37, i32 0)
  br label %39

39:                                               ; preds = %25
  %40 = load i32, i32* %6, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %6, align 4
  %42 = load i64, i64* @PAGE_SIZE, align 8
  %43 = load i32, i32* %7, align 4
  %44 = sext i32 %43 to i64
  %45 = add nsw i64 %44, %42
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %7, align 4
  br label %21

47:                                               ; preds = %21
  %48 = load %struct.a6xx_gmu_bo*, %struct.a6xx_gmu_bo** %4, align 8
  %49 = getelementptr inbounds %struct.a6xx_gmu_bo, %struct.a6xx_gmu_bo* %48, i32 0, i32 1
  %50 = load %struct.a6xx_gmu_bo*, %struct.a6xx_gmu_bo** %49, align 8
  %51 = call i32 @kfree(%struct.a6xx_gmu_bo* %50)
  %52 = load %struct.a6xx_gmu_bo*, %struct.a6xx_gmu_bo** %4, align 8
  %53 = call i32 @kfree(%struct.a6xx_gmu_bo* %52)
  br label %54

54:                                               ; preds = %47, %11
  ret void
}

declare dso_local i64 @IS_ERR_OR_NULL(%struct.a6xx_gmu_bo*) #1

declare dso_local i32 @iommu_unmap(i32, i32, i64) #1

declare dso_local i32 @__free_pages(%struct.a6xx_gmu_bo* byval(%struct.a6xx_gmu_bo) align 8, i32) #1

declare dso_local i32 @kfree(%struct.a6xx_gmu_bo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
