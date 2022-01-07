; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_hdcp.c_drm_hdcp_parse_hdcp2_srm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_hdcp.c_drm_hdcp_parse_hdcp2_srm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.hdcp_srm_header = type { i32, i64, i32, i32 }

@DRM_HDCP_2_VRL_LENGTH_SIZE = common dso_local global i32 0, align 4
@DRM_HDCP_2_DCP_SIG_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Invalid blob length\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"SRM ID: 0x%x, SRM Ver: 0x%x, SRM Gen No: 0x%x\0A\00", align 1
@DRM_HDCP_SRM_ID_MASK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"Invalid blob length or vrl length\0A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"No vrl found\0A\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"Revoked KSV count is 0\0A\00", align 1
@srm_data = common dso_local global %struct.TYPE_2__* null, align 8
@DRM_HDCP_KSV_LEN = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [15 x i8] c"Out of Memory\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@DRM_HDCP_2_NO_OF_DEV_PLUS_RESERVED_SZ = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [18 x i8] c"Revoked KSVs: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64)* @drm_hdcp_parse_hdcp2_srm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drm_hdcp_parse_hdcp2_srm(i32* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.hdcp_srm_header*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load i64, i64* %5, align 8
  %11 = load i32, i32* @DRM_HDCP_2_VRL_LENGTH_SIZE, align 4
  %12 = sext i32 %11 to i64
  %13 = add i64 24, %12
  %14 = load i32, i32* @DRM_HDCP_2_DCP_SIG_SIZE, align 4
  %15 = sext i32 %14 to i64
  %16 = add i64 %13, %15
  %17 = icmp ult i64 %10, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %2
  %19 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %136

22:                                               ; preds = %2
  %23 = load i32*, i32** %4, align 8
  %24 = bitcast i32* %23 to %struct.hdcp_srm_header*
  store %struct.hdcp_srm_header* %24, %struct.hdcp_srm_header** %6, align 8
  %25 = load %struct.hdcp_srm_header*, %struct.hdcp_srm_header** %6, align 8
  %26 = getelementptr inbounds %struct.hdcp_srm_header, %struct.hdcp_srm_header* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @DRM_HDCP_SRM_ID_MASK, align 4
  %29 = and i32 %27, %28
  %30 = load %struct.hdcp_srm_header*, %struct.hdcp_srm_header** %6, align 8
  %31 = getelementptr inbounds %struct.hdcp_srm_header, %struct.hdcp_srm_header* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @be16_to_cpu(i32 %32)
  %34 = load %struct.hdcp_srm_header*, %struct.hdcp_srm_header** %6, align 8
  %35 = getelementptr inbounds %struct.hdcp_srm_header, %struct.hdcp_srm_header* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %29, i32 %33, i32 %36)
  %38 = load %struct.hdcp_srm_header*, %struct.hdcp_srm_header** %6, align 8
  %39 = getelementptr inbounds %struct.hdcp_srm_header, %struct.hdcp_srm_header* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %22
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %136

45:                                               ; preds = %22
  %46 = load i32*, i32** %4, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 24
  store i32* %47, i32** %4, align 8
  %48 = load i32*, i32** %4, align 8
  %49 = call i32 @get_vrl_length(i32* %48)
  store i32 %49, i32* %7, align 4
  %50 = load i64, i64* %5, align 8
  %51 = load i32, i32* %7, align 4
  %52 = sext i32 %51 to i64
  %53 = add i64 24, %52
  %54 = icmp ult i64 %50, %53
  br i1 %54, label %61, label %55

55:                                               ; preds = %45
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* @DRM_HDCP_2_VRL_LENGTH_SIZE, align 4
  %58 = load i32, i32* @DRM_HDCP_2_DCP_SIG_SIZE, align 4
  %59 = add nsw i32 %57, %58
  %60 = icmp slt i32 %56, %59
  br i1 %60, label %61, label %65

61:                                               ; preds = %55, %45
  %62 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %3, align 4
  br label %136

