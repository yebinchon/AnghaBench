; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_vic.c_vic_close_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_vic.c_vic_close_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_drm_context = type { i32, i32 }
%struct.vic = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tegra_drm_context*)* @vic_close_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vic_close_channel(%struct.tegra_drm_context* %0) #0 {
  %2 = alloca %struct.tegra_drm_context*, align 8
  %3 = alloca %struct.vic*, align 8
  store %struct.tegra_drm_context* %0, %struct.tegra_drm_context** %2, align 8
  %4 = load %struct.tegra_drm_context*, %struct.tegra_drm_context** %2, align 8
  %5 = getelementptr inbounds %struct.tegra_drm_context, %struct.tegra_drm_context* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 4
  %7 = call %struct.vic* @to_vic(i32 %6)
  store %struct.vic* %7, %struct.vic** %3, align 8
  %8 = load %struct.tegra_drm_context*, %struct.tegra_drm_context** %2, align 8
  %9 = getelementptr inbounds %struct.tegra_drm_context, %struct.tegra_drm_context* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @host1x_channel_put(i32 %10)
  %12 = load %struct.vic*, %struct.vic** %3, align 8
  %13 = getelementptr inbounds %struct.vic, %struct.vic* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @pm_runtime_put(i32 %14)
  ret void
}

declare dso_local %struct.vic* @to_vic(i32) #1

declare dso_local i32 @host1x_channel_put(i32) #1

declare dso_local i32 @pm_runtime_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
