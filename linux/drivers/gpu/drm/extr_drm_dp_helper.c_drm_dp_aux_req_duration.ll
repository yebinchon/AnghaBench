; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_dp_helper.c_drm_dp_aux_req_duration.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_dp_helper.c_drm_dp_aux_req_duration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_dp_aux_msg = type { i32, i32 }

@AUX_PRECHARGE_LEN = common dso_local global i32 0, align 4
@AUX_SYNC_LEN = common dso_local global i32 0, align 4
@AUX_STOP_LEN = common dso_local global i32 0, align 4
@AUX_CMD_LEN = common dso_local global i32 0, align 4
@AUX_ADDRESS_LEN = common dso_local global i32 0, align 4
@AUX_LENGTH_LEN = common dso_local global i32 0, align 4
@DP_AUX_I2C_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_dp_aux_msg*)* @drm_dp_aux_req_duration to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drm_dp_aux_req_duration(%struct.drm_dp_aux_msg* %0) #0 {
  %2 = alloca %struct.drm_dp_aux_msg*, align 8
  %3 = alloca i32, align 4
  store %struct.drm_dp_aux_msg* %0, %struct.drm_dp_aux_msg** %2, align 8
  %4 = load i32, i32* @AUX_PRECHARGE_LEN, align 4
  %5 = load i32, i32* @AUX_SYNC_LEN, align 4
  %6 = add nsw i32 %4, %5
  %7 = load i32, i32* @AUX_STOP_LEN, align 4
  %8 = add nsw i32 %6, %7
  %9 = load i32, i32* @AUX_CMD_LEN, align 4
  %10 = add nsw i32 %8, %9
  %11 = load i32, i32* @AUX_ADDRESS_LEN, align 4
  %12 = add nsw i32 %10, %11
  %13 = load i32, i32* @AUX_LENGTH_LEN, align 4
  %14 = add nsw i32 %12, %13
  store i32 %14, i32* %3, align 4
  %15 = load %struct.drm_dp_aux_msg*, %struct.drm_dp_aux_msg** %2, align 8
  %16 = getelementptr inbounds %struct.drm_dp_aux_msg, %struct.drm_dp_aux_msg* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @DP_AUX_I2C_READ, align 4
  %19 = and i32 %17, %18
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %1
  %22 = load %struct.drm_dp_aux_msg*, %struct.drm_dp_aux_msg** %2, align 8
  %23 = getelementptr inbounds %struct.drm_dp_aux_msg, %struct.drm_dp_aux_msg* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = mul nsw i32 %24, 8
  %26 = load i32, i32* %3, align 4
  %27 = add nsw i32 %26, %25
  store i32 %27, i32* %3, align 4
  br label %28

28:                                               ; preds = %21, %1
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
