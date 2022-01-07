; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_gem.c_tegra_bo_pin.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_gem.c_tegra_bo_pin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.host1x_bo = type { i32 }
%struct.sg_table = type { i32 }
%struct.tegra_bo = type { i32, %struct.sg_table* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.host1x_bo*, %struct.sg_table**)* @tegra_bo_pin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_bo_pin(%struct.host1x_bo* %0, %struct.sg_table** %1) #0 {
  %3 = alloca %struct.host1x_bo*, align 8
  %4 = alloca %struct.sg_table**, align 8
  %5 = alloca %struct.tegra_bo*, align 8
  store %struct.host1x_bo* %0, %struct.host1x_bo** %3, align 8
  store %struct.sg_table** %1, %struct.sg_table*** %4, align 8
  %6 = load %struct.host1x_bo*, %struct.host1x_bo** %3, align 8
  %7 = call %struct.tegra_bo* @host1x_to_tegra_bo(%struct.host1x_bo* %6)
  store %struct.tegra_bo* %7, %struct.tegra_bo** %5, align 8
  %8 = load %struct.tegra_bo*, %struct.tegra_bo** %5, align 8
  %9 = getelementptr inbounds %struct.tegra_bo, %struct.tegra_bo* %8, i32 0, i32 1
  %10 = load %struct.sg_table*, %struct.sg_table** %9, align 8
  %11 = load %struct.sg_table**, %struct.sg_table*** %4, align 8
  store %struct.sg_table* %10, %struct.sg_table** %11, align 8
  %12 = load %struct.tegra_bo*, %struct.tegra_bo** %5, align 8
  %13 = getelementptr inbounds %struct.tegra_bo, %struct.tegra_bo* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  ret i32 %14
}

declare dso_local %struct.tegra_bo* @host1x_to_tegra_bo(%struct.host1x_bo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
