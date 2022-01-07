; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_hdcp.c_drm_hdcp_parse_hdcp1_srm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_hdcp.c_drm_hdcp_parse_hdcp1_srm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.hdcp_srm_header = type { i32, i32, i32, i32 }

@DRM_HDCP_1_4_VRL_LENGTH_SIZE = common dso_local global i32 0, align 4
@DRM_HDCP_1_4_DCP_SIG_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Invalid blob length\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"SRM ID: 0x%x, SRM Ver: 0x%x, SRM Gen No: 0x%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"Invalid blob length or vrl length\0A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"No vrl found\0A\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"Revoked KSV count is 0\0A\00", align 1
@srm_data = common dso_local global %struct.TYPE_2__* null, align 8
@DRM_HDCP_KSV_LEN = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [15 x i8] c"Out of Memory\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64)* @drm_hdcp_parse_hdcp1_srm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drm_hdcp_parse_hdcp1_srm(i32* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.hdcp_srm_header*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load i64, i64* %5, align 8
  %10 = load i32, i32* @DRM_HDCP_1_4_VRL_LENGTH_SIZE, align 4
  %11 = sext i32 %10 to i64
  %12 = add i64 16, %11
  %13 = load i32, i32* @DRM_HDCP_1_4_DCP_SIG_SIZE, align 4
  %14 = sext i32 %13 to i64
  %15 = add i64 %12, %14
  %16 = icmp ult i64 %9, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %127

21:                                               ; preds = %2
  %22 = load i32*, i32** %4, align 8
  %23 = bitcast i32* %22 to %struct.hdcp_srm_header*
  store %struct.hdcp_srm_header* %23, %struct.hdcp_srm_header** %6, align 8
  %24 = load %struct.hdcp_srm_header*, %struct.hdcp_srm_header** %6, align 8
  %25 = getelementptr inbounds %struct.hdcp_srm_header, %struct.hdcp_srm_header* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.hdcp_srm_header*, %struct.hdcp_srm_header** %6, align 8
  %28 = getelementptr inbounds %struct.hdcp_srm_header, %struct.hdcp_srm_header* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @be16_to_cpu(i32 %29)
  %31 = load %struct.hdcp_srm_header*, %struct.hdcp_srm_header** %6, align 8
  %32 = getelementptr inbounds %struct.hdcp_srm_header, %struct.hdcp_srm_header* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %26, i32 %30, i32 %33)
  %35 = load %struct.hdcp_srm_header*, %struct.hdcp_srm_header** %6, align 8
  %36 = getelementptr inbounds %struct.hdcp_srm_header, %struct.hdcp_srm_header* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @WARN_ON(i32 %37)
  %39 = load i32*, i32** %4, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 16
  store i32* %40, i32** %4, align 8
  %41 = load i32*, i32** %4, align 8
  %42 = call i32 @get_vrl_length(i32* %41)
  store i32 %42, i32* %7, align 4
  %43 = load i64, i64* %5, align 8
  %44 = load i32, i32* %7, align 4
  %45 = sext i32 %44 to i64
  %46 = add i64 16, %45
  %47 = icmp ult i64 %43, %46
  br i1 %47, label %54, label %48

48:                                               ; preds = %21
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* @DRM_HDCP_1_4_VRL_LENGTH_SIZE, align 4
  %51 = load i32, i32* @DRM_HDCP_1_4_DCP_SIG_SIZE, align 4
  %52 = add nsw i32 %50, %51
  %53 = icmp slt i32 %49, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %48, %21
  %55 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %3, align 4
  br label %127

58:                                               ; preds = %48
  %59 = load i32, i32* @DRM_HDCP_1_4_VRL_LENGTH_SIZE, align 4
  %60 = load i32, i32* @DRM_HDCP_1_4_DCP_SIG_SIZE, align 4
  %61 = add nsw i32 %59, %60
  %62 = load i32, i32* %7, align 4
  %63 = sub nsw i32 %62, %61
  store i32 %63, i32* %7, align 4
  %64 = load i32, i32* %7, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %70, label %66

66:                                               ; preds = %58
  %67 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %68 = load i32, i32* @EINVAL, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %3, align 4
  br label %127

70:                                               ; preds = %58
  %71 = load i32, i32* @DRM_HDCP_1_4_VRL_LENGTH_SIZE, align 4
  %72 = load i32*, i32** %4, align 8
  %73 = sext i32 %71 to i64
  %74 = getelementptr inbounds i32, i32* %72, i64 %73
  store i32* %74, i32** %4, align 8
  %75 = load i32*, i32** %4, align 8
  %76 = load i32, i32* %7, align 4
  %77 = call i32 @drm_hdcp_get_revoked_ksv_count(i32* %75, i32 %76)
  store i32 %77, i32* %8, align 4
  %78 = load i32, i32* %8, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %84, label %80

80:                                               ; preds = %70
  %81 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  %82 = load i64, i64* %5, align 8
  %83 = trunc i64 %82 to i32
  store i32 %83, i32* %3, align 4
  br label %127

84:                                               ; preds = %70
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** @srm_data, align 8
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @kfree(i32 %87)
  %89 = load i32, i32* %8, align 4
  %90 = load i32, i32* @DRM_HDCP_KSV_LEN, align 4
  %91 = load i32, i32* @GFP_KERNEL, align 4
  %92 = call i32 @kcalloc(i32 %89, i32 %90, i32 %91)
  %93 = load %struct.TYPE_2__*, %struct.TYPE_2__** @srm_data, align 8
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 1
  store i32 %92, i32* %94, align 4
  %95 = load %struct.TYPE_2__*, %struct.TYPE_2__** @srm_data, align 8
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %103, label %99

99:                                               ; preds = %84
  %100 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  %101 = load i32, i32* @ENOMEM, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %3, align 4
  br label %127

103:                                              ; preds = %84
  %104 = load i32*, i32** %4, align 8
  %105 = load %struct.TYPE_2__*, %struct.TYPE_2__** @srm_data, align 8
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* %7, align 4
  %109 = call i32 @drm_hdcp_get_revoked_ksvs(i32* %104, i32 %107, i32 %108)
  %110 = load i32, i32* %8, align 4
  %111 = icmp ne i32 %109, %110
  br i1 %111, label %112, label %121

112:                                              ; preds = %103
  %113 = load %struct.TYPE_2__*, %struct.TYPE_2__** @srm_data, align 8
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 0
  store i32 0, i32* %114, align 4
  %115 = load %struct.TYPE_2__*, %struct.TYPE_2__** @srm_data, align 8
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @kfree(i32 %117)
  %119 = load i32, i32* @EINVAL, align 4
  %120 = sub nsw i32 0, %119
  store i32 %120, i32* %3, align 4
  br label %127

121:                                              ; preds = %103
  %122 = load i32, i32* %8, align 4
  %123 = load %struct.TYPE_2__*, %struct.TYPE_2__** @srm_data, align 8
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 0
  store i32 %122, i32* %124, align 4
  %125 = load i64, i64* %5, align 8
  %126 = trunc i64 %125 to i32
  store i32 %126, i32* %3, align 4
  br label %127

127:                                              ; preds = %121, %112, %99, %80, %66, %54, %17
  %128 = load i32, i32* %3, align 4
  ret i32 %128
}

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @DRM_DEBUG(i8*, ...) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @get_vrl_length(i32*) #1

declare dso_local i32 @drm_hdcp_get_revoked_ksv_count(i32*, i32) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @kcalloc(i32, i32, i32) #1

declare dso_local i32 @drm_hdcp_get_revoked_ksvs(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
