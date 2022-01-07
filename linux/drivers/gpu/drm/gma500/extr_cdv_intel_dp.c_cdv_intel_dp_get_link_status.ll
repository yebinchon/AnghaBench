; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_cdv_intel_dp.c_cdv_intel_dp_get_link_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_cdv_intel_dp.c_cdv_intel_dp_get_link_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gma_encoder = type { %struct.cdv_intel_dp* }
%struct.cdv_intel_dp = type { i32 }

@DP_LANE0_1_STATUS = common dso_local global i32 0, align 4
@DP_LINK_STATUS_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gma_encoder*)* @cdv_intel_dp_get_link_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cdv_intel_dp_get_link_status(%struct.gma_encoder* %0) #0 {
  %2 = alloca %struct.gma_encoder*, align 8
  %3 = alloca %struct.cdv_intel_dp*, align 8
  store %struct.gma_encoder* %0, %struct.gma_encoder** %2, align 8
  %4 = load %struct.gma_encoder*, %struct.gma_encoder** %2, align 8
  %5 = getelementptr inbounds %struct.gma_encoder, %struct.gma_encoder* %4, i32 0, i32 0
  %6 = load %struct.cdv_intel_dp*, %struct.cdv_intel_dp** %5, align 8
  store %struct.cdv_intel_dp* %6, %struct.cdv_intel_dp** %3, align 8
  %7 = load %struct.gma_encoder*, %struct.gma_encoder** %2, align 8
  %8 = load i32, i32* @DP_LANE0_1_STATUS, align 4
  %9 = load %struct.cdv_intel_dp*, %struct.cdv_intel_dp** %3, align 8
  %10 = getelementptr inbounds %struct.cdv_intel_dp, %struct.cdv_intel_dp* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @DP_LINK_STATUS_SIZE, align 4
  %13 = call i32 @cdv_intel_dp_aux_native_read_retry(%struct.gma_encoder* %7, i32 %8, i32 %11, i32 %12)
  ret i32 %13
}

declare dso_local i32 @cdv_intel_dp_aux_native_read_retry(%struct.gma_encoder*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
