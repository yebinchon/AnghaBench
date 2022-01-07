; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_si.c_si_set_ip_blocks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_si.c_si_set_ip_blocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32, i32 }

@si_common_ip_block = common dso_local global i32 0, align 4
@gmc_v6_0_ip_block = common dso_local global i32 0, align 4
@si_ih_ip_block = common dso_local global i32 0, align 4
@gfx_v6_0_ip_block = common dso_local global i32 0, align 4
@si_dma_ip_block = common dso_local global i32 0, align 4
@si_smu_ip_block = common dso_local global i32 0, align 4
@dce_virtual_ip_block = common dso_local global i32 0, align 4
@dce_v6_0_ip_block = common dso_local global i32 0, align 4
@dce_v6_4_ip_block = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @si_set_ip_blocks(%struct.amdgpu_device* %0) #0 {
  %2 = alloca %struct.amdgpu_device*, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %2, align 8
  %3 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %4 = call i32 @si_detect_hw_virtualization(%struct.amdgpu_device* %3)
  %5 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %6 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  switch i32 %7, label %77 [
    i32 128, label %8
    i32 129, label %8
    i32 130, label %8
    i32 131, label %32
    i32 132, label %56
  ]

8:                                                ; preds = %1, %1, %1
  %9 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %10 = call i32 @amdgpu_device_ip_block_add(%struct.amdgpu_device* %9, i32* @si_common_ip_block)
  %11 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %12 = call i32 @amdgpu_device_ip_block_add(%struct.amdgpu_device* %11, i32* @gmc_v6_0_ip_block)
  %13 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %14 = call i32 @amdgpu_device_ip_block_add(%struct.amdgpu_device* %13, i32* @si_ih_ip_block)
  %15 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %16 = call i32 @amdgpu_device_ip_block_add(%struct.amdgpu_device* %15, i32* @gfx_v6_0_ip_block)
  %17 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %18 = call i32 @amdgpu_device_ip_block_add(%struct.amdgpu_device* %17, i32* @si_dma_ip_block)
  %19 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %20 = call i32 @amdgpu_device_ip_block_add(%struct.amdgpu_device* %19, i32* @si_smu_ip_block)
  %21 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %22 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %8
  %26 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %27 = call i32 @amdgpu_device_ip_block_add(%struct.amdgpu_device* %26, i32* @dce_virtual_ip_block)
  br label %31

28:                                               ; preds = %8
  %29 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %30 = call i32 @amdgpu_device_ip_block_add(%struct.amdgpu_device* %29, i32* @dce_v6_0_ip_block)
  br label %31

31:                                               ; preds = %28, %25
  br label %79

32:                                               ; preds = %1
  %33 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %34 = call i32 @amdgpu_device_ip_block_add(%struct.amdgpu_device* %33, i32* @si_common_ip_block)
  %35 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %36 = call i32 @amdgpu_device_ip_block_add(%struct.amdgpu_device* %35, i32* @gmc_v6_0_ip_block)
  %37 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %38 = call i32 @amdgpu_device_ip_block_add(%struct.amdgpu_device* %37, i32* @si_ih_ip_block)
  %39 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %40 = call i32 @amdgpu_device_ip_block_add(%struct.amdgpu_device* %39, i32* @gfx_v6_0_ip_block)
  %41 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %42 = call i32 @amdgpu_device_ip_block_add(%struct.amdgpu_device* %41, i32* @si_dma_ip_block)
  %43 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %44 = call i32 @amdgpu_device_ip_block_add(%struct.amdgpu_device* %43, i32* @si_smu_ip_block)
  %45 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %46 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %32
  %50 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %51 = call i32 @amdgpu_device_ip_block_add(%struct.amdgpu_device* %50, i32* @dce_virtual_ip_block)
  br label %55

52:                                               ; preds = %32
  %53 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %54 = call i32 @amdgpu_device_ip_block_add(%struct.amdgpu_device* %53, i32* @dce_v6_4_ip_block)
  br label %55

55:                                               ; preds = %52, %49
  br label %79

56:                                               ; preds = %1
  %57 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %58 = call i32 @amdgpu_device_ip_block_add(%struct.amdgpu_device* %57, i32* @si_common_ip_block)
  %59 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %60 = call i32 @amdgpu_device_ip_block_add(%struct.amdgpu_device* %59, i32* @gmc_v6_0_ip_block)
  %61 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %62 = call i32 @amdgpu_device_ip_block_add(%struct.amdgpu_device* %61, i32* @si_ih_ip_block)
  %63 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %64 = call i32 @amdgpu_device_ip_block_add(%struct.amdgpu_device* %63, i32* @gfx_v6_0_ip_block)
  %65 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %66 = call i32 @amdgpu_device_ip_block_add(%struct.amdgpu_device* %65, i32* @si_dma_ip_block)
  %67 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %68 = call i32 @amdgpu_device_ip_block_add(%struct.amdgpu_device* %67, i32* @si_smu_ip_block)
  %69 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %70 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %56
  %74 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %75 = call i32 @amdgpu_device_ip_block_add(%struct.amdgpu_device* %74, i32* @dce_virtual_ip_block)
  br label %76

76:                                               ; preds = %73, %56
  br label %79

77:                                               ; preds = %1
  %78 = call i32 (...) @BUG()
  br label %79

79:                                               ; preds = %77, %76, %55, %31
  ret i32 0
}

declare dso_local i32 @si_detect_hw_virtualization(%struct.amdgpu_device*) #1

declare dso_local i32 @amdgpu_device_ip_block_add(%struct.amdgpu_device*, i32*) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
