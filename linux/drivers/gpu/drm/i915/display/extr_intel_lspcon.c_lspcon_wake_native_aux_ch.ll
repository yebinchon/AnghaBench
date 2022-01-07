; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_lspcon.c_lspcon_wake_native_aux_ch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_lspcon.c_lspcon_wake_native_aux_ch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_lspcon = type { i32 }
%struct.TYPE_2__ = type { i32 }

@DP_DPCD_REV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Native AUX CH down\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"Native AUX CH up, DPCD version: %d.%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_lspcon*)* @lspcon_wake_native_aux_ch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lspcon_wake_native_aux_ch(%struct.intel_lspcon* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intel_lspcon*, align 8
  %4 = alloca i32, align 4
  store %struct.intel_lspcon* %0, %struct.intel_lspcon** %3, align 8
  %5 = load %struct.intel_lspcon*, %struct.intel_lspcon** %3, align 8
  %6 = call %struct.TYPE_2__* @lspcon_to_intel_dp(%struct.intel_lspcon* %5)
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* @DP_DPCD_REV, align 4
  %9 = call i32 @drm_dp_dpcd_readb(i32* %7, i32 %8, i32* %4)
  %10 = icmp ne i32 %9, 1
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %19

13:                                               ; preds = %1
  %14 = load i32, i32* %4, align 4
  %15 = ashr i32 %14, 4
  %16 = load i32, i32* %4, align 4
  %17 = and i32 %16, 15
  %18 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %15, i32 %17)
  store i32 1, i32* %2, align 4
  br label %19

19:                                               ; preds = %13, %11
  %20 = load i32, i32* %2, align 4
  ret i32 %20
}

declare dso_local i32 @drm_dp_dpcd_readb(i32*, i32, i32*) #1

declare dso_local %struct.TYPE_2__* @lspcon_to_intel_dp(%struct.intel_lspcon*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
