; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_kms.c_dpu_kms_round_pixclk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_kms.c_dpu_kms_round_pixclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_kms = type { i32 }
%struct.drm_encoder = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.msm_kms*, i64, %struct.drm_encoder*)* @dpu_kms_round_pixclk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @dpu_kms_round_pixclk(%struct.msm_kms* %0, i64 %1, %struct.drm_encoder* %2) #0 {
  %4 = alloca %struct.msm_kms*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.drm_encoder*, align 8
  store %struct.msm_kms* %0, %struct.msm_kms** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.drm_encoder* %2, %struct.drm_encoder** %6, align 8
  %7 = load i64, i64* %5, align 8
  ret i64 %7
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
