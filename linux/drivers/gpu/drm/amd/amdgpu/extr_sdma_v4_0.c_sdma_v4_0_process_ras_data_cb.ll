; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_sdma_v4_0.c_sdma_v4_0_process_ras_data_cb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_sdma_v4_0.c_sdma_v4_0_process_ras_data_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.ras_err_data = type { i32 }
%struct.amdgpu_iv_entry = type { i32, i32 }

@AMDGPU_RAS_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*, %struct.ras_err_data*, %struct.amdgpu_iv_entry*)* @sdma_v4_0_process_ras_data_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdma_v4_0_process_ras_data_cb(%struct.amdgpu_device* %0, %struct.ras_err_data* %1, %struct.amdgpu_iv_entry* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.amdgpu_device*, align 8
  %6 = alloca %struct.ras_err_data*, align 8
  %7 = alloca %struct.amdgpu_iv_entry*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %5, align 8
  store %struct.ras_err_data* %1, %struct.ras_err_data** %6, align 8
  store %struct.amdgpu_iv_entry* %2, %struct.amdgpu_iv_entry** %7, align 8
  %10 = load %struct.amdgpu_iv_entry*, %struct.amdgpu_iv_entry** %7, align 8
  %11 = getelementptr inbounds %struct.amdgpu_iv_entry, %struct.amdgpu_iv_entry* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @sdma_v4_0_irq_id_to_seq(i32 %12)
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %9, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %33

17:                                               ; preds = %3
  %18 = load %struct.amdgpu_iv_entry*, %struct.amdgpu_iv_entry** %7, align 8
  %19 = getelementptr inbounds %struct.amdgpu_iv_entry, %struct.amdgpu_iv_entry* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  switch i32 %20, label %23 [
    i32 128, label %21
    i32 129, label %22
  ]

21:                                               ; preds = %17
  store i32 0, i32* %8, align 4
  br label %24

22:                                               ; preds = %17
  store i32 1, i32* %8, align 4
  br label %24

23:                                               ; preds = %17
  store i32 0, i32* %4, align 4
  br label %33

24:                                               ; preds = %22, %21
  %25 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %26 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @kgd2kfd_set_sram_ecc_flag(i32 %28)
  %30 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %31 = call i32 @amdgpu_ras_reset_gpu(%struct.amdgpu_device* %30, i32 0)
  %32 = load i32, i32* @AMDGPU_RAS_SUCCESS, align 4
  store i32 %32, i32* %4, align 4
  br label %33

33:                                               ; preds = %24, %23, %16
  %34 = load i32, i32* %4, align 4
  ret i32 %34
}

declare dso_local i32 @sdma_v4_0_irq_id_to_seq(i32) #1

declare dso_local i32 @kgd2kfd_set_sram_ecc_flag(i32) #1

declare dso_local i32 @amdgpu_ras_reset_gpu(%struct.amdgpu_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
