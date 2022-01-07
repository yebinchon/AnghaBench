; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_cdv_intel_dp.c_cdv_dp_detect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_cdv_intel_dp.c_cdv_dp_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gma_encoder = type { %struct.cdv_intel_dp* }
%struct.cdv_intel_dp = type { i32* }

@connector_status_disconnected = common dso_local global i32 0, align 4
@DP_DPCD_REV = common dso_local global i64 0, align 8
@connector_status_connected = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"DPCD: Rev=%x LN_Rate=%x LN_CNT=%x LN_DOWNSP=%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gma_encoder*)* @cdv_dp_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cdv_dp_detect(%struct.gma_encoder* %0) #0 {
  %2 = alloca %struct.gma_encoder*, align 8
  %3 = alloca %struct.cdv_intel_dp*, align 8
  %4 = alloca i32, align 4
  store %struct.gma_encoder* %0, %struct.gma_encoder** %2, align 8
  %5 = load %struct.gma_encoder*, %struct.gma_encoder** %2, align 8
  %6 = getelementptr inbounds %struct.gma_encoder, %struct.gma_encoder* %5, i32 0, i32 0
  %7 = load %struct.cdv_intel_dp*, %struct.cdv_intel_dp** %6, align 8
  store %struct.cdv_intel_dp* %7, %struct.cdv_intel_dp** %3, align 8
  %8 = load i32, i32* @connector_status_disconnected, align 4
  store i32 %8, i32* %4, align 4
  %9 = load %struct.gma_encoder*, %struct.gma_encoder** %2, align 8
  %10 = load %struct.cdv_intel_dp*, %struct.cdv_intel_dp** %3, align 8
  %11 = getelementptr inbounds %struct.cdv_intel_dp, %struct.cdv_intel_dp* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = call i32 @cdv_intel_dp_aux_native_read(%struct.gma_encoder* %9, i32 0, i32* %12, i32 8)
  %14 = sext i32 %13 to i64
  %15 = icmp eq i64 %14, 8
  br i1 %15, label %16, label %27

16:                                               ; preds = %1
  %17 = load %struct.cdv_intel_dp*, %struct.cdv_intel_dp** %3, align 8
  %18 = getelementptr inbounds %struct.cdv_intel_dp, %struct.cdv_intel_dp* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = load i64, i64* @DP_DPCD_REV, align 8
  %21 = getelementptr inbounds i32, i32* %19, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %16
  %25 = load i32, i32* @connector_status_connected, align 4
  store i32 %25, i32* %4, align 4
  br label %26

26:                                               ; preds = %24, %16
  br label %27

27:                                               ; preds = %26, %1
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @connector_status_connected, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %53

31:                                               ; preds = %27
  %32 = load %struct.cdv_intel_dp*, %struct.cdv_intel_dp** %3, align 8
  %33 = getelementptr inbounds %struct.cdv_intel_dp, %struct.cdv_intel_dp* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.cdv_intel_dp*, %struct.cdv_intel_dp** %3, align 8
  %38 = getelementptr inbounds %struct.cdv_intel_dp, %struct.cdv_intel_dp* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.cdv_intel_dp*, %struct.cdv_intel_dp** %3, align 8
  %43 = getelementptr inbounds %struct.cdv_intel_dp, %struct.cdv_intel_dp* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 2
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.cdv_intel_dp*, %struct.cdv_intel_dp** %3, align 8
  %48 = getelementptr inbounds %struct.cdv_intel_dp, %struct.cdv_intel_dp* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 3
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %36, i32 %41, i32 %46, i32 %51)
  br label %53

53:                                               ; preds = %31, %27
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local i32 @cdv_intel_dp_aux_native_read(%struct.gma_encoder*, i32, i32*, i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
