; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dsi.c_intel_dsi_bitrate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dsi.c_intel_dsi_bitrate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_dsi = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @intel_dsi_bitrate(%struct.intel_dsi* %0) #0 {
  %2 = alloca %struct.intel_dsi*, align 8
  %3 = alloca i32, align 4
  store %struct.intel_dsi* %0, %struct.intel_dsi** %2, align 8
  %4 = load %struct.intel_dsi*, %struct.intel_dsi** %2, align 8
  %5 = getelementptr inbounds %struct.intel_dsi, %struct.intel_dsi* %4, i32 0, i32 2
  %6 = load i32, i32* %5, align 4
  %7 = call i32 @mipi_dsi_pixel_format_to_bpp(i32 %6)
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = icmp slt i32 %8, 0
  %10 = zext i1 %9 to i32
  %11 = call i64 @WARN_ON(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i32 16, i32* %3, align 4
  br label %14

14:                                               ; preds = %13, %1
  %15 = load %struct.intel_dsi*, %struct.intel_dsi** %2, align 8
  %16 = getelementptr inbounds %struct.intel_dsi, %struct.intel_dsi* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %3, align 4
  %19 = mul nsw i32 %17, %18
  %20 = load %struct.intel_dsi*, %struct.intel_dsi** %2, align 8
  %21 = getelementptr inbounds %struct.intel_dsi, %struct.intel_dsi* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = sdiv i32 %19, %22
  ret i32 %23
}

declare dso_local i32 @mipi_dsi_pixel_format_to_bpp(i32) #1

declare dso_local i64 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
