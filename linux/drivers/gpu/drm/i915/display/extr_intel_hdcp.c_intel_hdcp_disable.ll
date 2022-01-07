; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_hdcp.c_intel_hdcp_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_hdcp.c_intel_hdcp_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_connector = type { %struct.intel_hdcp }
%struct.intel_hdcp = type { i64, i32, i32, i64, i64, i32 }

@ENOENT = common dso_local global i32 0, align 4
@DRM_MODE_CONTENT_PROTECTION_UNDESIRED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @intel_hdcp_disable(%struct.intel_connector* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intel_connector*, align 8
  %4 = alloca %struct.intel_hdcp*, align 8
  %5 = alloca i32, align 4
  store %struct.intel_connector* %0, %struct.intel_connector** %3, align 8
  %6 = load %struct.intel_connector*, %struct.intel_connector** %3, align 8
  %7 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %6, i32 0, i32 0
  store %struct.intel_hdcp* %7, %struct.intel_hdcp** %4, align 8
  store i32 0, i32* %5, align 4
  %8 = load %struct.intel_hdcp*, %struct.intel_hdcp** %4, align 8
  %9 = getelementptr inbounds %struct.intel_hdcp, %struct.intel_hdcp* %8, i32 0, i32 5
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOENT, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %53

15:                                               ; preds = %1
  %16 = load %struct.intel_hdcp*, %struct.intel_hdcp** %4, align 8
  %17 = getelementptr inbounds %struct.intel_hdcp, %struct.intel_hdcp* %16, i32 0, i32 2
  %18 = call i32 @mutex_lock(i32* %17)
  %19 = load %struct.intel_hdcp*, %struct.intel_hdcp** %4, align 8
  %20 = getelementptr inbounds %struct.intel_hdcp, %struct.intel_hdcp* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @DRM_MODE_CONTENT_PROTECTION_UNDESIRED, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %45

24:                                               ; preds = %15
  %25 = load i64, i64* @DRM_MODE_CONTENT_PROTECTION_UNDESIRED, align 8
  %26 = load %struct.intel_hdcp*, %struct.intel_hdcp** %4, align 8
  %27 = getelementptr inbounds %struct.intel_hdcp, %struct.intel_hdcp* %26, i32 0, i32 0
  store i64 %25, i64* %27, align 8
  %28 = load %struct.intel_hdcp*, %struct.intel_hdcp** %4, align 8
  %29 = getelementptr inbounds %struct.intel_hdcp, %struct.intel_hdcp* %28, i32 0, i32 4
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %24
  %33 = load %struct.intel_connector*, %struct.intel_connector** %3, align 8
  %34 = call i32 @_intel_hdcp2_disable(%struct.intel_connector* %33)
  store i32 %34, i32* %5, align 4
  br label %44

35:                                               ; preds = %24
  %36 = load %struct.intel_hdcp*, %struct.intel_hdcp** %4, align 8
  %37 = getelementptr inbounds %struct.intel_hdcp, %struct.intel_hdcp* %36, i32 0, i32 3
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = load %struct.intel_connector*, %struct.intel_connector** %3, align 8
  %42 = call i32 @_intel_hdcp_disable(%struct.intel_connector* %41)
  store i32 %42, i32* %5, align 4
  br label %43

43:                                               ; preds = %40, %35
  br label %44

44:                                               ; preds = %43, %32
  br label %45

45:                                               ; preds = %44, %15
  %46 = load %struct.intel_hdcp*, %struct.intel_hdcp** %4, align 8
  %47 = getelementptr inbounds %struct.intel_hdcp, %struct.intel_hdcp* %46, i32 0, i32 2
  %48 = call i32 @mutex_unlock(i32* %47)
  %49 = load %struct.intel_hdcp*, %struct.intel_hdcp** %4, align 8
  %50 = getelementptr inbounds %struct.intel_hdcp, %struct.intel_hdcp* %49, i32 0, i32 1
  %51 = call i32 @cancel_delayed_work_sync(i32* %50)
  %52 = load i32, i32* %5, align 4
  store i32 %52, i32* %2, align 4
  br label %53

53:                                               ; preds = %45, %12
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @_intel_hdcp2_disable(%struct.intel_connector*) #1

declare dso_local i32 @_intel_hdcp_disable(%struct.intel_connector*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
