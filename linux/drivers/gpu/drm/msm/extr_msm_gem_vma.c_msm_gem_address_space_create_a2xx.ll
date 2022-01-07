; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/extr_msm_gem_vma.c_msm_gem_address_space_create_a2xx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/extr_msm_gem_vma.c_msm_gem_address_space_create_a2xx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_gem_address_space = type { i8*, i32, i32, i32, i32 }
%struct.device = type { i32 }
%struct.msm_gpu = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.msm_gem_address_space* @msm_gem_address_space_create_a2xx(%struct.device* %0, %struct.msm_gpu* %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.msm_gem_address_space*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.msm_gpu*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.msm_gem_address_space*, align 8
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %7, align 8
  store %struct.msm_gpu* %1, %struct.msm_gpu** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load i32, i32* %11, align 4
  %15 = load i32, i32* %10, align 4
  %16 = sub nsw i32 %14, %15
  store i32 %16, i32* %13, align 4
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.msm_gem_address_space* @kzalloc(i32 24, i32 %17)
  store %struct.msm_gem_address_space* %18, %struct.msm_gem_address_space** %12, align 8
  %19 = load %struct.msm_gem_address_space*, %struct.msm_gem_address_space** %12, align 8
  %20 = icmp ne %struct.msm_gem_address_space* %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %5
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  %24 = call %struct.msm_gem_address_space* @ERR_PTR(i32 %23)
  store %struct.msm_gem_address_space* %24, %struct.msm_gem_address_space** %6, align 8
  br label %50

25:                                               ; preds = %5
  %26 = load %struct.msm_gem_address_space*, %struct.msm_gem_address_space** %12, align 8
  %27 = getelementptr inbounds %struct.msm_gem_address_space, %struct.msm_gem_address_space* %26, i32 0, i32 4
  %28 = call i32 @spin_lock_init(i32* %27)
  %29 = load i8*, i8** %9, align 8
  %30 = load %struct.msm_gem_address_space*, %struct.msm_gem_address_space** %12, align 8
  %31 = getelementptr inbounds %struct.msm_gem_address_space, %struct.msm_gem_address_space* %30, i32 0, i32 0
  store i8* %29, i8** %31, align 8
  %32 = load %struct.device*, %struct.device** %7, align 8
  %33 = load %struct.msm_gpu*, %struct.msm_gpu** %8, align 8
  %34 = call i32 @msm_gpummu_new(%struct.device* %32, %struct.msm_gpu* %33)
  %35 = load %struct.msm_gem_address_space*, %struct.msm_gem_address_space** %12, align 8
  %36 = getelementptr inbounds %struct.msm_gem_address_space, %struct.msm_gem_address_space* %35, i32 0, i32 3
  store i32 %34, i32* %36, align 8
  %37 = load %struct.msm_gem_address_space*, %struct.msm_gem_address_space** %12, align 8
  %38 = getelementptr inbounds %struct.msm_gem_address_space, %struct.msm_gem_address_space* %37, i32 0, i32 2
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* @PAGE_SHIFT, align 4
  %41 = ashr i32 %39, %40
  %42 = load i32, i32* %13, align 4
  %43 = load i32, i32* @PAGE_SHIFT, align 4
  %44 = ashr i32 %42, %43
  %45 = call i32 @drm_mm_init(i32* %38, i32 %41, i32 %44)
  %46 = load %struct.msm_gem_address_space*, %struct.msm_gem_address_space** %12, align 8
  %47 = getelementptr inbounds %struct.msm_gem_address_space, %struct.msm_gem_address_space* %46, i32 0, i32 1
  %48 = call i32 @kref_init(i32* %47)
  %49 = load %struct.msm_gem_address_space*, %struct.msm_gem_address_space** %12, align 8
  store %struct.msm_gem_address_space* %49, %struct.msm_gem_address_space** %6, align 8
  br label %50

50:                                               ; preds = %25, %21
  %51 = load %struct.msm_gem_address_space*, %struct.msm_gem_address_space** %6, align 8
  ret %struct.msm_gem_address_space* %51
}

declare dso_local %struct.msm_gem_address_space* @kzalloc(i32, i32) #1

declare dso_local %struct.msm_gem_address_space* @ERR_PTR(i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @msm_gpummu_new(%struct.device*, %struct.msm_gpu*) #1

declare dso_local i32 @drm_mm_init(i32*, i32, i32) #1

declare dso_local i32 @kref_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
