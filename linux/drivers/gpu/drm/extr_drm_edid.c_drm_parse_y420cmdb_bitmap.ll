; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_edid.c_drm_parse_y420cmdb_bitmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_edid.c_drm_parse_y420cmdb_bitmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { %struct.drm_display_info }
%struct.drm_display_info = type { i32, %struct.drm_hdmi_info }
%struct.drm_hdmi_info = type { i32 }

@U64_MAX = common dso_local global i32 0, align 4
@DRM_COLOR_FORMAT_YCRCB420 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_connector*, i32*)* @drm_parse_y420cmdb_bitmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @drm_parse_y420cmdb_bitmap(%struct.drm_connector* %0, i32* %1) #0 {
  %3 = alloca %struct.drm_connector*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.drm_display_info*, align 8
  %6 = alloca %struct.drm_hdmi_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.drm_connector* %0, %struct.drm_connector** %3, align 8
  store i32* %1, i32** %4, align 8
  %10 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %11 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %10, i32 0, i32 0
  store %struct.drm_display_info* %11, %struct.drm_display_info** %5, align 8
  %12 = load %struct.drm_display_info*, %struct.drm_display_info** %5, align 8
  %13 = getelementptr inbounds %struct.drm_display_info, %struct.drm_display_info* %12, i32 0, i32 1
  store %struct.drm_hdmi_info* %13, %struct.drm_hdmi_info** %6, align 8
  %14 = load i32*, i32** %4, align 8
  %15 = call i32 @cea_db_payload_len(i32* %14)
  %16 = sub nsw i32 %15, 1
  store i32 %16, i32* %7, align 4
  store i32 0, i32* %9, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %2
  %20 = load i32, i32* @U64_MAX, align 4
  %21 = load %struct.drm_hdmi_info*, %struct.drm_hdmi_info** %6, align 8
  %22 = getelementptr inbounds %struct.drm_hdmi_info, %struct.drm_hdmi_info* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  %23 = load i32, i32* @DRM_COLOR_FORMAT_YCRCB420, align 4
  %24 = load %struct.drm_display_info*, %struct.drm_display_info** %5, align 8
  %25 = getelementptr inbounds %struct.drm_display_info, %struct.drm_display_info* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = or i32 %26, %23
  store i32 %27, i32* %25, align 4
  br label %68

28:                                               ; preds = %2
  %29 = load i32, i32* %7, align 4
  %30 = icmp sgt i32 %29, 8
  %31 = zext i1 %30 to i32
  %32 = call i64 @WARN_ON_ONCE(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  store i32 8, i32* %7, align 4
  br label %35

35:                                               ; preds = %34, %28
  store i32 0, i32* %8, align 4
  br label %36

36:                                               ; preds = %52, %35
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %55

40:                                               ; preds = %36
  %41 = load i32*, i32** %4, align 8
  %42 = load i32, i32* %8, align 4
  %43 = add nsw i32 2, %42
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %41, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %8, align 4
  %48 = mul nsw i32 8, %47
  %49 = shl i32 %46, %48
  %50 = load i32, i32* %9, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %9, align 4
  br label %52

52:                                               ; preds = %40
  %53 = load i32, i32* %8, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %8, align 4
  br label %36

55:                                               ; preds = %36
  %56 = load i32, i32* %9, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %55
  %59 = load i32, i32* @DRM_COLOR_FORMAT_YCRCB420, align 4
  %60 = load %struct.drm_display_info*, %struct.drm_display_info** %5, align 8
  %61 = getelementptr inbounds %struct.drm_display_info, %struct.drm_display_info* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = or i32 %62, %59
  store i32 %63, i32* %61, align 4
  br label %64

64:                                               ; preds = %58, %55
  %65 = load i32, i32* %9, align 4
  %66 = load %struct.drm_hdmi_info*, %struct.drm_hdmi_info** %6, align 8
  %67 = getelementptr inbounds %struct.drm_hdmi_info, %struct.drm_hdmi_info* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 4
  br label %68

68:                                               ; preds = %64, %19
  ret void
}

declare dso_local i32 @cea_db_payload_len(i32*) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
