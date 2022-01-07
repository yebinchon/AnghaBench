; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/dsi/extr_dsi.c_dsi_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/dsi/extr_dsi.c_dsi_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_dsi = type { i32, %struct.platform_device* }
%struct.platform_device = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"dsi probed=%p\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.msm_dsi* (%struct.platform_device*)* @dsi_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.msm_dsi* @dsi_init(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.msm_dsi*, align 8
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.msm_dsi*, align 8
  %5 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %7 = icmp ne %struct.platform_device* %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %1
  %9 = load i32, i32* @ENXIO, align 4
  %10 = sub nsw i32 0, %9
  %11 = call %struct.msm_dsi* @ERR_PTR(i32 %10)
  store %struct.msm_dsi* %11, %struct.msm_dsi** %2, align 8
  br label %58

12:                                               ; preds = %1
  %13 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 0
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.msm_dsi* @devm_kzalloc(i32* %14, i32 16, i32 %15)
  store %struct.msm_dsi* %16, %struct.msm_dsi** %4, align 8
  %17 = load %struct.msm_dsi*, %struct.msm_dsi** %4, align 8
  %18 = icmp ne %struct.msm_dsi* %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %12
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  %22 = call %struct.msm_dsi* @ERR_PTR(i32 %21)
  store %struct.msm_dsi* %22, %struct.msm_dsi** %2, align 8
  br label %58

23:                                               ; preds = %12
  %24 = load %struct.msm_dsi*, %struct.msm_dsi** %4, align 8
  %25 = call i32 @DBG(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), %struct.msm_dsi* %24)
  %26 = load %struct.msm_dsi*, %struct.msm_dsi** %4, align 8
  %27 = getelementptr inbounds %struct.msm_dsi, %struct.msm_dsi* %26, i32 0, i32 0
  store i32 -1, i32* %27, align 8
  %28 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %29 = load %struct.msm_dsi*, %struct.msm_dsi** %4, align 8
  %30 = getelementptr inbounds %struct.msm_dsi, %struct.msm_dsi* %29, i32 0, i32 1
  store %struct.platform_device* %28, %struct.platform_device** %30, align 8
  %31 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %32 = load %struct.msm_dsi*, %struct.msm_dsi** %4, align 8
  %33 = call i32 @platform_set_drvdata(%struct.platform_device* %31, %struct.msm_dsi* %32)
  %34 = load %struct.msm_dsi*, %struct.msm_dsi** %4, align 8
  %35 = call i32 @msm_dsi_host_init(%struct.msm_dsi* %34)
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %5, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %23
  br label %53

39:                                               ; preds = %23
  %40 = load %struct.msm_dsi*, %struct.msm_dsi** %4, align 8
  %41 = call i32 @dsi_get_phy(%struct.msm_dsi* %40)
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* %5, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  br label %53

45:                                               ; preds = %39
  %46 = load %struct.msm_dsi*, %struct.msm_dsi** %4, align 8
  %47 = call i32 @msm_dsi_manager_register(%struct.msm_dsi* %46)
  store i32 %47, i32* %5, align 4
  %48 = load i32, i32* %5, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %45
  br label %53

51:                                               ; preds = %45
  %52 = load %struct.msm_dsi*, %struct.msm_dsi** %4, align 8
  store %struct.msm_dsi* %52, %struct.msm_dsi** %2, align 8
  br label %58

53:                                               ; preds = %50, %44, %38
  %54 = load %struct.msm_dsi*, %struct.msm_dsi** %4, align 8
  %55 = call i32 @dsi_destroy(%struct.msm_dsi* %54)
  %56 = load i32, i32* %5, align 4
  %57 = call %struct.msm_dsi* @ERR_PTR(i32 %56)
  store %struct.msm_dsi* %57, %struct.msm_dsi** %2, align 8
  br label %58

58:                                               ; preds = %53, %51, %19, %8
  %59 = load %struct.msm_dsi*, %struct.msm_dsi** %2, align 8
  ret %struct.msm_dsi* %59
}

declare dso_local %struct.msm_dsi* @ERR_PTR(i32) #1

declare dso_local %struct.msm_dsi* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @DBG(i8*, %struct.msm_dsi*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.msm_dsi*) #1

declare dso_local i32 @msm_dsi_host_init(%struct.msm_dsi*) #1

declare dso_local i32 @dsi_get_phy(%struct.msm_dsi*) #1

declare dso_local i32 @msm_dsi_manager_register(%struct.msm_dsi*) #1

declare dso_local i32 @dsi_destroy(%struct.msm_dsi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
