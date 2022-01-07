; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_a6xx_gmu.c_a6xx_gmu_clocks_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_a6xx_gmu.c_a6xx_gmu_clocks_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.a6xx_gmu = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"gmu\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.a6xx_gmu*)* @a6xx_gmu_clocks_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @a6xx_gmu_clocks_probe(%struct.a6xx_gmu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.a6xx_gmu*, align 8
  %4 = alloca i32, align 4
  store %struct.a6xx_gmu* %0, %struct.a6xx_gmu** %3, align 8
  %5 = load %struct.a6xx_gmu*, %struct.a6xx_gmu** %3, align 8
  %6 = getelementptr inbounds %struct.a6xx_gmu, %struct.a6xx_gmu* %5, i32 0, i32 3
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.a6xx_gmu*, %struct.a6xx_gmu** %3, align 8
  %9 = getelementptr inbounds %struct.a6xx_gmu, %struct.a6xx_gmu* %8, i32 0, i32 1
  %10 = call i32 @devm_clk_bulk_get_all(i32 %7, i32* %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp slt i32 %11, 1
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* %4, align 4
  store i32 %14, i32* %2, align 4
  br label %28

15:                                               ; preds = %1
  %16 = load i32, i32* %4, align 4
  %17 = load %struct.a6xx_gmu*, %struct.a6xx_gmu** %3, align 8
  %18 = getelementptr inbounds %struct.a6xx_gmu, %struct.a6xx_gmu* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  %19 = load %struct.a6xx_gmu*, %struct.a6xx_gmu** %3, align 8
  %20 = getelementptr inbounds %struct.a6xx_gmu, %struct.a6xx_gmu* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.a6xx_gmu*, %struct.a6xx_gmu** %3, align 8
  %23 = getelementptr inbounds %struct.a6xx_gmu, %struct.a6xx_gmu* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @msm_clk_bulk_get_clock(i32 %21, i32 %24, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %26 = load %struct.a6xx_gmu*, %struct.a6xx_gmu** %3, align 8
  %27 = getelementptr inbounds %struct.a6xx_gmu, %struct.a6xx_gmu* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 4
  store i32 0, i32* %2, align 4
  br label %28

28:                                               ; preds = %15, %13
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local i32 @devm_clk_bulk_get_all(i32, i32*) #1

declare dso_local i32 @msm_clk_bulk_get_clock(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
