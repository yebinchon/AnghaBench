; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_hdcp.c_intel_hdcp_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_hdcp.c_intel_hdcp_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_connector = type { %struct.TYPE_4__, %struct.intel_hdcp }
%struct.TYPE_4__ = type { i32 }
%struct.intel_hdcp = type { i32, i32, i32, i32, i32, %struct.intel_hdcp_shim*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.intel_hdcp_shim = type { i32 }
%struct.drm_i915_private = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@intel_hdcp_check_work = common dso_local global i32 0, align 4
@intel_hdcp_prop_work = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @intel_hdcp_init(%struct.intel_connector* %0, %struct.intel_hdcp_shim* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.intel_connector*, align 8
  %5 = alloca %struct.intel_hdcp_shim*, align 8
  %6 = alloca %struct.drm_i915_private*, align 8
  %7 = alloca %struct.intel_hdcp*, align 8
  %8 = alloca i32, align 4
  store %struct.intel_connector* %0, %struct.intel_connector** %4, align 8
  store %struct.intel_hdcp_shim* %1, %struct.intel_hdcp_shim** %5, align 8
  %9 = load %struct.intel_connector*, %struct.intel_connector** %4, align 8
  %10 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call %struct.drm_i915_private* @to_i915(i32 %12)
  store %struct.drm_i915_private* %13, %struct.drm_i915_private** %6, align 8
  %14 = load %struct.intel_connector*, %struct.intel_connector** %4, align 8
  %15 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %14, i32 0, i32 1
  store %struct.intel_hdcp* %15, %struct.intel_hdcp** %7, align 8
  %16 = load %struct.intel_hdcp_shim*, %struct.intel_hdcp_shim** %5, align 8
  %17 = icmp ne %struct.intel_hdcp_shim* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %65

21:                                               ; preds = %2
  %22 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %23 = call i64 @is_hdcp2_supported(%struct.drm_i915_private* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %21
  %26 = load %struct.intel_connector*, %struct.intel_connector** %4, align 8
  %27 = load %struct.intel_hdcp_shim*, %struct.intel_hdcp_shim** %5, align 8
  %28 = call i32 @intel_hdcp2_init(%struct.intel_connector* %26, %struct.intel_hdcp_shim* %27)
  br label %29

29:                                               ; preds = %25, %21
  %30 = load %struct.intel_connector*, %struct.intel_connector** %4, align 8
  %31 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %30, i32 0, i32 0
  %32 = load %struct.intel_hdcp*, %struct.intel_hdcp** %7, align 8
  %33 = getelementptr inbounds %struct.intel_hdcp, %struct.intel_hdcp* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @drm_connector_attach_content_protection_property(%struct.TYPE_4__* %31, i32 %34)
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %29
  %39 = load %struct.intel_hdcp*, %struct.intel_hdcp** %7, align 8
  %40 = getelementptr inbounds %struct.intel_hdcp, %struct.intel_hdcp* %39, i32 0, i32 0
  store i32 0, i32* %40, align 8
  %41 = load %struct.intel_hdcp*, %struct.intel_hdcp** %7, align 8
  %42 = getelementptr inbounds %struct.intel_hdcp, %struct.intel_hdcp* %41, i32 0, i32 6
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @kfree(i32 %44)
  %46 = load i32, i32* %8, align 4
  store i32 %46, i32* %3, align 4
  br label %65

47:                                               ; preds = %29
  %48 = load %struct.intel_hdcp_shim*, %struct.intel_hdcp_shim** %5, align 8
  %49 = load %struct.intel_hdcp*, %struct.intel_hdcp** %7, align 8
  %50 = getelementptr inbounds %struct.intel_hdcp, %struct.intel_hdcp* %49, i32 0, i32 5
  store %struct.intel_hdcp_shim* %48, %struct.intel_hdcp_shim** %50, align 8
  %51 = load %struct.intel_hdcp*, %struct.intel_hdcp** %7, align 8
  %52 = getelementptr inbounds %struct.intel_hdcp, %struct.intel_hdcp* %51, i32 0, i32 4
  %53 = call i32 @mutex_init(i32* %52)
  %54 = load %struct.intel_hdcp*, %struct.intel_hdcp** %7, align 8
  %55 = getelementptr inbounds %struct.intel_hdcp, %struct.intel_hdcp* %54, i32 0, i32 3
  %56 = load i32, i32* @intel_hdcp_check_work, align 4
  %57 = call i32 @INIT_DELAYED_WORK(i32* %55, i32 %56)
  %58 = load %struct.intel_hdcp*, %struct.intel_hdcp** %7, align 8
  %59 = getelementptr inbounds %struct.intel_hdcp, %struct.intel_hdcp* %58, i32 0, i32 2
  %60 = load i32, i32* @intel_hdcp_prop_work, align 4
  %61 = call i32 @INIT_WORK(i32* %59, i32 %60)
  %62 = load %struct.intel_hdcp*, %struct.intel_hdcp** %7, align 8
  %63 = getelementptr inbounds %struct.intel_hdcp, %struct.intel_hdcp* %62, i32 0, i32 1
  %64 = call i32 @init_waitqueue_head(i32* %63)
  store i32 0, i32* %3, align 4
  br label %65

65:                                               ; preds = %47, %38, %18
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local i64 @is_hdcp2_supported(%struct.drm_i915_private*) #1

declare dso_local i32 @intel_hdcp2_init(%struct.intel_connector*, %struct.intel_hdcp_shim*) #1

declare dso_local i32 @drm_connector_attach_content_protection_property(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
