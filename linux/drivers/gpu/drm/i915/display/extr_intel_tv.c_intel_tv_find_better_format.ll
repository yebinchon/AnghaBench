; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_tv.c_intel_tv_find_better_format.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_tv.c_intel_tv_find_better_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tv_mode = type { i32 }
%struct.drm_connector = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.intel_tv = type { i64 }

@DRM_MODE_CONNECTOR_Component = common dso_local global i64 0, align 8
@tv_modes = common dso_local global %struct.tv_mode* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_connector*)* @intel_tv_find_better_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_tv_find_better_format(%struct.drm_connector* %0) #0 {
  %2 = alloca %struct.drm_connector*, align 8
  %3 = alloca %struct.intel_tv*, align 8
  %4 = alloca %struct.tv_mode*, align 8
  %5 = alloca i32, align 4
  store %struct.drm_connector* %0, %struct.drm_connector** %2, align 8
  %6 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %7 = call %struct.intel_tv* @intel_attached_tv(%struct.drm_connector* %6)
  store %struct.intel_tv* %7, %struct.intel_tv** %3, align 8
  %8 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %9 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %8, i32 0, i32 0
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = call %struct.tv_mode* @intel_tv_mode_find(%struct.TYPE_4__* %10)
  store %struct.tv_mode* %11, %struct.tv_mode** %4, align 8
  %12 = load %struct.intel_tv*, %struct.intel_tv** %3, align 8
  %13 = getelementptr inbounds %struct.intel_tv, %struct.intel_tv* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @DRM_MODE_CONNECTOR_Component, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  br label %51

18:                                               ; preds = %1
  %19 = load %struct.tv_mode*, %struct.tv_mode** %4, align 8
  %20 = getelementptr inbounds %struct.tv_mode, %struct.tv_mode* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %18
  br label %51

24:                                               ; preds = %18
  store i32 0, i32* %5, align 4
  br label %25

25:                                               ; preds = %41, %24
  %26 = load i32, i32* %5, align 4
  %27 = load %struct.tv_mode*, %struct.tv_mode** @tv_modes, align 8
  %28 = call i32 @ARRAY_SIZE(%struct.tv_mode* %27)
  %29 = icmp slt i32 %26, %28
  br i1 %29, label %30, label %44

30:                                               ; preds = %25
  %31 = load %struct.tv_mode*, %struct.tv_mode** @tv_modes, align 8
  %32 = load i32, i32* %5, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.tv_mode, %struct.tv_mode* %31, i64 %33
  store %struct.tv_mode* %34, %struct.tv_mode** %4, align 8
  %35 = load %struct.tv_mode*, %struct.tv_mode** %4, align 8
  %36 = getelementptr inbounds %struct.tv_mode, %struct.tv_mode* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %30
  br label %44

40:                                               ; preds = %30
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %5, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %5, align 4
  br label %25

44:                                               ; preds = %39, %25
  %45 = load i32, i32* %5, align 4
  %46 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %47 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %46, i32 0, i32 0
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  store i32 %45, i32* %50, align 4
  br label %51

51:                                               ; preds = %44, %23, %17
  ret void
}

declare dso_local %struct.intel_tv* @intel_attached_tv(%struct.drm_connector*) #1

declare dso_local %struct.tv_mode* @intel_tv_mode_find(%struct.TYPE_4__*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.tv_mode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
