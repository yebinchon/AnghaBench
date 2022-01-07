; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_dc.c_tegra_dc_exit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_dc.c_tegra_dc_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.host1x_client = type { i32 }
%struct.tegra_dc = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [35 x i8] c"failed to shutdown RGB output: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.host1x_client*)* @tegra_dc_exit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_dc_exit(%struct.host1x_client* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.host1x_client*, align 8
  %4 = alloca %struct.tegra_dc*, align 8
  %5 = alloca i32, align 4
  store %struct.host1x_client* %0, %struct.host1x_client** %3, align 8
  %6 = load %struct.host1x_client*, %struct.host1x_client** %3, align 8
  %7 = call %struct.tegra_dc* @host1x_client_to_dc(%struct.host1x_client* %6)
  store %struct.tegra_dc* %7, %struct.tegra_dc** %4, align 8
  %8 = load %struct.tegra_dc*, %struct.tegra_dc** %4, align 8
  %9 = call i32 @tegra_dc_has_window_groups(%struct.tegra_dc* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %42

12:                                               ; preds = %1
  %13 = load %struct.tegra_dc*, %struct.tegra_dc** %4, align 8
  %14 = getelementptr inbounds %struct.tegra_dc, %struct.tegra_dc* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.tegra_dc*, %struct.tegra_dc** %4, align 8
  %17 = getelementptr inbounds %struct.tegra_dc, %struct.tegra_dc* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.tegra_dc*, %struct.tegra_dc** %4, align 8
  %20 = call i32 @devm_free_irq(i32 %15, i32 %18, %struct.tegra_dc* %19)
  %21 = load %struct.tegra_dc*, %struct.tegra_dc** %4, align 8
  %22 = call i32 @tegra_dc_rgb_exit(%struct.tegra_dc* %21)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %12
  %26 = load %struct.tegra_dc*, %struct.tegra_dc** %4, align 8
  %27 = getelementptr inbounds %struct.tegra_dc, %struct.tegra_dc* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @dev_err(i32 %28, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load i32, i32* %5, align 4
  store i32 %31, i32* %2, align 4
  br label %42

32:                                               ; preds = %12
  %33 = load %struct.host1x_client*, %struct.host1x_client** %3, align 8
  %34 = load %struct.tegra_dc*, %struct.tegra_dc** %4, align 8
  %35 = getelementptr inbounds %struct.tegra_dc, %struct.tegra_dc* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @host1x_client_iommu_detach(%struct.host1x_client* %33, i32 %36)
  %38 = load %struct.tegra_dc*, %struct.tegra_dc** %4, align 8
  %39 = getelementptr inbounds %struct.tegra_dc, %struct.tegra_dc* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @host1x_syncpt_free(i32 %40)
  store i32 0, i32* %2, align 4
  br label %42

42:                                               ; preds = %32, %25, %11
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local %struct.tegra_dc* @host1x_client_to_dc(%struct.host1x_client*) #1

declare dso_local i32 @tegra_dc_has_window_groups(%struct.tegra_dc*) #1

declare dso_local i32 @devm_free_irq(i32, i32, %struct.tegra_dc*) #1

declare dso_local i32 @tegra_dc_rgb_exit(%struct.tegra_dc*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @host1x_client_iommu_detach(%struct.host1x_client*, i32) #1

declare dso_local i32 @host1x_syncpt_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
