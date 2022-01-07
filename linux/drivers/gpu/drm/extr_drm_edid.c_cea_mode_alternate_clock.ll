; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_edid.c_cea_mode_alternate_clock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_edid.c_cea_mode_alternate_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_display_mode = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_display_mode*)* @cea_mode_alternate_clock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cea_mode_alternate_clock(%struct.drm_display_mode* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_display_mode*, align 8
  %4 = alloca i32, align 4
  store %struct.drm_display_mode* %0, %struct.drm_display_mode** %3, align 8
  %5 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %6 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  store i32 %7, i32* %4, align 4
  %8 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %9 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = srem i32 %10, 6
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* %4, align 4
  store i32 %14, i32* %2, align 4
  br label %35

15:                                               ; preds = %1
  %16 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %17 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = icmp eq i32 %18, 240
  br i1 %19, label %25, label %20

20:                                               ; preds = %15
  %21 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %22 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = icmp eq i32 %23, 480
  br i1 %24, label %25, label %29

25:                                               ; preds = %20, %15
  %26 = load i32, i32* %4, align 4
  %27 = mul i32 %26, 1001
  %28 = call i32 @DIV_ROUND_CLOSEST(i32 %27, i32 1000)
  store i32 %28, i32* %4, align 4
  br label %33

29:                                               ; preds = %20
  %30 = load i32, i32* %4, align 4
  %31 = mul i32 %30, 1000
  %32 = call i32 @DIV_ROUND_CLOSEST(i32 %31, i32 1001)
  store i32 %32, i32* %4, align 4
  br label %33

33:                                               ; preds = %29, %25
  %34 = load i32, i32* %4, align 4
  store i32 %34, i32* %2, align 4
  br label %35

35:                                               ; preds = %33, %13
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local i32 @DIV_ROUND_CLOSEST(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
