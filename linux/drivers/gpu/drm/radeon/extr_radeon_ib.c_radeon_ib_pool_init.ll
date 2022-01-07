; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_ib.c_radeon_ib_pool_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_ib.c_radeon_ib_pool_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32, i64, i32, i32 }

@CHIP_BONAIRE = common dso_local global i64 0, align 8
@RADEON_IB_POOL_SIZE = common dso_local global i32 0, align 4
@RADEON_GPU_PAGE_SIZE = common dso_local global i32 0, align 4
@RADEON_GEM_DOMAIN_GTT = common dso_local global i32 0, align 4
@RADEON_GEM_GTT_WC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"failed to register debugfs file for SA\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @radeon_ib_pool_init(%struct.radeon_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  %5 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %6 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %63

10:                                               ; preds = %1
  %11 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %12 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @CHIP_BONAIRE, align 8
  %15 = icmp sge i64 %13, %14
  br i1 %15, label %16, label %27

16:                                               ; preds = %10
  %17 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %18 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %19 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %18, i32 0, i32 3
  %20 = load i32, i32* @RADEON_IB_POOL_SIZE, align 4
  %21 = mul nsw i32 %20, 64
  %22 = mul nsw i32 %21, 1024
  %23 = load i32, i32* @RADEON_GPU_PAGE_SIZE, align 4
  %24 = load i32, i32* @RADEON_GEM_DOMAIN_GTT, align 4
  %25 = load i32, i32* @RADEON_GEM_GTT_WC, align 4
  %26 = call i32 @radeon_sa_bo_manager_init(%struct.radeon_device* %17, i32* %19, i32 %22, i32 %23, i32 %24, i32 %25)
  store i32 %26, i32* %4, align 4
  br label %37

27:                                               ; preds = %10
  %28 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %29 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %30 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %29, i32 0, i32 3
  %31 = load i32, i32* @RADEON_IB_POOL_SIZE, align 4
  %32 = mul nsw i32 %31, 64
  %33 = mul nsw i32 %32, 1024
  %34 = load i32, i32* @RADEON_GPU_PAGE_SIZE, align 4
  %35 = load i32, i32* @RADEON_GEM_DOMAIN_GTT, align 4
  %36 = call i32 @radeon_sa_bo_manager_init(%struct.radeon_device* %28, i32* %30, i32 %33, i32 %34, i32 %35, i32 0)
  store i32 %36, i32* %4, align 4
  br label %37

37:                                               ; preds = %27, %16
  %38 = load i32, i32* %4, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %37
  %41 = load i32, i32* %4, align 4
  store i32 %41, i32* %2, align 4
  br label %63

42:                                               ; preds = %37
  %43 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %44 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %45 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %44, i32 0, i32 3
  %46 = call i32 @radeon_sa_bo_manager_start(%struct.radeon_device* %43, i32* %45)
  store i32 %46, i32* %4, align 4
  %47 = load i32, i32* %4, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %42
  %50 = load i32, i32* %4, align 4
  store i32 %50, i32* %2, align 4
  br label %63

51:                                               ; preds = %42
  %52 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %53 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %52, i32 0, i32 0
  store i32 1, i32* %53, align 8
  %54 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %55 = call i64 @radeon_debugfs_sa_init(%struct.radeon_device* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %51
  %58 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %59 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @dev_err(i32 %60, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  br label %62

62:                                               ; preds = %57, %51
  store i32 0, i32* %2, align 4
  br label %63

63:                                               ; preds = %62, %49, %40, %9
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local i32 @radeon_sa_bo_manager_init(%struct.radeon_device*, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @radeon_sa_bo_manager_start(%struct.radeon_device*, i32*) #1

declare dso_local i64 @radeon_debugfs_sa_init(%struct.radeon_device*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
