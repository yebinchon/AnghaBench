; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_sor.c_tegra_sor_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_sor.c_tegra_sor_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.tegra_sor = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 (%struct.tegra_sor*)* }

@.str = private unnamed_addr constant [40 x i8] c"failed to unregister host1x client: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"failed to remove SOR: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @tegra_sor_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_sor_remove(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.tegra_sor*, align 8
  %5 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %7 = call %struct.tegra_sor* @platform_get_drvdata(%struct.platform_device* %6)
  store %struct.tegra_sor* %7, %struct.tegra_sor** %4, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = call i32 @pm_runtime_disable(i32* %9)
  %11 = load %struct.tegra_sor*, %struct.tegra_sor** %4, align 8
  %12 = getelementptr inbounds %struct.tegra_sor, %struct.tegra_sor* %11, i32 0, i32 2
  %13 = call i32 @host1x_client_unregister(i32* %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %1
  %17 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %18 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %17, i32 0, i32 0
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @dev_err(i32* %18, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load i32, i32* %5, align 4
  store i32 %21, i32* %2, align 4
  br label %54

22:                                               ; preds = %1
  %23 = load %struct.tegra_sor*, %struct.tegra_sor** %4, align 8
  %24 = getelementptr inbounds %struct.tegra_sor, %struct.tegra_sor* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = icmp ne %struct.TYPE_2__* %25, null
  br i1 %26, label %27, label %50

27:                                               ; preds = %22
  %28 = load %struct.tegra_sor*, %struct.tegra_sor** %4, align 8
  %29 = getelementptr inbounds %struct.tegra_sor, %struct.tegra_sor* %28, i32 0, i32 1
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32 (%struct.tegra_sor*)*, i32 (%struct.tegra_sor*)** %31, align 8
  %33 = icmp ne i32 (%struct.tegra_sor*)* %32, null
  br i1 %33, label %34, label %50

34:                                               ; preds = %27
  %35 = load %struct.tegra_sor*, %struct.tegra_sor** %4, align 8
  %36 = getelementptr inbounds %struct.tegra_sor, %struct.tegra_sor* %35, i32 0, i32 1
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32 (%struct.tegra_sor*)*, i32 (%struct.tegra_sor*)** %38, align 8
  %40 = load %struct.tegra_sor*, %struct.tegra_sor** %4, align 8
  %41 = call i32 %39(%struct.tegra_sor* %40)
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* %5, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %34
  %45 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %46 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %45, i32 0, i32 0
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @dev_err(i32* %46, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %47)
  br label %49

49:                                               ; preds = %44, %34
  br label %50

50:                                               ; preds = %49, %27, %22
  %51 = load %struct.tegra_sor*, %struct.tegra_sor** %4, align 8
  %52 = getelementptr inbounds %struct.tegra_sor, %struct.tegra_sor* %51, i32 0, i32 0
  %53 = call i32 @tegra_output_remove(i32* %52)
  store i32 0, i32* %2, align 4
  br label %54

54:                                               ; preds = %50, %16
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local %struct.tegra_sor* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @pm_runtime_disable(i32*) #1

declare dso_local i32 @host1x_client_unregister(i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @tegra_output_remove(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
