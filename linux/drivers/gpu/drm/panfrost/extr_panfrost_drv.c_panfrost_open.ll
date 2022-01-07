; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panfrost/extr_panfrost_drv.c_panfrost_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panfrost/extr_panfrost_drv.c_panfrost_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.panfrost_device* }
%struct.panfrost_device = type { i32 }
%struct.drm_file = type { %struct.panfrost_file_priv* }
%struct.panfrost_file_priv = type { %struct.TYPE_3__, i32, %struct.panfrost_device* }
%struct.TYPE_3__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SZ_32M = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@SZ_4G = common dso_local global i32 0, align 4
@panfrost_drm_mm_color_adjust = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, %struct.drm_file*)* @panfrost_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @panfrost_open(%struct.drm_device* %0, %struct.drm_file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.drm_file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.panfrost_device*, align 8
  %8 = alloca %struct.panfrost_file_priv*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store %struct.drm_file* %1, %struct.drm_file** %5, align 8
  %9 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %10 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %9, i32 0, i32 0
  %11 = load %struct.panfrost_device*, %struct.panfrost_device** %10, align 8
  store %struct.panfrost_device* %11, %struct.panfrost_device** %7, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.panfrost_file_priv* @kzalloc(i32 16, i32 %12)
  store %struct.panfrost_file_priv* %13, %struct.panfrost_file_priv** %8, align 8
  %14 = load %struct.panfrost_file_priv*, %struct.panfrost_file_priv** %8, align 8
  %15 = icmp ne %struct.panfrost_file_priv* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %66

19:                                               ; preds = %2
  %20 = load %struct.panfrost_device*, %struct.panfrost_device** %7, align 8
  %21 = load %struct.panfrost_file_priv*, %struct.panfrost_file_priv** %8, align 8
  %22 = getelementptr inbounds %struct.panfrost_file_priv, %struct.panfrost_file_priv* %21, i32 0, i32 2
  store %struct.panfrost_device* %20, %struct.panfrost_device** %22, align 8
  %23 = load %struct.panfrost_file_priv*, %struct.panfrost_file_priv** %8, align 8
  %24 = load %struct.drm_file*, %struct.drm_file** %5, align 8
  %25 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %24, i32 0, i32 0
  store %struct.panfrost_file_priv* %23, %struct.panfrost_file_priv** %25, align 8
  %26 = load %struct.panfrost_file_priv*, %struct.panfrost_file_priv** %8, align 8
  %27 = getelementptr inbounds %struct.panfrost_file_priv, %struct.panfrost_file_priv* %26, i32 0, i32 1
  %28 = call i32 @spin_lock_init(i32* %27)
  %29 = load %struct.panfrost_file_priv*, %struct.panfrost_file_priv** %8, align 8
  %30 = getelementptr inbounds %struct.panfrost_file_priv, %struct.panfrost_file_priv* %29, i32 0, i32 0
  %31 = load i32, i32* @SZ_32M, align 4
  %32 = load i32, i32* @PAGE_SHIFT, align 4
  %33 = ashr i32 %31, %32
  %34 = load i32, i32* @SZ_4G, align 4
  %35 = load i32, i32* @SZ_32M, align 4
  %36 = sub nsw i32 %34, %35
  %37 = load i32, i32* @PAGE_SHIFT, align 4
  %38 = ashr i32 %36, %37
  %39 = call i32 @drm_mm_init(%struct.TYPE_3__* %30, i32 %33, i32 %38)
  %40 = load i32, i32* @panfrost_drm_mm_color_adjust, align 4
  %41 = load %struct.panfrost_file_priv*, %struct.panfrost_file_priv** %8, align 8
  %42 = getelementptr inbounds %struct.panfrost_file_priv, %struct.panfrost_file_priv* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  store i32 %40, i32* %43, align 8
  %44 = load %struct.panfrost_file_priv*, %struct.panfrost_file_priv** %8, align 8
  %45 = call i32 @panfrost_mmu_pgtable_alloc(%struct.panfrost_file_priv* %44)
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* %6, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %19
  br label %59

49:                                               ; preds = %19
  %50 = load %struct.panfrost_file_priv*, %struct.panfrost_file_priv** %8, align 8
  %51 = call i32 @panfrost_job_open(%struct.panfrost_file_priv* %50)
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %6, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %49
  br label %56

55:                                               ; preds = %49
  store i32 0, i32* %3, align 4
  br label %66

56:                                               ; preds = %54
  %57 = load %struct.panfrost_file_priv*, %struct.panfrost_file_priv** %8, align 8
  %58 = call i32 @panfrost_mmu_pgtable_free(%struct.panfrost_file_priv* %57)
  br label %59

59:                                               ; preds = %56, %48
  %60 = load %struct.panfrost_file_priv*, %struct.panfrost_file_priv** %8, align 8
  %61 = getelementptr inbounds %struct.panfrost_file_priv, %struct.panfrost_file_priv* %60, i32 0, i32 0
  %62 = call i32 @drm_mm_takedown(%struct.TYPE_3__* %61)
  %63 = load %struct.panfrost_file_priv*, %struct.panfrost_file_priv** %8, align 8
  %64 = call i32 @kfree(%struct.panfrost_file_priv* %63)
  %65 = load i32, i32* %6, align 4
  store i32 %65, i32* %3, align 4
  br label %66

66:                                               ; preds = %59, %55, %16
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local %struct.panfrost_file_priv* @kzalloc(i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @drm_mm_init(%struct.TYPE_3__*, i32, i32) #1

declare dso_local i32 @panfrost_mmu_pgtable_alloc(%struct.panfrost_file_priv*) #1

declare dso_local i32 @panfrost_job_open(%struct.panfrost_file_priv*) #1

declare dso_local i32 @panfrost_mmu_pgtable_free(%struct.panfrost_file_priv*) #1

declare dso_local i32 @drm_mm_takedown(%struct.TYPE_3__*) #1

declare dso_local i32 @kfree(%struct.panfrost_file_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
