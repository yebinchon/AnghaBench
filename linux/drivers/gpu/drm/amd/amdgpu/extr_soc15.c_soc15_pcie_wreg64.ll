; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_soc15.c_soc15_pcie_wreg64.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_soc15.c_soc15_pcie_wreg64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 (%struct.amdgpu_device*)*, i64 (%struct.amdgpu_device*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*, i64, i32)* @soc15_pcie_wreg64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @soc15_pcie_wreg64(%struct.amdgpu_device* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.amdgpu_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %11 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64 (%struct.amdgpu_device*)*, i64 (%struct.amdgpu_device*)** %13, align 8
  %15 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %16 = call i64 %14(%struct.amdgpu_device* %15)
  store i64 %16, i64* %8, align 8
  %17 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %18 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i64 (%struct.amdgpu_device*)*, i64 (%struct.amdgpu_device*)** %20, align 8
  %22 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %23 = call i64 %21(%struct.amdgpu_device* %22)
  store i64 %23, i64* %9, align 8
  %24 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %25 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %24, i32 0, i32 0
  %26 = load i64, i64* %7, align 8
  %27 = call i32 @spin_lock_irqsave(i32* %25, i64 %26)
  %28 = load i64, i64* %8, align 8
  %29 = load i64, i64* %5, align 8
  %30 = call i32 @WREG32(i64 %28, i64 %29)
  %31 = load i64, i64* %8, align 8
  %32 = call i32 @RREG32(i64 %31)
  %33 = load i64, i64* %9, align 8
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = and i64 %35, 4294967295
  %37 = call i32 @WREG32(i64 %33, i64 %36)
  %38 = load i64, i64* %9, align 8
  %39 = call i32 @RREG32(i64 %38)
  %40 = load i64, i64* %8, align 8
  %41 = load i64, i64* %5, align 8
  %42 = add nsw i64 %41, 4
  %43 = call i32 @WREG32(i64 %40, i64 %42)
  %44 = load i64, i64* %8, align 8
  %45 = call i32 @RREG32(i64 %44)
  %46 = load i64, i64* %9, align 8
  %47 = load i32, i32* %6, align 4
  %48 = ashr i32 %47, 32
  %49 = sext i32 %48 to i64
  %50 = call i32 @WREG32(i64 %46, i64 %49)
  %51 = load i64, i64* %9, align 8
  %52 = call i32 @RREG32(i64 %51)
  %53 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %54 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %53, i32 0, i32 0
  %55 = load i64, i64* %7, align 8
  %56 = call i32 @spin_unlock_irqrestore(i32* %54, i64 %55)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @WREG32(i64, i64) #1

declare dso_local i32 @RREG32(i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
