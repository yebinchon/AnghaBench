; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/extr_msm_gem.c_put_pages.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/extr_msm_gem.c_put_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_gem_object = type { i32 }
%struct.msm_gem_object = type { i32, i32*, i64 }

@MSM_BO_WC = common dso_local global i32 0, align 4
@MSM_BO_UNCACHED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_gem_object*)* @put_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @put_pages(%struct.drm_gem_object* %0) #0 {
  %2 = alloca %struct.drm_gem_object*, align 8
  %3 = alloca %struct.msm_gem_object*, align 8
  store %struct.drm_gem_object* %0, %struct.drm_gem_object** %2, align 8
  %4 = load %struct.drm_gem_object*, %struct.drm_gem_object** %2, align 8
  %5 = call %struct.msm_gem_object* @to_msm_bo(%struct.drm_gem_object* %4)
  store %struct.msm_gem_object* %5, %struct.msm_gem_object** %3, align 8
  %6 = load %struct.msm_gem_object*, %struct.msm_gem_object** %3, align 8
  %7 = getelementptr inbounds %struct.msm_gem_object, %struct.msm_gem_object* %6, i32 0, i32 1
  %8 = load i32*, i32** %7, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %10, label %52

10:                                               ; preds = %1
  %11 = load %struct.msm_gem_object*, %struct.msm_gem_object** %3, align 8
  %12 = getelementptr inbounds %struct.msm_gem_object, %struct.msm_gem_object* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %36

15:                                               ; preds = %10
  %16 = load %struct.msm_gem_object*, %struct.msm_gem_object** %3, align 8
  %17 = getelementptr inbounds %struct.msm_gem_object, %struct.msm_gem_object* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @MSM_BO_WC, align 4
  %20 = load i32, i32* @MSM_BO_UNCACHED, align 4
  %21 = or i32 %19, %20
  %22 = and i32 %18, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %15
  %25 = load %struct.msm_gem_object*, %struct.msm_gem_object** %3, align 8
  %26 = call i32 @sync_for_cpu(%struct.msm_gem_object* %25)
  br label %27

27:                                               ; preds = %24, %15
  %28 = load %struct.msm_gem_object*, %struct.msm_gem_object** %3, align 8
  %29 = getelementptr inbounds %struct.msm_gem_object, %struct.msm_gem_object* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @sg_free_table(i64 %30)
  %32 = load %struct.msm_gem_object*, %struct.msm_gem_object** %3, align 8
  %33 = getelementptr inbounds %struct.msm_gem_object, %struct.msm_gem_object* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @kfree(i64 %34)
  br label %36

36:                                               ; preds = %27, %10
  %37 = load %struct.drm_gem_object*, %struct.drm_gem_object** %2, align 8
  %38 = call i64 @use_pages(%struct.drm_gem_object* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %36
  %41 = load %struct.drm_gem_object*, %struct.drm_gem_object** %2, align 8
  %42 = load %struct.msm_gem_object*, %struct.msm_gem_object** %3, align 8
  %43 = getelementptr inbounds %struct.msm_gem_object, %struct.msm_gem_object* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = call i32 @drm_gem_put_pages(%struct.drm_gem_object* %41, i32* %44, i32 1, i32 0)
  br label %49

46:                                               ; preds = %36
  %47 = load %struct.drm_gem_object*, %struct.drm_gem_object** %2, align 8
  %48 = call i32 @put_pages_vram(%struct.drm_gem_object* %47)
  br label %49

49:                                               ; preds = %46, %40
  %50 = load %struct.msm_gem_object*, %struct.msm_gem_object** %3, align 8
  %51 = getelementptr inbounds %struct.msm_gem_object, %struct.msm_gem_object* %50, i32 0, i32 1
  store i32* null, i32** %51, align 8
  br label %52

52:                                               ; preds = %49, %1
  ret void
}

declare dso_local %struct.msm_gem_object* @to_msm_bo(%struct.drm_gem_object*) #1

declare dso_local i32 @sync_for_cpu(%struct.msm_gem_object*) #1

declare dso_local i32 @sg_free_table(i64) #1

declare dso_local i32 @kfree(i64) #1

declare dso_local i64 @use_pages(%struct.drm_gem_object*) #1

declare dso_local i32 @drm_gem_put_pages(%struct.drm_gem_object*, i32*, i32, i32) #1

declare dso_local i32 @put_pages_vram(%struct.drm_gem_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
