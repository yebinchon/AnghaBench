; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_lspcon.c__lspcon_write_avi_infoframe_mca.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_lspcon.c__lspcon_write_avi_infoframe_mca.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_dp_aux = type { i32 }

@LSPCON_MCA_AVI_IF_WRITE_OFFSET = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"DPCD write failed at:0x%x\0A\00", align 1
@LSPCON_MCA_AVI_IF_CTRL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"DPCD read failed, address 0x%x\0A\00", align 1
@LSPCON_MCA_AVI_IF_HANDLED = common dso_local global i32 0, align 4
@LSPCON_MCA_AVI_IF_KICKOFF = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"AVI IF handled by FW\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_dp_aux*, i32*, i32)* @_lspcon_write_avi_infoframe_mca to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_lspcon_write_avi_infoframe_mca(%struct.drm_dp_aux* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_dp_aux*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  store %struct.drm_dp_aux* %0, %struct.drm_dp_aux** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %9, align 4
  %13 = load i32*, i32** %6, align 8
  store i32* %13, i32** %12, align 8
  %14 = load i64, i64* @LSPCON_MCA_AVI_IF_WRITE_OFFSET, align 8
  store i64 %14, i64* %11, align 8
  br label %15

15:                                               ; preds = %44, %3
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %51

19:                                               ; preds = %15
  store i32 0, i32* %10, align 4
  br label %20

20:                                               ; preds = %41, %19
  %21 = load i32, i32* %10, align 4
  %22 = icmp slt i32 %21, 5
  br i1 %22, label %23, label %44

23:                                               ; preds = %20
  %24 = load %struct.drm_dp_aux*, %struct.drm_dp_aux** %5, align 8
  %25 = load i64, i64* %11, align 8
  %26 = load i32*, i32** %12, align 8
  %27 = bitcast i32* %26 to i8*
  %28 = bitcast i8* %27 to i32*
  %29 = call i32 @drm_dp_dpcd_write(%struct.drm_dp_aux* %24, i64 %25, i32* %28, i32 1)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp eq i32 %30, 1
  br i1 %31, label %32, label %33

32:                                               ; preds = %23
  br label %44

33:                                               ; preds = %23
  %34 = load i32, i32* %10, align 4
  %35 = icmp slt i32 %34, 4
  br i1 %35, label %36, label %38

36:                                               ; preds = %33
  %37 = call i32 @mdelay(i32 50)
  br label %41

38:                                               ; preds = %33
  %39 = load i64, i64* %11, align 8
  %40 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i64 %39)
  store i32 0, i32* %4, align 4
  br label %93

41:                                               ; preds = %36
  %42 = load i32, i32* %10, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %10, align 4
  br label %20

44:                                               ; preds = %32, %20
  %45 = load i32, i32* %9, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %9, align 4
  %47 = load i64, i64* %11, align 8
  %48 = add nsw i64 %47, 1
  store i64 %48, i64* %11, align 8
  %49 = load i32*, i32** %12, align 8
  %50 = getelementptr inbounds i32, i32* %49, i32 1
  store i32* %50, i32** %12, align 8
  br label %15

51:                                               ; preds = %15
  store i32 0, i32* %9, align 4
  %52 = load i64, i64* @LSPCON_MCA_AVI_IF_CTRL, align 8
  store i64 %52, i64* %11, align 8
  %53 = load %struct.drm_dp_aux*, %struct.drm_dp_aux** %5, align 8
  %54 = load i64, i64* %11, align 8
  %55 = call i32 @drm_dp_dpcd_read(%struct.drm_dp_aux* %53, i64 %54, i32* %9, i32 1)
  store i32 %55, i32* %8, align 4
  %56 = load i32, i32* %8, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %51
  %59 = load i64, i64* %11, align 8
  %60 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i64 %59)
  store i32 0, i32* %4, align 4
  br label %93

61:                                               ; preds = %51
  %62 = load i32, i32* @LSPCON_MCA_AVI_IF_HANDLED, align 4
  %63 = xor i32 %62, -1
  %64 = load i32, i32* %9, align 4
  %65 = and i32 %64, %63
  store i32 %65, i32* %9, align 4
  %66 = load i32, i32* @LSPCON_MCA_AVI_IF_KICKOFF, align 4
  %67 = load i32, i32* %9, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %9, align 4
  %69 = load %struct.drm_dp_aux*, %struct.drm_dp_aux** %5, align 8
  %70 = load i64, i64* %11, align 8
  %71 = call i32 @drm_dp_dpcd_write(%struct.drm_dp_aux* %69, i64 %70, i32* %9, i32 1)
  store i32 %71, i32* %8, align 4
  %72 = load i32, i32* %8, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %61
  %75 = load i64, i64* %11, align 8
  %76 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i64 %75)
  store i32 0, i32* %4, align 4
  br label %93

77:                                               ; preds = %61
  store i32 0, i32* %9, align 4
  %78 = load %struct.drm_dp_aux*, %struct.drm_dp_aux** %5, align 8
  %79 = load i64, i64* %11, align 8
  %80 = call i32 @drm_dp_dpcd_read(%struct.drm_dp_aux* %78, i64 %79, i32* %9, i32 1)
  store i32 %80, i32* %8, align 4
  %81 = load i32, i32* %8, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %77
  %84 = load i64, i64* %11, align 8
  %85 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i64 %84)
  store i32 0, i32* %4, align 4
  br label %93

86:                                               ; preds = %77
  %87 = load i32, i32* %9, align 4
  %88 = load i32, i32* @LSPCON_MCA_AVI_IF_HANDLED, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %92

90:                                               ; preds = %86
  %91 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  br label %92

92:                                               ; preds = %90, %86
  store i32 1, i32* %4, align 4
  br label %93

93:                                               ; preds = %92, %83, %74, %58, %38
  %94 = load i32, i32* %4, align 4
  ret i32 %94
}

declare dso_local i32 @drm_dp_dpcd_write(%struct.drm_dp_aux*, i64, i32*, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @DRM_ERROR(i8*, i64) #1

declare dso_local i32 @drm_dp_dpcd_read(%struct.drm_dp_aux*, i64, i32*, i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
