; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v9_0.c_gfx_v9_0_process_ras_data_cb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v9_0.c_gfx_v9_0_process_ras_data_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (%struct.amdgpu_device*, %struct.ras_err_data*)* }
%struct.TYPE_4__ = type { i32 }
%struct.ras_err_data = type { i32 }
%struct.amdgpu_iv_entry = type { i32 }

@AMDGPU_RAS_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*, %struct.ras_err_data*, %struct.amdgpu_iv_entry*)* @gfx_v9_0_process_ras_data_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfx_v9_0_process_ras_data_cb(%struct.amdgpu_device* %0, %struct.ras_err_data* %1, %struct.amdgpu_iv_entry* %2) #0 {
  %4 = alloca %struct.amdgpu_device*, align 8
  %5 = alloca %struct.ras_err_data*, align 8
  %6 = alloca %struct.amdgpu_iv_entry*, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %4, align 8
  store %struct.ras_err_data* %1, %struct.ras_err_data** %5, align 8
  store %struct.amdgpu_iv_entry* %2, %struct.amdgpu_iv_entry** %6, align 8
  %7 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %8 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @kgd2kfd_set_sram_ecc_flag(i32 %10)
  %12 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %13 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i32 (%struct.amdgpu_device*, %struct.ras_err_data*)*, i32 (%struct.amdgpu_device*, %struct.ras_err_data*)** %16, align 8
  %18 = icmp ne i32 (%struct.amdgpu_device*, %struct.ras_err_data*)* %17, null
  br i1 %18, label %19, label %29

19:                                               ; preds = %3
  %20 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %21 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i32 (%struct.amdgpu_device*, %struct.ras_err_data*)*, i32 (%struct.amdgpu_device*, %struct.ras_err_data*)** %24, align 8
  %26 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %27 = load %struct.ras_err_data*, %struct.ras_err_data** %5, align 8
  %28 = call i32 %25(%struct.amdgpu_device* %26, %struct.ras_err_data* %27)
  br label %29

29:                                               ; preds = %19, %3
  %30 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %31 = call i32 @amdgpu_ras_reset_gpu(%struct.amdgpu_device* %30, i32 0)
  %32 = load i32, i32* @AMDGPU_RAS_SUCCESS, align 4
  ret i32 %32
}

declare dso_local i32 @kgd2kfd_set_sram_ecc_flag(i32) #1

declare dso_local i32 @amdgpu_ras_reset_gpu(%struct.amdgpu_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
