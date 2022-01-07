; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/edp/extr_edp.c_edp_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/edp/extr_edp.c_edp_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.msm_edp = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.platform_device*)* @edp_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @edp_destroy(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.msm_edp*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %4 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %5 = call %struct.msm_edp* @platform_get_drvdata(%struct.platform_device* %4)
  store %struct.msm_edp* %5, %struct.msm_edp** %3, align 8
  %6 = load %struct.msm_edp*, %struct.msm_edp** %3, align 8
  %7 = icmp ne %struct.msm_edp* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %24

9:                                                ; preds = %1
  %10 = load %struct.msm_edp*, %struct.msm_edp** %3, align 8
  %11 = getelementptr inbounds %struct.msm_edp, %struct.msm_edp* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %21

14:                                               ; preds = %9
  %15 = load %struct.msm_edp*, %struct.msm_edp** %3, align 8
  %16 = getelementptr inbounds %struct.msm_edp, %struct.msm_edp* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = call i32 @msm_edp_ctrl_destroy(i32* %17)
  %19 = load %struct.msm_edp*, %struct.msm_edp** %3, align 8
  %20 = getelementptr inbounds %struct.msm_edp, %struct.msm_edp* %19, i32 0, i32 0
  store i32* null, i32** %20, align 8
  br label %21

21:                                               ; preds = %14, %9
  %22 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %23 = call i32 @platform_set_drvdata(%struct.platform_device* %22, i32* null)
  br label %24

24:                                               ; preds = %21, %8
  ret void
}

declare dso_local %struct.msm_edp* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @msm_edp_ctrl_destroy(i32*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
