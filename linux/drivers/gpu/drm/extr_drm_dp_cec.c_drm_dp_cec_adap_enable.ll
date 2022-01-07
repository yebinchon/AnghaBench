; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_dp_cec.c_drm_dp_cec_adap_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_dp_cec.c_drm_dp_cec_adap_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cec_adapter = type { i32 }
%struct.drm_dp_aux = type { i32 }

@DP_CEC_TUNNELING_ENABLE = common dso_local global i32 0, align 4
@DP_CEC_TUNNELING_CONTROL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cec_adapter*, i32)* @drm_dp_cec_adap_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drm_dp_cec_adap_enable(%struct.cec_adapter* %0, i32 %1) #0 {
  %3 = alloca %struct.cec_adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_dp_aux*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.cec_adapter* %0, %struct.cec_adapter** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.cec_adapter*, %struct.cec_adapter** %3, align 8
  %9 = call %struct.drm_dp_aux* @cec_get_drvdata(%struct.cec_adapter* %8)
  store %struct.drm_dp_aux* %9, %struct.drm_dp_aux** %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* @DP_CEC_TUNNELING_ENABLE, align 4
  br label %15

14:                                               ; preds = %2
  br label %15

15:                                               ; preds = %14, %12
  %16 = phi i32 [ %13, %12 ], [ 0, %14 ]
  store i32 %16, i32* %6, align 4
  store i64 0, i64* %7, align 8
  %17 = load %struct.drm_dp_aux*, %struct.drm_dp_aux** %5, align 8
  %18 = load i32, i32* @DP_CEC_TUNNELING_CONTROL, align 4
  %19 = load i32, i32* %6, align 4
  %20 = call i64 @drm_dp_dpcd_writeb(%struct.drm_dp_aux* %17, i32 %18, i32 %19)
  store i64 %20, i64* %7, align 8
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %15
  %24 = load i64, i64* %7, align 8
  %25 = icmp slt i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  %27 = load i64, i64* %7, align 8
  br label %29

28:                                               ; preds = %23, %15
  br label %29

29:                                               ; preds = %28, %26
  %30 = phi i64 [ %27, %26 ], [ 0, %28 ]
  %31 = trunc i64 %30 to i32
  ret i32 %31
}

declare dso_local %struct.drm_dp_aux* @cec_get_drvdata(%struct.cec_adapter*) #1

declare dso_local i64 @drm_dp_dpcd_writeb(%struct.drm_dp_aux*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
