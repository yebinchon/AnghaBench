; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_kms.c_vmw_guess_mode_timing.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_kms.c_vmw_guess_mode_timing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_display_mode = type { i32, i32, i64, i64, i64, i64, i64, i64, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vmw_guess_mode_timing(%struct.drm_display_mode* %0) #0 {
  %2 = alloca %struct.drm_display_mode*, align 8
  store %struct.drm_display_mode* %0, %struct.drm_display_mode** %2, align 8
  %3 = load %struct.drm_display_mode*, %struct.drm_display_mode** %2, align 8
  %4 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %3, i32 0, i32 9
  %5 = load i64, i64* %4, align 8
  %6 = add nsw i64 %5, 50
  %7 = load %struct.drm_display_mode*, %struct.drm_display_mode** %2, align 8
  %8 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %7, i32 0, i32 8
  store i64 %6, i64* %8, align 8
  %9 = load %struct.drm_display_mode*, %struct.drm_display_mode** %2, align 8
  %10 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %9, i32 0, i32 8
  %11 = load i64, i64* %10, align 8
  %12 = add nsw i64 %11, 50
  %13 = load %struct.drm_display_mode*, %struct.drm_display_mode** %2, align 8
  %14 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %13, i32 0, i32 7
  store i64 %12, i64* %14, align 8
  %15 = load %struct.drm_display_mode*, %struct.drm_display_mode** %2, align 8
  %16 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %15, i32 0, i32 7
  %17 = load i64, i64* %16, align 8
  %18 = add nsw i64 %17, 50
  %19 = load %struct.drm_display_mode*, %struct.drm_display_mode** %2, align 8
  %20 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %19, i32 0, i32 3
  store i64 %18, i64* %20, align 8
  %21 = load %struct.drm_display_mode*, %struct.drm_display_mode** %2, align 8
  %22 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %21, i32 0, i32 6
  %23 = load i64, i64* %22, align 8
  %24 = add nsw i64 %23, 50
  %25 = load %struct.drm_display_mode*, %struct.drm_display_mode** %2, align 8
  %26 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %25, i32 0, i32 5
  store i64 %24, i64* %26, align 8
  %27 = load %struct.drm_display_mode*, %struct.drm_display_mode** %2, align 8
  %28 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %27, i32 0, i32 5
  %29 = load i64, i64* %28, align 8
  %30 = add nsw i64 %29, 50
  %31 = load %struct.drm_display_mode*, %struct.drm_display_mode** %2, align 8
  %32 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %31, i32 0, i32 4
  store i64 %30, i64* %32, align 8
  %33 = load %struct.drm_display_mode*, %struct.drm_display_mode** %2, align 8
  %34 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %33, i32 0, i32 4
  %35 = load i64, i64* %34, align 8
  %36 = add nsw i64 %35, 50
  %37 = load %struct.drm_display_mode*, %struct.drm_display_mode** %2, align 8
  %38 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %37, i32 0, i32 2
  store i64 %36, i64* %38, align 8
  %39 = load %struct.drm_display_mode*, %struct.drm_display_mode** %2, align 8
  %40 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %39, i32 0, i32 3
  %41 = load i64, i64* %40, align 8
  %42 = trunc i64 %41 to i32
  %43 = load %struct.drm_display_mode*, %struct.drm_display_mode** %2, align 8
  %44 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = trunc i64 %45 to i32
  %47 = mul nsw i32 %42, %46
  %48 = sdiv i32 %47, 100
  %49 = mul nsw i32 %48, 6
  %50 = load %struct.drm_display_mode*, %struct.drm_display_mode** %2, align 8
  %51 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  %52 = load %struct.drm_display_mode*, %struct.drm_display_mode** %2, align 8
  %53 = call i32 @drm_mode_vrefresh(%struct.drm_display_mode* %52)
  %54 = load %struct.drm_display_mode*, %struct.drm_display_mode** %2, align 8
  %55 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 4
  ret void
}

declare dso_local i32 @drm_mode_vrefresh(%struct.drm_display_mode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
