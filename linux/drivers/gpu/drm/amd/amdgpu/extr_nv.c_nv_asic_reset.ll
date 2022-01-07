; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_nv.c_nv_asic_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_nv.c_nv_asic_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32, %struct.smu_context }
%struct.smu_context = type { i32 }

@AMD_RESET_METHOD_BACO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*)* @nv_asic_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv_asic_reset(%struct.amdgpu_device* %0) #0 {
  %2 = alloca %struct.amdgpu_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.smu_context*, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %2, align 8
  store i32 0, i32* %3, align 4
  %5 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %6 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %5, i32 0, i32 1
  store %struct.smu_context* %6, %struct.smu_context** %4, align 8
  %7 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %8 = call i64 @nv_asic_reset_method(%struct.amdgpu_device* %7)
  %9 = load i64, i64* @AMD_RESET_METHOD_BACO, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %22

11:                                               ; preds = %1
  %12 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %13 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %11
  %17 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %18 = call i32 @amdgpu_inc_vram_lost(%struct.amdgpu_device* %17)
  br label %19

19:                                               ; preds = %16, %11
  %20 = load %struct.smu_context*, %struct.smu_context** %4, align 8
  %21 = call i32 @smu_baco_reset(%struct.smu_context* %20)
  store i32 %21, i32* %3, align 4
  br label %33

22:                                               ; preds = %1
  %23 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %24 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %22
  %28 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %29 = call i32 @amdgpu_inc_vram_lost(%struct.amdgpu_device* %28)
  br label %30

30:                                               ; preds = %27, %22
  %31 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %32 = call i32 @nv_asic_mode1_reset(%struct.amdgpu_device* %31)
  store i32 %32, i32* %3, align 4
  br label %33

33:                                               ; preds = %30, %19
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i64 @nv_asic_reset_method(%struct.amdgpu_device*) #1

declare dso_local i32 @amdgpu_inc_vram_lost(%struct.amdgpu_device*) #1

declare dso_local i32 @smu_baco_reset(%struct.smu_context*) #1

declare dso_local i32 @nv_asic_mode1_reset(%struct.amdgpu_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
