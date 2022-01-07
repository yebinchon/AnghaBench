; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_dp_helper.c_drm_dp_read_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_dp_helper.c_drm_dp_read_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_dp_aux = type { i32 }
%struct.drm_dp_desc = type { i32, %struct.drm_dp_dpcd_ident }
%struct.drm_dp_dpcd_ident = type { i32, i32, i32, i32, i32 }

@DP_BRANCH_OUI = common dso_local global i32 0, align 4
@DP_SINK_OUI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [70 x i8] c"DP %s: OUI %*phD dev-ID %*pE HW-rev %d.%d SW-rev %d.%d quirks 0x%04x\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"branch\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"sink\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_dp_read_desc(%struct.drm_dp_aux* %0, %struct.drm_dp_desc* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_dp_aux*, align 8
  %6 = alloca %struct.drm_dp_desc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.drm_dp_dpcd_ident*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.drm_dp_aux* %0, %struct.drm_dp_aux** %5, align 8
  store %struct.drm_dp_desc* %1, %struct.drm_dp_desc** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.drm_dp_desc*, %struct.drm_dp_desc** %6, align 8
  %13 = getelementptr inbounds %struct.drm_dp_desc, %struct.drm_dp_desc* %12, i32 0, i32 1
  store %struct.drm_dp_dpcd_ident* %13, %struct.drm_dp_dpcd_ident** %8, align 8
  %14 = load i32, i32* %7, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i32, i32* @DP_BRANCH_OUI, align 4
  br label %20

18:                                               ; preds = %3
  %19 = load i32, i32* @DP_SINK_OUI, align 4
  br label %20

20:                                               ; preds = %18, %16
  %21 = phi i32 [ %17, %16 ], [ %19, %18 ]
  store i32 %21, i32* %9, align 4
  %22 = load %struct.drm_dp_aux*, %struct.drm_dp_aux** %5, align 8
  %23 = load i32, i32* %9, align 4
  %24 = load %struct.drm_dp_dpcd_ident*, %struct.drm_dp_dpcd_ident** %8, align 8
  %25 = call i32 @drm_dp_dpcd_read(%struct.drm_dp_aux* %22, i32 %23, %struct.drm_dp_dpcd_ident* %24, i32 20)
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %10, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %20
  %29 = load i32, i32* %10, align 4
  store i32 %29, i32* %4, align 4
  br label %69

30:                                               ; preds = %20
  %31 = load %struct.drm_dp_dpcd_ident*, %struct.drm_dp_dpcd_ident** %8, align 8
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @drm_dp_get_quirks(%struct.drm_dp_dpcd_ident* %31, i32 %32)
  %34 = load %struct.drm_dp_desc*, %struct.drm_dp_desc** %6, align 8
  %35 = getelementptr inbounds %struct.drm_dp_desc, %struct.drm_dp_desc* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  %36 = load %struct.drm_dp_dpcd_ident*, %struct.drm_dp_dpcd_ident** %8, align 8
  %37 = getelementptr inbounds %struct.drm_dp_dpcd_ident, %struct.drm_dp_dpcd_ident* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @strnlen(i32 %38, i32 4)
  store i32 %39, i32* %11, align 4
  %40 = load i32, i32* %7, align 4
  %41 = icmp ne i32 %40, 0
  %42 = zext i1 %41 to i64
  %43 = select i1 %41, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)
  %44 = load %struct.drm_dp_dpcd_ident*, %struct.drm_dp_dpcd_ident** %8, align 8
  %45 = getelementptr inbounds %struct.drm_dp_dpcd_ident, %struct.drm_dp_dpcd_ident* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %11, align 4
  %48 = load %struct.drm_dp_dpcd_ident*, %struct.drm_dp_dpcd_ident** %8, align 8
  %49 = getelementptr inbounds %struct.drm_dp_dpcd_ident, %struct.drm_dp_dpcd_ident* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.drm_dp_dpcd_ident*, %struct.drm_dp_dpcd_ident** %8, align 8
  %52 = getelementptr inbounds %struct.drm_dp_dpcd_ident, %struct.drm_dp_dpcd_ident* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = ashr i32 %53, 4
  %55 = load %struct.drm_dp_dpcd_ident*, %struct.drm_dp_dpcd_ident** %8, align 8
  %56 = getelementptr inbounds %struct.drm_dp_dpcd_ident, %struct.drm_dp_dpcd_ident* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = and i32 %57, 15
  %59 = load %struct.drm_dp_dpcd_ident*, %struct.drm_dp_dpcd_ident** %8, align 8
  %60 = getelementptr inbounds %struct.drm_dp_dpcd_ident, %struct.drm_dp_dpcd_ident* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.drm_dp_dpcd_ident*, %struct.drm_dp_dpcd_ident** %8, align 8
  %63 = getelementptr inbounds %struct.drm_dp_dpcd_ident, %struct.drm_dp_dpcd_ident* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.drm_dp_desc*, %struct.drm_dp_desc** %6, align 8
  %66 = getelementptr inbounds %struct.drm_dp_desc, %struct.drm_dp_desc* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str, i64 0, i64 0), i8* %43, i32 4, i32 %46, i32 %47, i32 %50, i32 %54, i32 %58, i32 %61, i32 %64, i32 %67)
  store i32 0, i32* %4, align 4
  br label %69

69:                                               ; preds = %30, %28
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

declare dso_local i32 @drm_dp_dpcd_read(%struct.drm_dp_aux*, i32, %struct.drm_dp_dpcd_ident*, i32) #1

declare dso_local i32 @drm_dp_get_quirks(%struct.drm_dp_dpcd_ident*, i32) #1

declare dso_local i32 @strnlen(i32, i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
