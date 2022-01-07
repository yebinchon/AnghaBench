; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/sti/extr_sti_hdmi.c_hdmi_vendor_infoframe_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/sti/extr_sti_hdmi.c_hdmi_vendor_infoframe_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sti_hdmi = type { i32, %struct.drm_display_mode }
%struct.drm_display_mode = type { i32 }
%struct.hdmi_vendor_infoframe = type { i32 }

@HDMI_INFOFRAME_HEADER_SIZE = common dso_local global i32 0, align 4
@HDMI_VENDOR_INFOFRAME_MAX_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"failed to pack VS infoframe: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sti_hdmi*)* @hdmi_vendor_infoframe_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdmi_vendor_infoframe_config(%struct.sti_hdmi* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sti_hdmi*, align 8
  %4 = alloca %struct.drm_display_mode*, align 8
  %5 = alloca %struct.hdmi_vendor_infoframe, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.sti_hdmi* %0, %struct.sti_hdmi** %3, align 8
  %10 = load %struct.sti_hdmi*, %struct.sti_hdmi** %3, align 8
  %11 = getelementptr inbounds %struct.sti_hdmi, %struct.sti_hdmi* %10, i32 0, i32 1
  store %struct.drm_display_mode* %11, %struct.drm_display_mode** %4, align 8
  %12 = load i32, i32* @HDMI_INFOFRAME_HEADER_SIZE, align 4
  %13 = load i32, i32* @HDMI_VENDOR_INFOFRAME_MAX_SIZE, align 4
  %14 = add nsw i32 %12, %13
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %6, align 8
  %17 = alloca i32, i64 %15, align 16
  store i64 %15, i64* %7, align 8
  %18 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.sti_hdmi*, %struct.sti_hdmi** %3, align 8
  %20 = getelementptr inbounds %struct.sti_hdmi, %struct.sti_hdmi* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %23 = call i32 @drm_hdmi_vendor_infoframe_from_display_mode(%struct.hdmi_vendor_infoframe* %5, i32 %21, %struct.drm_display_mode* %22)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %41

27:                                               ; preds = %1
  %28 = mul nuw i64 4, %15
  %29 = trunc i64 %28 to i32
  %30 = call i32 @hdmi_vendor_infoframe_pack(%struct.hdmi_vendor_infoframe* %5, i32* %17, i32 %29)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %27
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %34)
  %36 = load i32, i32* %8, align 4
  store i32 %36, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %41

37:                                               ; preds = %27
  %38 = load %struct.sti_hdmi*, %struct.sti_hdmi** %3, align 8
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @hdmi_infoframe_write_infopack(%struct.sti_hdmi* %38, i32* %17, i32 %39)
  store i32 0, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %41

41:                                               ; preds = %37, %33, %26
  %42 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %42)
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*) #2

declare dso_local i32 @drm_hdmi_vendor_infoframe_from_display_mode(%struct.hdmi_vendor_infoframe*, i32, %struct.drm_display_mode*) #2

declare dso_local i32 @hdmi_vendor_infoframe_pack(%struct.hdmi_vendor_infoframe*, i32*, i32) #2

declare dso_local i32 @DRM_ERROR(i8*, i32) #2

declare dso_local i32 @hdmi_infoframe_write_infopack(%struct.sti_hdmi*, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
