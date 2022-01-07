; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/zte/extr_zx_tvenc.c_zx_tvenc_encoder_mode_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/zte/extr_zx_tvenc.c_zx_tvenc_encoder_mode_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { i32 }
%struct.drm_display_mode = type { i32 }
%struct.zx_tvenc = type { i64, i32 }
%struct.zx_tvenc_mode = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.vou_div_config = type { i32, i32 }

@VOU_DIV_INF = common dso_local global i32 0, align 4
@VOU_DIV_4 = common dso_local global i32 0, align 4
@VOU_DIV_TVENC = common dso_local global i32 0, align 4
@VOU_DIV_1 = common dso_local global i32 0, align 4
@VOU_DIV_LAYER = common dso_local global i32 0, align 4
@VOU_DIV_2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"failed to find zmode\0A\00", align 1
@VENC_VIDEO_INFO = common dso_local global i64 0, align 8
@VENC_VIDEO_RES = common dso_local global i64 0, align 8
@VENC_FIELD1_PARAM = common dso_local global i64 0, align 8
@VENC_FIELD2_PARAM = common dso_local global i64 0, align 8
@VENC_LINE_O_1 = common dso_local global i64 0, align 8
@VENC_LINE_E_1 = common dso_local global i64 0, align 8
@VENC_LINE_O_2 = common dso_local global i64 0, align 8
@VENC_LINE_E_2 = common dso_local global i64 0, align 8
@VENC_LINE_TIMING_PARAM = common dso_local global i64 0, align 8
@VENC_WEIGHT_VALUE = common dso_local global i64 0, align 8
@VENC_BLANK_BLACK_LEVEL = common dso_local global i64 0, align 8
@VENC_BURST_LEVEL = common dso_local global i64 0, align 8
@VENC_CONTROL_PARAM = common dso_local global i64 0, align 8
@VENC_SUB_CARRIER_PHASE1 = common dso_local global i64 0, align 8
@VENC_PHASE_LINE_INCR_CVBS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_encoder*, %struct.drm_display_mode*, %struct.drm_display_mode*)* @zx_tvenc_encoder_mode_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zx_tvenc_encoder_mode_set(%struct.drm_encoder* %0, %struct.drm_display_mode* %1, %struct.drm_display_mode* %2) #0 {
  %4 = alloca %struct.drm_encoder*, align 8
  %5 = alloca %struct.drm_display_mode*, align 8
  %6 = alloca %struct.drm_display_mode*, align 8
  %7 = alloca %struct.zx_tvenc*, align 8
  %8 = alloca %struct.zx_tvenc_mode*, align 8
  %9 = alloca [3 x %struct.vou_div_config], align 16
  store %struct.drm_encoder* %0, %struct.drm_encoder** %4, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %5, align 8
  store %struct.drm_display_mode* %2, %struct.drm_display_mode** %6, align 8
  %10 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %11 = call %struct.zx_tvenc* @to_zx_tvenc(%struct.drm_encoder* %10)
  store %struct.zx_tvenc* %11, %struct.zx_tvenc** %7, align 8
  %12 = getelementptr inbounds [3 x %struct.vou_div_config], [3 x %struct.vou_div_config]* %9, i64 0, i64 0
  %13 = getelementptr inbounds %struct.vou_div_config, %struct.vou_div_config* %12, i32 0, i32 0
  %14 = load i32, i32* @VOU_DIV_INF, align 4
  store i32 %14, i32* %13, align 8
  %15 = getelementptr inbounds %struct.vou_div_config, %struct.vou_div_config* %12, i32 0, i32 1
  %16 = load i32, i32* @VOU_DIV_4, align 4
  store i32 %16, i32* %15, align 4
  %17 = getelementptr inbounds %struct.vou_div_config, %struct.vou_div_config* %12, i64 1
  %18 = getelementptr inbounds %struct.vou_div_config, %struct.vou_div_config* %17, i32 0, i32 0
  %19 = load i32, i32* @VOU_DIV_TVENC, align 4
  store i32 %19, i32* %18, align 8
  %20 = getelementptr inbounds %struct.vou_div_config, %struct.vou_div_config* %17, i32 0, i32 1
  %21 = load i32, i32* @VOU_DIV_1, align 4
  store i32 %21, i32* %20, align 4
  %22 = getelementptr inbounds %struct.vou_div_config, %struct.vou_div_config* %17, i64 1
  %23 = getelementptr inbounds %struct.vou_div_config, %struct.vou_div_config* %22, i32 0, i32 0
  %24 = load i32, i32* @VOU_DIV_LAYER, align 4
  store i32 %24, i32* %23, align 8
  %25 = getelementptr inbounds %struct.vou_div_config, %struct.vou_div_config* %22, i32 0, i32 1
  %26 = load i32, i32* @VOU_DIV_2, align 4
  store i32 %26, i32* %25, align 4
  %27 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %28 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = getelementptr inbounds [3 x %struct.vou_div_config], [3 x %struct.vou_div_config]* %9, i64 0, i64 0
  %31 = getelementptr inbounds [3 x %struct.vou_div_config], [3 x %struct.vou_div_config]* %9, i64 0, i64 0
  %32 = call i32 @ARRAY_SIZE(%struct.vou_div_config* %31)
  %33 = call i32 @zx_vou_config_dividers(i32 %29, %struct.vou_div_config* %30, i32 %32)
  %34 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %35 = call %struct.zx_tvenc_mode* @zx_tvenc_find_zmode(%struct.drm_display_mode* %34)
  store %struct.zx_tvenc_mode* %35, %struct.zx_tvenc_mode** %8, align 8
  %36 = load %struct.zx_tvenc_mode*, %struct.zx_tvenc_mode** %8, align 8
  %37 = icmp ne %struct.zx_tvenc_mode* %36, null
  br i1 %37, label %43, label %38

