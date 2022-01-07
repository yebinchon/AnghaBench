; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/dsi/extr_dsi_manager.c_msm_dsi_manager_unregister.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/dsi/extr_dsi_manager.c_msm_dsi_manager_unregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_dsi_manager = type { i32** }
%struct.msm_dsi = type { i64, i64 }

@msm_dsim_glb = common dso_local global %struct.msm_dsi_manager zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @msm_dsi_manager_unregister(%struct.msm_dsi* %0) #0 {
  %2 = alloca %struct.msm_dsi*, align 8
  %3 = alloca %struct.msm_dsi_manager*, align 8
  store %struct.msm_dsi* %0, %struct.msm_dsi** %2, align 8
  store %struct.msm_dsi_manager* @msm_dsim_glb, %struct.msm_dsi_manager** %3, align 8
  %4 = load %struct.msm_dsi*, %struct.msm_dsi** %2, align 8
  %5 = getelementptr inbounds %struct.msm_dsi, %struct.msm_dsi* %4, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %1
  %9 = load %struct.msm_dsi*, %struct.msm_dsi** %2, align 8
  %10 = getelementptr inbounds %struct.msm_dsi, %struct.msm_dsi* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = call i32 @msm_dsi_host_unregister(i64 %11)
  br label %13

13:                                               ; preds = %8, %1
  %14 = load %struct.msm_dsi*, %struct.msm_dsi** %2, align 8
  %15 = getelementptr inbounds %struct.msm_dsi, %struct.msm_dsi* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp uge i64 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %13
  %19 = load %struct.msm_dsi_manager*, %struct.msm_dsi_manager** %3, align 8
  %20 = getelementptr inbounds %struct.msm_dsi_manager, %struct.msm_dsi_manager* %19, i32 0, i32 0
  %21 = load i32**, i32*** %20, align 8
  %22 = load %struct.msm_dsi*, %struct.msm_dsi** %2, align 8
  %23 = getelementptr inbounds %struct.msm_dsi, %struct.msm_dsi* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds i32*, i32** %21, i64 %24
  store i32* null, i32** %25, align 8
  br label %26

26:                                               ; preds = %18, %13
  ret void
}

declare dso_local i32 @msm_dsi_host_unregister(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
