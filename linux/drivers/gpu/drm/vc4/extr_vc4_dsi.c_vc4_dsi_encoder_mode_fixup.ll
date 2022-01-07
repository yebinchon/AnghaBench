; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_dsi.c_vc4_dsi_encoder_mode_fixup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_dsi.c_vc4_dsi_encoder_mode_fixup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { i32 }
%struct.drm_display_mode = type { i32, i32, i32, i32 }
%struct.vc4_dsi_encoder = type { %struct.vc4_dsi* }
%struct.vc4_dsi = type { i64, i32 }
%struct.clk = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_encoder*, %struct.drm_display_mode*, %struct.drm_display_mode*)* @vc4_dsi_encoder_mode_fixup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vc4_dsi_encoder_mode_fixup(%struct.drm_encoder* %0, %struct.drm_display_mode* %1, %struct.drm_display_mode* %2) #0 {
  %4 = alloca %struct.drm_encoder*, align 8
  %5 = alloca %struct.drm_display_mode*, align 8
  %6 = alloca %struct.drm_display_mode*, align 8
  %7 = alloca %struct.vc4_dsi_encoder*, align 8
  %8 = alloca %struct.vc4_dsi*, align 8
  %9 = alloca %struct.clk*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.drm_encoder* %0, %struct.drm_encoder** %4, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %5, align 8
  store %struct.drm_display_mode* %2, %struct.drm_display_mode** %6, align 8
  %14 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %15 = call %struct.vc4_dsi_encoder* @to_vc4_dsi_encoder(%struct.drm_encoder* %14)
  store %struct.vc4_dsi_encoder* %15, %struct.vc4_dsi_encoder** %7, align 8
  %16 = load %struct.vc4_dsi_encoder*, %struct.vc4_dsi_encoder** %7, align 8
  %17 = getelementptr inbounds %struct.vc4_dsi_encoder, %struct.vc4_dsi_encoder* %16, i32 0, i32 0
  %18 = load %struct.vc4_dsi*, %struct.vc4_dsi** %17, align 8
  store %struct.vc4_dsi* %18, %struct.vc4_dsi** %8, align 8
  %19 = load %struct.vc4_dsi*, %struct.vc4_dsi** %8, align 8
  %20 = getelementptr inbounds %struct.vc4_dsi, %struct.vc4_dsi* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call %struct.clk* @clk_get_parent(i32 %21)
  store %struct.clk* %22, %struct.clk** %9, align 8
  %23 = load %struct.clk*, %struct.clk** %9, align 8
  %24 = call i64 @clk_get_rate(%struct.clk* %23)
  store i64 %24, i64* %10, align 8
  %25 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %26 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = mul nsw i32 %27, 1000
  %29 = sext i32 %28 to i64
  store i64 %29, i64* %11, align 8
  %30 = load i64, i64* %11, align 8
  %31 = load %struct.vc4_dsi*, %struct.vc4_dsi** %8, align 8
  %32 = getelementptr inbounds %struct.vc4_dsi, %struct.vc4_dsi* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = mul i64 %30, %33
  store i64 %34, i64* %12, align 8
  store i32 1, i32* %13, align 4
  br label %35

35:                                               ; preds = %49, %3
  %36 = load i32, i32* %13, align 4
  %37 = icmp slt i32 %36, 8
  br i1 %37, label %38, label %52

38:                                               ; preds = %35
  %39 = load i64, i64* %10, align 8
  %40 = load i32, i32* %13, align 4
  %41 = sext i32 %40 to i64
  %42 = udiv i64 %39, %41
  %43 = load i64, i64* %12, align 8
  %44 = icmp ult i64 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %38
  %46 = load i32, i32* %13, align 4
  %47 = add nsw i32 %46, -1
  store i32 %47, i32* %13, align 4
  br label %52

48:                                               ; preds = %38
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %13, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %13, align 4
  br label %35

52:                                               ; preds = %45, %35
  %53 = load i64, i64* %10, align 8
  %54 = load i32, i32* %13, align 4
  %55 = sext i32 %54 to i64
  %56 = udiv i64 %53, %55
  store i64 %56, i64* %12, align 8
  %57 = load i64, i64* %12, align 8
  %58 = load %struct.vc4_dsi*, %struct.vc4_dsi** %8, align 8
  %59 = getelementptr inbounds %struct.vc4_dsi, %struct.vc4_dsi* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = udiv i64 %57, %60
  store i64 %61, i64* %11, align 8
  %62 = load i64, i64* %11, align 8
  %63 = udiv i64 %62, 1000
  %64 = trunc i64 %63 to i32
  %65 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %66 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 4
  %67 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %68 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %71 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = mul nsw i32 %69, %72
  %74 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %75 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = sdiv i32 %73, %76
  %78 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %79 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %78, i32 0, i32 1
  store i32 %77, i32* %79, align 4
  %80 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %81 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %84 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = sub nsw i32 %82, %85
  %87 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %88 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = add nsw i32 %89, %86
  store i32 %90, i32* %88, align 4
  %91 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %92 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %95 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = sub nsw i32 %93, %96
  %98 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %99 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = add nsw i32 %100, %97
  store i32 %101, i32* %99, align 4
  ret i32 1
}

declare dso_local %struct.vc4_dsi_encoder* @to_vc4_dsi_encoder(%struct.drm_encoder*) #1

declare dso_local %struct.clk* @clk_get_parent(i32) #1

declare dso_local i64 @clk_get_rate(%struct.clk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
