; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_uvd_v4_2.c_uvd_v4_2_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_uvd_v4_2.c_uvd_v4_2_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32, i64 }
%struct.TYPE_3__ = type { i64 }

@UVD_VCPU_CACHE_OFFSET0 = common dso_local global i32 0, align 4
@UVD_VCPU_CACHE_SIZE0 = common dso_local global i32 0, align 4
@RADEON_UVD_HEAP_SIZE = common dso_local global i32 0, align 4
@UVD_VCPU_CACHE_OFFSET1 = common dso_local global i32 0, align 4
@UVD_VCPU_CACHE_SIZE1 = common dso_local global i32 0, align 4
@RADEON_UVD_STACK_SIZE = common dso_local global i32 0, align 4
@RADEON_UVD_SESSION_SIZE = common dso_local global i32 0, align 4
@UVD_VCPU_CACHE_OFFSET2 = common dso_local global i32 0, align 4
@UVD_VCPU_CACHE_SIZE2 = common dso_local global i32 0, align 4
@UVD_LMI_ADDR_EXT = common dso_local global i32 0, align 4
@UVD_LMI_EXT40_ADDR = common dso_local global i32 0, align 4
@UVD_GP_SCRATCH4 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uvd_v4_2_resume(%struct.radeon_device* %0) #0 {
  %2 = alloca %struct.radeon_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %2, align 8
  %5 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %6 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 2
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %17

10:                                               ; preds = %1
  %11 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %12 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = add nsw i32 %14, 512
  %16 = ashr i32 %15, 3
  store i32 %16, i32* %3, align 4
  br label %23

17:                                               ; preds = %1
  %18 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %19 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = ashr i32 %21, 3
  store i32 %22, i32* %3, align 4
  br label %23

23:                                               ; preds = %17, %10
  %24 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %25 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %24, i32 0, i32 1
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = add nsw i64 %28, 4
  %30 = call i32 @RADEON_GPU_PAGE_ALIGN(i64 %29)
  %31 = ashr i32 %30, 3
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* @UVD_VCPU_CACHE_OFFSET0, align 4
  %33 = load i32, i32* %3, align 4
  %34 = call i32 @WREG32(i32 %32, i32 %33)
  %35 = load i32, i32* @UVD_VCPU_CACHE_SIZE0, align 4
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @WREG32(i32 %35, i32 %36)
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* %3, align 4
  %40 = add nsw i32 %39, %38
  store i32 %40, i32* %3, align 4
  %41 = load i32, i32* @RADEON_UVD_HEAP_SIZE, align 4
  %42 = ashr i32 %41, 3
  store i32 %42, i32* %4, align 4
  %43 = load i32, i32* @UVD_VCPU_CACHE_OFFSET1, align 4
  %44 = load i32, i32* %3, align 4
  %45 = call i32 @WREG32(i32 %43, i32 %44)
  %46 = load i32, i32* @UVD_VCPU_CACHE_SIZE1, align 4
  %47 = load i32, i32* %4, align 4
  %48 = call i32 @WREG32(i32 %46, i32 %47)
  %49 = load i32, i32* %4, align 4
  %50 = load i32, i32* %3, align 4
  %51 = add nsw i32 %50, %49
  store i32 %51, i32* %3, align 4
  %52 = load i32, i32* @RADEON_UVD_STACK_SIZE, align 4
  %53 = load i32, i32* @RADEON_UVD_SESSION_SIZE, align 4
  %54 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %55 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = mul nsw i32 %53, %57
  %59 = add nsw i32 %52, %58
  %60 = ashr i32 %59, 3
  store i32 %60, i32* %4, align 4
  %61 = load i32, i32* @UVD_VCPU_CACHE_OFFSET2, align 4
  %62 = load i32, i32* %3, align 4
  %63 = call i32 @WREG32(i32 %61, i32 %62)
  %64 = load i32, i32* @UVD_VCPU_CACHE_SIZE2, align 4
  %65 = load i32, i32* %4, align 4
  %66 = call i32 @WREG32(i32 %64, i32 %65)
  %67 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %68 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = ashr i32 %70, 28
  %72 = and i32 %71, 15
  store i32 %72, i32* %3, align 4
  %73 = load i32, i32* @UVD_LMI_ADDR_EXT, align 4
  %74 = load i32, i32* %3, align 4
  %75 = shl i32 %74, 12
  %76 = load i32, i32* %3, align 4
  %77 = shl i32 %76, 0
  %78 = or i32 %75, %77
  %79 = call i32 @WREG32(i32 %73, i32 %78)
  %80 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %81 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = ashr i32 %83, 32
  %85 = and i32 %84, 255
  store i32 %85, i32* %3, align 4
  %86 = load i32, i32* @UVD_LMI_EXT40_ADDR, align 4
  %87 = load i32, i32* %3, align 4
  %88 = or i32 %87, 589824
  %89 = or i32 %88, -2147483648
  %90 = call i32 @WREG32(i32 %86, i32 %89)
  %91 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %92 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 2
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %103

96:                                               ; preds = %23
  %97 = load i32, i32* @UVD_GP_SCRATCH4, align 4
  %98 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %99 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @WREG32(i32 %97, i32 %101)
  br label %103

103:                                              ; preds = %96, %23
  ret i32 0
}

declare dso_local i32 @RADEON_GPU_PAGE_ALIGN(i64) #1

declare dso_local i32 @WREG32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
