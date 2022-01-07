; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_mdfld_tmd_vid.c_tmd_vid_get_config_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_mdfld_tmd_vid.c_tmd_vid_get_config_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_display_mode = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.drm_device = type { i32, %struct.drm_psb_private* }
%struct.drm_psb_private = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.oaktrail_timing_info }
%struct.oaktrail_timing_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"hdisplay is %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"vdisplay is %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"HSS is %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"HSE is %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"htotal is %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"VSS is %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"VSE is %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"vtotal is %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"clock is %d\0A\00", align 1
@DRM_MODE_TYPE_PREFERRED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.drm_display_mode* (%struct.drm_device*)* @tmd_vid_get_config_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.drm_display_mode* @tmd_vid_get_config_mode(%struct.drm_device* %0) #0 {
  %2 = alloca %struct.drm_display_mode*, align 8
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.drm_display_mode*, align 8
  %5 = alloca %struct.drm_psb_private*, align 8
  %6 = alloca %struct.oaktrail_timing_info*, align 8
  %7 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  %8 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %9 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %8, i32 0, i32 1
  %10 = load %struct.drm_psb_private*, %struct.drm_psb_private** %9, align 8
  store %struct.drm_psb_private* %10, %struct.drm_psb_private** %5, align 8
  %11 = load %struct.drm_psb_private*, %struct.drm_psb_private** %5, align 8
  %12 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  store %struct.oaktrail_timing_info* %13, %struct.oaktrail_timing_info** %6, align 8
  store i32 0, i32* %7, align 4
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.drm_display_mode* @kzalloc(i32 40, i32 %14)
  store %struct.drm_display_mode* %15, %struct.drm_display_mode** %4, align 8
  %16 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %17 = icmp ne %struct.drm_display_mode* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %1
  store %struct.drm_display_mode* null, %struct.drm_display_mode** %2, align 8
  br label %226

19:                                               ; preds = %1
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %196

