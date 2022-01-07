; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/xen/extr_xen_drm_front_evtchnl.c_xen_drm_front_evtchnl_free_all.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/xen/extr_xen_drm_front_evtchnl.c_xen_drm_front_evtchnl_free_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xen_drm_front_info = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xen_drm_front_evtchnl_free_all(%struct.xen_drm_front_info* %0) #0 {
  %2 = alloca %struct.xen_drm_front_info*, align 8
  %3 = alloca i32, align 4
  store %struct.xen_drm_front_info* %0, %struct.xen_drm_front_info** %2, align 8
  %4 = load %struct.xen_drm_front_info*, %struct.xen_drm_front_info** %2, align 8
  %5 = getelementptr inbounds %struct.xen_drm_front_info, %struct.xen_drm_front_info* %4, i32 0, i32 1
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = icmp ne %struct.TYPE_2__* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %45

9:                                                ; preds = %1
  store i32 0, i32* %3, align 4
  br label %10

10:                                               ; preds = %35, %9
  %11 = load i32, i32* %3, align 4
  %12 = load %struct.xen_drm_front_info*, %struct.xen_drm_front_info** %2, align 8
  %13 = getelementptr inbounds %struct.xen_drm_front_info, %struct.xen_drm_front_info* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %38

16:                                               ; preds = %10
  %17 = load %struct.xen_drm_front_info*, %struct.xen_drm_front_info** %2, align 8
  %18 = load %struct.xen_drm_front_info*, %struct.xen_drm_front_info** %2, align 8
  %19 = getelementptr inbounds %struct.xen_drm_front_info, %struct.xen_drm_front_info* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = load i32, i32* %3, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = call i32 @evtchnl_free(%struct.xen_drm_front_info* %17, i32* %24)
  %26 = load %struct.xen_drm_front_info*, %struct.xen_drm_front_info** %2, align 8
  %27 = load %struct.xen_drm_front_info*, %struct.xen_drm_front_info** %2, align 8
  %28 = getelementptr inbounds %struct.xen_drm_front_info, %struct.xen_drm_front_info* %27, i32 0, i32 1
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = load i32, i32* %3, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = call i32 @evtchnl_free(%struct.xen_drm_front_info* %26, i32* %33)
  br label %35

35:                                               ; preds = %16
  %36 = load i32, i32* %3, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %3, align 4
  br label %10

38:                                               ; preds = %10
  %39 = load %struct.xen_drm_front_info*, %struct.xen_drm_front_info** %2, align 8
  %40 = getelementptr inbounds %struct.xen_drm_front_info, %struct.xen_drm_front_info* %39, i32 0, i32 1
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = call i32 @kfree(%struct.TYPE_2__* %41)
  %43 = load %struct.xen_drm_front_info*, %struct.xen_drm_front_info** %2, align 8
  %44 = getelementptr inbounds %struct.xen_drm_front_info, %struct.xen_drm_front_info* %43, i32 0, i32 1
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %44, align 8
  br label %45

45:                                               ; preds = %38, %8
  ret void
}

declare dso_local i32 @evtchnl_free(%struct.xen_drm_front_info*, i32*) #1

declare dso_local i32 @kfree(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
