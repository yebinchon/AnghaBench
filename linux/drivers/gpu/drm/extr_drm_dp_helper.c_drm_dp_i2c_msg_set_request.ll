; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_dp_helper.c_drm_dp_i2c_msg_set_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_dp_helper.c_drm_dp_i2c_msg_set_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_dp_aux_msg = type { i32 }
%struct.i2c_msg = type { i32 }

@I2C_M_RD = common dso_local global i32 0, align 4
@DP_AUX_I2C_READ = common dso_local global i32 0, align 4
@DP_AUX_I2C_WRITE = common dso_local global i32 0, align 4
@I2C_M_STOP = common dso_local global i32 0, align 4
@DP_AUX_I2C_MOT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_dp_aux_msg*, %struct.i2c_msg*)* @drm_dp_i2c_msg_set_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @drm_dp_i2c_msg_set_request(%struct.drm_dp_aux_msg* %0, %struct.i2c_msg* %1) #0 {
  %3 = alloca %struct.drm_dp_aux_msg*, align 8
  %4 = alloca %struct.i2c_msg*, align 8
  store %struct.drm_dp_aux_msg* %0, %struct.drm_dp_aux_msg** %3, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %4, align 8
  %5 = load %struct.i2c_msg*, %struct.i2c_msg** %4, align 8
  %6 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @I2C_M_RD, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i32, i32* @DP_AUX_I2C_READ, align 4
  br label %15

13:                                               ; preds = %2
  %14 = load i32, i32* @DP_AUX_I2C_WRITE, align 4
  br label %15

15:                                               ; preds = %13, %11
  %16 = phi i32 [ %12, %11 ], [ %14, %13 ]
  %17 = load %struct.drm_dp_aux_msg*, %struct.drm_dp_aux_msg** %3, align 8
  %18 = getelementptr inbounds %struct.drm_dp_aux_msg, %struct.drm_dp_aux_msg* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  %19 = load %struct.i2c_msg*, %struct.i2c_msg** %4, align 8
  %20 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @I2C_M_STOP, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %15
  %26 = load i32, i32* @DP_AUX_I2C_MOT, align 4
  %27 = load %struct.drm_dp_aux_msg*, %struct.drm_dp_aux_msg** %3, align 8
  %28 = getelementptr inbounds %struct.drm_dp_aux_msg, %struct.drm_dp_aux_msg* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = or i32 %29, %26
  store i32 %30, i32* %28, align 4
  br label %31

31:                                               ; preds = %25, %15
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
