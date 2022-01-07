; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_hdcp.c_intel_hdcp_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_hdcp.c_intel_hdcp_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_connector = type { %struct.intel_hdcp }
%struct.intel_hdcp = type { i64, i64, i32, i32, i32, i32 }

@DRM_HDCP_CHECK_PERIOD_MS = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@DRM_MODE_CONTENT_PROTECTION_ENABLED = common dso_local global i64 0, align 8
@DRM_HDCP2_CHECK_PERIOD_MS = common dso_local global i64 0, align 8
@DRM_MODE_HDCP_CONTENT_TYPE1 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @intel_hdcp_enable(%struct.intel_connector* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.intel_connector*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.intel_hdcp*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.intel_connector* %0, %struct.intel_connector** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load %struct.intel_connector*, %struct.intel_connector** %4, align 8
  %10 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %9, i32 0, i32 0
  store %struct.intel_hdcp* %10, %struct.intel_hdcp** %6, align 8
  %11 = load i64, i64* @DRM_HDCP_CHECK_PERIOD_MS, align 8
  store i64 %11, i64* %7, align 8
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %8, align 4
  %14 = load %struct.intel_hdcp*, %struct.intel_hdcp** %6, align 8
  %15 = getelementptr inbounds %struct.intel_hdcp, %struct.intel_hdcp* %14, i32 0, i32 5
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @ENOENT, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %81

21:                                               ; preds = %2
  %22 = load %struct.intel_hdcp*, %struct.intel_hdcp** %6, align 8
  %23 = getelementptr inbounds %struct.intel_hdcp, %struct.intel_hdcp* %22, i32 0, i32 2
  %24 = call i32 @mutex_lock(i32* %23)
  %25 = load %struct.intel_hdcp*, %struct.intel_hdcp** %6, align 8
  %26 = getelementptr inbounds %struct.intel_hdcp, %struct.intel_hdcp* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @DRM_MODE_CONTENT_PROTECTION_ENABLED, align 8
  %29 = icmp eq i64 %27, %28
  %30 = zext i1 %29 to i32
  %31 = call i32 @WARN_ON(i32 %30)
  %32 = load i64, i64* %5, align 8
  %33 = load %struct.intel_hdcp*, %struct.intel_hdcp** %6, align 8
  %34 = getelementptr inbounds %struct.intel_hdcp, %struct.intel_hdcp* %33, i32 0, i32 1
  store i64 %32, i64* %34, align 8
  %35 = load %struct.intel_connector*, %struct.intel_connector** %4, align 8
  %36 = call i64 @intel_hdcp2_capable(%struct.intel_connector* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %21
  %39 = load %struct.intel_connector*, %struct.intel_connector** %4, align 8
  %40 = call i32 @_intel_hdcp2_enable(%struct.intel_connector* %39)
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %38
  %44 = load i64, i64* @DRM_HDCP2_CHECK_PERIOD_MS, align 8
  store i64 %44, i64* %7, align 8
  br label %45

45:                                               ; preds = %43, %38
  br label %46

46:                                               ; preds = %45, %21
  %47 = load i32, i32* %8, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %62

49:                                               ; preds = %46
  %50 = load %struct.intel_connector*, %struct.intel_connector** %4, align 8
  %51 = call i64 @intel_hdcp_capable(%struct.intel_connector* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %62

53:                                               ; preds = %49
  %54 = load %struct.intel_hdcp*, %struct.intel_hdcp** %6, align 8
  %55 = getelementptr inbounds %struct.intel_hdcp, %struct.intel_hdcp* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @DRM_MODE_HDCP_CONTENT_TYPE1, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %53
  %60 = load %struct.intel_connector*, %struct.intel_connector** %4, align 8
  %61 = call i32 @_intel_hdcp_enable(%struct.intel_connector* %60)
  store i32 %61, i32* %8, align 4
  br label %62

62:                                               ; preds = %59, %53, %49, %46
  %63 = load i32, i32* %8, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %76, label %65

65:                                               ; preds = %62
  %66 = load %struct.intel_hdcp*, %struct.intel_hdcp** %6, align 8
  %67 = getelementptr inbounds %struct.intel_hdcp, %struct.intel_hdcp* %66, i32 0, i32 4
  %68 = load i64, i64* %7, align 8
  %69 = call i32 @schedule_delayed_work(i32* %67, i64 %68)
  %70 = load i64, i64* @DRM_MODE_CONTENT_PROTECTION_ENABLED, align 8
  %71 = load %struct.intel_hdcp*, %struct.intel_hdcp** %6, align 8
  %72 = getelementptr inbounds %struct.intel_hdcp, %struct.intel_hdcp* %71, i32 0, i32 0
  store i64 %70, i64* %72, align 8
  %73 = load %struct.intel_hdcp*, %struct.intel_hdcp** %6, align 8
  %74 = getelementptr inbounds %struct.intel_hdcp, %struct.intel_hdcp* %73, i32 0, i32 3
  %75 = call i32 @schedule_work(i32* %74)
  br label %76

76:                                               ; preds = %65, %62
  %77 = load %struct.intel_hdcp*, %struct.intel_hdcp** %6, align 8
  %78 = getelementptr inbounds %struct.intel_hdcp, %struct.intel_hdcp* %77, i32 0, i32 2
  %79 = call i32 @mutex_unlock(i32* %78)
  %80 = load i32, i32* %8, align 4
  store i32 %80, i32* %3, align 4
  br label %81

81:                                               ; preds = %76, %18
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i64 @intel_hdcp2_capable(%struct.intel_connector*) #1

declare dso_local i32 @_intel_hdcp2_enable(%struct.intel_connector*) #1

declare dso_local i64 @intel_hdcp_capable(%struct.intel_connector*) #1

declare dso_local i32 @_intel_hdcp_enable(%struct.intel_connector*) #1

declare dso_local i32 @schedule_delayed_work(i32*, i64) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
