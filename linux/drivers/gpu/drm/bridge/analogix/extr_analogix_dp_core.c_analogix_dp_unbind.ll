; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/analogix/extr_analogix_dp_core.c_analogix_dp_unbind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/analogix/extr_analogix_dp_core.c_analogix_dp_unbind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.analogix_dp_device = type { i32, i32, i32, %struct.TYPE_5__*, %struct.TYPE_6__, i32 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_6__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.TYPE_6__*)* }

@.str = private unnamed_addr constant [29 x i8] c"failed to turnoff the panel\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @analogix_dp_unbind(%struct.analogix_dp_device* %0) #0 {
  %2 = alloca %struct.analogix_dp_device*, align 8
  store %struct.analogix_dp_device* %0, %struct.analogix_dp_device** %2, align 8
  %3 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %2, align 8
  %4 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %3, i32 0, i32 5
  %5 = load i32, i32* %4, align 8
  %6 = call i32 @analogix_dp_bridge_disable(i32 %5)
  %7 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %2, align 8
  %8 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %7, i32 0, i32 4
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32 (%struct.TYPE_6__*)*, i32 (%struct.TYPE_6__*)** %11, align 8
  %13 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %2, align 8
  %14 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %13, i32 0, i32 4
  %15 = call i32 %12(%struct.TYPE_6__* %14)
  %16 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %2, align 8
  %17 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %16, i32 0, i32 3
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %39

22:                                               ; preds = %1
  %23 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %2, align 8
  %24 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %23, i32 0, i32 3
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = call i64 @drm_panel_unprepare(i64 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %22
  %31 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %32

32:                                               ; preds = %30, %22
  %33 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %2, align 8
  %34 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %33, i32 0, i32 3
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @drm_panel_detach(i64 %37)
  br label %39

39:                                               ; preds = %32, %1
  %40 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %2, align 8
  %41 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %40, i32 0, i32 2
  %42 = call i32 @drm_dp_aux_unregister(i32* %41)
  %43 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %2, align 8
  %44 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @pm_runtime_disable(i32 %45)
  %47 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %2, align 8
  %48 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @clk_disable_unprepare(i32 %49)
  ret void
}

declare dso_local i32 @analogix_dp_bridge_disable(i32) #1

declare dso_local i64 @drm_panel_unprepare(i64) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @drm_panel_detach(i64) #1

declare dso_local i32 @drm_dp_aux_unregister(i32*) #1

declare dso_local i32 @pm_runtime_disable(i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
