; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_gr2d.c_gr2d_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_gr2d.c_gr2d_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.gr2d = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [40 x i8] c"failed to unregister host1x client: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @gr2d_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gr2d_remove(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.gr2d*, align 8
  %5 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %7 = call %struct.gr2d* @platform_get_drvdata(%struct.platform_device* %6)
  store %struct.gr2d* %7, %struct.gr2d** %4, align 8
  %8 = load %struct.gr2d*, %struct.gr2d** %4, align 8
  %9 = getelementptr inbounds %struct.gr2d, %struct.gr2d* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = call i32 @host1x_client_unregister(i32* %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %1
  %15 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %16 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %15, i32 0, i32 0
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @dev_err(i32* %16, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load i32, i32* %5, align 4
  store i32 %19, i32* %2, align 4
  br label %25

20:                                               ; preds = %1
  %21 = load %struct.gr2d*, %struct.gr2d** %4, align 8
  %22 = getelementptr inbounds %struct.gr2d, %struct.gr2d* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @clk_disable_unprepare(i32 %23)
  store i32 0, i32* %2, align 4
  br label %25

25:                                               ; preds = %20, %14
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

declare dso_local %struct.gr2d* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @host1x_client_unregister(i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
