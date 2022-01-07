; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_atombios_dp.c_radeon_dp_link_train_finish.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_atombios_dp.c_radeon_dp_link_train_finish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_dp_link_train_info = type { i32, i32, i32, i32, i32, i32 }

@DP_TRAINING_PATTERN_SET = common dso_local global i32 0, align 4
@DP_TRAINING_PATTERN_DISABLE = common dso_local global i32 0, align 4
@ATOM_ENCODER_CMD_DP_LINK_TRAINING_COMPLETE = common dso_local global i32 0, align 4
@ATOM_DP_ACTION_TRAINING_COMPLETE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_dp_link_train_info*)* @radeon_dp_link_train_finish to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @radeon_dp_link_train_finish(%struct.radeon_dp_link_train_info* %0) #0 {
  %2 = alloca %struct.radeon_dp_link_train_info*, align 8
  store %struct.radeon_dp_link_train_info* %0, %struct.radeon_dp_link_train_info** %2, align 8
  %3 = call i32 @udelay(i32 400)
  %4 = load %struct.radeon_dp_link_train_info*, %struct.radeon_dp_link_train_info** %2, align 8
  %5 = getelementptr inbounds %struct.radeon_dp_link_train_info, %struct.radeon_dp_link_train_info* %4, i32 0, i32 5
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @DP_TRAINING_PATTERN_SET, align 4
  %8 = load i32, i32* @DP_TRAINING_PATTERN_DISABLE, align 4
  %9 = call i32 @drm_dp_dpcd_writeb(i32 %6, i32 %7, i32 %8)
  %10 = load %struct.radeon_dp_link_train_info*, %struct.radeon_dp_link_train_info** %2, align 8
  %11 = getelementptr inbounds %struct.radeon_dp_link_train_info, %struct.radeon_dp_link_train_info* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = call i64 @ASIC_IS_DCE4(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %1
  %16 = load %struct.radeon_dp_link_train_info*, %struct.radeon_dp_link_train_info** %2, align 8
  %17 = getelementptr inbounds %struct.radeon_dp_link_train_info, %struct.radeon_dp_link_train_info* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %15, %1
  %21 = load %struct.radeon_dp_link_train_info*, %struct.radeon_dp_link_train_info** %2, align 8
  %22 = getelementptr inbounds %struct.radeon_dp_link_train_info, %struct.radeon_dp_link_train_info* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @ATOM_ENCODER_CMD_DP_LINK_TRAINING_COMPLETE, align 4
  %25 = call i32 @atombios_dig_encoder_setup(i32 %23, i32 %24, i32 0)
  br label %38

26:                                               ; preds = %15
  %27 = load %struct.radeon_dp_link_train_info*, %struct.radeon_dp_link_train_info** %2, align 8
  %28 = getelementptr inbounds %struct.radeon_dp_link_train_info, %struct.radeon_dp_link_train_info* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @ATOM_DP_ACTION_TRAINING_COMPLETE, align 4
  %31 = load %struct.radeon_dp_link_train_info*, %struct.radeon_dp_link_train_info** %2, align 8
  %32 = getelementptr inbounds %struct.radeon_dp_link_train_info, %struct.radeon_dp_link_train_info* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.radeon_dp_link_train_info*, %struct.radeon_dp_link_train_info** %2, align 8
  %35 = getelementptr inbounds %struct.radeon_dp_link_train_info, %struct.radeon_dp_link_train_info* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @radeon_dp_encoder_service(i32 %29, i32 %30, i32 %33, i32 %36, i32 0)
  br label %38

38:                                               ; preds = %26, %20
  ret i32 0
}

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @drm_dp_dpcd_writeb(i32, i32, i32) #1

declare dso_local i64 @ASIC_IS_DCE4(i32) #1

declare dso_local i32 @atombios_dig_encoder_setup(i32, i32, i32) #1

declare dso_local i32 @radeon_dp_encoder_service(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
