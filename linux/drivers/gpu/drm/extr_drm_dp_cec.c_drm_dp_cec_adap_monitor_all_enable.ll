; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_dp_cec.c_drm_dp_cec_adap_monitor_all_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_dp_cec.c_drm_dp_cec_adap_monitor_all_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cec_adapter = type { i32 }
%struct.drm_dp_aux = type { i32 }

@CEC_CAP_MONITOR_ALL = common dso_local global i32 0, align 4
@DP_CEC_TUNNELING_CONTROL = common dso_local global i32 0, align 4
@DP_CEC_SNOOPING_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cec_adapter*, i32)* @drm_dp_cec_adap_monitor_all_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drm_dp_cec_adap_monitor_all_enable(%struct.cec_adapter* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cec_adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_dp_aux*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.cec_adapter* %0, %struct.cec_adapter** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.cec_adapter*, %struct.cec_adapter** %4, align 8
  %10 = call %struct.drm_dp_aux* @cec_get_drvdata(%struct.cec_adapter* %9)
  store %struct.drm_dp_aux* %10, %struct.drm_dp_aux** %6, align 8
  %11 = load %struct.cec_adapter*, %struct.cec_adapter** %4, align 8
  %12 = getelementptr inbounds %struct.cec_adapter, %struct.cec_adapter* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @CEC_CAP_MONITOR_ALL, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %53

18:                                               ; preds = %2
  %19 = load %struct.drm_dp_aux*, %struct.drm_dp_aux** %6, align 8
  %20 = load i32, i32* @DP_CEC_TUNNELING_CONTROL, align 4
  %21 = call i64 @drm_dp_dpcd_readb(%struct.drm_dp_aux* %19, i32 %20, i32* %8)
  store i64 %21, i64* %7, align 8
  %22 = load i64, i64* %7, align 8
  %23 = icmp sge i64 %22, 0
  br i1 %23, label %24, label %41

24:                                               ; preds = %18
  %25 = load i32, i32* %5, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %24
  %28 = load i32, i32* @DP_CEC_SNOOPING_ENABLE, align 4
  %29 = load i32, i32* %8, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %8, align 4
  br label %36

31:                                               ; preds = %24
  %32 = load i32, i32* @DP_CEC_SNOOPING_ENABLE, align 4
  %33 = xor i32 %32, -1
  %34 = load i32, i32* %8, align 4
  %35 = and i32 %34, %33
  store i32 %35, i32* %8, align 4
  br label %36

36:                                               ; preds = %31, %27
  %37 = load %struct.drm_dp_aux*, %struct.drm_dp_aux** %6, align 8
  %38 = load i32, i32* @DP_CEC_TUNNELING_CONTROL, align 4
  %39 = load i32, i32* %8, align 4
  %40 = call i64 @drm_dp_dpcd_writeb(%struct.drm_dp_aux* %37, i32 %38, i32 %39)
  store i64 %40, i64* %7, align 8
  br label %41

41:                                               ; preds = %36, %18
  %42 = load i32, i32* %5, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %41
  %45 = load i64, i64* %7, align 8
  %46 = icmp slt i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %44
  %48 = load i64, i64* %7, align 8
  br label %50

49:                                               ; preds = %44, %41
  br label %50

50:                                               ; preds = %49, %47
  %51 = phi i64 [ %48, %47 ], [ 0, %49 ]
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %3, align 4
  br label %53

53:                                               ; preds = %50, %17
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local %struct.drm_dp_aux* @cec_get_drvdata(%struct.cec_adapter*) #1

declare dso_local i64 @drm_dp_dpcd_readb(%struct.drm_dp_aux*, i32, i32*) #1

declare dso_local i64 @drm_dp_dpcd_writeb(%struct.drm_dp_aux*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
