; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_atombios_dp.c_amdgpu_atombios_dp_set_rx_power_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_atombios_dp.c_amdgpu_atombios_dp_set_rx_power_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i32 }
%struct.amdgpu_connector = type { %struct.TYPE_2__*, %struct.amdgpu_connector_atom_dig* }
%struct.TYPE_2__ = type { i32 }
%struct.amdgpu_connector_atom_dig = type { i32* }

@DP_SET_POWER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @amdgpu_atombios_dp_set_rx_power_state(%struct.drm_connector* %0, i32 %1) #0 {
  %3 = alloca %struct.drm_connector*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.amdgpu_connector*, align 8
  %6 = alloca %struct.amdgpu_connector_atom_dig*, align 8
  store %struct.drm_connector* %0, %struct.drm_connector** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %8 = call %struct.amdgpu_connector* @to_amdgpu_connector(%struct.drm_connector* %7)
  store %struct.amdgpu_connector* %8, %struct.amdgpu_connector** %5, align 8
  %9 = load %struct.amdgpu_connector*, %struct.amdgpu_connector** %5, align 8
  %10 = getelementptr inbounds %struct.amdgpu_connector, %struct.amdgpu_connector* %9, i32 0, i32 1
  %11 = load %struct.amdgpu_connector_atom_dig*, %struct.amdgpu_connector_atom_dig** %10, align 8
  %12 = icmp ne %struct.amdgpu_connector_atom_dig* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  br label %33

14:                                               ; preds = %2
  %15 = load %struct.amdgpu_connector*, %struct.amdgpu_connector** %5, align 8
  %16 = getelementptr inbounds %struct.amdgpu_connector, %struct.amdgpu_connector* %15, i32 0, i32 1
  %17 = load %struct.amdgpu_connector_atom_dig*, %struct.amdgpu_connector_atom_dig** %16, align 8
  store %struct.amdgpu_connector_atom_dig* %17, %struct.amdgpu_connector_atom_dig** %6, align 8
  %18 = load %struct.amdgpu_connector_atom_dig*, %struct.amdgpu_connector_atom_dig** %6, align 8
  %19 = getelementptr inbounds %struct.amdgpu_connector_atom_dig, %struct.amdgpu_connector_atom_dig* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp sge i32 %22, 17
  br i1 %23, label %24, label %33

24:                                               ; preds = %14
  %25 = load %struct.amdgpu_connector*, %struct.amdgpu_connector** %5, align 8
  %26 = getelementptr inbounds %struct.amdgpu_connector, %struct.amdgpu_connector* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* @DP_SET_POWER, align 4
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @drm_dp_dpcd_writeb(i32* %28, i32 %29, i32 %30)
  %32 = call i32 @usleep_range(i32 1000, i32 2000)
  br label %33

33:                                               ; preds = %13, %24, %14
  ret void
}

declare dso_local %struct.amdgpu_connector* @to_amdgpu_connector(%struct.drm_connector*) #1

declare dso_local i32 @drm_dp_dpcd_writeb(i32*, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
