; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_gem.c_exynos_drm_gem_dumb_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_gem.c_exynos_drm_gem_dumb_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_file = type { i32 }
%struct.drm_device = type { i32 }
%struct.drm_mode_create_dumb = type { i32, i32, i32, i32, i32, i32 }
%struct.exynos_drm_gem = type { i32 }

@EXYNOS_BO_NONCONTIG = common dso_local global i32 0, align 4
@EXYNOS_BO_WC = common dso_local global i32 0, align 4
@EXYNOS_BO_CONTIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"FB allocation failed.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @exynos_drm_gem_dumb_create(%struct.drm_file* %0, %struct.drm_device* %1, %struct.drm_mode_create_dumb* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_file*, align 8
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca %struct.drm_mode_create_dumb*, align 8
  %8 = alloca %struct.exynos_drm_gem*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.drm_file* %0, %struct.drm_file** %5, align 8
  store %struct.drm_device* %1, %struct.drm_device** %6, align 8
  store %struct.drm_mode_create_dumb* %2, %struct.drm_mode_create_dumb** %7, align 8
  %11 = load %struct.drm_mode_create_dumb*, %struct.drm_mode_create_dumb** %7, align 8
  %12 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.drm_mode_create_dumb*, %struct.drm_mode_create_dumb** %7, align 8
  %15 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = add nsw i32 %16, 7
  %18 = sdiv i32 %17, 8
  %19 = mul nsw i32 %13, %18
  %20 = load %struct.drm_mode_create_dumb*, %struct.drm_mode_create_dumb** %7, align 8
  %21 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  %22 = load %struct.drm_mode_create_dumb*, %struct.drm_mode_create_dumb** %7, align 8
  %23 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.drm_mode_create_dumb*, %struct.drm_mode_create_dumb** %7, align 8
  %26 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 4
  %28 = mul nsw i32 %24, %27
  %29 = load %struct.drm_mode_create_dumb*, %struct.drm_mode_create_dumb** %7, align 8
  %30 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %29, i32 0, i32 3
  store i32 %28, i32* %30, align 4
  %31 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %32 = call i64 @is_drm_iommu_supported(%struct.drm_device* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %3
  %35 = load i32, i32* @EXYNOS_BO_NONCONTIG, align 4
  %36 = load i32, i32* @EXYNOS_BO_WC, align 4
  %37 = or i32 %35, %36
  store i32 %37, i32* %9, align 4
  br label %42

38:                                               ; preds = %3
  %39 = load i32, i32* @EXYNOS_BO_CONTIG, align 4
  %40 = load i32, i32* @EXYNOS_BO_WC, align 4
  %41 = or i32 %39, %40
  store i32 %41, i32* %9, align 4
  br label %42

42:                                               ; preds = %38, %34
  %43 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %44 = load i32, i32* %9, align 4
  %45 = load %struct.drm_mode_create_dumb*, %struct.drm_mode_create_dumb** %7, align 8
  %46 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = call %struct.exynos_drm_gem* @exynos_drm_gem_create(%struct.drm_device* %43, i32 %44, i32 %47)
  store %struct.exynos_drm_gem* %48, %struct.exynos_drm_gem** %8, align 8
  %49 = load %struct.exynos_drm_gem*, %struct.exynos_drm_gem** %8, align 8
  %50 = call i64 @IS_ERR(%struct.exynos_drm_gem* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %42
  %53 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %54 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @dev_warn(i32 %55, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %57 = load %struct.exynos_drm_gem*, %struct.exynos_drm_gem** %8, align 8
  %58 = call i32 @PTR_ERR(%struct.exynos_drm_gem* %57)
  store i32 %58, i32* %4, align 4
  br label %73

59:                                               ; preds = %42
  %60 = load %struct.exynos_drm_gem*, %struct.exynos_drm_gem** %8, align 8
  %61 = getelementptr inbounds %struct.exynos_drm_gem, %struct.exynos_drm_gem* %60, i32 0, i32 0
  %62 = load %struct.drm_file*, %struct.drm_file** %5, align 8
  %63 = load %struct.drm_mode_create_dumb*, %struct.drm_mode_create_dumb** %7, align 8
  %64 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %63, i32 0, i32 5
  %65 = call i32 @exynos_drm_gem_handle_create(i32* %61, %struct.drm_file* %62, i32* %64)
  store i32 %65, i32* %10, align 4
  %66 = load i32, i32* %10, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %59
  %69 = load %struct.exynos_drm_gem*, %struct.exynos_drm_gem** %8, align 8
  %70 = call i32 @exynos_drm_gem_destroy(%struct.exynos_drm_gem* %69)
  %71 = load i32, i32* %10, align 4
  store i32 %71, i32* %4, align 4
  br label %73

72:                                               ; preds = %59
  store i32 0, i32* %4, align 4
  br label %73

73:                                               ; preds = %72, %68, %52
  %74 = load i32, i32* %4, align 4
  ret i32 %74
}

declare dso_local i64 @is_drm_iommu_supported(%struct.drm_device*) #1

declare dso_local %struct.exynos_drm_gem* @exynos_drm_gem_create(%struct.drm_device*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.exynos_drm_gem*) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @PTR_ERR(%struct.exynos_drm_gem*) #1

declare dso_local i32 @exynos_drm_gem_handle_create(i32*, %struct.drm_file*, i32*) #1

declare dso_local i32 @exynos_drm_gem_destroy(%struct.exynos_drm_gem*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
