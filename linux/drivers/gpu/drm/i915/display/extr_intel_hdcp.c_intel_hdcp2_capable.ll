; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_hdcp.c_intel_hdcp2_capable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_hdcp.c_intel_hdcp2_capable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_connector = type { %struct.intel_hdcp, %struct.TYPE_4__ }
%struct.intel_hdcp = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 (%struct.intel_digital_port*, i32*)* }
%struct.intel_digital_port = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.drm_i915_private = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @intel_hdcp2_capable(%struct.intel_connector* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intel_connector*, align 8
  %4 = alloca %struct.drm_i915_private*, align 8
  %5 = alloca %struct.intel_digital_port*, align 8
  %6 = alloca %struct.intel_hdcp*, align 8
  %7 = alloca i32, align 4
  store %struct.intel_connector* %0, %struct.intel_connector** %3, align 8
  %8 = load %struct.intel_connector*, %struct.intel_connector** %3, align 8
  %9 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = call %struct.drm_i915_private* @to_i915(i32 %11)
  store %struct.drm_i915_private* %12, %struct.drm_i915_private** %4, align 8
  %13 = load %struct.intel_connector*, %struct.intel_connector** %3, align 8
  %14 = call %struct.intel_digital_port* @conn_to_dig_port(%struct.intel_connector* %13)
  store %struct.intel_digital_port* %14, %struct.intel_digital_port** %5, align 8
  %15 = load %struct.intel_connector*, %struct.intel_connector** %3, align 8
  %16 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %15, i32 0, i32 0
  store %struct.intel_hdcp* %16, %struct.intel_hdcp** %6, align 8
  store i32 0, i32* %7, align 4
  %17 = load %struct.intel_hdcp*, %struct.intel_hdcp** %6, align 8
  %18 = getelementptr inbounds %struct.intel_hdcp, %struct.intel_hdcp* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %51

22:                                               ; preds = %1
  %23 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %24 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %23, i32 0, i32 0
  %25 = call i32 @mutex_lock(i32* %24)
  %26 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %27 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %22
  %31 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %32 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %30, %22
  %36 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %37 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %36, i32 0, i32 0
  %38 = call i32 @mutex_unlock(i32* %37)
  store i32 0, i32* %2, align 4
  br label %51

39:                                               ; preds = %30
  %40 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %41 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %40, i32 0, i32 0
  %42 = call i32 @mutex_unlock(i32* %41)
  %43 = load %struct.intel_hdcp*, %struct.intel_hdcp** %6, align 8
  %44 = getelementptr inbounds %struct.intel_hdcp, %struct.intel_hdcp* %43, i32 0, i32 0
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32 (%struct.intel_digital_port*, i32*)*, i32 (%struct.intel_digital_port*, i32*)** %46, align 8
  %48 = load %struct.intel_digital_port*, %struct.intel_digital_port** %5, align 8
  %49 = call i32 %47(%struct.intel_digital_port* %48, i32* %7)
  %50 = load i32, i32* %7, align 4
  store i32 %50, i32* %2, align 4
  br label %51

51:                                               ; preds = %39, %35, %21
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local %struct.intel_digital_port* @conn_to_dig_port(%struct.intel_connector*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
