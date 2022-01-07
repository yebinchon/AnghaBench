; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_sor.c_tegra_sor_set_parent_clock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_sor.c_tegra_sor_set_parent_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_sor = type { i32, i32 }
%struct.clk = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tegra_sor*, %struct.clk*)* @tegra_sor_set_parent_clock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_sor_set_parent_clock(%struct.tegra_sor* %0, %struct.clk* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tegra_sor*, align 8
  %5 = alloca %struct.clk*, align 8
  %6 = alloca i32, align 4
  store %struct.tegra_sor* %0, %struct.tegra_sor** %4, align 8
  store %struct.clk* %1, %struct.clk** %5, align 8
  %7 = load %struct.tegra_sor*, %struct.tegra_sor** %4, align 8
  %8 = getelementptr inbounds %struct.tegra_sor, %struct.tegra_sor* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @clk_disable_unprepare(i32 %9)
  %11 = load %struct.tegra_sor*, %struct.tegra_sor** %4, align 8
  %12 = getelementptr inbounds %struct.tegra_sor, %struct.tegra_sor* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.clk*, %struct.clk** %5, align 8
  %15 = call i32 @clk_set_parent(i32 %13, %struct.clk* %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* %6, align 4
  store i32 %19, i32* %3, align 4
  br label %30

20:                                               ; preds = %2
  %21 = load %struct.tegra_sor*, %struct.tegra_sor** %4, align 8
  %22 = getelementptr inbounds %struct.tegra_sor, %struct.tegra_sor* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @clk_prepare_enable(i32 %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %20
  %28 = load i32, i32* %6, align 4
  store i32 %28, i32* %3, align 4
  br label %30

29:                                               ; preds = %20
  store i32 0, i32* %3, align 4
  br label %30

30:                                               ; preds = %29, %27, %18
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @clk_set_parent(i32, %struct.clk*) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
