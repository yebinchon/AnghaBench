; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_connector.c_intel_connector_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_connector.c_intel_connector_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i32 }
%struct.intel_connector = type { i64, i32, %struct.drm_connector*, %struct.drm_connector* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intel_connector_destroy(%struct.drm_connector* %0) #0 {
  %2 = alloca %struct.drm_connector*, align 8
  %3 = alloca %struct.intel_connector*, align 8
  store %struct.drm_connector* %0, %struct.drm_connector** %2, align 8
  %4 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %5 = call %struct.intel_connector* @to_intel_connector(%struct.drm_connector* %4)
  store %struct.intel_connector* %5, %struct.intel_connector** %3, align 8
  %6 = load %struct.intel_connector*, %struct.intel_connector** %3, align 8
  %7 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %6, i32 0, i32 3
  %8 = load %struct.drm_connector*, %struct.drm_connector** %7, align 8
  %9 = call i32 @kfree(%struct.drm_connector* %8)
  %10 = load %struct.intel_connector*, %struct.intel_connector** %3, align 8
  %11 = call i32 @intel_hdcp_cleanup(%struct.intel_connector* %10)
  %12 = load %struct.intel_connector*, %struct.intel_connector** %3, align 8
  %13 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %12, i32 0, i32 2
  %14 = load %struct.drm_connector*, %struct.drm_connector** %13, align 8
  %15 = call i32 @IS_ERR_OR_NULL(%struct.drm_connector* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %1
  %18 = load %struct.intel_connector*, %struct.intel_connector** %3, align 8
  %19 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %18, i32 0, i32 2
  %20 = load %struct.drm_connector*, %struct.drm_connector** %19, align 8
  %21 = call i32 @kfree(%struct.drm_connector* %20)
  br label %22

22:                                               ; preds = %17, %1
  %23 = load %struct.intel_connector*, %struct.intel_connector** %3, align 8
  %24 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %23, i32 0, i32 1
  %25 = call i32 @intel_panel_fini(i32* %24)
  %26 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %27 = call i32 @drm_connector_cleanup(%struct.drm_connector* %26)
  %28 = load %struct.intel_connector*, %struct.intel_connector** %3, align 8
  %29 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %22
  %33 = load %struct.intel_connector*, %struct.intel_connector** %3, align 8
  %34 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @drm_dp_mst_put_port_malloc(i64 %35)
  br label %37

37:                                               ; preds = %32, %22
  %38 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %39 = call i32 @kfree(%struct.drm_connector* %38)
  ret void
}

declare dso_local %struct.intel_connector* @to_intel_connector(%struct.drm_connector*) #1

declare dso_local i32 @kfree(%struct.drm_connector*) #1

declare dso_local i32 @intel_hdcp_cleanup(%struct.intel_connector*) #1

declare dso_local i32 @IS_ERR_OR_NULL(%struct.drm_connector*) #1

declare dso_local i32 @intel_panel_fini(i32*) #1

declare dso_local i32 @drm_connector_cleanup(%struct.drm_connector*) #1

declare dso_local i32 @drm_dp_mst_put_port_malloc(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
