; ModuleID = '/home/carl/AnghaBench/linux/drivers/greybus/extr_core.c_greybus_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/greybus/extr_core.c_greybus_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.greybus_driver = type { i32 (%struct.gb_bundle*, %struct.greybus_bundle_id*)*, i32 }
%struct.gb_bundle = type opaque
%struct.greybus_bundle_id = type opaque
%struct.gb_bundle.0 = type { %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { %struct.device, i32 }
%struct.greybus_bundle_id.1 = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@GB_BUNDLE_AUTOSUSPEND_MS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @greybus_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @greybus_probe(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.greybus_driver*, align 8
  %5 = alloca %struct.gb_bundle.0*, align 8
  %6 = alloca %struct.greybus_bundle_id.1*, align 8
  %7 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  %8 = load %struct.device*, %struct.device** %3, align 8
  %9 = getelementptr inbounds %struct.device, %struct.device* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.greybus_driver* @to_greybus_driver(i32 %10)
  store %struct.greybus_driver* %11, %struct.greybus_driver** %4, align 8
  %12 = load %struct.device*, %struct.device** %3, align 8
  %13 = call %struct.gb_bundle.0* @to_gb_bundle(%struct.device* %12)
  store %struct.gb_bundle.0* %13, %struct.gb_bundle.0** %5, align 8
  %14 = load %struct.gb_bundle.0*, %struct.gb_bundle.0** %5, align 8
  %15 = load %struct.greybus_driver*, %struct.greybus_driver** %4, align 8
  %16 = getelementptr inbounds %struct.greybus_driver, %struct.greybus_driver* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = call %struct.greybus_bundle_id.1* @greybus_match_id(%struct.gb_bundle.0* %14, i32 %17)
  store %struct.greybus_bundle_id.1* %18, %struct.greybus_bundle_id.1** %6, align 8
  %19 = load %struct.greybus_bundle_id.1*, %struct.greybus_bundle_id.1** %6, align 8
  %20 = icmp ne %struct.greybus_bundle_id.1* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %1
  %22 = load i32, i32* @ENODEV, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %117

24:                                               ; preds = %1
  %25 = load %struct.gb_bundle.0*, %struct.gb_bundle.0** %5, align 8
  %26 = getelementptr inbounds %struct.gb_bundle.0, %struct.gb_bundle.0* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = call i32 @pm_runtime_get_sync(%struct.device* %28)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %24
  %33 = load %struct.gb_bundle.0*, %struct.gb_bundle.0** %5, align 8
  %34 = getelementptr inbounds %struct.gb_bundle.0, %struct.gb_bundle.0* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = call i32 @pm_runtime_put_noidle(%struct.device* %36)
  %38 = load i32, i32* %7, align 4
  store i32 %38, i32* %2, align 4
  br label %117

39:                                               ; preds = %24
  %40 = load %struct.gb_bundle.0*, %struct.gb_bundle.0** %5, align 8
  %41 = getelementptr inbounds %struct.gb_bundle.0, %struct.gb_bundle.0* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.gb_bundle.0*, %struct.gb_bundle.0** %5, align 8
  %46 = getelementptr inbounds %struct.gb_bundle.0, %struct.gb_bundle.0* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @gb_control_bundle_activate(i32 %44, i32 %47)
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* %7, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %39
  %52 = load %struct.gb_bundle.0*, %struct.gb_bundle.0** %5, align 8
  %53 = getelementptr inbounds %struct.gb_bundle.0, %struct.gb_bundle.0* %52, i32 0, i32 0
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = call i32 @pm_runtime_put(%struct.device* %55)
  %57 = load i32, i32* %7, align 4
  store i32 %57, i32* %2, align 4
  br label %117

58:                                               ; preds = %39
  %59 = load %struct.device*, %struct.device** %3, align 8
  %60 = load i32, i32* @GB_BUNDLE_AUTOSUSPEND_MS, align 4
  %61 = call i32 @pm_runtime_set_autosuspend_delay(%struct.device* %59, i32 %60)
  %62 = load %struct.device*, %struct.device** %3, align 8
  %63 = call i32 @pm_runtime_use_autosuspend(%struct.device* %62)
  %64 = load %struct.device*, %struct.device** %3, align 8
  %65 = call i32 @pm_runtime_get_noresume(%struct.device* %64)
  %66 = load %struct.device*, %struct.device** %3, align 8
  %67 = call i32 @pm_runtime_set_active(%struct.device* %66)
  %68 = load %struct.device*, %struct.device** %3, align 8
  %69 = call i32 @pm_runtime_enable(%struct.device* %68)
  %70 = load %struct.greybus_driver*, %struct.greybus_driver** %4, align 8
  %71 = getelementptr inbounds %struct.greybus_driver, %struct.greybus_driver* %70, i32 0, i32 0
  %72 = load i32 (%struct.gb_bundle*, %struct.greybus_bundle_id*)*, i32 (%struct.gb_bundle*, %struct.greybus_bundle_id*)** %71, align 8
  %73 = load %struct.gb_bundle.0*, %struct.gb_bundle.0** %5, align 8
  %74 = bitcast %struct.gb_bundle.0* %73 to %struct.gb_bundle*
  %75 = load %struct.greybus_bundle_id.1*, %struct.greybus_bundle_id.1** %6, align 8
  %76 = bitcast %struct.greybus_bundle_id.1* %75 to %struct.greybus_bundle_id*
  %77 = call i32 %72(%struct.gb_bundle* %74, %struct.greybus_bundle_id* %76)
  store i32 %77, i32* %7, align 4
  %78 = load i32, i32* %7, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %111

80:                                               ; preds = %58
  %81 = load %struct.gb_bundle.0*, %struct.gb_bundle.0** %5, align 8
  %82 = getelementptr inbounds %struct.gb_bundle.0, %struct.gb_bundle.0* %81, i32 0, i32 2
  %83 = call i32 @list_empty(i32* %82)
  %84 = icmp ne i32 %83, 0
  %85 = xor i1 %84, true
  %86 = zext i1 %85 to i32
  %87 = call i32 @WARN_ON(i32 %86)
  %88 = load %struct.gb_bundle.0*, %struct.gb_bundle.0** %5, align 8
  %89 = getelementptr inbounds %struct.gb_bundle.0, %struct.gb_bundle.0* %88, i32 0, i32 0
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.gb_bundle.0*, %struct.gb_bundle.0** %5, align 8
  %94 = getelementptr inbounds %struct.gb_bundle.0, %struct.gb_bundle.0* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @gb_control_bundle_deactivate(i32 %92, i32 %95)
  %97 = load %struct.device*, %struct.device** %3, align 8
  %98 = call i32 @pm_runtime_disable(%struct.device* %97)
  %99 = load %struct.device*, %struct.device** %3, align 8
  %100 = call i32 @pm_runtime_set_suspended(%struct.device* %99)
  %101 = load %struct.device*, %struct.device** %3, align 8
  %102 = call i32 @pm_runtime_put_noidle(%struct.device* %101)
  %103 = load %struct.device*, %struct.device** %3, align 8
  %104 = call i32 @pm_runtime_dont_use_autosuspend(%struct.device* %103)
  %105 = load %struct.gb_bundle.0*, %struct.gb_bundle.0** %5, align 8
  %106 = getelementptr inbounds %struct.gb_bundle.0, %struct.gb_bundle.0* %105, i32 0, i32 0
  %107 = load %struct.TYPE_2__*, %struct.TYPE_2__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 0
  %109 = call i32 @pm_runtime_put(%struct.device* %108)
  %110 = load i32, i32* %7, align 4
  store i32 %110, i32* %2, align 4
  br label %117

111:                                              ; preds = %58
  %112 = load %struct.gb_bundle.0*, %struct.gb_bundle.0** %5, align 8
  %113 = getelementptr inbounds %struct.gb_bundle.0, %struct.gb_bundle.0* %112, i32 0, i32 0
  %114 = load %struct.TYPE_2__*, %struct.TYPE_2__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 0
  %116 = call i32 @pm_runtime_put(%struct.device* %115)
  store i32 0, i32* %2, align 4
  br label %117

117:                                              ; preds = %111, %80, %51, %32, %21
  %118 = load i32, i32* %2, align 4
  ret i32 %118
}

declare dso_local %struct.greybus_driver* @to_greybus_driver(i32) #1

declare dso_local %struct.gb_bundle.0* @to_gb_bundle(%struct.device*) #1

declare dso_local %struct.greybus_bundle_id.1* @greybus_match_id(%struct.gb_bundle.0*, i32) #1

declare dso_local i32 @pm_runtime_get_sync(%struct.device*) #1

declare dso_local i32 @pm_runtime_put_noidle(%struct.device*) #1

declare dso_local i32 @gb_control_bundle_activate(i32, i32) #1

declare dso_local i32 @pm_runtime_put(%struct.device*) #1

declare dso_local i32 @pm_runtime_set_autosuspend_delay(%struct.device*, i32) #1

declare dso_local i32 @pm_runtime_use_autosuspend(%struct.device*) #1

declare dso_local i32 @pm_runtime_get_noresume(%struct.device*) #1

declare dso_local i32 @pm_runtime_set_active(%struct.device*) #1

declare dso_local i32 @pm_runtime_enable(%struct.device*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @gb_control_bundle_deactivate(i32, i32) #1

declare dso_local i32 @pm_runtime_disable(%struct.device*) #1

declare dso_local i32 @pm_runtime_set_suspended(%struct.device*) #1

declare dso_local i32 @pm_runtime_dont_use_autosuspend(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