22:                                               ; preds = %19
  %23 = load %struct.oaktrail_timing_info*, %struct.oaktrail_timing_info** %6, align 8
  %24 = getelementptr inbounds %struct.oaktrail_timing_info, %struct.oaktrail_timing_info* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = shl i32 %25, 8
  %27 = load %struct.oaktrail_timing_info*, %struct.oaktrail_timing_info** %6, align 8
  %28 = getelementptr inbounds %struct.oaktrail_timing_info, %struct.oaktrail_timing_info* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = or i32 %26, %29
  %31 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %32 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  %33 = load %struct.oaktrail_timing_info*, %struct.oaktrail_timing_info** %6, align 8
  %34 = getelementptr inbounds %struct.oaktrail_timing_info, %struct.oaktrail_timing_info* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = shl i32 %35, 8
  %37 = load %struct.oaktrail_timing_info*, %struct.oaktrail_timing_info** %6, align 8
  %38 = getelementptr inbounds %struct.oaktrail_timing_info, %struct.oaktrail_timing_info* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = or i32 %36, %39
  %41 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %42 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  %43 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %44 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.oaktrail_timing_info*, %struct.oaktrail_timing_info** %6, align 8
  %47 = getelementptr inbounds %struct.oaktrail_timing_info, %struct.oaktrail_timing_info* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 4
  %49 = shl i32 %48, 8
  %50 = load %struct.oaktrail_timing_info*, %struct.oaktrail_timing_info** %6, align 8
  %51 = getelementptr inbounds %struct.oaktrail_timing_info, %struct.oaktrail_timing_info* %50, i32 0, i32 5
  %52 = load i32, i32* %51, align 4
  %53 = or i32 %49, %52
  %54 = add nsw i32 %45, %53
  %55 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %56 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %55, i32 0, i32 2
  store i32 %54, i32* %56, align 4
  %57 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %58 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.oaktrail_timing_info*, %struct.oaktrail_timing_info** %6, align 8
  %61 = getelementptr inbounds %struct.oaktrail_timing_info, %struct.oaktrail_timing_info* %60, i32 0, i32 6
  %62 = load i32, i32* %61, align 4
  %63 = shl i32 %62, 8
  %64 = load %struct.oaktrail_timing_info*, %struct.oaktrail_timing_info** %6, align 8
  %65 = getelementptr inbounds %struct.oaktrail_timing_info, %struct.oaktrail_timing_info* %64, i32 0, i32 7
  %66 = load i32, i32* %65, align 4
  %67 = or i32 %63, %66
  %68 = add nsw i32 %59, %67
  %69 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %70 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %69, i32 0, i32 3
  store i32 %68, i32* %70, align 4
  %71 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %72 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.oaktrail_timing_info*, %struct.oaktrail_timing_info** %6, align 8
  %75 = getelementptr inbounds %struct.oaktrail_timing_info, %struct.oaktrail_timing_info* %74, i32 0, i32 8
  %76 = load i32, i32* %75, align 4
  %77 = shl i32 %76, 8
  %78 = load %struct.oaktrail_timing_info*, %struct.oaktrail_timing_info** %6, align 8
  %79 = getelementptr inbounds %struct.oaktrail_timing_info, %struct.oaktrail_timing_info* %78, i32 0, i32 9
  %80 = load i32, i32* %79, align 4
  %81 = or i32 %77, %80
  %82 = add nsw i32 %73, %81
  %83 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %84 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %83, i32 0, i32 4
  store i32 %82, i32* %84, align 4
  %85 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %86 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.oaktrail_timing_info*, %struct.oaktrail_timing_info** %6, align 8
  %89 = getelementptr inbounds %struct.oaktrail_timing_info, %struct.oaktrail_timing_info* %88, i32 0, i32 10
  %90 = load i32, i32* %89, align 4
  %91 = shl i32 %90, 8
  %92 = load %struct.oaktrail_timing_info*, %struct.oaktrail_timing_info** %6, align 8
  %93 = getelementptr inbounds %struct.oaktrail_timing_info, %struct.oaktrail_timing_info* %92, i32 0, i32 11
  %94 = load i32, i32* %93, align 4
  %95 = or i32 %91, %94
  %96 = add nsw i32 %87, %95
  %97 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %98 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %97, i32 0, i32 5
  store i32 %96, i32* %98, align 4
  %99 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %100 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %99, i32 0, i32 5
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.oaktrail_timing_info*, %struct.oaktrail_timing_info** %6, align 8
  %103 = getelementptr inbounds %struct.oaktrail_timing_info, %struct.oaktrail_timing_info* %102, i32 0, i32 12
  %104 = load i32, i32* %103, align 4
  %105 = shl i32 %104, 8
  %106 = load %struct.oaktrail_timing_info*, %struct.oaktrail_timing_info** %6, align 8
  %107 = getelementptr inbounds %struct.oaktrail_timing_info, %struct.oaktrail_timing_info* %106, i32 0, i32 13
  %108 = load i32, i32* %107, align 4
  %109 = or i32 %105, %108
  %110 = add nsw i32 %101, %109
  %111 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %112 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %111, i32 0, i32 6
  store i32 %110, i32* %112, align 4
  %113 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %114 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.oaktrail_timing_info*, %struct.oaktrail_timing_info** %6, align 8
  %117 = getelementptr inbounds %struct.oaktrail_timing_info, %struct.oaktrail_timing_info* %116, i32 0, i32 14
  %118 = load i32, i32* %117, align 4
  %119 = shl i32 %118, 8
  %120 = load %struct.oaktrail_timing_info*, %struct.oaktrail_timing_info** %6, align 8
  %121 = getelementptr inbounds %struct.oaktrail_timing_info, %struct.oaktrail_timing_info* %120, i32 0, i32 15
  %122 = load i32, i32* %121, align 4
  %123 = or i32 %119, %122
  %124 = add nsw i32 %115, %123
  %125 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %126 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %125, i32 0, i32 7
  store i32 %124, i32* %126, align 4
  %127 = load %struct.oaktrail_timing_info*, %struct.oaktrail_timing_info** %6, align 8
  %128 = getelementptr inbounds %struct.oaktrail_timing_info, %struct.oaktrail_timing_info* %127, i32 0, i32 16
  %129 = load i32, i32* %128, align 4
  %130 = mul nsw i32 %129, 10
  %131 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %132 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %131, i32 0, i32 8
  store i32 %130, i32* %132, align 4
  %133 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %134 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %137 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @dev_dbg(i32 %135, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %138)
  %140 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %141 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %144 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @dev_dbg(i32 %142, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %145)
  %147 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %148 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %151 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @dev_dbg(i32 %149, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %152)
  %154 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %155 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %158 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %157, i32 0, i32 3
  %159 = load i32, i32* %158, align 4
  %160 = call i32 @dev_dbg(i32 %156, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 %159)
  %161 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %162 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %165 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %164, i32 0, i32 4
  %166 = load i32, i32* %165, align 4
  %167 = call i32 @dev_dbg(i32 %163, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32 %166)
  %168 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %169 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %172 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %171, i32 0, i32 5
  %173 = load i32, i32* %172, align 4
  %174 = call i32 @dev_dbg(i32 %170, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32 %173)
  %175 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %176 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %179 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %178, i32 0, i32 6
  %180 = load i32, i32* %179, align 4
  %181 = call i32 @dev_dbg(i32 %177, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i32 %180)
  %182 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %183 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %186 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %185, i32 0, i32 7
  %187 = load i32, i32* %186, align 4
  %188 = call i32 @dev_dbg(i32 %184, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 %187)
  %189 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %190 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %193 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %192, i32 0, i32 8
  %194 = load i32, i32* %193, align 4
  %195 = call i32 @dev_dbg(i32 %191, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0), i32 %194)
  br label %215

