; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_vce_v3_0.c_vce_v3_0_early_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_vce_v3_0.c_vce_v3_0_early_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@AMDGPU_VCE_HARVEST_VCE0 = common dso_local global i32 0, align 4
@AMDGPU_VCE_HARVEST_VCE1 = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @vce_v3_0_early_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vce_v3_0_early_init(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.amdgpu_device*, align 8
  store i8* %0, i8** %3, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = bitcast i8* %5 to %struct.amdgpu_device*
  store %struct.amdgpu_device* %6, %struct.amdgpu_device** %4, align 8
  %7 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %8 = call i32 @vce_v3_0_get_harvest_config(%struct.amdgpu_device* %7)
  %9 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %10 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store i32 %8, i32* %11, align 4
  %12 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %13 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @AMDGPU_VCE_HARVEST_VCE0, align 4
  %17 = load i32, i32* @AMDGPU_VCE_HARVEST_VCE1, align 4
  %18 = or i32 %16, %17
  %19 = and i32 %15, %18
  %20 = load i32, i32* @AMDGPU_VCE_HARVEST_VCE0, align 4
  %21 = load i32, i32* @AMDGPU_VCE_HARVEST_VCE1, align 4
  %22 = or i32 %20, %21
  %23 = icmp eq i32 %19, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %1
  %25 = load i32, i32* @ENOENT, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %35

27:                                               ; preds = %1
  %28 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %29 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  store i32 3, i32* %30, align 4
  %31 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %32 = call i32 @vce_v3_0_set_ring_funcs(%struct.amdgpu_device* %31)
  %33 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %34 = call i32 @vce_v3_0_set_irq_funcs(%struct.amdgpu_device* %33)
  store i32 0, i32* %2, align 4
  br label %35

35:                                               ; preds = %27, %24
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local i32 @vce_v3_0_get_harvest_config(%struct.amdgpu_device*) #1

declare dso_local i32 @vce_v3_0_set_ring_funcs(%struct.amdgpu_device*) #1

declare dso_local i32 @vce_v3_0_set_irq_funcs(%struct.amdgpu_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
