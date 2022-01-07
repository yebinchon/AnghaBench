; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_output.c_tegra_output_connector_get_modes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_output.c_tegra_output_connector_get_modes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i32 }
%struct.tegra_output = type { i32, i64, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.TYPE_4__*)* }
%struct.edid = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tegra_output_connector_get_modes(%struct.drm_connector* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_connector*, align 8
  %4 = alloca %struct.tegra_output*, align 8
  %5 = alloca %struct.edid*, align 8
  %6 = alloca i32, align 4
  store %struct.drm_connector* %0, %struct.drm_connector** %3, align 8
  %7 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %8 = call %struct.tegra_output* @connector_to_output(%struct.drm_connector* %7)
  store %struct.tegra_output* %8, %struct.tegra_output** %4, align 8
  store %struct.edid* null, %struct.edid** %5, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.tegra_output*, %struct.tegra_output** %4, align 8
  %10 = getelementptr inbounds %struct.tegra_output, %struct.tegra_output* %9, i32 0, i32 3
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = icmp ne %struct.TYPE_4__* %11, null
  br i1 %12, label %13, label %30

13:                                               ; preds = %1
  %14 = load %struct.tegra_output*, %struct.tegra_output** %4, align 8
  %15 = getelementptr inbounds %struct.tegra_output, %struct.tegra_output* %14, i32 0, i32 3
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32 (%struct.TYPE_4__*)*, i32 (%struct.TYPE_4__*)** %19, align 8
  %21 = load %struct.tegra_output*, %struct.tegra_output** %4, align 8
  %22 = getelementptr inbounds %struct.tegra_output, %struct.tegra_output* %21, i32 0, i32 3
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = call i32 %20(%struct.TYPE_4__* %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %13
  %28 = load i32, i32* %6, align 4
  store i32 %28, i32* %2, align 4
  br label %72

29:                                               ; preds = %13
  br label %30

30:                                               ; preds = %29, %1
  %31 = load %struct.tegra_output*, %struct.tegra_output** %4, align 8
  %32 = getelementptr inbounds %struct.tegra_output, %struct.tegra_output* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %30
  %36 = load %struct.tegra_output*, %struct.tegra_output** %4, align 8
  %37 = getelementptr inbounds %struct.tegra_output, %struct.tegra_output* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = load i32, i32* @GFP_KERNEL, align 4
  %40 = call %struct.edid* @kmemdup(i64 %38, i32 4, i32 %39)
  store %struct.edid* %40, %struct.edid** %5, align 8
  br label %53

41:                                               ; preds = %30
  %42 = load %struct.tegra_output*, %struct.tegra_output** %4, align 8
  %43 = getelementptr inbounds %struct.tegra_output, %struct.tegra_output* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %41
  %47 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %48 = load %struct.tegra_output*, %struct.tegra_output** %4, align 8
  %49 = getelementptr inbounds %struct.tegra_output, %struct.tegra_output* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = call %struct.edid* @drm_get_edid(%struct.drm_connector* %47, i64 %50)
  store %struct.edid* %51, %struct.edid** %5, align 8
  br label %52

52:                                               ; preds = %46, %41
  br label %53

53:                                               ; preds = %52, %35
  %54 = load %struct.tegra_output*, %struct.tegra_output** %4, align 8
  %55 = getelementptr inbounds %struct.tegra_output, %struct.tegra_output* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.edid*, %struct.edid** %5, align 8
  %58 = call i32 @cec_notifier_set_phys_addr_from_edid(i32 %56, %struct.edid* %57)
  %59 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %60 = load %struct.edid*, %struct.edid** %5, align 8
  %61 = call i32 @drm_connector_update_edid_property(%struct.drm_connector* %59, %struct.edid* %60)
  %62 = load %struct.edid*, %struct.edid** %5, align 8
  %63 = icmp ne %struct.edid* %62, null
  br i1 %63, label %64, label %70

64:                                               ; preds = %53
  %65 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %66 = load %struct.edid*, %struct.edid** %5, align 8
  %67 = call i32 @drm_add_edid_modes(%struct.drm_connector* %65, %struct.edid* %66)
  store i32 %67, i32* %6, align 4
  %68 = load %struct.edid*, %struct.edid** %5, align 8
  %69 = call i32 @kfree(%struct.edid* %68)
  br label %70

70:                                               ; preds = %64, %53
  %71 = load i32, i32* %6, align 4
  store i32 %71, i32* %2, align 4
  br label %72

72:                                               ; preds = %70, %27
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

declare dso_local %struct.tegra_output* @connector_to_output(%struct.drm_connector*) #1

declare dso_local %struct.edid* @kmemdup(i64, i32, i32) #1

declare dso_local %struct.edid* @drm_get_edid(%struct.drm_connector*, i64) #1

declare dso_local i32 @cec_notifier_set_phys_addr_from_edid(i32, %struct.edid*) #1

declare dso_local i32 @drm_connector_update_edid_property(%struct.drm_connector*, %struct.edid*) #1

declare dso_local i32 @drm_add_edid_modes(%struct.drm_connector*, %struct.edid*) #1

declare dso_local i32 @kfree(%struct.edid*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
