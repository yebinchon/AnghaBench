; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gmc_v9_0.c_gmc_v9_0_set_umc_funcs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gmc_v9_0.c_gmc_v9_0_set_umc_funcs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32*, i32*, i32, i32, i32, i32 }

@UMC_V6_1_TOTAL_CHANNEL_NUM = common dso_local global i32 0, align 4
@UMC_V6_1_CHANNEL_INSTANCE_NUM = common dso_local global i32 0, align 4
@UMC_V6_1_UMC_INSTANCE_NUM = common dso_local global i32 0, align 4
@UMC_V6_1_PER_CHANNEL_OFFSET = common dso_local global i32 0, align 4
@umc_v6_1_channel_idx_tbl = common dso_local global i32** null, align 8
@umc_v6_1_funcs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*)* @gmc_v9_0_set_umc_funcs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gmc_v9_0_set_umc_funcs(%struct.amdgpu_device* %0) #0 {
  %2 = alloca %struct.amdgpu_device*, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %2, align 8
  %3 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %4 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  switch i32 %5, label %33 [
    i32 128, label %6
  ]

6:                                                ; preds = %1
  %7 = load i32, i32* @UMC_V6_1_TOTAL_CHANNEL_NUM, align 4
  %8 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %9 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 5
  store i32 %7, i32* %10, align 4
  %11 = load i32, i32* @UMC_V6_1_CHANNEL_INSTANCE_NUM, align 4
  %12 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %13 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 4
  store i32 %11, i32* %14, align 8
  %15 = load i32, i32* @UMC_V6_1_UMC_INSTANCE_NUM, align 4
  %16 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %17 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 3
  store i32 %15, i32* %18, align 4
  %19 = load i32, i32* @UMC_V6_1_PER_CHANNEL_OFFSET, align 4
  %20 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %21 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 2
  store i32 %19, i32* %22, align 8
  %23 = load i32**, i32*** @umc_v6_1_channel_idx_tbl, align 8
  %24 = getelementptr inbounds i32*, i32** %23, i64 0
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %28 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  store i32* %26, i32** %29, align 8
  %30 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %31 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  store i32* @umc_v6_1_funcs, i32** %32, align 8
  br label %34

33:                                               ; preds = %1
  br label %34

34:                                               ; preds = %33, %6
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
