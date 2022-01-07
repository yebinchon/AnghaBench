; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dsi_vbt.c_intel_dsi_log_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dsi_vbt.c_intel_dsi_log_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_dsi = type { i8*, i8*, i8*, i8*, i64, i8*, i8*, i32, i64, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i64, i32 }

@.str = private unnamed_addr constant [9 x i8] c"Pclk %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"Pixel overlap %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"Lane count %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"DPHY param reg 0x%x\0A\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"Video mode format %s\0A\00", align 1
@VIDEO_MODE_NON_BURST_WITH_SYNC_PULSE = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [26 x i8] c"non-burst with sync pulse\00", align 1
@VIDEO_MODE_NON_BURST_WITH_SYNC_EVENTS = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [27 x i8] c"non-burst with sync events\00", align 1
@VIDEO_MODE_BURST = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [6 x i8] c"burst\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"<unknown>\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"Burst mode ratio %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"Reset timer %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"Eot %s\0A\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"Clockstop %s\0A\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"Mode %s\0A\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"command\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"video\00", align 1
@DSI_DUAL_LINK_FRONT_BACK = common dso_local global i64 0, align 8
@.str.16 = private unnamed_addr constant [37 x i8] c"Dual link: DSI_DUAL_LINK_FRONT_BACK\0A\00", align 1
@DSI_DUAL_LINK_PIXEL_ALT = common dso_local global i64 0, align 8
@.str.17 = private unnamed_addr constant [36 x i8] c"Dual link: DSI_DUAL_LINK_PIXEL_ALT\0A\00", align 1
@.str.18 = private unnamed_addr constant [17 x i8] c"Dual link: NONE\0A\00", align 1
@.str.19 = private unnamed_addr constant [17 x i8] c"Pixel Format %d\0A\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"TLPX %d\0A\00", align 1
@.str.21 = private unnamed_addr constant [20 x i8] c"LP RX Timeout 0x%x\0A\00", align 1
@.str.22 = private unnamed_addr constant [25 x i8] c"Turnaround Timeout 0x%x\0A\00", align 1
@.str.23 = private unnamed_addr constant [17 x i8] c"Init Count 0x%x\0A\00", align 1
@.str.24 = private unnamed_addr constant [21 x i8] c"HS to LP Count 0x%x\0A\00", align 1
@.str.25 = private unnamed_addr constant [18 x i8] c"LP Byte Clock %d\0A\00", align 1
@.str.26 = private unnamed_addr constant [19 x i8] c"DBI BW Timer 0x%x\0A\00", align 1
@.str.27 = private unnamed_addr constant [27 x i8] c"LP to HS Clock Count 0x%x\0A\00", align 1
@.str.28 = private unnamed_addr constant [27 x i8] c"HS to LP Clock Count 0x%x\0A\00", align 1
@.str.29 = private unnamed_addr constant [8 x i8] c"BTA %s\0A\00", align 1
@DISABLE_VIDEO_BTA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intel_dsi_log_params(%struct.intel_dsi* %0) #0 {
  %2 = alloca %struct.intel_dsi*, align 8
  store %struct.intel_dsi* %0, %struct.intel_dsi** %2, align 8
  %3 = load %struct.intel_dsi*, %struct.intel_dsi** %2, align 8
  %4 = getelementptr inbounds %struct.intel_dsi, %struct.intel_dsi* %3, i32 0, i32 0
  %5 = load i8*, i8** %4, align 8
  %6 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %5)
  %7 = load %struct.intel_dsi*, %struct.intel_dsi** %2, align 8
  %8 = getelementptr inbounds %struct.intel_dsi, %struct.intel_dsi* %7, i32 0, i32 1
  %9 = load i8*, i8** %8, align 8
  %10 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* %9)
  %11 = load %struct.intel_dsi*, %struct.intel_dsi** %2, align 8
  %12 = getelementptr inbounds %struct.intel_dsi, %struct.intel_dsi* %11, i32 0, i32 2
  %13 = load i8*, i8** %12, align 8
  %14 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* %13)
  %15 = load %struct.intel_dsi*, %struct.intel_dsi** %2, align 8
  %16 = getelementptr inbounds %struct.intel_dsi, %struct.intel_dsi* %15, i32 0, i32 3
  %17 = load i8*, i8** %16, align 8
  %18 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i8* %17)
  %19 = load %struct.intel_dsi*, %struct.intel_dsi** %2, align 8
  %20 = getelementptr inbounds %struct.intel_dsi, %struct.intel_dsi* %19, i32 0, i32 4
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @VIDEO_MODE_NON_BURST_WITH_SYNC_PULSE, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %1
  br label %42

