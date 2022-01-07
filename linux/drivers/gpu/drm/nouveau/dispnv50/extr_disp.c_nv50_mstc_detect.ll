; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv50/extr_disp.c_nv50_mstc_detect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv50/extr_disp.c_nv50_mstc_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.nv50_mstc = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@connector_status_disconnected = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_connector*, i32)* @nv50_mstc_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv50_mstc_detect(%struct.drm_connector* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_connector*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nv50_mstc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.drm_connector* %0, %struct.drm_connector** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %10 = call %struct.nv50_mstc* @nv50_mstc(%struct.drm_connector* %9)
  store %struct.nv50_mstc* %10, %struct.nv50_mstc** %6, align 8
  %11 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %12 = call i64 @drm_connector_is_unregistered(%struct.drm_connector* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* @connector_status_disconnected, align 4
  store i32 %15, i32* %3, align 4
  br label %56

16:                                               ; preds = %2
  %17 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %18 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %17, i32 0, i32 0
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @pm_runtime_get_sync(i32 %21)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %16
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* @EACCES, align 4
  %28 = sub nsw i32 0, %27
  %29 = icmp ne i32 %26, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = load i32, i32* @connector_status_disconnected, align 4
  store i32 %31, i32* %3, align 4
  br label %56

32:                                               ; preds = %25, %16
  %33 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %34 = load %struct.nv50_mstc*, %struct.nv50_mstc** %6, align 8
  %35 = getelementptr inbounds %struct.nv50_mstc, %struct.nv50_mstc* %34, i32 0, i32 0
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.nv50_mstc*, %struct.nv50_mstc** %6, align 8
  %40 = getelementptr inbounds %struct.nv50_mstc, %struct.nv50_mstc* %39, i32 0, i32 0
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = call i32 @drm_dp_mst_detect_port(%struct.drm_connector* %33, i32 %38, %struct.TYPE_4__* %41)
  store i32 %42, i32* %7, align 4
  %43 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %44 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %43, i32 0, i32 0
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @pm_runtime_mark_last_busy(i32 %47)
  %49 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %50 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %49, i32 0, i32 0
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @pm_runtime_put_autosuspend(i32 %53)
  %55 = load i32, i32* %7, align 4
  store i32 %55, i32* %3, align 4
  br label %56

56:                                               ; preds = %32, %30, %14
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local %struct.nv50_mstc* @nv50_mstc(%struct.drm_connector*) #1

declare dso_local i64 @drm_connector_is_unregistered(%struct.drm_connector*) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @drm_dp_mst_detect_port(%struct.drm_connector*, i32, %struct.TYPE_4__*) #1

declare dso_local i32 @pm_runtime_mark_last_busy(i32) #1

declare dso_local i32 @pm_runtime_put_autosuspend(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
