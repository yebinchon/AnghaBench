; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/edp/extr_edp_ctrl.c_msm_edp_ctrl_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/edp/extr_edp_ctrl.c_msm_edp_ctrl_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.edp_ctrl = type { i32, i32*, i32*, %struct.TYPE_2__*, i32* }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @msm_edp_ctrl_destroy(%struct.edp_ctrl* %0) #0 {
  %2 = alloca %struct.edp_ctrl*, align 8
  store %struct.edp_ctrl* %0, %struct.edp_ctrl** %2, align 8
  %3 = load %struct.edp_ctrl*, %struct.edp_ctrl** %2, align 8
  %4 = icmp ne %struct.edp_ctrl* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %48

6:                                                ; preds = %1
  %7 = load %struct.edp_ctrl*, %struct.edp_ctrl** %2, align 8
  %8 = getelementptr inbounds %struct.edp_ctrl, %struct.edp_ctrl* %7, i32 0, i32 4
  %9 = load i32*, i32** %8, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %22

11:                                               ; preds = %6
  %12 = load %struct.edp_ctrl*, %struct.edp_ctrl** %2, align 8
  %13 = getelementptr inbounds %struct.edp_ctrl, %struct.edp_ctrl* %12, i32 0, i32 4
  %14 = load i32*, i32** %13, align 8
  %15 = call i32 @flush_workqueue(i32* %14)
  %16 = load %struct.edp_ctrl*, %struct.edp_ctrl** %2, align 8
  %17 = getelementptr inbounds %struct.edp_ctrl, %struct.edp_ctrl* %16, i32 0, i32 4
  %18 = load i32*, i32** %17, align 8
  %19 = call i32 @destroy_workqueue(i32* %18)
  %20 = load %struct.edp_ctrl*, %struct.edp_ctrl** %2, align 8
  %21 = getelementptr inbounds %struct.edp_ctrl, %struct.edp_ctrl* %20, i32 0, i32 4
  store i32* null, i32** %21, align 8
  br label %22

22:                                               ; preds = %11, %6
  %23 = load %struct.edp_ctrl*, %struct.edp_ctrl** %2, align 8
  %24 = getelementptr inbounds %struct.edp_ctrl, %struct.edp_ctrl* %23, i32 0, i32 2
  %25 = load i32*, i32** %24, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %38

27:                                               ; preds = %22
  %28 = load %struct.edp_ctrl*, %struct.edp_ctrl** %2, align 8
  %29 = getelementptr inbounds %struct.edp_ctrl, %struct.edp_ctrl* %28, i32 0, i32 3
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load %struct.edp_ctrl*, %struct.edp_ctrl** %2, align 8
  %33 = getelementptr inbounds %struct.edp_ctrl, %struct.edp_ctrl* %32, i32 0, i32 2
  %34 = load i32*, i32** %33, align 8
  %35 = call i32 @msm_edp_aux_destroy(i32* %31, i32* %34)
  %36 = load %struct.edp_ctrl*, %struct.edp_ctrl** %2, align 8
  %37 = getelementptr inbounds %struct.edp_ctrl, %struct.edp_ctrl* %36, i32 0, i32 2
  store i32* null, i32** %37, align 8
  br label %38

38:                                               ; preds = %27, %22
  %39 = load %struct.edp_ctrl*, %struct.edp_ctrl** %2, align 8
  %40 = getelementptr inbounds %struct.edp_ctrl, %struct.edp_ctrl* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = call i32 @kfree(i32* %41)
  %43 = load %struct.edp_ctrl*, %struct.edp_ctrl** %2, align 8
  %44 = getelementptr inbounds %struct.edp_ctrl, %struct.edp_ctrl* %43, i32 0, i32 1
  store i32* null, i32** %44, align 8
  %45 = load %struct.edp_ctrl*, %struct.edp_ctrl** %2, align 8
  %46 = getelementptr inbounds %struct.edp_ctrl, %struct.edp_ctrl* %45, i32 0, i32 0
  %47 = call i32 @mutex_destroy(i32* %46)
  br label %48

48:                                               ; preds = %38, %5
  ret void
}

declare dso_local i32 @flush_workqueue(i32*) #1

declare dso_local i32 @destroy_workqueue(i32*) #1

declare dso_local i32 @msm_edp_aux_destroy(i32*, i32*) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @mutex_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
