; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_sor.c_tegra_sor_exit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_sor.c_tegra_sor_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.host1x_client = type { i32 }
%struct.tegra_sor = type { i32, i32, i32, i32, i64, i32 }

@SOR_INT_MASK = common dso_local global i32 0, align 4
@SOR_INT_ENABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"failed to detach DP: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.host1x_client*)* @tegra_sor_exit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_sor_exit(%struct.host1x_client* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.host1x_client*, align 8
  %4 = alloca %struct.tegra_sor*, align 8
  %5 = alloca i32, align 4
  store %struct.host1x_client* %0, %struct.host1x_client** %3, align 8
  %6 = load %struct.host1x_client*, %struct.host1x_client** %3, align 8
  %7 = call %struct.tegra_sor* @host1x_client_to_sor(%struct.host1x_client* %6)
  store %struct.tegra_sor* %7, %struct.tegra_sor** %4, align 8
  %8 = load %struct.tegra_sor*, %struct.tegra_sor** %4, align 8
  %9 = load i32, i32* @SOR_INT_MASK, align 4
  %10 = call i32 @tegra_sor_writel(%struct.tegra_sor* %8, i32 0, i32 %9)
  %11 = load %struct.tegra_sor*, %struct.tegra_sor** %4, align 8
  %12 = load i32, i32* @SOR_INT_ENABLE, align 4
  %13 = call i32 @tegra_sor_writel(%struct.tegra_sor* %11, i32 0, i32 %12)
  %14 = load %struct.tegra_sor*, %struct.tegra_sor** %4, align 8
  %15 = getelementptr inbounds %struct.tegra_sor, %struct.tegra_sor* %14, i32 0, i32 5
  %16 = call i32 @tegra_output_exit(i32* %15)
  %17 = load %struct.tegra_sor*, %struct.tegra_sor** %4, align 8
  %18 = getelementptr inbounds %struct.tegra_sor, %struct.tegra_sor* %17, i32 0, i32 4
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %36

21:                                               ; preds = %1
  %22 = load %struct.tegra_sor*, %struct.tegra_sor** %4, align 8
  %23 = getelementptr inbounds %struct.tegra_sor, %struct.tegra_sor* %22, i32 0, i32 4
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @drm_dp_aux_detach(i64 %24)
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %21
  %29 = load %struct.tegra_sor*, %struct.tegra_sor** %4, align 8
  %30 = getelementptr inbounds %struct.tegra_sor, %struct.tegra_sor* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @dev_err(i32 %31, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* %5, align 4
  store i32 %34, i32* %2, align 4
  br label %49

35:                                               ; preds = %21
  br label %36

36:                                               ; preds = %35, %1
  %37 = load %struct.tegra_sor*, %struct.tegra_sor** %4, align 8
  %38 = getelementptr inbounds %struct.tegra_sor, %struct.tegra_sor* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @clk_disable_unprepare(i32 %39)
  %41 = load %struct.tegra_sor*, %struct.tegra_sor** %4, align 8
  %42 = getelementptr inbounds %struct.tegra_sor, %struct.tegra_sor* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @clk_disable_unprepare(i32 %43)
  %45 = load %struct.tegra_sor*, %struct.tegra_sor** %4, align 8
  %46 = getelementptr inbounds %struct.tegra_sor, %struct.tegra_sor* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @clk_disable_unprepare(i32 %47)
  store i32 0, i32* %2, align 4
  br label %49

49:                                               ; preds = %36, %28
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local %struct.tegra_sor* @host1x_client_to_sor(%struct.host1x_client*) #1

declare dso_local i32 @tegra_sor_writel(%struct.tegra_sor*, i32, i32) #1

declare dso_local i32 @tegra_output_exit(i32*) #1

declare dso_local i32 @drm_dp_aux_detach(i64) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