196:                                              ; preds = %19
  %197 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %198 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %197, i32 0, i32 0
  store i32 480, i32* %198, align 4
  %199 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %200 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %199, i32 0, i32 1
  store i32 854, i32* %200, align 4
  %201 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %202 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %201, i32 0, i32 2
  store i32 487, i32* %202, align 4
  %203 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %204 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %203, i32 0, i32 3
  store i32 490, i32* %204, align 4
  %205 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %206 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %205, i32 0, i32 4
  store i32 499, i32* %206, align 4
  %207 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %208 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %207, i32 0, i32 5
  store i32 861, i32* %208, align 4
  %209 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %210 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %209, i32 0, i32 6
  store i32 865, i32* %210, align 4
  %211 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %212 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %211, i32 0, i32 7
  store i32 873, i32* %212, align 4
  %213 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %214 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %213, i32 0, i32 8
  store i32 33264, i32* %214, align 4
  br label %215

215:                                              ; preds = %196, %22
  %216 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %217 = call i32 @drm_mode_set_name(%struct.drm_display_mode* %216)
  %218 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %219 = call i32 @drm_mode_set_crtcinfo(%struct.drm_display_mode* %218, i32 0)
  %220 = load i32, i32* @DRM_MODE_TYPE_PREFERRED, align 4
  %221 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %222 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %221, i32 0, i32 9
  %223 = load i32, i32* %222, align 4
  %224 = or i32 %223, %220
  store i32 %224, i32* %222, align 4
  %225 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  store %struct.drm_display_mode* %225, %struct.drm_display_mode** %2, align 8
  br label %226

226:                                              ; preds = %215, %18
  %227 = load %struct.drm_display_mode*, %struct.drm_display_mode** %2, align 8
  ret %struct.drm_display_mode* %227
}

declare dso_local %struct.drm_display_mode* @kzalloc(i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @drm_mode_set_name(%struct.drm_display_mode*) #1

declare dso_local i32 @drm_mode_set_crtcinfo(%struct.drm_display_mode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
