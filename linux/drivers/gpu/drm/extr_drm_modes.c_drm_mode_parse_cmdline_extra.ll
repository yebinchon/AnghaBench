; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_modes.c_drm_mode_parse_cmdline_extra.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_modes.c_drm_mode_parse_cmdline_extra.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i32 }
%struct.drm_cmdline_mode = type { i32, i32, i8* }

@EINVAL = common dso_local global i32 0, align 4
@DRM_FORCE_UNSPECIFIED = common dso_local global i8* null, align 8
@DRM_MODE_CONNECTOR_DVII = common dso_local global i32 0, align 4
@DRM_MODE_CONNECTOR_HDMIB = common dso_local global i32 0, align 4
@DRM_FORCE_ON = common dso_local global i8* null, align 8
@DRM_FORCE_ON_DIGITAL = common dso_local global i8* null, align 8
@DRM_FORCE_OFF = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32, %struct.drm_connector*, %struct.drm_cmdline_mode*)* @drm_mode_parse_cmdline_extra to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drm_mode_parse_cmdline_extra(i8* %0, i32 %1, i32 %2, %struct.drm_connector* %3, %struct.drm_cmdline_mode* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.drm_connector*, align 8
  %11 = alloca %struct.drm_cmdline_mode*, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store %struct.drm_connector* %3, %struct.drm_connector** %10, align 8
  store %struct.drm_cmdline_mode* %4, %struct.drm_cmdline_mode** %11, align 8
  store i32 0, i32* %12, align 4
  br label %13

13:                                               ; preds = %102, %5
  %14 = load i32, i32* %12, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %105

17:                                               ; preds = %13
  %18 = load i8*, i8** %7, align 8
  %19 = load i32, i32* %12, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i8, i8* %18, i64 %20
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  switch i32 %23, label %98 [
    i32 105, label %24
    i32 109, label %33
    i32 68, label %42
    i32 100, label %72
    i32 101, label %85
  ]

24:                                               ; preds = %17
  %25 = load i32, i32* %9, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %6, align 4
  br label %106

30:                                               ; preds = %24
  %31 = load %struct.drm_cmdline_mode*, %struct.drm_cmdline_mode** %11, align 8
  %32 = getelementptr inbounds %struct.drm_cmdline_mode, %struct.drm_cmdline_mode* %31, i32 0, i32 0
  store i32 1, i32* %32, align 8
  br label %101

33:                                               ; preds = %17
  %34 = load i32, i32* %9, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %6, align 4
  br label %106

39:                                               ; preds = %33
  %40 = load %struct.drm_cmdline_mode*, %struct.drm_cmdline_mode** %11, align 8
  %41 = getelementptr inbounds %struct.drm_cmdline_mode, %struct.drm_cmdline_mode* %40, i32 0, i32 1
  store i32 1, i32* %41, align 4
  br label %101

42:                                               ; preds = %17
  %43 = load %struct.drm_cmdline_mode*, %struct.drm_cmdline_mode** %11, align 8
  %44 = getelementptr inbounds %struct.drm_cmdline_mode, %struct.drm_cmdline_mode* %43, i32 0, i32 2
  %45 = load i8*, i8** %44, align 8
  %46 = load i8*, i8** @DRM_FORCE_UNSPECIFIED, align 8
  %47 = icmp ne i8* %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %42
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %6, align 4
  br label %106

51:                                               ; preds = %42
  %52 = load %struct.drm_connector*, %struct.drm_connector** %10, align 8
  %53 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @DRM_MODE_CONNECTOR_DVII, align 4
  %56 = icmp ne i32 %54, %55
  br i1 %56, label %57, label %67

57:                                               ; preds = %51
  %58 = load %struct.drm_connector*, %struct.drm_connector** %10, align 8
  %59 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @DRM_MODE_CONNECTOR_HDMIB, align 4
  %62 = icmp ne i32 %60, %61
  br i1 %62, label %63, label %67

63:                                               ; preds = %57
  %64 = load i8*, i8** @DRM_FORCE_ON, align 8
  %65 = load %struct.drm_cmdline_mode*, %struct.drm_cmdline_mode** %11, align 8
  %66 = getelementptr inbounds %struct.drm_cmdline_mode, %struct.drm_cmdline_mode* %65, i32 0, i32 2
  store i8* %64, i8** %66, align 8
  br label %71

67:                                               ; preds = %57, %51
  %68 = load i8*, i8** @DRM_FORCE_ON_DIGITAL, align 8
  %69 = load %struct.drm_cmdline_mode*, %struct.drm_cmdline_mode** %11, align 8
  %70 = getelementptr inbounds %struct.drm_cmdline_mode, %struct.drm_cmdline_mode* %69, i32 0, i32 2
  store i8* %68, i8** %70, align 8
  br label %71

71:                                               ; preds = %67, %63
  br label %101

72:                                               ; preds = %17
  %73 = load %struct.drm_cmdline_mode*, %struct.drm_cmdline_mode** %11, align 8
  %74 = getelementptr inbounds %struct.drm_cmdline_mode, %struct.drm_cmdline_mode* %73, i32 0, i32 2
  %75 = load i8*, i8** %74, align 8
  %76 = load i8*, i8** @DRM_FORCE_UNSPECIFIED, align 8
  %77 = icmp ne i8* %75, %76
  br i1 %77, label %78, label %81

78:                                               ; preds = %72
  %79 = load i32, i32* @EINVAL, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %6, align 4
  br label %106

81:                                               ; preds = %72
  %82 = load i8*, i8** @DRM_FORCE_OFF, align 8
  %83 = load %struct.drm_cmdline_mode*, %struct.drm_cmdline_mode** %11, align 8
  %84 = getelementptr inbounds %struct.drm_cmdline_mode, %struct.drm_cmdline_mode* %83, i32 0, i32 2
  store i8* %82, i8** %84, align 8
  br label %101

85:                                               ; preds = %17
  %86 = load %struct.drm_cmdline_mode*, %struct.drm_cmdline_mode** %11, align 8
  %87 = getelementptr inbounds %struct.drm_cmdline_mode, %struct.drm_cmdline_mode* %86, i32 0, i32 2
  %88 = load i8*, i8** %87, align 8
  %89 = load i8*, i8** @DRM_FORCE_UNSPECIFIED, align 8
  %90 = icmp ne i8* %88, %89
  br i1 %90, label %91, label %94

91:                                               ; preds = %85
  %92 = load i32, i32* @EINVAL, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %6, align 4
  br label %106

94:                                               ; preds = %85
  %95 = load i8*, i8** @DRM_FORCE_ON, align 8
  %96 = load %struct.drm_cmdline_mode*, %struct.drm_cmdline_mode** %11, align 8
  %97 = getelementptr inbounds %struct.drm_cmdline_mode, %struct.drm_cmdline_mode* %96, i32 0, i32 2
  store i8* %95, i8** %97, align 8
  br label %101

98:                                               ; preds = %17
  %99 = load i32, i32* @EINVAL, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %6, align 4
  br label %106

101:                                              ; preds = %94, %81, %71, %39, %30
  br label %102

102:                                              ; preds = %101
  %103 = load i32, i32* %12, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %12, align 4
  br label %13

105:                                              ; preds = %13
  store i32 0, i32* %6, align 4
  br label %106

106:                                              ; preds = %105, %98, %91, %78, %48, %36, %27
  %107 = load i32, i32* %6, align 4
  ret i32 %107
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
