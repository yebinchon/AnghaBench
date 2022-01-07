; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gmc_v9_0.c_gmc_v9_0_process_ras_data_cb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gmc_v9_0.c_gmc_v9_0_process_ras_data_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 (%struct.amdgpu_device*, %struct.ras_err_data*)*, i32 (%struct.amdgpu_device*, %struct.ras_err_data*)* }
%struct.TYPE_4__ = type { i32 }
%struct.ras_err_data = type { i64 }
%struct.amdgpu_iv_entry = type { i32 }

@AMDGPU_RAS_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*, %struct.ras_err_data*, %struct.amdgpu_iv_entry*)* @gmc_v9_0_process_ras_data_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gmc_v9_0_process_ras_data_cb(%struct.amdgpu_device* %0, %struct.ras_err_data* %1, %struct.amdgpu_iv_entry* %2) #0 {
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
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 1
  %17 = load i32 (%struct.amdgpu_device*, %struct.ras_err_data*)*, i32 (%struct.amdgpu_device*, %struct.ras_err_data*)** %16, align 8
  %18 = icmp ne i32 (%struct.amdgpu_device*, %struct.ras_err_data*)* %17, null
  br i1 %18, label %19, label %29

19:                                               ; preds = %3
  %20 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %21 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 1
  %25 = load i32 (%struct.amdgpu_device*, %struct.ras_err_data*)*, i32 (%struct.amdgpu_device*, %struct.ras_err_data*)** %24, align 8
  %26 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %27 = load %struct.ras_err_data*, %struct.ras_err_data** %5, align 8
  %28 = call i32 %25(%struct.amdgpu_device* %26, %struct.ras_err_data* %27)
  br label %29

29:                                               ; preds = %19, %3
  %30 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %31 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i32 (%struct.amdgpu_device*, %struct.ras_err_data*)*, i32 (%struct.amdgpu_device*, %struct.ras_err_data*)** %34, align 8
  %36 = icmp ne i32 (%struct.amdgpu_device*, %struct.ras_err_data*)* %35, null
  br i1 %36, label %37, label %47

37:                                               ; preds = %29
  %38 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %39 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i32 (%struct.amdgpu_device*, %struct.ras_err_data*)*, i32 (%struct.amdgpu_device*, %struct.ras_err_data*)** %42, align 8
  %44 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %45 = load %struct.ras_err_data*, %struct.ras_err_data** %5, align 8
  %46 = call i32 %43(%struct.amdgpu_device* %44, %struct.ras_err_data* %45)
  br label %47

47:                                               ; preds = %37, %29
  %48 = load %struct.ras_err_data*, %struct.ras_err_data** %5, align 8
  %49 = getelementptr inbounds %struct.ras_err_data, %struct.ras_err_data* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %47
  %53 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %54 = call i32 @amdgpu_ras_reset_gpu(%struct.amdgpu_device* %53, i32 0)
  br label %55

55:                                               ; preds = %52, %47
  %56 = load i32, i32* @AMDGPU_RAS_SUCCESS, align 4
  ret i32 %56
}

declare dso_local i32 @kgd2kfd_set_sram_ecc_flag(i32) #1

declare dso_local i32 @amdgpu_ras_reset_gpu(%struct.amdgpu_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
