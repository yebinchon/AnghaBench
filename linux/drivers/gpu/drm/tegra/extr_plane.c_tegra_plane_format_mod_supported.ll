; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_plane.c_tegra_plane_format_mod_supported.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_plane.c_tegra_plane_format_mod_supported.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_plane = type { i32 }
%struct.drm_format_info = type { i32 }

@DRM_FORMAT_MOD_LINEAR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_plane*, i32, i64)* @tegra_plane_format_mod_supported to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_plane_format_mod_supported(%struct.drm_plane* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_plane*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.drm_format_info*, align 8
  store %struct.drm_plane* %0, %struct.drm_plane** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %9 = load i32, i32* %6, align 4
  %10 = call %struct.drm_format_info* @drm_format_info(i32 %9)
  store %struct.drm_format_info* %10, %struct.drm_format_info** %8, align 8
  %11 = load i64, i64* %7, align 8
  %12 = load i64, i64* @DRM_FORMAT_MOD_LINEAR, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %22

15:                                               ; preds = %3
  %16 = load %struct.drm_format_info*, %struct.drm_format_info** %8, align 8
  %17 = getelementptr inbounds %struct.drm_format_info, %struct.drm_format_info* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  store i32 1, i32* %4, align 4
  br label %22

21:                                               ; preds = %15
  store i32 0, i32* %4, align 4
  br label %22

22:                                               ; preds = %21, %20, %14
  %23 = load i32, i32* %4, align 4
  ret i32 %23
}

declare dso_local %struct.drm_format_info* @drm_format_info(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
