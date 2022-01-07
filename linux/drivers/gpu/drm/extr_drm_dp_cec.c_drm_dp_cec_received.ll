; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_dp_cec.c_drm_dp_cec_received.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_dp_cec.c_drm_dp_cec_received.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_dp_aux = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.cec_adapter* }
%struct.cec_adapter = type { i32 }
%struct.cec_msg = type { i32, i32 }

@DP_CEC_RX_MESSAGE_INFO = common dso_local global i32 0, align 4
@DP_CEC_RX_MESSAGE_ENDED = common dso_local global i32 0, align 4
@DP_CEC_RX_MESSAGE_LEN_MASK = common dso_local global i32 0, align 4
@DP_CEC_RX_MESSAGE_BUFFER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_dp_aux*)* @drm_dp_cec_received to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drm_dp_cec_received(%struct.drm_dp_aux* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_dp_aux*, align 8
  %4 = alloca %struct.cec_adapter*, align 8
  %5 = alloca %struct.cec_msg, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.drm_dp_aux* %0, %struct.drm_dp_aux** %3, align 8
  %8 = load %struct.drm_dp_aux*, %struct.drm_dp_aux** %3, align 8
  %9 = getelementptr inbounds %struct.drm_dp_aux, %struct.drm_dp_aux* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.cec_adapter*, %struct.cec_adapter** %10, align 8
  store %struct.cec_adapter* %11, %struct.cec_adapter** %4, align 8
  %12 = load %struct.drm_dp_aux*, %struct.drm_dp_aux** %3, align 8
  %13 = load i32, i32* @DP_CEC_RX_MESSAGE_INFO, align 4
  %14 = call i64 @drm_dp_dpcd_readb(%struct.drm_dp_aux* %12, i32 %13, i32* %6)
  store i64 %14, i64* %7, align 8
  %15 = load i64, i64* %7, align 8
  %16 = icmp slt i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load i64, i64* %7, align 8
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %2, align 4
  br label %47

20:                                               ; preds = %1
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @DP_CEC_RX_MESSAGE_ENDED, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %20
  store i32 0, i32* %2, align 4
  br label %47

26:                                               ; preds = %20
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @DP_CEC_RX_MESSAGE_LEN_MASK, align 4
  %29 = and i32 %27, %28
  %30 = add nsw i32 %29, 1
  %31 = getelementptr inbounds %struct.cec_msg, %struct.cec_msg* %5, i32 0, i32 0
  store i32 %30, i32* %31, align 4
  %32 = load %struct.drm_dp_aux*, %struct.drm_dp_aux** %3, align 8
  %33 = load i32, i32* @DP_CEC_RX_MESSAGE_BUFFER, align 4
  %34 = getelementptr inbounds %struct.cec_msg, %struct.cec_msg* %5, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = getelementptr inbounds %struct.cec_msg, %struct.cec_msg* %5, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @drm_dp_dpcd_read(%struct.drm_dp_aux* %32, i32 %33, i32 %35, i32 %37)
  store i64 %38, i64* %7, align 8
  %39 = load i64, i64* %7, align 8
  %40 = icmp slt i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %26
  %42 = load i64, i64* %7, align 8
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %2, align 4
  br label %47

44:                                               ; preds = %26
  %45 = load %struct.cec_adapter*, %struct.cec_adapter** %4, align 8
  %46 = call i32 @cec_received_msg(%struct.cec_adapter* %45, %struct.cec_msg* %5)
  store i32 0, i32* %2, align 4
  br label %47

47:                                               ; preds = %44, %41, %25, %17
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local i64 @drm_dp_dpcd_readb(%struct.drm_dp_aux*, i32, i32*) #1

declare dso_local i64 @drm_dp_dpcd_read(%struct.drm_dp_aux*, i32, i32, i32) #1

declare dso_local i32 @cec_received_msg(%struct.cec_adapter*, %struct.cec_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