65:                                               ; preds = %55
  %66 = load i32, i32* @DRM_HDCP_2_VRL_LENGTH_SIZE, align 4
  %67 = load i32, i32* @DRM_HDCP_2_DCP_SIG_SIZE, align 4
  %68 = add nsw i32 %66, %67
  %69 = load i32, i32* %7, align 4
  %70 = sub nsw i32 %69, %68
  store i32 %70, i32* %7, align 4
  %71 = load i32, i32* %7, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %77, label %73

73:                                               ; preds = %65
  %74 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %75 = load i32, i32* @EINVAL, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %3, align 4
  br label %136

77:                                               ; preds = %65
  %78 = load i32, i32* @DRM_HDCP_2_VRL_LENGTH_SIZE, align 4
  %79 = load i32*, i32** %4, align 8
  %80 = sext i32 %78 to i64
  %81 = getelementptr inbounds i32, i32* %79, i64 %80
  store i32* %81, i32** %4, align 8
  %82 = load i32*, i32** %4, align 8
  %83 = load i32, i32* %82, align 4
  %84 = shl i32 %83, 2
  %85 = load i32*, i32** %4, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 1
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @DRM_HDCP_2_KSV_COUNT_2_LSBITS(i32 %87)
  %89 = or i32 %84, %88
  store i32 %89, i32* %8, align 4
  %90 = load i32, i32* %8, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %96, label %92

92:                                               ; preds = %77
  %93 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  %94 = load i64, i64* %5, align 8
  %95 = trunc i64 %94 to i32
  store i32 %95, i32* %3, align 4
  br label %136

96:                                               ; preds = %77
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** @srm_data, align 8
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @kfree(i32 %99)
  %101 = load i32, i32* %8, align 4
  %102 = load i32, i32* @DRM_HDCP_KSV_LEN, align 4
  %103 = load i32, i32* @GFP_KERNEL, align 4
  %104 = call i32 @kcalloc(i32 %101, i32 %102, i32 %103)
  %105 = load %struct.TYPE_2__*, %struct.TYPE_2__** @srm_data, align 8
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 1
  store i32 %104, i32* %106, align 4
  %107 = load %struct.TYPE_2__*, %struct.TYPE_2__** @srm_data, align 8
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %115, label %111

111:                                              ; preds = %96
  %112 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  %113 = load i32, i32* @ENOMEM, align 4
  %114 = sub nsw i32 0, %113
  store i32 %114, i32* %3, align 4
  br label %136

115:                                              ; preds = %96
  %116 = load i32, i32* %8, align 4
  %117 = load i32, i32* @DRM_HDCP_KSV_LEN, align 4
  %118 = mul nsw i32 %116, %117
  store i32 %118, i32* %9, align 4
  %119 = load i32, i32* @DRM_HDCP_2_NO_OF_DEV_PLUS_RESERVED_SZ, align 4
  %120 = load i32*, i32** %4, align 8
  %121 = sext i32 %119 to i64
  %122 = getelementptr inbounds i32, i32* %120, i64 %121
  store i32* %122, i32** %4, align 8
  %123 = load i32, i32* %8, align 4
  %124 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i32 %123)
  %125 = load %struct.TYPE_2__*, %struct.TYPE_2__** @srm_data, align 8
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = load i32*, i32** %4, align 8
  %129 = load i32, i32* %9, align 4
  %130 = call i32 @memcpy(i32 %127, i32* %128, i32 %129)
  %131 = load i32, i32* %8, align 4
  %132 = load %struct.TYPE_2__*, %struct.TYPE_2__** @srm_data, align 8
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 0
  store i32 %131, i32* %133, align 4
  %134 = load i64, i64* %5, align 8
  %135 = trunc i64 %134 to i32
  store i32 %135, i32* %3, align 4
  br label %136

136:                                              ; preds = %115, %111, %92, %73, %61, %42, %18
  %137 = load i32, i32* %3, align 4
  ret i32 %137
}

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @DRM_DEBUG(i8*, ...) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @get_vrl_length(i32*) #1

declare dso_local i32 @DRM_HDCP_2_KSV_COUNT_2_LSBITS(i32) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @kcalloc(i32, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
