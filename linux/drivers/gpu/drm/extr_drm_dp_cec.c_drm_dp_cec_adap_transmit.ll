; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_dp_cec.c_drm_dp_cec_adap_transmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_dp_cec.c_drm_dp_cec_adap_transmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cec_adapter = type { i32 }
%struct.cec_msg = type { i32, i32 }
%struct.drm_dp_aux = type { i32 }

@DP_CEC_TX_MESSAGE_BUFFER = common dso_local global i32 0, align 4
@DP_CEC_TX_MESSAGE_INFO = common dso_local global i32 0, align 4
@DP_CEC_TX_MESSAGE_SEND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cec_adapter*, i64, i32, %struct.cec_msg*)* @drm_dp_cec_adap_transmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drm_dp_cec_adap_transmit(%struct.cec_adapter* %0, i64 %1, i32 %2, %struct.cec_msg* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.cec_adapter*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.cec_msg*, align 8
  %10 = alloca %struct.drm_dp_aux*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.cec_adapter* %0, %struct.cec_adapter** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.cec_msg* %3, %struct.cec_msg** %9, align 8
  %13 = load %struct.cec_adapter*, %struct.cec_adapter** %6, align 8
  %14 = call %struct.drm_dp_aux* @cec_get_drvdata(%struct.cec_adapter* %13)
  store %struct.drm_dp_aux* %14, %struct.drm_dp_aux** %10, align 8
  %15 = load i64, i64* %7, align 8
  %16 = sub nsw i64 %15, 1
  %17 = call i32 @min(i32 5, i64 %16)
  store i32 %17, i32* %11, align 4
  %18 = load %struct.drm_dp_aux*, %struct.drm_dp_aux** %10, align 8
  %19 = load i32, i32* @DP_CEC_TX_MESSAGE_BUFFER, align 4
  %20 = load %struct.cec_msg*, %struct.cec_msg** %9, align 8
  %21 = getelementptr inbounds %struct.cec_msg, %struct.cec_msg* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.cec_msg*, %struct.cec_msg** %9, align 8
  %24 = getelementptr inbounds %struct.cec_msg, %struct.cec_msg* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @drm_dp_dpcd_write(%struct.drm_dp_aux* %18, i32 %19, i32 %22, i32 %25)
  store i64 %26, i64* %12, align 8
  %27 = load i64, i64* %12, align 8
  %28 = icmp slt i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %4
  %30 = load i64, i64* %12, align 8
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %5, align 4
  br label %53

32:                                               ; preds = %4
  %33 = load %struct.drm_dp_aux*, %struct.drm_dp_aux** %10, align 8
  %34 = load i32, i32* @DP_CEC_TX_MESSAGE_INFO, align 4
  %35 = load %struct.cec_msg*, %struct.cec_msg** %9, align 8
  %36 = getelementptr inbounds %struct.cec_msg, %struct.cec_msg* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = sub nsw i32 %37, 1
  %39 = load i32, i32* %11, align 4
  %40 = shl i32 %39, 4
  %41 = or i32 %38, %40
  %42 = load i32, i32* @DP_CEC_TX_MESSAGE_SEND, align 4
  %43 = or i32 %41, %42
  %44 = call i64 @drm_dp_dpcd_writeb(%struct.drm_dp_aux* %33, i32 %34, i32 %43)
  store i64 %44, i64* %12, align 8
  %45 = load i64, i64* %12, align 8
  %46 = icmp slt i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %32
  %48 = load i64, i64* %12, align 8
  br label %50

49:                                               ; preds = %32
  br label %50

50:                                               ; preds = %49, %47
  %51 = phi i64 [ %48, %47 ], [ 0, %49 ]
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %5, align 4
  br label %53

53:                                               ; preds = %50, %29
  %54 = load i32, i32* %5, align 4
  ret i32 %54
}

declare dso_local %struct.drm_dp_aux* @cec_get_drvdata(%struct.cec_adapter*) #1

declare dso_local i32 @min(i32, i64) #1

declare dso_local i64 @drm_dp_dpcd_write(%struct.drm_dp_aux*, i32, i32, i32) #1

declare dso_local i64 @drm_dp_dpcd_writeb(%struct.drm_dp_aux*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
