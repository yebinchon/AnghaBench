; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_edid.c_drm_parse_hdmi_forum_vsdb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_edid.c_drm_parse_hdmi_forum_vsdb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { %struct.drm_display_info }
%struct.drm_display_info = type { i32, i32, %struct.drm_hdmi_info }
%struct.drm_hdmi_info = type { %struct.drm_scdc }
%struct.drm_scdc = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [32 x i8] c"HF-VSDB: max TMDS clock %d kHz\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_connector*, i32*)* @drm_parse_hdmi_forum_vsdb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @drm_parse_hdmi_forum_vsdb(%struct.drm_connector* %0, i32* %1) #0 {
  %3 = alloca %struct.drm_connector*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.drm_display_info*, align 8
  %6 = alloca %struct.drm_hdmi_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.drm_scdc*, align 8
  store %struct.drm_connector* %0, %struct.drm_connector** %3, align 8
  store i32* %1, i32** %4, align 8
  %9 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %10 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %9, i32 0, i32 0
  store %struct.drm_display_info* %10, %struct.drm_display_info** %5, align 8
  %11 = load %struct.drm_display_info*, %struct.drm_display_info** %5, align 8
  %12 = getelementptr inbounds %struct.drm_display_info, %struct.drm_display_info* %11, i32 0, i32 2
  store %struct.drm_hdmi_info* %12, %struct.drm_hdmi_info** %6, align 8
  %13 = load %struct.drm_display_info*, %struct.drm_display_info** %5, align 8
  %14 = getelementptr inbounds %struct.drm_display_info, %struct.drm_display_info* %13, i32 0, i32 0
  store i32 1, i32* %14, align 4
  %15 = load i32*, i32** %4, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 6
  %17 = load i32, i32* %16, align 4
  %18 = and i32 %17, 128
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %34

20:                                               ; preds = %2
  %21 = load %struct.drm_hdmi_info*, %struct.drm_hdmi_info** %6, align 8
  %22 = getelementptr inbounds %struct.drm_hdmi_info, %struct.drm_hdmi_info* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.drm_scdc, %struct.drm_scdc* %22, i32 0, i32 0
  store i32 1, i32* %23, align 4
  %24 = load i32*, i32** %4, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 6
  %26 = load i32, i32* %25, align 4
  %27 = and i32 %26, 64
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %20
  %30 = load %struct.drm_hdmi_info*, %struct.drm_hdmi_info** %6, align 8
  %31 = getelementptr inbounds %struct.drm_hdmi_info, %struct.drm_hdmi_info* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.drm_scdc, %struct.drm_scdc* %31, i32 0, i32 1
  store i32 1, i32* %32, align 4
  br label %33

33:                                               ; preds = %29, %20
  br label %34

34:                                               ; preds = %33, %2
  %35 = load i32*, i32** %4, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 5
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %76

39:                                               ; preds = %34
  %40 = load i32*, i32** %4, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 5
  %42 = load i32, i32* %41, align 4
  %43 = mul nsw i32 %42, 5000
  store i32 %43, i32* %7, align 4
  %44 = load %struct.drm_hdmi_info*, %struct.drm_hdmi_info** %6, align 8
  %45 = getelementptr inbounds %struct.drm_hdmi_info, %struct.drm_hdmi_info* %44, i32 0, i32 0
  store %struct.drm_scdc* %45, %struct.drm_scdc** %8, align 8
  %46 = load i32, i32* %7, align 4
  %47 = icmp sgt i32 %46, 340000
  br i1 %47, label %48, label %56

48:                                               ; preds = %39
  %49 = load i32, i32* %7, align 4
  %50 = load %struct.drm_display_info*, %struct.drm_display_info** %5, align 8
  %51 = getelementptr inbounds %struct.drm_display_info, %struct.drm_display_info* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  %52 = load %struct.drm_display_info*, %struct.drm_display_info** %5, align 8
  %53 = getelementptr inbounds %struct.drm_display_info, %struct.drm_display_info* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %54)
  br label %56

56:                                               ; preds = %48, %39
  %57 = load %struct.drm_scdc*, %struct.drm_scdc** %8, align 8
  %58 = getelementptr inbounds %struct.drm_scdc, %struct.drm_scdc* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %75

61:                                               ; preds = %56
  %62 = load %struct.drm_scdc*, %struct.drm_scdc** %8, align 8
  %63 = getelementptr inbounds %struct.drm_scdc, %struct.drm_scdc* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  store i32 1, i32* %64, align 4
  %65 = load i32*, i32** %4, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 6
  %67 = load i32, i32* %66, align 4
  %68 = and i32 %67, 8
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %61
  %71 = load %struct.drm_scdc*, %struct.drm_scdc** %8, align 8
  %72 = getelementptr inbounds %struct.drm_scdc, %struct.drm_scdc* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 1
  store i32 1, i32* %73, align 4
  br label %74

74:                                               ; preds = %70, %61
  br label %75

75:                                               ; preds = %74, %56
  br label %76

76:                                               ; preds = %75, %34
  %77 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %78 = load i32*, i32** %4, align 8
  %79 = call i32 @drm_parse_ycbcr420_deep_color_info(%struct.drm_connector* %77, i32* %78)
  ret void
}

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32) #1

declare dso_local i32 @drm_parse_ycbcr420_deep_color_info(%struct.drm_connector*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
