; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_discovery.c_amdgpu_discovery_read_binary.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_discovery.c_amdgpu_discovery_read_binary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }

@mmRCC_CONFIG_MEMSIZE = common dso_local global i32 0, align 4
@BINARY_MAX_SIZE = common dso_local global i32 0, align 4
@mmMM_INDEX = common dso_local global i32 0, align 4
@mmMM_INDEX_HI = common dso_local global i32 0, align 4
@mmMM_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*, i32*)* @amdgpu_discovery_read_binary to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amdgpu_discovery_read_binary(%struct.amdgpu_device* %0, i32* %1) #0 {
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  store i32* %1, i32** %4, align 8
  %9 = load i32*, i32** %4, align 8
  store i32* %9, i32** %5, align 8
  %10 = load i32, i32* @mmRCC_CONFIG_MEMSIZE, align 4
  %11 = call i64 @RREG32(i32 %10)
  %12 = trunc i64 %11 to i32
  %13 = shl i32 %12, 20
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @BINARY_MAX_SIZE, align 4
  %16 = sub nsw i32 %14, %15
  store i32 %16, i32* %7, align 4
  br label %17

17:                                               ; preds = %21, %2
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %44

21:                                               ; preds = %17
  %22 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %23 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %22, i32 0, i32 0
  %24 = load i64, i64* %8, align 8
  %25 = call i32 @spin_lock_irqsave(i32* %23, i64 %24)
  %26 = load i32, i32* @mmMM_INDEX, align 4
  %27 = load i32, i32* %7, align 4
  %28 = or i32 %27, -2147483648
  %29 = call i32 @WREG32_NO_KIQ(i32 %26, i32 %28)
  %30 = load i32, i32* @mmMM_INDEX_HI, align 4
  %31 = load i32, i32* %7, align 4
  %32 = ashr i32 %31, 31
  %33 = call i32 @WREG32_NO_KIQ(i32 %30, i32 %32)
  %34 = load i32, i32* @mmMM_DATA, align 4
  %35 = call i32 @RREG32_NO_KIQ(i32 %34)
  %36 = load i32*, i32** %5, align 8
  %37 = getelementptr inbounds i32, i32* %36, i32 1
  store i32* %37, i32** %5, align 8
  store i32 %35, i32* %36, align 4
  %38 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %39 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %38, i32 0, i32 0
  %40 = load i64, i64* %8, align 8
  %41 = call i32 @spin_unlock_irqrestore(i32* %39, i64 %40)
  %42 = load i32, i32* %7, align 4
  %43 = add nsw i32 %42, 4
  store i32 %43, i32* %7, align 4
  br label %17

44:                                               ; preds = %17
  ret i32 0
}

declare dso_local i64 @RREG32(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @WREG32_NO_KIQ(i32, i32) #1

declare dso_local i32 @RREG32_NO_KIQ(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
