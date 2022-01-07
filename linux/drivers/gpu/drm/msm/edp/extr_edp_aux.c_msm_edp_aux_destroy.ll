; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/edp/extr_edp_aux.c_msm_edp_aux_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/edp/extr_edp_aux.c_msm_edp_aux_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.edp_aux = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @msm_edp_aux_destroy(%struct.device* %0, %struct.edp_aux* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.edp_aux*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.edp_aux* %1, %struct.edp_aux** %4, align 8
  %5 = load %struct.edp_aux*, %struct.edp_aux** %4, align 8
  %6 = icmp ne %struct.edp_aux* %5, null
  br i1 %6, label %7, label %14

7:                                                ; preds = %2
  %8 = load %struct.edp_aux*, %struct.edp_aux** %4, align 8
  %9 = getelementptr inbounds %struct.edp_aux, %struct.edp_aux* %8, i32 0, i32 1
  %10 = call i32 @drm_dp_aux_unregister(i32* %9)
  %11 = load %struct.edp_aux*, %struct.edp_aux** %4, align 8
  %12 = getelementptr inbounds %struct.edp_aux, %struct.edp_aux* %11, i32 0, i32 0
  %13 = call i32 @mutex_destroy(i32* %12)
  br label %14

14:                                               ; preds = %7, %2
  ret void
}

declare dso_local i32 @drm_dp_aux_unregister(i32*) #1

declare dso_local i32 @mutex_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
