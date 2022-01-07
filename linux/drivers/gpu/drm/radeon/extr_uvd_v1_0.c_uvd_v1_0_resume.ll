; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_uvd_v1_0.c_uvd_v1_0_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_uvd_v1_0.c_uvd_v1_0_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32, i64 }
%struct.TYPE_3__ = type { i32 }

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
@UVD_FW_START = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uvd_v1_0_resume(%struct.radeon_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  %7 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %8 = call i32 @radeon_uvd_resume(%struct.radeon_device* %7)
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* %6, align 4
  store i32 %12, i32* %2, align 4
  br label %94

13:                                               ; preds = %1
  %14 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %15 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = ashr i32 %17, 3
  %19 = add nsw i32 %18, 16
  store i32 %19, i32* %4, align 4
  %20 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %21 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %20, i32 0, i32 1
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @RADEON_GPU_PAGE_ALIGN(i32 %24)
  %26 = ashr i32 %25, 3
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* @UVD_VCPU_CACHE_OFFSET0, align 4
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @WREG32(i32 %27, i32 %28)
  %30 = load i32, i32* @UVD_VCPU_CACHE_SIZE0, align 4
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @WREG32(i32 %30, i32 %31)
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* %4, align 4
  %35 = add nsw i32 %34, %33
  store i32 %35, i32* %4, align 4
  %36 = load i32, i32* @RADEON_UVD_HEAP_SIZE, align 4
  %37 = ashr i32 %36, 3
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* @UVD_VCPU_CACHE_OFFSET1, align 4
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @WREG32(i32 %38, i32 %39)
  %41 = load i32, i32* @UVD_VCPU_CACHE_SIZE1, align 4
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @WREG32(i32 %41, i32 %42)
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* %4, align 4
  %46 = add nsw i32 %45, %44
  store i32 %46, i32* %4, align 4
  %47 = load i32, i32* @RADEON_UVD_STACK_SIZE, align 4
  %48 = load i32, i32* @RADEON_UVD_SESSION_SIZE, align 4
  %49 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %50 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = mul nsw i32 %48, %52
  %54 = add nsw i32 %47, %53
  %55 = ashr i32 %54, 3
  store i32 %55, i32* %5, align 4
  %56 = load i32, i32* @UVD_VCPU_CACHE_OFFSET2, align 4
  %57 = load i32, i32* %4, align 4
  %58 = call i32 @WREG32(i32 %56, i32 %57)
  %59 = load i32, i32* @UVD_VCPU_CACHE_SIZE2, align 4
  %60 = load i32, i32* %5, align 4
  %61 = call i32 @WREG32(i32 %59, i32 %60)
  %62 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %63 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = ashr i32 %65, 28
  %67 = and i32 %66, 15
  store i32 %67, i32* %4, align 4
  %68 = load i32, i32* @UVD_LMI_ADDR_EXT, align 4
  %69 = load i32, i32* %4, align 4
  %70 = shl i32 %69, 12
  %71 = load i32, i32* %4, align 4
  %72 = shl i32 %71, 0
  %73 = or i32 %70, %72
  %74 = call i32 @WREG32(i32 %68, i32 %73)
  %75 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %76 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = ashr i32 %78, 32
  %80 = and i32 %79, 255
  store i32 %80, i32* %4, align 4
  %81 = load i32, i32* @UVD_LMI_EXT40_ADDR, align 4
  %82 = load i32, i32* %4, align 4
  %83 = or i32 %82, 589824
  %84 = or i32 %83, -2147483648
  %85 = call i32 @WREG32(i32 %81, i32 %84)
  %86 = load i32, i32* @UVD_FW_START, align 4
  %87 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %88 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 2
  %90 = load i64, i64* %89, align 8
  %91 = inttoptr i64 %90 to i32*
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @WREG32(i32 %86, i32 %92)
  store i32 0, i32* %2, align 4
  br label %94

94:                                               ; preds = %13, %11
  %95 = load i32, i32* %2, align 4
  ret i32 %95
}

declare dso_local i32 @radeon_uvd_resume(%struct.radeon_device*) #1

declare dso_local i32 @RADEON_GPU_PAGE_ALIGN(i32) #1

declare dso_local i32 @WREG32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
