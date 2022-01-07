; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_mxgpu_vi.c_xgpu_vi_init_golden_registers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_mxgpu_vi.c_xgpu_vi_init_golden_registers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }

@xgpu_fiji_mgcg_cgcg_init = common dso_local global i32 0, align 4
@xgpu_fiji_golden_settings_a10 = common dso_local global i32 0, align 4
@xgpu_fiji_golden_common_all = common dso_local global i32 0, align 4
@xgpu_tonga_mgcg_cgcg_init = common dso_local global i32 0, align 4
@xgpu_tonga_golden_settings_a11 = common dso_local global i32 0, align 4
@xgpu_tonga_golden_common_all = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Doesn't support chip type.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xgpu_vi_init_golden_registers(%struct.amdgpu_device* %0) #0 {
  %2 = alloca %struct.amdgpu_device*, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %2, align 8
  %3 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %4 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  switch i32 %5, label %38 [
    i32 129, label %6
    i32 128, label %22
  ]

6:                                                ; preds = %1
  %7 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %8 = load i32, i32* @xgpu_fiji_mgcg_cgcg_init, align 4
  %9 = load i32, i32* @xgpu_fiji_mgcg_cgcg_init, align 4
  %10 = call i32 @ARRAY_SIZE(i32 %9)
  %11 = call i32 @amdgpu_device_program_register_sequence(%struct.amdgpu_device* %7, i32 %8, i32 %10)
  %12 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %13 = load i32, i32* @xgpu_fiji_golden_settings_a10, align 4
  %14 = load i32, i32* @xgpu_fiji_golden_settings_a10, align 4
  %15 = call i32 @ARRAY_SIZE(i32 %14)
  %16 = call i32 @amdgpu_device_program_register_sequence(%struct.amdgpu_device* %12, i32 %13, i32 %15)
  %17 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %18 = load i32, i32* @xgpu_fiji_golden_common_all, align 4
  %19 = load i32, i32* @xgpu_fiji_golden_common_all, align 4
  %20 = call i32 @ARRAY_SIZE(i32 %19)
  %21 = call i32 @amdgpu_device_program_register_sequence(%struct.amdgpu_device* %17, i32 %18, i32 %20)
  br label %40

22:                                               ; preds = %1
  %23 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %24 = load i32, i32* @xgpu_tonga_mgcg_cgcg_init, align 4
  %25 = load i32, i32* @xgpu_tonga_mgcg_cgcg_init, align 4
  %26 = call i32 @ARRAY_SIZE(i32 %25)
  %27 = call i32 @amdgpu_device_program_register_sequence(%struct.amdgpu_device* %23, i32 %24, i32 %26)
  %28 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %29 = load i32, i32* @xgpu_tonga_golden_settings_a11, align 4
  %30 = load i32, i32* @xgpu_tonga_golden_settings_a11, align 4
  %31 = call i32 @ARRAY_SIZE(i32 %30)
  %32 = call i32 @amdgpu_device_program_register_sequence(%struct.amdgpu_device* %28, i32 %29, i32 %31)
  %33 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %34 = load i32, i32* @xgpu_tonga_golden_common_all, align 4
  %35 = load i32, i32* @xgpu_tonga_golden_common_all, align 4
  %36 = call i32 @ARRAY_SIZE(i32 %35)
  %37 = call i32 @amdgpu_device_program_register_sequence(%struct.amdgpu_device* %33, i32 %34, i32 %36)
  br label %40

38:                                               ; preds = %1
  %39 = call i32 @BUG_ON(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %40

40:                                               ; preds = %38, %22, %6
  ret void
}

declare dso_local i32 @amdgpu_device_program_register_sequence(%struct.amdgpu_device*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @BUG_ON(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
