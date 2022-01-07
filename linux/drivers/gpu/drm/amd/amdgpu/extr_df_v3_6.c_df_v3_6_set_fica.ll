; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_df_v3_6.c_df_v3_6_set_fica.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_df_v3_6.c_df_v3_6_set_fica.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 (%struct.amdgpu_device*)*, i64 (%struct.amdgpu_device*)* }

@smnDF_PIE_AON_FabricIndirectConfigAccessAddress3 = common dso_local global i32 0, align 4
@smnDF_PIE_AON_FabricIndirectConfigAccessDataLo3 = common dso_local global i32 0, align 4
@smnDF_PIE_AON_FabricIndirectConfigAccessDataHi3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*, i32, i32, i32)* @df_v3_6_set_fica to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @df_v3_6_set_fica(%struct.amdgpu_device* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.amdgpu_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %13 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64 (%struct.amdgpu_device*)*, i64 (%struct.amdgpu_device*)** %15, align 8
  %17 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %18 = call i64 %16(%struct.amdgpu_device* %17)
  store i64 %18, i64* %10, align 8
  %19 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %20 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i64 (%struct.amdgpu_device*)*, i64 (%struct.amdgpu_device*)** %22, align 8
  %24 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %25 = call i64 %23(%struct.amdgpu_device* %24)
  store i64 %25, i64* %11, align 8
  %26 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %27 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %26, i32 0, i32 0
  %28 = load i64, i64* %9, align 8
  %29 = call i32 @spin_lock_irqsave(i32* %27, i64 %28)
  %30 = load i64, i64* %10, align 8
  %31 = load i32, i32* @smnDF_PIE_AON_FabricIndirectConfigAccessAddress3, align 4
  %32 = call i32 @WREG32(i64 %30, i32 %31)
  %33 = load i64, i64* %11, align 8
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @WREG32(i64 %33, i32 %34)
  %36 = load i64, i64* %10, align 8
  %37 = load i32, i32* @smnDF_PIE_AON_FabricIndirectConfigAccessDataLo3, align 4
  %38 = call i32 @WREG32(i64 %36, i32 %37)
  %39 = load i64, i64* %11, align 8
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @WREG32(i64 %39, i32 %40)
  %42 = load i64, i64* %10, align 8
  %43 = load i32, i32* @smnDF_PIE_AON_FabricIndirectConfigAccessDataHi3, align 4
  %44 = call i32 @WREG32(i64 %42, i32 %43)
  %45 = load i64, i64* %11, align 8
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @WREG32(i64 %45, i32 %46)
  %48 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %49 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %48, i32 0, i32 0
  %50 = load i64, i64* %9, align 8
  %51 = call i32 @spin_unlock_irqrestore(i32* %49, i64 %50)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @WREG32(i64, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
