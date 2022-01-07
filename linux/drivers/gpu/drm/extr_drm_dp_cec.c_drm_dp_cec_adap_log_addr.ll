; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_dp_cec.c_drm_dp_cec_adap_log_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_dp_cec.c_drm_dp_cec_adap_log_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cec_adapter = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.drm_dp_aux = type { i32 }

@CEC_LOG_ADDR_BROADCAST = common dso_local global i32 0, align 4
@CEC_LOG_ADDR_INVALID = common dso_local global i32 0, align 4
@DP_CEC_LOGICAL_ADDRESS_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cec_adapter*, i32)* @drm_dp_cec_adap_log_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drm_dp_cec_adap_log_addr(%struct.cec_adapter* %0, i32 %1) #0 {
  %3 = alloca %struct.cec_adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_dp_aux*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [2 x i32], align 4
  %8 = alloca i64, align 8
  store %struct.cec_adapter* %0, %struct.cec_adapter** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.cec_adapter*, %struct.cec_adapter** %3, align 8
  %10 = call %struct.drm_dp_aux* @cec_get_drvdata(%struct.cec_adapter* %9)
  store %struct.drm_dp_aux* %10, %struct.drm_dp_aux** %5, align 8
  %11 = load i32, i32* @CEC_LOG_ADDR_BROADCAST, align 4
  %12 = shl i32 1, %11
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @CEC_LOG_ADDR_INVALID, align 4
  %15 = icmp ne i32 %13, %14
  br i1 %15, label %16, label %26

16:                                               ; preds = %2
  %17 = load %struct.cec_adapter*, %struct.cec_adapter** %3, align 8
  %18 = getelementptr inbounds %struct.cec_adapter, %struct.cec_adapter* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %4, align 4
  %22 = shl i32 1, %21
  %23 = or i32 %20, %22
  %24 = load i32, i32* %6, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %6, align 4
  br label %26

26:                                               ; preds = %16, %2
  %27 = load i32, i32* %6, align 4
  %28 = and i32 %27, 255
  %29 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  store i32 %28, i32* %29, align 4
  %30 = load i32, i32* %6, align 4
  %31 = ashr i32 %30, 8
  %32 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  store i32 %31, i32* %32, align 4
  %33 = load %struct.drm_dp_aux*, %struct.drm_dp_aux** %5, align 8
  %34 = load i32, i32* @DP_CEC_LOGICAL_ADDRESS_MASK, align 4
  %35 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %36 = call i64 @drm_dp_dpcd_write(%struct.drm_dp_aux* %33, i32 %34, i32* %35, i32 2)
  store i64 %36, i64* %8, align 8
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* @CEC_LOG_ADDR_INVALID, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %26
  %41 = load i64, i64* %8, align 8
  %42 = icmp slt i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %40
  %44 = load i64, i64* %8, align 8
  br label %46

45:                                               ; preds = %40, %26
  br label %46

46:                                               ; preds = %45, %43
  %47 = phi i64 [ %44, %43 ], [ 0, %45 ]
  %48 = trunc i64 %47 to i32
  ret i32 %48
}

declare dso_local %struct.drm_dp_aux* @cec_get_drvdata(%struct.cec_adapter*) #1

declare dso_local i64 @drm_dp_dpcd_write(%struct.drm_dp_aux*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
