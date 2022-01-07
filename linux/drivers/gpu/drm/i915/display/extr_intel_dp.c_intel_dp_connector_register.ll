; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dp.c_intel_dp_connector_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dp.c_intel_dp_connector_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i32, %struct.TYPE_6__*, %struct.drm_device* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.drm_device = type { i32 }
%struct.intel_dp = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__*, i32 }

@.str = private unnamed_addr constant [27 x i8] c"registering %s bus for %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_connector*)* @intel_dp_connector_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_dp_connector_register(%struct.drm_connector* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_connector*, align 8
  %4 = alloca %struct.intel_dp*, align 8
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i32, align 4
  store %struct.drm_connector* %0, %struct.drm_connector** %3, align 8
  %7 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %8 = call %struct.intel_dp* @intel_attached_dp(%struct.drm_connector* %7)
  store %struct.intel_dp* %8, %struct.intel_dp** %4, align 8
  %9 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %10 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %9, i32 0, i32 2
  %11 = load %struct.drm_device*, %struct.drm_device** %10, align 8
  store %struct.drm_device* %11, %struct.drm_device** %5, align 8
  %12 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %13 = call i32 @intel_connector_register(%struct.drm_connector* %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* %6, align 4
  store i32 %17, i32* %2, align 4
  br label %55

18:                                               ; preds = %1
  %19 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %20 = call i32 @i915_debugfs_connector_add(%struct.drm_connector* %19)
  %21 = load %struct.intel_dp*, %struct.intel_dp** %4, align 8
  %22 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %26 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %25, i32 0, i32 1
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %30)
  %32 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %33 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %32, i32 0, i32 1
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = load %struct.intel_dp*, %struct.intel_dp** %4, align 8
  %36 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  store %struct.TYPE_6__* %34, %struct.TYPE_6__** %37, align 8
  %38 = load %struct.intel_dp*, %struct.intel_dp** %4, align 8
  %39 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %38, i32 0, i32 0
  %40 = call i32 @drm_dp_aux_register(%struct.TYPE_7__* %39)
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %53, label %43

43:                                               ; preds = %18
  %44 = load %struct.intel_dp*, %struct.intel_dp** %4, align 8
  %45 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %44, i32 0, i32 0
  %46 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %47 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %50 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @drm_dp_cec_register_connector(%struct.TYPE_7__* %45, i32 %48, i32 %51)
  br label %53

53:                                               ; preds = %43, %18
  %54 = load i32, i32* %6, align 4
  store i32 %54, i32* %2, align 4
  br label %55

55:                                               ; preds = %53, %16
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local %struct.intel_dp* @intel_attached_dp(%struct.drm_connector*) #1

declare dso_local i32 @intel_connector_register(%struct.drm_connector*) #1

declare dso_local i32 @i915_debugfs_connector_add(%struct.drm_connector*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32, i32) #1

declare dso_local i32 @drm_dp_aux_register(%struct.TYPE_7__*) #1

declare dso_local i32 @drm_dp_cec_register_connector(%struct.TYPE_7__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
