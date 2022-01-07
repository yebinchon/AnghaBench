; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_sprite.c_skl_plane_max_stride.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_sprite.c_skl_plane_max_stride.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_plane = type { i32 }
%struct.drm_format_info = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_plane*, i32, i32, i32)* @skl_plane_max_stride to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skl_plane_max_stride(%struct.intel_plane* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.intel_plane*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.drm_format_info*, align 8
  %11 = alloca i32, align 4
  store %struct.intel_plane* %0, %struct.intel_plane** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* %7, align 4
  %13 = call %struct.drm_format_info* @drm_format_info(i32 %12)
  store %struct.drm_format_info* %13, %struct.drm_format_info** %10, align 8
  %14 = load %struct.drm_format_info*, %struct.drm_format_info** %10, align 8
  %15 = getelementptr inbounds %struct.drm_format_info, %struct.drm_format_info* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %11, align 4
  %19 = load i32, i32* %9, align 4
  %20 = call i64 @drm_rotation_90_or_270(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %4
  %23 = load i32, i32* %11, align 4
  %24 = sdiv i32 32768, %23
  %25 = call i32 @min(i32 8192, i32 %24)
  store i32 %25, i32* %5, align 4
  br label %30

26:                                               ; preds = %4
  %27 = load i32, i32* %11, align 4
  %28 = mul nsw i32 8192, %27
  %29 = call i32 @min(i32 %28, i32 32768)
  store i32 %29, i32* %5, align 4
  br label %30

30:                                               ; preds = %26, %22
  %31 = load i32, i32* %5, align 4
  ret i32 %31
}

declare dso_local %struct.drm_format_info* @drm_format_info(i32) #1

declare dso_local i64 @drm_rotation_90_or_270(i32) #1

declare dso_local i32 @min(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
