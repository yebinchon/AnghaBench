; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_atombios_dp.c_amdgpu_atombios_dp_set_tp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_atombios_dp.c_amdgpu_atombios_dp_set_tp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_atombios_dp_link_train_info = type { i32, i32 }

@ATOM_ENCODER_CMD_DP_LINK_TRAINING_PATTERN1 = common dso_local global i32 0, align 4
@ATOM_ENCODER_CMD_DP_LINK_TRAINING_PATTERN2 = common dso_local global i32 0, align 4
@ATOM_ENCODER_CMD_DP_LINK_TRAINING_PATTERN3 = common dso_local global i32 0, align 4
@DP_TRAINING_PATTERN_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_atombios_dp_link_train_info*, i32)* @amdgpu_atombios_dp_set_tp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @amdgpu_atombios_dp_set_tp(%struct.amdgpu_atombios_dp_link_train_info* %0, i32 %1) #0 {
  %3 = alloca %struct.amdgpu_atombios_dp_link_train_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.amdgpu_atombios_dp_link_train_info* %0, %struct.amdgpu_atombios_dp_link_train_info** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %13 [
    i32 130, label %7
    i32 129, label %9
    i32 128, label %11
  ]

7:                                                ; preds = %2
  %8 = load i32, i32* @ATOM_ENCODER_CMD_DP_LINK_TRAINING_PATTERN1, align 4
  store i32 %8, i32* %5, align 4
  br label %13

9:                                                ; preds = %2
  %10 = load i32, i32* @ATOM_ENCODER_CMD_DP_LINK_TRAINING_PATTERN2, align 4
  store i32 %10, i32* %5, align 4
  br label %13

11:                                               ; preds = %2
  %12 = load i32, i32* @ATOM_ENCODER_CMD_DP_LINK_TRAINING_PATTERN3, align 4
  store i32 %12, i32* %5, align 4
  br label %13

13:                                               ; preds = %2, %11, %9, %7
  %14 = load %struct.amdgpu_atombios_dp_link_train_info*, %struct.amdgpu_atombios_dp_link_train_info** %3, align 8
  %15 = getelementptr inbounds %struct.amdgpu_atombios_dp_link_train_info, %struct.amdgpu_atombios_dp_link_train_info* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @amdgpu_atombios_encoder_setup_dig_encoder(i32 %16, i32 %17, i32 0)
  %19 = load %struct.amdgpu_atombios_dp_link_train_info*, %struct.amdgpu_atombios_dp_link_train_info** %3, align 8
  %20 = getelementptr inbounds %struct.amdgpu_atombios_dp_link_train_info, %struct.amdgpu_atombios_dp_link_train_info* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @DP_TRAINING_PATTERN_SET, align 4
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @drm_dp_dpcd_writeb(i32 %21, i32 %22, i32 %23)
  ret void
}

declare dso_local i32 @amdgpu_atombios_encoder_setup_dig_encoder(i32, i32, i32) #1

declare dso_local i32 @drm_dp_dpcd_writeb(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
