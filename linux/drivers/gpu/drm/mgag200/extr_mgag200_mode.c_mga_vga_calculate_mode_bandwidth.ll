; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/mgag200/extr_mgag200_mode.c_mga_vga_calculate_mode_bandwidth.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/mgag200/extr_mgag200_mode.c_mga_vga_calculate_mode_bandwidth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_display_mode = type { i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_display_mode*, i32)* @mga_vga_calculate_mode_bandwidth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mga_vga_calculate_mode_bandwidth(%struct.drm_display_mode* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_display_mode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.drm_display_mode* %0, %struct.drm_display_mode** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = add nsw i32 %12, 7
  %14 = sdiv i32 %13, 8
  store i32 %14, i32* %11, align 4
  store i32 1024, i32* %7, align 4
  %15 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %16 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %29

19:                                               ; preds = %2
  %20 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %21 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %19
  %25 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %26 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %24, %19, %2
  store i32 0, i32* %3, align 4
  br label %62

30:                                               ; preds = %24
  %31 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %32 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %35 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 4
  %37 = mul nsw i32 %33, %36
  store i32 %37, i32* %8, align 4
  %38 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %39 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %42 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = mul nsw i32 %40, %43
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %8, align 4
  %46 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %47 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = mul nsw i32 %45, %48
  %50 = mul nsw i32 %49, 1000
  store i32 %50, i32* %9, align 4
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @do_div(i32 %51, i32 %52)
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* %11, align 4
  %56 = mul nsw i32 %54, %55
  %57 = mul nsw i32 %56, 100
  store i32 %57, i32* %10, align 4
  %58 = load i32, i32* %10, align 4
  %59 = load i32, i32* %7, align 4
  %60 = call i32 @do_div(i32 %58, i32 %59)
  %61 = load i32, i32* %10, align 4
  store i32 %61, i32* %3, align 4
  br label %62

62:                                               ; preds = %30, %29
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i32 @do_div(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
