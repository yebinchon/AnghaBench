; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_hdmi.c_hdmi_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_hdmi.c_hdmi_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.hdmi_context = type { i32, %struct.TYPE_6__*, i64, %struct.TYPE_5__*, i32, i32, %struct.TYPE_4__, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@CEC_PHYS_ADDR_INVALID = common dso_local global i32 0, align 4
@hdmi_component_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @hdmi_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdmi_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.hdmi_context*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %4 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %5 = call %struct.hdmi_context* @platform_get_drvdata(%struct.platform_device* %4)
  store %struct.hdmi_context* %5, %struct.hdmi_context** %3, align 8
  %6 = load %struct.hdmi_context*, %struct.hdmi_context** %3, align 8
  %7 = getelementptr inbounds %struct.hdmi_context, %struct.hdmi_context* %6, i32 0, i32 7
  %8 = call i32 @cancel_delayed_work_sync(i32* %7)
  %9 = load %struct.hdmi_context*, %struct.hdmi_context** %3, align 8
  %10 = getelementptr inbounds %struct.hdmi_context, %struct.hdmi_context* %9, i32 0, i32 5
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @CEC_PHYS_ADDR_INVALID, align 4
  %13 = call i32 @cec_notifier_set_phys_addr(i32 %11, i32 %12)
  %14 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %15 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %14, i32 0, i32 0
  %16 = call i32 @component_del(i32* %15, i32* @hdmi_component_ops)
  %17 = load %struct.hdmi_context*, %struct.hdmi_context** %3, align 8
  %18 = getelementptr inbounds %struct.hdmi_context, %struct.hdmi_context* %17, i32 0, i32 6
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @platform_device_unregister(i32 %20)
  %22 = load %struct.hdmi_context*, %struct.hdmi_context** %3, align 8
  %23 = getelementptr inbounds %struct.hdmi_context, %struct.hdmi_context* %22, i32 0, i32 5
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @cec_notifier_put(i32 %24)
  %26 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %27 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %26, i32 0, i32 0
  %28 = call i32 @pm_runtime_disable(i32* %27)
  %29 = load %struct.hdmi_context*, %struct.hdmi_context** %3, align 8
  %30 = getelementptr inbounds %struct.hdmi_context, %struct.hdmi_context* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @IS_ERR(i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %1
  %35 = load %struct.hdmi_context*, %struct.hdmi_context** %3, align 8
  %36 = getelementptr inbounds %struct.hdmi_context, %struct.hdmi_context* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @regulator_disable(i32 %37)
  br label %39

39:                                               ; preds = %34, %1
  %40 = load %struct.hdmi_context*, %struct.hdmi_context** %3, align 8
  %41 = getelementptr inbounds %struct.hdmi_context, %struct.hdmi_context* %40, i32 0, i32 3
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %41, align 8
  %43 = icmp ne %struct.TYPE_5__* %42, null
  br i1 %43, label %44, label %50

44:                                               ; preds = %39
  %45 = load %struct.hdmi_context*, %struct.hdmi_context** %3, align 8
  %46 = getelementptr inbounds %struct.hdmi_context, %struct.hdmi_context* %45, i32 0, i32 3
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = call i32 @put_device(i32* %48)
  br label %50

50:                                               ; preds = %44, %39
  %51 = load %struct.hdmi_context*, %struct.hdmi_context** %3, align 8
  %52 = getelementptr inbounds %struct.hdmi_context, %struct.hdmi_context* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %50
  %56 = load %struct.hdmi_context*, %struct.hdmi_context** %3, align 8
  %57 = getelementptr inbounds %struct.hdmi_context, %struct.hdmi_context* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = call i32 @iounmap(i64 %58)
  br label %60

60:                                               ; preds = %55, %50
  %61 = load %struct.hdmi_context*, %struct.hdmi_context** %3, align 8
  %62 = getelementptr inbounds %struct.hdmi_context, %struct.hdmi_context* %61, i32 0, i32 1
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = call i32 @put_device(i32* %64)
  %66 = load %struct.hdmi_context*, %struct.hdmi_context** %3, align 8
  %67 = getelementptr inbounds %struct.hdmi_context, %struct.hdmi_context* %66, i32 0, i32 0
  %68 = call i32 @mutex_destroy(i32* %67)
  ret i32 0
}

declare dso_local %struct.hdmi_context* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @cec_notifier_set_phys_addr(i32, i32) #1

declare dso_local i32 @component_del(i32*, i32*) #1

declare dso_local i32 @platform_device_unregister(i32) #1

declare dso_local i32 @cec_notifier_put(i32) #1

declare dso_local i32 @pm_runtime_disable(i32*) #1

declare dso_local i32 @IS_ERR(i32) #1

declare dso_local i32 @regulator_disable(i32) #1

declare dso_local i32 @put_device(i32*) #1

declare dso_local i32 @iounmap(i64) #1

declare dso_local i32 @mutex_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
