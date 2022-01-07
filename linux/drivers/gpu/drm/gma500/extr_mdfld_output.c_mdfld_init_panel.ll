; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_mdfld_output.c_mdfld_init_panel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_mdfld_output.c_mdfld_init_panel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }

@mdfld_tpo_vid_funcs = common dso_local global i32 0, align 4
@mdfld_tc35876x_funcs = common dso_local global i32 0, align 4
@mdfld_tmd_vid_funcs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_device*, i32, i32)* @mdfld_init_panel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mdfld_init_panel(%struct.drm_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  switch i32 %7, label %23 [
    i32 128, label %8
    i32 130, label %12
    i32 129, label %18
    i32 131, label %22
  ]

8:                                                ; preds = %3
  %9 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @mdfld_dsi_output_init(%struct.drm_device* %9, i32 %10, i32* @mdfld_tpo_vid_funcs)
  br label %23

12:                                               ; preds = %3
  %13 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %14 = call i32 @tc35876x_init(%struct.drm_device* %13)
  %15 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @mdfld_dsi_output_init(%struct.drm_device* %15, i32 %16, i32* @mdfld_tc35876x_funcs)
  br label %23

18:                                               ; preds = %3
  %19 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @mdfld_dsi_output_init(%struct.drm_device* %19, i32 %20, i32* @mdfld_tmd_vid_funcs)
  br label %23

22:                                               ; preds = %3
  br label %23

23:                                               ; preds = %3, %22, %18, %12, %8
  ret void
}

declare dso_local i32 @mdfld_dsi_output_init(%struct.drm_device*, i32, i32*) #1

declare dso_local i32 @tc35876x_init(%struct.drm_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
