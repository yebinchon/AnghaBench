; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/extr_msm_gem.c_msm_gem_get_iova_locked.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/extr_msm_gem.c_msm_gem_get_iova_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_gem_object = type { i32 }
%struct.msm_gem_address_space = type { i32 }
%struct.msm_gem_object = type { i32 }
%struct.msm_gem_vma = type { i32 }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_gem_object*, %struct.msm_gem_address_space*, i32*)* @msm_gem_get_iova_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msm_gem_get_iova_locked(%struct.drm_gem_object* %0, %struct.msm_gem_address_space* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_gem_object*, align 8
  %6 = alloca %struct.msm_gem_address_space*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.msm_gem_object*, align 8
  %9 = alloca %struct.msm_gem_vma*, align 8
  %10 = alloca i32, align 4
  store %struct.drm_gem_object* %0, %struct.drm_gem_object** %5, align 8
  store %struct.msm_gem_address_space* %1, %struct.msm_gem_address_space** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load %struct.drm_gem_object*, %struct.drm_gem_object** %5, align 8
  %12 = call %struct.msm_gem_object* @to_msm_bo(%struct.drm_gem_object* %11)
  store %struct.msm_gem_object* %12, %struct.msm_gem_object** %8, align 8
  store i32 0, i32* %10, align 4
  %13 = load %struct.msm_gem_object*, %struct.msm_gem_object** %8, align 8
  %14 = getelementptr inbounds %struct.msm_gem_object, %struct.msm_gem_object* %13, i32 0, i32 0
  %15 = call i32 @mutex_is_locked(i32* %14)
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i32 @WARN_ON(i32 %18)
  %20 = load %struct.drm_gem_object*, %struct.drm_gem_object** %5, align 8
  %21 = load %struct.msm_gem_address_space*, %struct.msm_gem_address_space** %6, align 8
  %22 = call %struct.msm_gem_vma* @lookup_vma(%struct.drm_gem_object* %20, %struct.msm_gem_address_space* %21)
  store %struct.msm_gem_vma* %22, %struct.msm_gem_vma** %9, align 8
  %23 = load %struct.msm_gem_vma*, %struct.msm_gem_vma** %9, align 8
  %24 = icmp ne %struct.msm_gem_vma* %23, null
  br i1 %24, label %51, label %25

25:                                               ; preds = %3
  %26 = load %struct.drm_gem_object*, %struct.drm_gem_object** %5, align 8
  %27 = load %struct.msm_gem_address_space*, %struct.msm_gem_address_space** %6, align 8
  %28 = call %struct.msm_gem_vma* @add_vma(%struct.drm_gem_object* %26, %struct.msm_gem_address_space* %27)
  store %struct.msm_gem_vma* %28, %struct.msm_gem_vma** %9, align 8
  %29 = load %struct.msm_gem_vma*, %struct.msm_gem_vma** %9, align 8
  %30 = call i64 @IS_ERR(%struct.msm_gem_vma* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %25
  %33 = load %struct.msm_gem_vma*, %struct.msm_gem_vma** %9, align 8
  %34 = call i32 @PTR_ERR(%struct.msm_gem_vma* %33)
  store i32 %34, i32* %4, align 4
  br label %56

35:                                               ; preds = %25
  %36 = load %struct.msm_gem_address_space*, %struct.msm_gem_address_space** %6, align 8
  %37 = load %struct.msm_gem_vma*, %struct.msm_gem_vma** %9, align 8
  %38 = load %struct.drm_gem_object*, %struct.drm_gem_object** %5, align 8
  %39 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @PAGE_SHIFT, align 4
  %42 = ashr i32 %40, %41
  %43 = call i32 @msm_gem_init_vma(%struct.msm_gem_address_space* %36, %struct.msm_gem_vma* %37, i32 %42)
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %10, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %35
  %47 = load %struct.msm_gem_vma*, %struct.msm_gem_vma** %9, align 8
  %48 = call i32 @del_vma(%struct.msm_gem_vma* %47)
  %49 = load i32, i32* %10, align 4
  store i32 %49, i32* %4, align 4
  br label %56

50:                                               ; preds = %35
  br label %51

51:                                               ; preds = %50, %3
  %52 = load %struct.msm_gem_vma*, %struct.msm_gem_vma** %9, align 8
  %53 = getelementptr inbounds %struct.msm_gem_vma, %struct.msm_gem_vma* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32*, i32** %7, align 8
  store i32 %54, i32* %55, align 4
  store i32 0, i32* %4, align 4
  br label %56

56:                                               ; preds = %51, %46, %32
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local %struct.msm_gem_object* @to_msm_bo(%struct.drm_gem_object*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @mutex_is_locked(i32*) #1

declare dso_local %struct.msm_gem_vma* @lookup_vma(%struct.drm_gem_object*, %struct.msm_gem_address_space*) #1

declare dso_local %struct.msm_gem_vma* @add_vma(%struct.drm_gem_object*, %struct.msm_gem_address_space*) #1

declare dso_local i64 @IS_ERR(%struct.msm_gem_vma*) #1

declare dso_local i32 @PTR_ERR(%struct.msm_gem_vma*) #1

declare dso_local i32 @msm_gem_init_vma(%struct.msm_gem_address_space*, %struct.msm_gem_vma*, i32) #1

declare dso_local i32 @del_vma(%struct.msm_gem_vma*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
