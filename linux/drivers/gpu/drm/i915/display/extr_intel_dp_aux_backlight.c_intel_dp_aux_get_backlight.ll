; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dp_aux_backlight.c_intel_dp_aux_get_backlight.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dp_aux_backlight.c_intel_dp_aux_get_backlight.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_connector = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.intel_dp = type { i32*, i32 }

@DP_EDP_BACKLIGHT_BRIGHTNESS_MSB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Failed to read DPCD register 0x%x\0A\00", align 1
@DP_EDP_BACKLIGHT_BRIGHTNESS_BYTE_COUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_connector*)* @intel_dp_aux_get_backlight to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_dp_aux_get_backlight(%struct.intel_connector* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intel_connector*, align 8
  %4 = alloca %struct.intel_dp*, align 8
  %5 = alloca [2 x i32], align 4
  %6 = alloca i32, align 4
  store %struct.intel_connector* %0, %struct.intel_connector** %3, align 8
  %7 = load %struct.intel_connector*, %struct.intel_connector** %3, align 8
  %8 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = call %struct.intel_dp* @enc_to_intel_dp(i32* %10)
  store %struct.intel_dp* %11, %struct.intel_dp** %4, align 8
  %12 = bitcast [2 x i32]* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %12, i8 0, i64 8, i1 false)
  store i32 0, i32* %6, align 4
  %13 = load %struct.intel_dp*, %struct.intel_dp** %4, align 8
  %14 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %13, i32 0, i32 1
  %15 = load i32, i32* @DP_EDP_BACKLIGHT_BRIGHTNESS_MSB, align 4
  %16 = bitcast [2 x i32]* %5 to i32**
  %17 = call i64 @drm_dp_dpcd_read(i32* %14, i32 %15, i32** %16, i32 8)
  %18 = icmp slt i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %1
  %20 = load i32, i32* @DP_EDP_BACKLIGHT_BRIGHTNESS_MSB, align 4
  %21 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %20)
  store i32 0, i32* %2, align 4
  br label %42

22:                                               ; preds = %1
  %23 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %6, align 4
  %25 = load %struct.intel_dp*, %struct.intel_dp** %4, align 8
  %26 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 2
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @DP_EDP_BACKLIGHT_BRIGHTNESS_BYTE_COUNT, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %22
  %34 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %35 = load i32, i32* %34, align 4
  %36 = shl i32 %35, 8
  %37 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 1
  %38 = load i32, i32* %37, align 4
  %39 = or i32 %36, %38
  store i32 %39, i32* %6, align 4
  br label %40

40:                                               ; preds = %33, %22
  %41 = load i32, i32* %6, align 4
  store i32 %41, i32* %2, align 4
  br label %42

42:                                               ; preds = %40, %19
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local %struct.intel_dp* @enc_to_intel_dp(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i64 @drm_dp_dpcd_read(i32*, i32, i32**, i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
