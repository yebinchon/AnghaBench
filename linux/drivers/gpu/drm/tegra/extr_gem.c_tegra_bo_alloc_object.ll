; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_gem.c_tegra_bo_alloc_object.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_gem.c_tegra_bo_alloc_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_bo = type { i32, i32 }
%struct.drm_device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@tegra_bo_ops = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.tegra_bo* (%struct.drm_device*, i64)* @tegra_bo_alloc_object to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.tegra_bo* @tegra_bo_alloc_object(%struct.drm_device* %0, i64 %1) #0 {
  %3 = alloca %struct.tegra_bo*, align 8
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.tegra_bo*, align 8
  %7 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.tegra_bo* @kzalloc(i32 8, i32 %8)
  store %struct.tegra_bo* %9, %struct.tegra_bo** %6, align 8
  %10 = load %struct.tegra_bo*, %struct.tegra_bo** %6, align 8
  %11 = icmp ne %struct.tegra_bo* %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  %15 = call %struct.tegra_bo* @ERR_PTR(i32 %14)
  store %struct.tegra_bo* %15, %struct.tegra_bo** %3, align 8
  br label %49

16:                                               ; preds = %2
  %17 = load %struct.tegra_bo*, %struct.tegra_bo** %6, align 8
  %18 = getelementptr inbounds %struct.tegra_bo, %struct.tegra_bo* %17, i32 0, i32 1
  %19 = call i32 @host1x_bo_init(i32* %18, i32* @tegra_bo_ops)
  %20 = load i64, i64* %5, align 8
  %21 = load i32, i32* @PAGE_SIZE, align 4
  %22 = call i64 @round_up(i64 %20, i32 %21)
  store i64 %22, i64* %5, align 8
  %23 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %24 = load %struct.tegra_bo*, %struct.tegra_bo** %6, align 8
  %25 = getelementptr inbounds %struct.tegra_bo, %struct.tegra_bo* %24, i32 0, i32 0
  %26 = load i64, i64* %5, align 8
  %27 = call i32 @drm_gem_object_init(%struct.drm_device* %23, i32* %25, i64 %26)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %16
  br label %44

31:                                               ; preds = %16
  %32 = load %struct.tegra_bo*, %struct.tegra_bo** %6, align 8
  %33 = getelementptr inbounds %struct.tegra_bo, %struct.tegra_bo* %32, i32 0, i32 0
  %34 = call i32 @drm_gem_create_mmap_offset(i32* %33)
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  br label %40

38:                                               ; preds = %31
  %39 = load %struct.tegra_bo*, %struct.tegra_bo** %6, align 8
  store %struct.tegra_bo* %39, %struct.tegra_bo** %3, align 8
  br label %49

40:                                               ; preds = %37
  %41 = load %struct.tegra_bo*, %struct.tegra_bo** %6, align 8
  %42 = getelementptr inbounds %struct.tegra_bo, %struct.tegra_bo* %41, i32 0, i32 0
  %43 = call i32 @drm_gem_object_release(i32* %42)
  br label %44

44:                                               ; preds = %40, %30
  %45 = load %struct.tegra_bo*, %struct.tegra_bo** %6, align 8
  %46 = call i32 @kfree(%struct.tegra_bo* %45)
  %47 = load i32, i32* %7, align 4
  %48 = call %struct.tegra_bo* @ERR_PTR(i32 %47)
  store %struct.tegra_bo* %48, %struct.tegra_bo** %3, align 8
  br label %49

49:                                               ; preds = %44, %38, %12
  %50 = load %struct.tegra_bo*, %struct.tegra_bo** %3, align 8
  ret %struct.tegra_bo* %50
}

declare dso_local %struct.tegra_bo* @kzalloc(i32, i32) #1

declare dso_local %struct.tegra_bo* @ERR_PTR(i32) #1

declare dso_local i32 @host1x_bo_init(i32*, i32*) #1

declare dso_local i64 @round_up(i64, i32) #1

declare dso_local i32 @drm_gem_object_init(%struct.drm_device*, i32*, i64) #1

declare dso_local i32 @drm_gem_create_mmap_offset(i32*) #1

declare dso_local i32 @drm_gem_object_release(i32*) #1

declare dso_local i32 @kfree(%struct.tegra_bo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
