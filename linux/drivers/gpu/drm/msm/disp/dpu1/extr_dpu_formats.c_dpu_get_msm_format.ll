; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_formats.c_dpu_get_msm_format.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_formats.c_dpu_get_msm_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_format = type { i32 }
%struct.msm_kms = type { i32 }
%struct.dpu_format = type { %struct.msm_format }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.msm_format* @dpu_get_msm_format(%struct.msm_kms* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.msm_format*, align 8
  %5 = alloca %struct.msm_kms*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.dpu_format*, align 8
  store %struct.msm_kms* %0, %struct.msm_kms** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %6, align 4
  %10 = load i32, i32* %7, align 4
  %11 = call %struct.dpu_format* @dpu_get_dpu_format_ext(i32 %9, i32 %10)
  store %struct.dpu_format* %11, %struct.dpu_format** %8, align 8
  %12 = load %struct.dpu_format*, %struct.dpu_format** %8, align 8
  %13 = icmp ne %struct.dpu_format* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load %struct.dpu_format*, %struct.dpu_format** %8, align 8
  %16 = getelementptr inbounds %struct.dpu_format, %struct.dpu_format* %15, i32 0, i32 0
  store %struct.msm_format* %16, %struct.msm_format** %4, align 8
  br label %18

17:                                               ; preds = %3
  store %struct.msm_format* null, %struct.msm_format** %4, align 8
  br label %18

18:                                               ; preds = %17, %14
  %19 = load %struct.msm_format*, %struct.msm_format** %4, align 8
  ret %struct.msm_format* %19
}

declare dso_local %struct.dpu_format* @dpu_get_dpu_format_ext(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