25:                                               ; preds = %1
  %26 = load %struct.intel_dsi*, %struct.intel_dsi** %2, align 8
  %27 = getelementptr inbounds %struct.intel_dsi, %struct.intel_dsi* %26, i32 0, i32 4
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @VIDEO_MODE_NON_BURST_WITH_SYNC_EVENTS, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  br label %40

32:                                               ; preds = %25
  %33 = load %struct.intel_dsi*, %struct.intel_dsi** %2, align 8
  %34 = getelementptr inbounds %struct.intel_dsi, %struct.intel_dsi* %33, i32 0, i32 4
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @VIDEO_MODE_BURST, align 8
  %37 = icmp eq i64 %35, %36
  %38 = zext i1 %37 to i64
  %39 = select i1 %37, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0)
  br label %40

40:                                               ; preds = %32, %31
  %41 = phi i8* [ getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), %31 ], [ %39, %32 ]
  br label %42

42:                                               ; preds = %40, %24
  %43 = phi i8* [ getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), %24 ], [ %41, %40 ]
  %44 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i8* %43)
  %45 = load %struct.intel_dsi*, %struct.intel_dsi** %2, align 8
  %46 = getelementptr inbounds %struct.intel_dsi, %struct.intel_dsi* %45, i32 0, i32 5
  %47 = load i8*, i8** %46, align 8
  %48 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0), i8* %47)
  %49 = load %struct.intel_dsi*, %struct.intel_dsi** %2, align 8
  %50 = getelementptr inbounds %struct.intel_dsi, %struct.intel_dsi* %49, i32 0, i32 6
  %51 = load i8*, i8** %50, align 8
  %52 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0), i8* %51)
  %53 = load %struct.intel_dsi*, %struct.intel_dsi** %2, align 8
  %54 = getelementptr inbounds %struct.intel_dsi, %struct.intel_dsi* %53, i32 0, i32 7
  %55 = load i32, i32* %54, align 8
  %56 = call i8* @enableddisabled(i32 %55)
  %57 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0), i8* %56)
  %58 = load %struct.intel_dsi*, %struct.intel_dsi** %2, align 8
  %59 = getelementptr inbounds %struct.intel_dsi, %struct.intel_dsi* %58, i32 0, i32 21
  %60 = load i32, i32* %59, align 8
  %61 = icmp ne i32 %60, 0
  %62 = xor i1 %61, true
  %63 = zext i1 %62 to i32
  %64 = call i8* @enableddisabled(i32 %63)
  %65 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0), i8* %64)
  %66 = load %struct.intel_dsi*, %struct.intel_dsi** %2, align 8
  %67 = getelementptr inbounds %struct.intel_dsi, %struct.intel_dsi* %66, i32 0, i32 20
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  %70 = zext i1 %69 to i64
  %71 = select i1 %69, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0)
  %72 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i64 0, i64 0), i8* %71)
  %73 = load %struct.intel_dsi*, %struct.intel_dsi** %2, align 8
  %74 = getelementptr inbounds %struct.intel_dsi, %struct.intel_dsi* %73, i32 0, i32 8
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @DSI_DUAL_LINK_FRONT_BACK, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %80

78:                                               ; preds = %42
  %79 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.16, i64 0, i64 0))
  br label %91

80:                                               ; preds = %42
  %81 = load %struct.intel_dsi*, %struct.intel_dsi** %2, align 8
  %82 = getelementptr inbounds %struct.intel_dsi, %struct.intel_dsi* %81, i32 0, i32 8
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @DSI_DUAL_LINK_PIXEL_ALT, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %88

86:                                               ; preds = %80
  %87 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.17, i64 0, i64 0))
  br label %90

