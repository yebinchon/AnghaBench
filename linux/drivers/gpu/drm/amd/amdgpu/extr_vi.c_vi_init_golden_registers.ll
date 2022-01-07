; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_vi.c_vi_init_golden_registers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_vi.c_vi_init_golden_registers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32, i32 }

@iceland_mgcg_cgcg_init = common dso_local global i32 0, align 4
@fiji_mgcg_cgcg_init = common dso_local global i32 0, align 4
@tonga_mgcg_cgcg_init = common dso_local global i32 0, align 4
@cz_mgcg_cgcg_init = common dso_local global i32 0, align 4
@stoney_mgcg_cgcg_init = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*)* @vi_init_golden_registers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vi_init_golden_registers(%struct.amdgpu_device* %0) #0 {
  %2 = alloca %struct.amdgpu_device*, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %2, align 8
  %3 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %4 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %3, i32 0, i32 1
  %5 = call i32 @mutex_lock(i32* %4)
  %6 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %7 = call i64 @amdgpu_sriov_vf(%struct.amdgpu_device* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %1
  %10 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %11 = call i32 @xgpu_vi_init_golden_registers(%struct.amdgpu_device* %10)
  %12 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %13 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %12, i32 0, i32 1
  %14 = call i32 @mutex_unlock(i32* %13)
  br label %55

15:                                               ; preds = %1
  %16 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %17 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  switch i32 %18, label %50 [
    i32 129, label %19
    i32 135, label %25
    i32 130, label %31
    i32 136, label %37
    i32 131, label %43
    i32 134, label %49
    i32 133, label %49
    i32 132, label %49
    i32 128, label %49
  ]

19:                                               ; preds = %15
  %20 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %21 = load i32, i32* @iceland_mgcg_cgcg_init, align 4
  %22 = load i32, i32* @iceland_mgcg_cgcg_init, align 4
  %23 = call i32 @ARRAY_SIZE(i32 %22)
  %24 = call i32 @amdgpu_device_program_register_sequence(%struct.amdgpu_device* %20, i32 %21, i32 %23)
  br label %51

25:                                               ; preds = %15
  %26 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %27 = load i32, i32* @fiji_mgcg_cgcg_init, align 4
  %28 = load i32, i32* @fiji_mgcg_cgcg_init, align 4
  %29 = call i32 @ARRAY_SIZE(i32 %28)
  %30 = call i32 @amdgpu_device_program_register_sequence(%struct.amdgpu_device* %26, i32 %27, i32 %29)
  br label %51

31:                                               ; preds = %15
  %32 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %33 = load i32, i32* @tonga_mgcg_cgcg_init, align 4
  %34 = load i32, i32* @tonga_mgcg_cgcg_init, align 4
  %35 = call i32 @ARRAY_SIZE(i32 %34)
  %36 = call i32 @amdgpu_device_program_register_sequence(%struct.amdgpu_device* %32, i32 %33, i32 %35)
  br label %51

37:                                               ; preds = %15
  %38 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %39 = load i32, i32* @cz_mgcg_cgcg_init, align 4
  %40 = load i32, i32* @cz_mgcg_cgcg_init, align 4
  %41 = call i32 @ARRAY_SIZE(i32 %40)
  %42 = call i32 @amdgpu_device_program_register_sequence(%struct.amdgpu_device* %38, i32 %39, i32 %41)
  br label %51

43:                                               ; preds = %15
  %44 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %45 = load i32, i32* @stoney_mgcg_cgcg_init, align 4
  %46 = load i32, i32* @stoney_mgcg_cgcg_init, align 4
  %47 = call i32 @ARRAY_SIZE(i32 %46)
  %48 = call i32 @amdgpu_device_program_register_sequence(%struct.amdgpu_device* %44, i32 %45, i32 %47)
  br label %51

49:                                               ; preds = %15, %15, %15, %15
  br label %50

50:                                               ; preds = %15, %49
  br label %51

51:                                               ; preds = %50, %43, %37, %31, %25, %19
  %52 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %53 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %52, i32 0, i32 1
  %54 = call i32 @mutex_unlock(i32* %53)
  br label %55

55:                                               ; preds = %51, %9
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @amdgpu_sriov_vf(%struct.amdgpu_device*) #1

declare dso_local i32 @xgpu_vi_init_golden_registers(%struct.amdgpu_device*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @amdgpu_device_program_register_sequence(%struct.amdgpu_device*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
