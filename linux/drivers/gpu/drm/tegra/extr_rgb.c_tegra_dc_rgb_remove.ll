; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_rgb.c_tegra_dc_rgb_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_rgb.c_tegra_dc_rgb_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_dc = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tegra_dc_rgb_remove(%struct.tegra_dc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tegra_dc*, align 8
  store %struct.tegra_dc* %0, %struct.tegra_dc** %3, align 8
  %4 = load %struct.tegra_dc*, %struct.tegra_dc** %3, align 8
  %5 = getelementptr inbounds %struct.tegra_dc, %struct.tegra_dc* %4, i32 0, i32 0
  %6 = load i32*, i32** %5, align 8
  %7 = icmp ne i32* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %16

9:                                                ; preds = %1
  %10 = load %struct.tegra_dc*, %struct.tegra_dc** %3, align 8
  %11 = getelementptr inbounds %struct.tegra_dc, %struct.tegra_dc* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = call i32 @tegra_output_remove(i32* %12)
  %14 = load %struct.tegra_dc*, %struct.tegra_dc** %3, align 8
  %15 = getelementptr inbounds %struct.tegra_dc, %struct.tegra_dc* %14, i32 0, i32 0
  store i32* null, i32** %15, align 8
  store i32 0, i32* %2, align 4
  br label %16

16:                                               ; preds = %9, %8
  %17 = load i32, i32* %2, align 4
  ret i32 %17
}

declare dso_local i32 @tegra_output_remove(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
