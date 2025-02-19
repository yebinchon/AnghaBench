; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_df_v3_6.c_df_v3_6_perfmon_rreg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_df_v3_6.c_df_v3_6_perfmon_rreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 (%struct.amdgpu_device*)*, i64 (%struct.amdgpu_device*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*, i32, i32*, i32, i32*)* @df_v3_6_perfmon_rreg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @df_v3_6_perfmon_rreg(%struct.amdgpu_device* %0, i32 %1, i32* %2, i32 %3, i32* %4) #0 {
  %6 = alloca %struct.amdgpu_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %14 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %15 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64 (%struct.amdgpu_device*)*, i64 (%struct.amdgpu_device*)** %17, align 8
  %19 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %20 = call i64 %18(%struct.amdgpu_device* %19)
  store i64 %20, i64* %12, align 8
  %21 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %22 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i64 (%struct.amdgpu_device*)*, i64 (%struct.amdgpu_device*)** %24, align 8
  %26 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %27 = call i64 %25(%struct.amdgpu_device* %26)
  store i64 %27, i64* %13, align 8
  %28 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %29 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %28, i32 0, i32 0
  %30 = load i64, i64* %11, align 8
  %31 = call i32 @spin_lock_irqsave(i32* %29, i64 %30)
  %32 = load i64, i64* %12, align 8
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @WREG32(i64 %32, i32 %33)
  %35 = load i64, i64* %13, align 8
  %36 = call i32 @RREG32(i64 %35)
  %37 = load i32*, i32** %8, align 8
  store i32 %36, i32* %37, align 4
  %38 = load i64, i64* %12, align 8
  %39 = load i32, i32* %9, align 4
  %40 = call i32 @WREG32(i64 %38, i32 %39)
  %41 = load i64, i64* %13, align 8
  %42 = call i32 @RREG32(i64 %41)
  %43 = load i32*, i32** %10, align 8
  store i32 %42, i32* %43, align 4
  %44 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %45 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %44, i32 0, i32 0
  %46 = load i64, i64* %11, align 8
  %47 = call i32 @spin_unlock_irqrestore(i32* %45, i64 %46)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @WREG32(i64, i32) #1

declare dso_local i32 @RREG32(i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