38:                                               ; preds = %3
  %39 = load %struct.zx_tvenc*, %struct.zx_tvenc** %7, align 8
  %40 = getelementptr inbounds %struct.zx_tvenc, %struct.zx_tvenc* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @DRM_DEV_ERROR(i32 %41, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %179

43:                                               ; preds = %3
  %44 = load %struct.zx_tvenc*, %struct.zx_tvenc** %7, align 8
  %45 = getelementptr inbounds %struct.zx_tvenc, %struct.zx_tvenc* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @VENC_VIDEO_INFO, align 8
  %48 = add nsw i64 %46, %47
  %49 = load %struct.zx_tvenc_mode*, %struct.zx_tvenc_mode** %8, align 8
  %50 = getelementptr inbounds %struct.zx_tvenc_mode, %struct.zx_tvenc_mode* %49, i32 0, i32 14
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @zx_writel(i64 %48, i32 %51)
  %53 = load %struct.zx_tvenc*, %struct.zx_tvenc** %7, align 8
  %54 = getelementptr inbounds %struct.zx_tvenc, %struct.zx_tvenc* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @VENC_VIDEO_RES, align 8
  %57 = add nsw i64 %55, %56
  %58 = load %struct.zx_tvenc_mode*, %struct.zx_tvenc_mode** %8, align 8
  %59 = getelementptr inbounds %struct.zx_tvenc_mode, %struct.zx_tvenc_mode* %58, i32 0, i32 13
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @zx_writel(i64 %57, i32 %60)
  %62 = load %struct.zx_tvenc*, %struct.zx_tvenc** %7, align 8
  %63 = getelementptr inbounds %struct.zx_tvenc, %struct.zx_tvenc* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @VENC_FIELD1_PARAM, align 8
  %66 = add nsw i64 %64, %65
  %67 = load %struct.zx_tvenc_mode*, %struct.zx_tvenc_mode** %8, align 8
  %68 = getelementptr inbounds %struct.zx_tvenc_mode, %struct.zx_tvenc_mode* %67, i32 0, i32 12
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @zx_writel(i64 %66, i32 %69)
  %71 = load %struct.zx_tvenc*, %struct.zx_tvenc** %7, align 8
  %72 = getelementptr inbounds %struct.zx_tvenc, %struct.zx_tvenc* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @VENC_FIELD2_PARAM, align 8
  %75 = add nsw i64 %73, %74
  %76 = load %struct.zx_tvenc_mode*, %struct.zx_tvenc_mode** %8, align 8
  %77 = getelementptr inbounds %struct.zx_tvenc_mode, %struct.zx_tvenc_mode* %76, i32 0, i32 11
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @zx_writel(i64 %75, i32 %78)
  %80 = load %struct.zx_tvenc*, %struct.zx_tvenc** %7, align 8
  %81 = getelementptr inbounds %struct.zx_tvenc, %struct.zx_tvenc* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @VENC_LINE_O_1, align 8
  %84 = add nsw i64 %82, %83
  %85 = load %struct.zx_tvenc_mode*, %struct.zx_tvenc_mode** %8, align 8
  %86 = getelementptr inbounds %struct.zx_tvenc_mode, %struct.zx_tvenc_mode* %85, i32 0, i32 10
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @zx_writel(i64 %84, i32 %87)
  %89 = load %struct.zx_tvenc*, %struct.zx_tvenc** %7, align 8
  %90 = getelementptr inbounds %struct.zx_tvenc, %struct.zx_tvenc* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @VENC_LINE_E_1, align 8
  %93 = add nsw i64 %91, %92
  %94 = load %struct.zx_tvenc_mode*, %struct.zx_tvenc_mode** %8, align 8
  %95 = getelementptr inbounds %struct.zx_tvenc_mode, %struct.zx_tvenc_mode* %94, i32 0, i32 9
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @zx_writel(i64 %93, i32 %96)
  %98 = load %struct.zx_tvenc*, %struct.zx_tvenc** %7, align 8
  %99 = getelementptr inbounds %struct.zx_tvenc, %struct.zx_tvenc* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @VENC_LINE_O_2, align 8
  %102 = add nsw i64 %100, %101
  %103 = load %struct.zx_tvenc_mode*, %struct.zx_tvenc_mode** %8, align 8
  %104 = getelementptr inbounds %struct.zx_tvenc_mode, %struct.zx_tvenc_mode* %103, i32 0, i32 8
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @zx_writel(i64 %102, i32 %105)
  %107 = load %struct.zx_tvenc*, %struct.zx_tvenc** %7, align 8
  %108 = getelementptr inbounds %struct.zx_tvenc, %struct.zx_tvenc* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @VENC_LINE_E_2, align 8
  %111 = add nsw i64 %109, %110
  %112 = load %struct.zx_tvenc_mode*, %struct.zx_tvenc_mode** %8, align 8
  %113 = getelementptr inbounds %struct.zx_tvenc_mode, %struct.zx_tvenc_mode* %112, i32 0, i32 7
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @zx_writel(i64 %111, i32 %114)
  %116 = load %struct.zx_tvenc*, %struct.zx_tvenc** %7, align 8
  %117 = getelementptr inbounds %struct.zx_tvenc, %struct.zx_tvenc* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @VENC_LINE_TIMING_PARAM, align 8
  %120 = add nsw i64 %118, %119
  %121 = load %struct.zx_tvenc_mode*, %struct.zx_tvenc_mode** %8, align 8
  %122 = getelementptr inbounds %struct.zx_tvenc_mode, %struct.zx_tvenc_mode* %121, i32 0, i32 6
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @zx_writel(i64 %120, i32 %123)
  %125 = load %struct.zx_tvenc*, %struct.zx_tvenc** %7, align 8
  %126 = getelementptr inbounds %struct.zx_tvenc, %struct.zx_tvenc* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* @VENC_WEIGHT_VALUE, align 8
  %129 = add nsw i64 %127, %128
  %130 = load %struct.zx_tvenc_mode*, %struct.zx_tvenc_mode** %8, align 8
  %131 = getelementptr inbounds %struct.zx_tvenc_mode, %struct.zx_tvenc_mode* %130, i32 0, i32 5
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @zx_writel(i64 %129, i32 %132)
  %134 = load %struct.zx_tvenc*, %struct.zx_tvenc** %7, align 8
  %135 = getelementptr inbounds %struct.zx_tvenc, %struct.zx_tvenc* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* @VENC_BLANK_BLACK_LEVEL, align 8
  %138 = add nsw i64 %136, %137
  %139 = load %struct.zx_tvenc_mode*, %struct.zx_tvenc_mode** %8, align 8
  %140 = getelementptr inbounds %struct.zx_tvenc_mode, %struct.zx_tvenc_mode* %139, i32 0, i32 4
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @zx_writel(i64 %138, i32 %141)
  %143 = load %struct.zx_tvenc*, %struct.zx_tvenc** %7, align 8
  %144 = getelementptr inbounds %struct.zx_tvenc, %struct.zx_tvenc* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = load i64, i64* @VENC_BURST_LEVEL, align 8
  %147 = add nsw i64 %145, %146
  %148 = load %struct.zx_tvenc_mode*, %struct.zx_tvenc_mode** %8, align 8
  %149 = getelementptr inbounds %struct.zx_tvenc_mode, %struct.zx_tvenc_mode* %148, i32 0, i32 3
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @zx_writel(i64 %147, i32 %150)
  %152 = load %struct.zx_tvenc*, %struct.zx_tvenc** %7, align 8
  %153 = getelementptr inbounds %struct.zx_tvenc, %struct.zx_tvenc* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = load i64, i64* @VENC_CONTROL_PARAM, align 8
  %156 = add nsw i64 %154, %155
  %157 = load %struct.zx_tvenc_mode*, %struct.zx_tvenc_mode** %8, align 8
  %158 = getelementptr inbounds %struct.zx_tvenc_mode, %struct.zx_tvenc_mode* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 4
  %160 = call i32 @zx_writel(i64 %156, i32 %159)
  %161 = load %struct.zx_tvenc*, %struct.zx_tvenc** %7, align 8
  %162 = getelementptr inbounds %struct.zx_tvenc, %struct.zx_tvenc* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = load i64, i64* @VENC_SUB_CARRIER_PHASE1, align 8
  %165 = add nsw i64 %163, %164
  %166 = load %struct.zx_tvenc_mode*, %struct.zx_tvenc_mode** %8, align 8
  %167 = getelementptr inbounds %struct.zx_tvenc_mode, %struct.zx_tvenc_mode* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = call i32 @zx_writel(i64 %165, i32 %168)
  %170 = load %struct.zx_tvenc*, %struct.zx_tvenc** %7, align 8
  %171 = getelementptr inbounds %struct.zx_tvenc, %struct.zx_tvenc* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = load i64, i64* @VENC_PHASE_LINE_INCR_CVBS, align 8
  %174 = add nsw i64 %172, %173
  %175 = load %struct.zx_tvenc_mode*, %struct.zx_tvenc_mode** %8, align 8
  %176 = getelementptr inbounds %struct.zx_tvenc_mode, %struct.zx_tvenc_mode* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = call i32 @zx_writel(i64 %174, i32 %177)
  br label %179

179:                                              ; preds = %43, %38
  ret void
}

declare dso_local %struct.zx_tvenc* @to_zx_tvenc(%struct.drm_encoder*) #1

declare dso_local i32 @zx_vou_config_dividers(i32, %struct.vou_div_config*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.vou_div_config*) #1

declare dso_local %struct.zx_tvenc_mode* @zx_tvenc_find_zmode(%struct.drm_display_mode*) #1

declare dso_local i32 @DRM_DEV_ERROR(i32, i8*) #1

declare dso_local i32 @zx_writel(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