88:                                               ; preds = %80
  %89 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.18, i64 0, i64 0))
  br label %90

90:                                               ; preds = %88, %86
  br label %91

91:                                               ; preds = %90, %78
  %92 = load %struct.intel_dsi*, %struct.intel_dsi** %2, align 8
  %93 = getelementptr inbounds %struct.intel_dsi, %struct.intel_dsi* %92, i32 0, i32 9
  %94 = load i8*, i8** %93, align 8
  %95 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.19, i64 0, i64 0), i8* %94)
  %96 = load %struct.intel_dsi*, %struct.intel_dsi** %2, align 8
  %97 = getelementptr inbounds %struct.intel_dsi, %struct.intel_dsi* %96, i32 0, i32 10
  %98 = load i8*, i8** %97, align 8
  %99 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i64 0, i64 0), i8* %98)
  %100 = load %struct.intel_dsi*, %struct.intel_dsi** %2, align 8
  %101 = getelementptr inbounds %struct.intel_dsi, %struct.intel_dsi* %100, i32 0, i32 11
  %102 = load i8*, i8** %101, align 8
  %103 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.21, i64 0, i64 0), i8* %102)
  %104 = load %struct.intel_dsi*, %struct.intel_dsi** %2, align 8
  %105 = getelementptr inbounds %struct.intel_dsi, %struct.intel_dsi* %104, i32 0, i32 12
  %106 = load i8*, i8** %105, align 8
  %107 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.22, i64 0, i64 0), i8* %106)
  %108 = load %struct.intel_dsi*, %struct.intel_dsi** %2, align 8
  %109 = getelementptr inbounds %struct.intel_dsi, %struct.intel_dsi* %108, i32 0, i32 13
  %110 = load i8*, i8** %109, align 8
  %111 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.23, i64 0, i64 0), i8* %110)
  %112 = load %struct.intel_dsi*, %struct.intel_dsi** %2, align 8
  %113 = getelementptr inbounds %struct.intel_dsi, %struct.intel_dsi* %112, i32 0, i32 14
  %114 = load i8*, i8** %113, align 8
  %115 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.24, i64 0, i64 0), i8* %114)
  %116 = load %struct.intel_dsi*, %struct.intel_dsi** %2, align 8
  %117 = getelementptr inbounds %struct.intel_dsi, %struct.intel_dsi* %116, i32 0, i32 15
  %118 = load i8*, i8** %117, align 8
  %119 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.25, i64 0, i64 0), i8* %118)
  %120 = load %struct.intel_dsi*, %struct.intel_dsi** %2, align 8
  %121 = getelementptr inbounds %struct.intel_dsi, %struct.intel_dsi* %120, i32 0, i32 16
  %122 = load i8*, i8** %121, align 8
  %123 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.26, i64 0, i64 0), i8* %122)
  %124 = load %struct.intel_dsi*, %struct.intel_dsi** %2, align 8
  %125 = getelementptr inbounds %struct.intel_dsi, %struct.intel_dsi* %124, i32 0, i32 17
  %126 = load i8*, i8** %125, align 8
  %127 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.27, i64 0, i64 0), i8* %126)
  %128 = load %struct.intel_dsi*, %struct.intel_dsi** %2, align 8
  %129 = getelementptr inbounds %struct.intel_dsi, %struct.intel_dsi* %128, i32 0, i32 18
  %130 = load i8*, i8** %129, align 8
  %131 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.28, i64 0, i64 0), i8* %130)
  %132 = load %struct.intel_dsi*, %struct.intel_dsi** %2, align 8
  %133 = getelementptr inbounds %struct.intel_dsi, %struct.intel_dsi* %132, i32 0, i32 19
  %134 = load i32, i32* %133, align 8
  %135 = load i32, i32* @DISABLE_VIDEO_BTA, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  %138 = xor i1 %137, true
  %139 = zext i1 %138 to i32
  %140 = call i8* @enableddisabled(i32 %139)
  %141 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.29, i64 0, i64 0), i8* %140)
  ret void
}

declare dso_local i32 @DRM_DEBUG_KMS(i8*, ...) #1

declare dso_local i8* @enableddisabled(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
