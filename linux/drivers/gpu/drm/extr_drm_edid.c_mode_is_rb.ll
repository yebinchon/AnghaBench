; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_edid.c_mode_is_rb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_edid.c_mode_is_rb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_display_mode = type { i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_display_mode*)* @mode_is_rb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mode_is_rb(%struct.drm_display_mode* %0) #0 {
  %2 = alloca %struct.drm_display_mode*, align 8
  store %struct.drm_display_mode* %0, %struct.drm_display_mode** %2, align 8
  %3 = load %struct.drm_display_mode*, %struct.drm_display_mode** %2, align 8
  %4 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.drm_display_mode*, %struct.drm_display_mode** %2, align 8
  %7 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = sub nsw i32 %5, %8
  %10 = icmp eq i32 %9, 160
  br i1 %10, label %11, label %38

11:                                               ; preds = %1
  %12 = load %struct.drm_display_mode*, %struct.drm_display_mode** %2, align 8
  %13 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.drm_display_mode*, %struct.drm_display_mode** %2, align 8
  %16 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = sub nsw i32 %14, %17
  %19 = icmp eq i32 %18, 80
  br i1 %19, label %20, label %38

20:                                               ; preds = %11
  %21 = load %struct.drm_display_mode*, %struct.drm_display_mode** %2, align 8
  %22 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.drm_display_mode*, %struct.drm_display_mode** %2, align 8
  %25 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = sub nsw i32 %23, %26
  %28 = icmp eq i32 %27, 32
  br i1 %28, label %29, label %38

29:                                               ; preds = %20
  %30 = load %struct.drm_display_mode*, %struct.drm_display_mode** %2, align 8
  %31 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.drm_display_mode*, %struct.drm_display_mode** %2, align 8
  %34 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %33, i32 0, i32 5
  %35 = load i32, i32* %34, align 4
  %36 = sub nsw i32 %32, %35
  %37 = icmp eq i32 %36, 3
  br label %38

38:                                               ; preds = %29, %20, %11, %1
  %39 = phi i1 [ false, %20 ], [ false, %11 ], [ false, %1 ], [ %37, %29 ]
  %40 = zext i1 %39 to i32
  ret i32 %40
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
