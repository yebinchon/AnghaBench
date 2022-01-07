; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_iceland_ih.c_iceland_ih_get_wptr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_iceland_ih.c_iceland_ih_get_wptr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }
%struct.amdgpu_ih_ring = type { i32, i32, i32* }

@IH_RB_WPTR = common dso_local global i32 0, align 4
@RB_OVERFLOW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"IH ring buffer overflow (0x%08X, 0x%08X, 0x%08X)\0A\00", align 1
@mmIH_RB_CNTL = common dso_local global i32 0, align 4
@IH_RB_CNTL = common dso_local global i32 0, align 4
@WPTR_OVERFLOW_CLEAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*, %struct.amdgpu_ih_ring*)* @iceland_ih_get_wptr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iceland_ih_get_wptr(%struct.amdgpu_device* %0, %struct.amdgpu_ih_ring* %1) #0 {
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca %struct.amdgpu_ih_ring*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  store %struct.amdgpu_ih_ring* %1, %struct.amdgpu_ih_ring** %4, align 8
  %7 = load %struct.amdgpu_ih_ring*, %struct.amdgpu_ih_ring** %4, align 8
  %8 = getelementptr inbounds %struct.amdgpu_ih_ring, %struct.amdgpu_ih_ring* %7, i32 0, i32 2
  %9 = load i32*, i32** %8, align 8
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @le32_to_cpu(i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @IH_RB_WPTR, align 4
  %14 = load i32, i32* @RB_OVERFLOW, align 4
  %15 = call i64 @REG_GET_FIELD(i32 %12, i32 %13, i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %53

17:                                               ; preds = %2
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @IH_RB_WPTR, align 4
  %20 = load i32, i32* @RB_OVERFLOW, align 4
  %21 = call i32 @REG_SET_FIELD(i32 %18, i32 %19, i32 %20, i32 0)
  store i32 %21, i32* %5, align 4
  %22 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %23 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %5, align 4
  %26 = load %struct.amdgpu_ih_ring*, %struct.amdgpu_ih_ring** %4, align 8
  %27 = getelementptr inbounds %struct.amdgpu_ih_ring, %struct.amdgpu_ih_ring* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* %5, align 4
  %30 = add nsw i32 %29, 16
  %31 = load %struct.amdgpu_ih_ring*, %struct.amdgpu_ih_ring** %4, align 8
  %32 = getelementptr inbounds %struct.amdgpu_ih_ring, %struct.amdgpu_ih_ring* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = and i32 %30, %33
  %35 = call i32 @dev_warn(i32 %24, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %28, i32 %34)
  %36 = load i32, i32* %5, align 4
  %37 = add nsw i32 %36, 16
  %38 = load %struct.amdgpu_ih_ring*, %struct.amdgpu_ih_ring** %4, align 8
  %39 = getelementptr inbounds %struct.amdgpu_ih_ring, %struct.amdgpu_ih_ring* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = and i32 %37, %40
  %42 = load %struct.amdgpu_ih_ring*, %struct.amdgpu_ih_ring** %4, align 8
  %43 = getelementptr inbounds %struct.amdgpu_ih_ring, %struct.amdgpu_ih_ring* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  %44 = load i32, i32* @mmIH_RB_CNTL, align 4
  %45 = call i32 @RREG32(i32 %44)
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* @IH_RB_CNTL, align 4
  %48 = load i32, i32* @WPTR_OVERFLOW_CLEAR, align 4
  %49 = call i32 @REG_SET_FIELD(i32 %46, i32 %47, i32 %48, i32 1)
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* @mmIH_RB_CNTL, align 4
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @WREG32(i32 %50, i32 %51)
  br label %53

53:                                               ; preds = %17, %2
  %54 = load i32, i32* %5, align 4
  %55 = load %struct.amdgpu_ih_ring*, %struct.amdgpu_ih_ring** %4, align 8
  %56 = getelementptr inbounds %struct.amdgpu_ih_ring, %struct.amdgpu_ih_ring* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = and i32 %54, %57
  ret i32 %58
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i64 @REG_GET_FIELD(i32, i32, i32) #1

declare dso_local i32 @REG_SET_FIELD(i32, i32, i32, i32) #1

declare dso_local i32 @dev_warn(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @WREG32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
