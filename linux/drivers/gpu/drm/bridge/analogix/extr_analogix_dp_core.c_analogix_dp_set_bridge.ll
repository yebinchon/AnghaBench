; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/analogix/extr_analogix_dp_core.c_analogix_dp_set_bridge.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/analogix/extr_analogix_dp_core.c_analogix_dp_set_bridge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.analogix_dp_device = type { i32, i32, %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_4__ = type { i32 (%struct.TYPE_4__*)*, i32 (%struct.TYPE_4__*)*, i32 (%struct.TYPE_4__*)* }

@.str = private unnamed_addr constant [45 x i8] c"Failed to prepare_enable the clock clk [%d]\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"failed to get hpd single ret = %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"dp commit error, ret = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.analogix_dp_device*)* @analogix_dp_set_bridge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @analogix_dp_set_bridge(%struct.analogix_dp_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.analogix_dp_device*, align 8
  %4 = alloca i32, align 4
  store %struct.analogix_dp_device* %0, %struct.analogix_dp_device** %3, align 8
  %5 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %6 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = call i32 @pm_runtime_get_sync(i32 %7)
  %9 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %10 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @clk_prepare_enable(i32 %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %16)
  br label %109

18:                                               ; preds = %1
  %19 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %20 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %19, i32 0, i32 2
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 2
  %23 = load i32 (%struct.TYPE_4__*)*, i32 (%struct.TYPE_4__*)** %22, align 8
  %24 = icmp ne i32 (%struct.TYPE_4__*)* %23, null
  br i1 %24, label %25, label %35

25:                                               ; preds = %18
  %26 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %27 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %26, i32 0, i32 2
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 2
  %30 = load i32 (%struct.TYPE_4__*)*, i32 (%struct.TYPE_4__*)** %29, align 8
  %31 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %32 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %31, i32 0, i32 2
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = call i32 %30(%struct.TYPE_4__* %33)
  br label %35

35:                                               ; preds = %25, %18
  %36 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %37 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @phy_power_on(i32 %38)
  %40 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %41 = call i32 @analogix_dp_init_dp(%struct.analogix_dp_device* %40)
  store i32 %41, i32* %4, align 4
  %42 = load i32, i32* %4, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %35
  br label %83

45:                                               ; preds = %35
  %46 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %47 = call i32 @analogix_dp_detect_hpd(%struct.analogix_dp_device* %46)
  store i32 %47, i32* %4, align 4
  %48 = load i32, i32* %4, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %45
  %51 = load i32, i32* %4, align 4
  %52 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %51)
  br label %83

53:                                               ; preds = %45
  %54 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %55 = call i32 @analogix_dp_commit(%struct.analogix_dp_device* %54)
  store i32 %55, i32* %4, align 4
  %56 = load i32, i32* %4, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %53
  %59 = load i32, i32* %4, align 4
  %60 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %59)
  br label %83

61:                                               ; preds = %53
  %62 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %63 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %62, i32 0, i32 2
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 1
  %66 = load i32 (%struct.TYPE_4__*)*, i32 (%struct.TYPE_4__*)** %65, align 8
  %67 = icmp ne i32 (%struct.TYPE_4__*)* %66, null
  br i1 %67, label %68, label %78

68:                                               ; preds = %61
  %69 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %70 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %69, i32 0, i32 2
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 1
  %73 = load i32 (%struct.TYPE_4__*)*, i32 (%struct.TYPE_4__*)** %72, align 8
  %74 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %75 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %74, i32 0, i32 2
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %75, align 8
  %77 = call i32 %73(%struct.TYPE_4__* %76)
  br label %78

78:                                               ; preds = %68, %61
  %79 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %80 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %79, i32 0, i32 4
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @enable_irq(i32 %81)
  store i32 0, i32* %2, align 4
  br label %115

83:                                               ; preds = %58, %50, %44
  %84 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %85 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @phy_power_off(i32 %86)
  %88 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %89 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %88, i32 0, i32 2
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = load i32 (%struct.TYPE_4__*)*, i32 (%struct.TYPE_4__*)** %91, align 8
  %93 = icmp ne i32 (%struct.TYPE_4__*)* %92, null
  br i1 %93, label %94, label %104

94:                                               ; preds = %83
  %95 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %96 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %95, i32 0, i32 2
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  %99 = load i32 (%struct.TYPE_4__*)*, i32 (%struct.TYPE_4__*)** %98, align 8
  %100 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %101 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %100, i32 0, i32 2
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %101, align 8
  %103 = call i32 %99(%struct.TYPE_4__* %102)
  br label %104

104:                                              ; preds = %94, %83
  %105 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %106 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @clk_disable_unprepare(i32 %107)
  br label %109

109:                                              ; preds = %104, %15
  %110 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %111 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = call i32 @pm_runtime_put_sync(i32 %112)
  %114 = load i32, i32* %4, align 4
  store i32 %114, i32* %2, align 4
  br label %115

115:                                              ; preds = %109, %78
  %116 = load i32, i32* %2, align 4
  ret i32 %116
}

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

declare dso_local i32 @phy_power_on(i32) #1

declare dso_local i32 @analogix_dp_init_dp(%struct.analogix_dp_device*) #1

declare dso_local i32 @analogix_dp_detect_hpd(%struct.analogix_dp_device*) #1

declare dso_local i32 @analogix_dp_commit(%struct.analogix_dp_device*) #1

declare dso_local i32 @enable_irq(i32) #1

declare dso_local i32 @phy_power_off(i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @pm_runtime_put_sync(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
