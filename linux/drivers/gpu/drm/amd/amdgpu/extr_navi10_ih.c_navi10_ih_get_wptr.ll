; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_navi10_ih.c_navi10_ih_get_wptr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_navi10_ih.c_navi10_ih_get_wptr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }
%struct.amdgpu_ih_ring = type { i32, i32, i32* }

@IH_RB_WPTR = common dso_local global i32 0, align 4
@RB_OVERFLOW = common dso_local global i32 0, align 4
@OSSSYS = common dso_local global i32 0, align 4
@mmIH_RB_WPTR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"IH ring buffer overflow (0x%08X, 0x%08X, 0x%08X)\0A\00", align 1
@mmIH_RB_CNTL = common dso_local global i32 0, align 4
@IH_RB_CNTL = common dso_local global i32 0, align 4
@WPTR_OVERFLOW_CLEAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*, %struct.amdgpu_ih_ring*)* @navi10_ih_get_wptr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @navi10_ih_get_wptr(%struct.amdgpu_device* %0, %struct.amdgpu_ih_ring* %1) #0 {
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca %struct.amdgpu_ih_ring*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  store %struct.amdgpu_ih_ring* %1, %struct.amdgpu_ih_ring** %4, align 8
  %8 = load %struct.amdgpu_ih_ring*, %struct.amdgpu_ih_ring** %4, align 8
  %9 = getelementptr inbounds %struct.amdgpu_ih_ring, %struct.amdgpu_ih_ring* %8, i32 0, i32 2
  %10 = load i32*, i32** %9, align 8
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @le32_to_cpu(i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @IH_RB_WPTR, align 4
  %15 = load i32, i32* @RB_OVERFLOW, align 4
  %16 = call i32 @REG_GET_FIELD(i32 %13, i32 %14, i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  br label %66

19:                                               ; preds = %2
  %20 = load i32, i32* @OSSSYS, align 4
  %21 = load i32, i32* @mmIH_RB_WPTR, align 4
  %22 = call i32 @SOC15_REG_OFFSET(i32 %20, i32 0, i32 %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @RREG32_NO_KIQ(i32 %23)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @IH_RB_WPTR, align 4
  %27 = load i32, i32* @RB_OVERFLOW, align 4
  %28 = call i32 @REG_GET_FIELD(i32 %25, i32 %26, i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %19
  br label %66

31:                                               ; preds = %19
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @IH_RB_WPTR, align 4
  %34 = load i32, i32* @RB_OVERFLOW, align 4
  %35 = call i32 @REG_SET_FIELD(i32 %32, i32 %33, i32 %34, i32 0)
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %5, align 4
  %37 = add nsw i32 %36, 32
  %38 = load %struct.amdgpu_ih_ring*, %struct.amdgpu_ih_ring** %4, align 8
  %39 = getelementptr inbounds %struct.amdgpu_ih_ring, %struct.amdgpu_ih_ring* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = and i32 %37, %40
  store i32 %41, i32* %7, align 4
  %42 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %43 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %5, align 4
  %46 = load %struct.amdgpu_ih_ring*, %struct.amdgpu_ih_ring** %4, align 8
  %47 = getelementptr inbounds %struct.amdgpu_ih_ring, %struct.amdgpu_ih_ring* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @dev_warn(i32 %44, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %45, i32 %48, i32 %49)
  %51 = load i32, i32* %7, align 4
  %52 = load %struct.amdgpu_ih_ring*, %struct.amdgpu_ih_ring** %4, align 8
  %53 = getelementptr inbounds %struct.amdgpu_ih_ring, %struct.amdgpu_ih_ring* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  %54 = load i32, i32* @OSSSYS, align 4
  %55 = load i32, i32* @mmIH_RB_CNTL, align 4
  %56 = call i32 @SOC15_REG_OFFSET(i32 %54, i32 0, i32 %55)
  store i32 %56, i32* %6, align 4
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @RREG32_NO_KIQ(i32 %57)
  store i32 %58, i32* %7, align 4
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* @IH_RB_CNTL, align 4
  %61 = load i32, i32* @WPTR_OVERFLOW_CLEAR, align 4
  %62 = call i32 @REG_SET_FIELD(i32 %59, i32 %60, i32 %61, i32 1)
  store i32 %62, i32* %7, align 4
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* %7, align 4
  %65 = call i32 @WREG32_NO_KIQ(i32 %63, i32 %64)
  br label %66

66:                                               ; preds = %31, %30, %18
  %67 = load i32, i32* %5, align 4
  %68 = load %struct.amdgpu_ih_ring*, %struct.amdgpu_ih_ring** %4, align 8
  %69 = getelementptr inbounds %struct.amdgpu_ih_ring, %struct.amdgpu_ih_ring* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = and i32 %67, %70
  ret i32 %71
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @REG_GET_FIELD(i32, i32, i32) #1

declare dso_local i32 @SOC15_REG_OFFSET(i32, i32, i32) #1

declare dso_local i32 @RREG32_NO_KIQ(i32) #1

declare dso_local i32 @REG_SET_FIELD(i32, i32, i32, i32) #1

declare dso_local i32 @dev_warn(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @WREG32_NO_KIQ(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
