; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_sdma_v4_0.c_sdma_v4_0_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_sdma_v4_0.c_sdma_v4_0_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64 }

@mmSDMA0_F32_CNTL = common dso_local global i32 0, align 4
@SDMA0_F32_CNTL = common dso_local global i32 0, align 4
@HALT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*, i32)* @sdma_v4_0_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdma_v4_0_enable(%struct.amdgpu_device* %0, i32 %1) #0 {
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %23

9:                                                ; preds = %2
  %10 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %11 = call i32 @sdma_v4_0_gfx_stop(%struct.amdgpu_device* %10)
  %12 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %13 = call i32 @sdma_v4_0_rlc_stop(%struct.amdgpu_device* %12)
  %14 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %15 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %9
  %20 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %21 = call i32 @sdma_v4_0_page_stop(%struct.amdgpu_device* %20)
  br label %22

22:                                               ; preds = %19, %9
  br label %23

23:                                               ; preds = %22, %2
  store i32 0, i32* %6, align 4
  br label %24

24:                                               ; preds = %47, %23
  %25 = load i32, i32* %6, align 4
  %26 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %27 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp slt i32 %25, %29
  br i1 %30, label %31, label %50

31:                                               ; preds = %24
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @mmSDMA0_F32_CNTL, align 4
  %34 = call i32 @RREG32_SDMA(i32 %32, i32 %33)
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @SDMA0_F32_CNTL, align 4
  %37 = load i32, i32* @HALT, align 4
  %38 = load i32, i32* %4, align 4
  %39 = icmp ne i32 %38, 0
  %40 = zext i1 %39 to i64
  %41 = select i1 %39, i32 0, i32 1
  %42 = call i32 @REG_SET_FIELD(i32 %35, i32 %36, i32 %37, i32 %41)
  store i32 %42, i32* %5, align 4
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* @mmSDMA0_F32_CNTL, align 4
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @WREG32_SDMA(i32 %43, i32 %44, i32 %45)
  br label %47

47:                                               ; preds = %31
  %48 = load i32, i32* %6, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %6, align 4
  br label %24

50:                                               ; preds = %24
  ret void
}

declare dso_local i32 @sdma_v4_0_gfx_stop(%struct.amdgpu_device*) #1

declare dso_local i32 @sdma_v4_0_rlc_stop(%struct.amdgpu_device*) #1

declare dso_local i32 @sdma_v4_0_page_stop(%struct.amdgpu_device*) #1

declare dso_local i32 @RREG32_SDMA(i32, i32) #1

declare dso_local i32 @REG_SET_FIELD(i32, i32, i32, i32) #1

declare dso_local i32 @WREG32_SDMA(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
