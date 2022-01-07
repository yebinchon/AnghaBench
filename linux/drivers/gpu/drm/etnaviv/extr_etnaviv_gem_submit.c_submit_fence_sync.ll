; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/etnaviv/extr_etnaviv_gem_submit.c_submit_fence_sync.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/etnaviv/extr_etnaviv_gem_submit.c_submit_fence_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.etnaviv_gem_submit = type { i32, i32, %struct.etnaviv_gem_submit_bo* }
%struct.etnaviv_gem_submit_bo = type { i32, i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.dma_resv* }
%struct.dma_resv = type { i32 }

@ETNA_SUBMIT_BO_WRITE = common dso_local global i32 0, align 4
@ETNA_SUBMIT_NO_IMPLICIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.etnaviv_gem_submit*)* @submit_fence_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @submit_fence_sync(%struct.etnaviv_gem_submit* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.etnaviv_gem_submit*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.etnaviv_gem_submit_bo*, align 8
  %7 = alloca %struct.dma_resv*, align 8
  store %struct.etnaviv_gem_submit* %0, %struct.etnaviv_gem_submit** %3, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %4, align 4
  br label %8

8:                                                ; preds = %76, %1
  %9 = load i32, i32* %4, align 4
  %10 = load %struct.etnaviv_gem_submit*, %struct.etnaviv_gem_submit** %3, align 8
  %11 = getelementptr inbounds %struct.etnaviv_gem_submit, %struct.etnaviv_gem_submit* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp slt i32 %9, %12
  br i1 %13, label %14, label %79

14:                                               ; preds = %8
  %15 = load %struct.etnaviv_gem_submit*, %struct.etnaviv_gem_submit** %3, align 8
  %16 = getelementptr inbounds %struct.etnaviv_gem_submit, %struct.etnaviv_gem_submit* %15, i32 0, i32 2
  %17 = load %struct.etnaviv_gem_submit_bo*, %struct.etnaviv_gem_submit_bo** %16, align 8
  %18 = load i32, i32* %4, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.etnaviv_gem_submit_bo, %struct.etnaviv_gem_submit_bo* %17, i64 %19
  store %struct.etnaviv_gem_submit_bo* %20, %struct.etnaviv_gem_submit_bo** %6, align 8
  %21 = load %struct.etnaviv_gem_submit_bo*, %struct.etnaviv_gem_submit_bo** %6, align 8
  %22 = getelementptr inbounds %struct.etnaviv_gem_submit_bo, %struct.etnaviv_gem_submit_bo* %21, i32 0, i32 4
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load %struct.dma_resv*, %struct.dma_resv** %25, align 8
  store %struct.dma_resv* %26, %struct.dma_resv** %7, align 8
  %27 = load %struct.etnaviv_gem_submit_bo*, %struct.etnaviv_gem_submit_bo** %6, align 8
  %28 = getelementptr inbounds %struct.etnaviv_gem_submit_bo, %struct.etnaviv_gem_submit_bo* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @ETNA_SUBMIT_BO_WRITE, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %41, label %33

33:                                               ; preds = %14
  %34 = load %struct.dma_resv*, %struct.dma_resv** %7, align 8
  %35 = call i32 @dma_resv_reserve_shared(%struct.dma_resv* %34, i32 1)
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %5, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = load i32, i32* %5, align 4
  store i32 %39, i32* %2, align 4
  br label %81

40:                                               ; preds = %33
  br label %41

41:                                               ; preds = %40, %14
  %42 = load %struct.etnaviv_gem_submit*, %struct.etnaviv_gem_submit** %3, align 8
  %43 = getelementptr inbounds %struct.etnaviv_gem_submit, %struct.etnaviv_gem_submit* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @ETNA_SUBMIT_NO_IMPLICIT, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %41
  br label %76

49:                                               ; preds = %41
  %50 = load %struct.etnaviv_gem_submit_bo*, %struct.etnaviv_gem_submit_bo** %6, align 8
  %51 = getelementptr inbounds %struct.etnaviv_gem_submit_bo, %struct.etnaviv_gem_submit_bo* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @ETNA_SUBMIT_BO_WRITE, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %70

56:                                               ; preds = %49
  %57 = load %struct.dma_resv*, %struct.dma_resv** %7, align 8
  %58 = load %struct.etnaviv_gem_submit_bo*, %struct.etnaviv_gem_submit_bo** %6, align 8
  %59 = getelementptr inbounds %struct.etnaviv_gem_submit_bo, %struct.etnaviv_gem_submit_bo* %58, i32 0, i32 1
  %60 = load %struct.etnaviv_gem_submit_bo*, %struct.etnaviv_gem_submit_bo** %6, align 8
  %61 = getelementptr inbounds %struct.etnaviv_gem_submit_bo, %struct.etnaviv_gem_submit_bo* %60, i32 0, i32 3
  %62 = load %struct.etnaviv_gem_submit_bo*, %struct.etnaviv_gem_submit_bo** %6, align 8
  %63 = getelementptr inbounds %struct.etnaviv_gem_submit_bo, %struct.etnaviv_gem_submit_bo* %62, i32 0, i32 2
  %64 = call i32 @dma_resv_get_fences_rcu(%struct.dma_resv* %57, i32* %59, i32* %61, i32* %63)
  store i32 %64, i32* %5, align 4
  %65 = load i32, i32* %5, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %56
  %68 = load i32, i32* %5, align 4
  store i32 %68, i32* %2, align 4
  br label %81

69:                                               ; preds = %56
  br label %75

70:                                               ; preds = %49
  %71 = load %struct.dma_resv*, %struct.dma_resv** %7, align 8
  %72 = call i32 @dma_resv_get_excl_rcu(%struct.dma_resv* %71)
  %73 = load %struct.etnaviv_gem_submit_bo*, %struct.etnaviv_gem_submit_bo** %6, align 8
  %74 = getelementptr inbounds %struct.etnaviv_gem_submit_bo, %struct.etnaviv_gem_submit_bo* %73, i32 0, i32 1
  store i32 %72, i32* %74, align 4
  br label %75

75:                                               ; preds = %70, %69
  br label %76

76:                                               ; preds = %75, %48
  %77 = load i32, i32* %4, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %4, align 4
  br label %8

79:                                               ; preds = %8
  %80 = load i32, i32* %5, align 4
  store i32 %80, i32* %2, align 4
  br label %81

81:                                               ; preds = %79, %67, %38
  %82 = load i32, i32* %2, align 4
  ret i32 %82
}

declare dso_local i32 @dma_resv_reserve_shared(%struct.dma_resv*, i32) #1

declare dso_local i32 @dma_resv_get_fences_rcu(%struct.dma_resv*, i32*, i32*, i32*) #1

declare dso_local i32 @dma_resv_get_excl_rcu(%struct.dma_resv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
