; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panfrost/extr_panfrost_devfreq.c_panfrost_devfreq_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panfrost/extr_panfrost_devfreq.c_panfrost_devfreq_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.panfrost_device = type { %struct.TYPE_6__*, %struct.TYPE_5__, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.dev_pm_opp*, i32 }
%struct.dev_pm_opp = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@panfrost_devfreq_profile = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@DEVFREQ_GOV_SIMPLE_ONDEMAND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Couldn't initialize GPU devfreq\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @panfrost_devfreq_init(%struct.panfrost_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.panfrost_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dev_pm_opp*, align 8
  store %struct.panfrost_device* %0, %struct.panfrost_device** %3, align 8
  %6 = load %struct.panfrost_device*, %struct.panfrost_device** %3, align 8
  %7 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %6, i32 0, i32 0
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = call i32 @dev_pm_opp_of_add_table(i32* %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @ENODEV, align 4
  %13 = sub nsw i32 0, %12
  %14 = icmp eq i32 %11, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %89

16:                                               ; preds = %1
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = load i32, i32* %4, align 4
  store i32 %20, i32* %2, align 4
  br label %89

21:                                               ; preds = %16
  br label %22

22:                                               ; preds = %21
  %23 = load %struct.panfrost_device*, %struct.panfrost_device** %3, align 8
  %24 = call i32 @panfrost_devfreq_reset(%struct.panfrost_device* %23)
  %25 = load %struct.panfrost_device*, %struct.panfrost_device** %3, align 8
  %26 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @clk_get_rate(i32 %27)
  %29 = load %struct.panfrost_device*, %struct.panfrost_device** %3, align 8
  %30 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 1
  store i32 %28, i32* %31, align 8
  %32 = load %struct.panfrost_device*, %struct.panfrost_device** %3, align 8
  %33 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %32, i32 0, i32 0
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load %struct.panfrost_device*, %struct.panfrost_device** %3, align 8
  %37 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 1
  %39 = call %struct.dev_pm_opp* @devfreq_recommended_opp(i32* %35, i32* %38, i32 0)
  store %struct.dev_pm_opp* %39, %struct.dev_pm_opp** %5, align 8
  %40 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** %5, align 8
  %41 = call i64 @IS_ERR(%struct.dev_pm_opp* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %22
  %44 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** %5, align 8
  %45 = call i32 @PTR_ERR(%struct.dev_pm_opp* %44)
  store i32 %45, i32* %2, align 4
  br label %89

46:                                               ; preds = %22
  %47 = load %struct.panfrost_device*, %struct.panfrost_device** %3, align 8
  %48 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  store i32 %50, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @panfrost_devfreq_profile, i32 0, i32 0), align 4
  %51 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** %5, align 8
  %52 = call i32 @dev_pm_opp_put(%struct.dev_pm_opp* %51)
  %53 = load %struct.panfrost_device*, %struct.panfrost_device** %3, align 8
  %54 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %53, i32 0, i32 0
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i32, i32* @DEVFREQ_GOV_SIMPLE_ONDEMAND, align 4
  %58 = call %struct.dev_pm_opp* @devm_devfreq_add_device(i32* %56, %struct.TYPE_7__* @panfrost_devfreq_profile, i32 %57, i32* null)
  %59 = load %struct.panfrost_device*, %struct.panfrost_device** %3, align 8
  %60 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  store %struct.dev_pm_opp* %58, %struct.dev_pm_opp** %61, align 8
  %62 = load %struct.panfrost_device*, %struct.panfrost_device** %3, align 8
  %63 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** %64, align 8
  %66 = call i64 @IS_ERR(%struct.dev_pm_opp* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %88

68:                                               ; preds = %46
  %69 = load %struct.panfrost_device*, %struct.panfrost_device** %3, align 8
  %70 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %69, i32 0, i32 0
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = call i32 @DRM_DEV_ERROR(i32* %72, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %74 = load %struct.panfrost_device*, %struct.panfrost_device** %3, align 8
  %75 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  %77 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** %76, align 8
  %78 = call i32 @PTR_ERR(%struct.dev_pm_opp* %77)
  store i32 %78, i32* %4, align 4
  %79 = load %struct.panfrost_device*, %struct.panfrost_device** %3, align 8
  %80 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  store %struct.dev_pm_opp* null, %struct.dev_pm_opp** %81, align 8
  %82 = load %struct.panfrost_device*, %struct.panfrost_device** %3, align 8
  %83 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %82, i32 0, i32 0
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  %86 = call i32 @dev_pm_opp_of_remove_table(i32* %85)
  %87 = load i32, i32* %4, align 4
  store i32 %87, i32* %2, align 4
  br label %89

88:                                               ; preds = %46
  store i32 0, i32* %2, align 4
  br label %89

89:                                               ; preds = %88, %68, %43, %19, %15
  %90 = load i32, i32* %2, align 4
  ret i32 %90
}

declare dso_local i32 @dev_pm_opp_of_add_table(i32*) #1

declare dso_local i32 @panfrost_devfreq_reset(%struct.panfrost_device*) #1

declare dso_local i32 @clk_get_rate(i32) #1

declare dso_local %struct.dev_pm_opp* @devfreq_recommended_opp(i32*, i32*, i32) #1

declare dso_local i64 @IS_ERR(%struct.dev_pm_opp*) #1

declare dso_local i32 @PTR_ERR(%struct.dev_pm_opp*) #1

declare dso_local i32 @dev_pm_opp_put(%struct.dev_pm_opp*) #1

declare dso_local %struct.dev_pm_opp* @devm_devfreq_add_device(i32*, %struct.TYPE_7__*, i32, i32*) #1

declare dso_local i32 @DRM_DEV_ERROR(i32*, i8*) #1

declare dso_local i32 @dev_pm_opp_of_remove_table(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
