; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/etnaviv/extr_etnaviv_gem_submit.c_submit_attach_object_fences.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/etnaviv/extr_etnaviv_gem_submit.c_submit_attach_object_fences.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.etnaviv_gem_submit = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.drm_gem_object }
%struct.drm_gem_object = type { i32 }

@ETNA_SUBMIT_BO_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.etnaviv_gem_submit*)* @submit_attach_object_fences to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @submit_attach_object_fences(%struct.etnaviv_gem_submit* %0) #0 {
  %2 = alloca %struct.etnaviv_gem_submit*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_gem_object*, align 8
  store %struct.etnaviv_gem_submit* %0, %struct.etnaviv_gem_submit** %2, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %52, %1
  %6 = load i32, i32* %3, align 4
  %7 = load %struct.etnaviv_gem_submit*, %struct.etnaviv_gem_submit** %2, align 8
  %8 = getelementptr inbounds %struct.etnaviv_gem_submit, %struct.etnaviv_gem_submit* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp slt i32 %6, %9
  br i1 %10, label %11, label %55

11:                                               ; preds = %5
  %12 = load %struct.etnaviv_gem_submit*, %struct.etnaviv_gem_submit** %2, align 8
  %13 = getelementptr inbounds %struct.etnaviv_gem_submit, %struct.etnaviv_gem_submit* %12, i32 0, i32 2
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = load i32, i32* %3, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  store %struct.drm_gem_object* %20, %struct.drm_gem_object** %4, align 8
  %21 = load %struct.etnaviv_gem_submit*, %struct.etnaviv_gem_submit** %2, align 8
  %22 = getelementptr inbounds %struct.etnaviv_gem_submit, %struct.etnaviv_gem_submit* %21, i32 0, i32 2
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = load i32, i32* %3, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @ETNA_SUBMIT_BO_WRITE, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %11
  %33 = load %struct.drm_gem_object*, %struct.drm_gem_object** %4, align 8
  %34 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.etnaviv_gem_submit*, %struct.etnaviv_gem_submit** %2, align 8
  %37 = getelementptr inbounds %struct.etnaviv_gem_submit, %struct.etnaviv_gem_submit* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @dma_resv_add_excl_fence(i32 %35, i32 %38)
  br label %48

40:                                               ; preds = %11
  %41 = load %struct.drm_gem_object*, %struct.drm_gem_object** %4, align 8
  %42 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.etnaviv_gem_submit*, %struct.etnaviv_gem_submit** %2, align 8
  %45 = getelementptr inbounds %struct.etnaviv_gem_submit, %struct.etnaviv_gem_submit* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @dma_resv_add_shared_fence(i32 %43, i32 %46)
  br label %48

48:                                               ; preds = %40, %32
  %49 = load %struct.etnaviv_gem_submit*, %struct.etnaviv_gem_submit** %2, align 8
  %50 = load i32, i32* %3, align 4
  %51 = call i32 @submit_unlock_object(%struct.etnaviv_gem_submit* %49, i32 %50)
  br label %52

52:                                               ; preds = %48
  %53 = load i32, i32* %3, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %3, align 4
  br label %5

55:                                               ; preds = %5
  ret void
}

declare dso_local i32 @dma_resv_add_excl_fence(i32, i32) #1

declare dso_local i32 @dma_resv_add_shared_fence(i32, i32) #1

declare dso_local i32 @submit_unlock_object(%struct.etnaviv_gem_submit*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
