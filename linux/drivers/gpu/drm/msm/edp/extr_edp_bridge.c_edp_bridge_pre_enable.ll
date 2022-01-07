; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/edp/extr_edp_bridge.c_edp_bridge_pre_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/edp/extr_edp_bridge.c_edp_bridge_pre_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_bridge = type { i32 }
%struct.edp_bridge = type { %struct.msm_edp* }
%struct.msm_edp = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_bridge*)* @edp_bridge_pre_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @edp_bridge_pre_enable(%struct.drm_bridge* %0) #0 {
  %2 = alloca %struct.drm_bridge*, align 8
  %3 = alloca %struct.edp_bridge*, align 8
  %4 = alloca %struct.msm_edp*, align 8
  store %struct.drm_bridge* %0, %struct.drm_bridge** %2, align 8
  %5 = load %struct.drm_bridge*, %struct.drm_bridge** %2, align 8
  %6 = call %struct.edp_bridge* @to_edp_bridge(%struct.drm_bridge* %5)
  store %struct.edp_bridge* %6, %struct.edp_bridge** %3, align 8
  %7 = load %struct.edp_bridge*, %struct.edp_bridge** %3, align 8
  %8 = getelementptr inbounds %struct.edp_bridge, %struct.edp_bridge* %7, i32 0, i32 0
  %9 = load %struct.msm_edp*, %struct.msm_edp** %8, align 8
  store %struct.msm_edp* %9, %struct.msm_edp** %4, align 8
  %10 = call i32 @DBG(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.msm_edp*, %struct.msm_edp** %4, align 8
  %12 = getelementptr inbounds %struct.msm_edp, %struct.msm_edp* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @msm_edp_ctrl_power(i32 %13, i32 1)
  ret void
}

declare dso_local %struct.edp_bridge* @to_edp_bridge(%struct.drm_bridge*) #1

declare dso_local i32 @DBG(i8*) #1

declare dso_local i32 @msm_edp_ctrl_power(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
