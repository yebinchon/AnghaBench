; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-olimex-lcd-olinuxino.c_lcd_olinuxino_get_modes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-olimex-lcd-olinuxino.c_lcd_olinuxino_get_modes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_panel = type { i32 }
%struct.lcd_olinuxino = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32, i32*, %struct.lcd_olinuxino_info }
%struct.lcd_olinuxino_info = type { i32, i64, i32, i32, i32 }
%struct.TYPE_4__ = type { %struct.drm_device*, %struct.drm_connector* }
%struct.drm_device = type { i32 }
%struct.drm_connector = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }
%struct.lcd_olinuxino_mode = type { i32, i64, i64, i64, i64, i64, i64, i64, i64, i32 }
%struct.drm_display_mode = type { i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i32 }

@.str = private unnamed_addr constant [29 x i8] c"failed to add mode %ux%u@%u\0A\00", align 1
@DRM_MODE_TYPE_PREFERRED = common dso_local global i32 0, align 4
@DRM_MODE_TYPE_DRIVER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_panel*)* @lcd_olinuxino_get_modes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lcd_olinuxino_get_modes(%struct.drm_panel* %0) #0 {
  %2 = alloca %struct.drm_panel*, align 8
  %3 = alloca %struct.lcd_olinuxino*, align 8
  %4 = alloca %struct.drm_connector*, align 8
  %5 = alloca %struct.lcd_olinuxino_info*, align 8
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca %struct.lcd_olinuxino_mode*, align 8
  %8 = alloca %struct.drm_display_mode*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.drm_panel* %0, %struct.drm_panel** %2, align 8
  %11 = load %struct.drm_panel*, %struct.drm_panel** %2, align 8
  %12 = call %struct.lcd_olinuxino* @to_lcd_olinuxino(%struct.drm_panel* %11)
  store %struct.lcd_olinuxino* %12, %struct.lcd_olinuxino** %3, align 8
  %13 = load %struct.lcd_olinuxino*, %struct.lcd_olinuxino** %3, align 8
  %14 = getelementptr inbounds %struct.lcd_olinuxino, %struct.lcd_olinuxino* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %16 = load %struct.drm_connector*, %struct.drm_connector** %15, align 8
  store %struct.drm_connector* %16, %struct.drm_connector** %4, align 8
  %17 = load %struct.lcd_olinuxino*, %struct.lcd_olinuxino** %3, align 8
  %18 = getelementptr inbounds %struct.lcd_olinuxino, %struct.lcd_olinuxino* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 2
  store %struct.lcd_olinuxino_info* %19, %struct.lcd_olinuxino_info** %5, align 8
  %20 = load %struct.lcd_olinuxino*, %struct.lcd_olinuxino** %3, align 8
  %21 = getelementptr inbounds %struct.lcd_olinuxino, %struct.lcd_olinuxino* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load %struct.drm_device*, %struct.drm_device** %22, align 8
  store %struct.drm_device* %23, %struct.drm_device** %6, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %24

24:                                               ; preds = %179, %1
  %25 = load i32, i32* %9, align 4
  %26 = load %struct.lcd_olinuxino*, %struct.lcd_olinuxino** %3, align 8
  %27 = getelementptr inbounds %struct.lcd_olinuxino, %struct.lcd_olinuxino* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp slt i32 %25, %29
  br i1 %30, label %31, label %182

31:                                               ; preds = %24
  %32 = load %struct.lcd_olinuxino*, %struct.lcd_olinuxino** %3, align 8
  %33 = getelementptr inbounds %struct.lcd_olinuxino, %struct.lcd_olinuxino* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %9, align 4
  %37 = sext i32 %36 to i64
  %38 = mul i64 %37, 80
  %39 = getelementptr inbounds i32, i32* %35, i64 %38
  %40 = bitcast i32* %39 to %struct.lcd_olinuxino_mode*
  store %struct.lcd_olinuxino_mode* %40, %struct.lcd_olinuxino_mode** %7, align 8
  %41 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %42 = call %struct.drm_display_mode* @drm_mode_create(%struct.drm_device* %41)
  store %struct.drm_display_mode* %42, %struct.drm_display_mode** %8, align 8
  %43 = load %struct.drm_display_mode*, %struct.drm_display_mode** %8, align 8
  %44 = icmp ne %struct.drm_display_mode* %43, null
  br i1 %44, label %59, label %45

45:                                               ; preds = %31
  %46 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %47 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.lcd_olinuxino_mode*, %struct.lcd_olinuxino_mode** %7, align 8
  %50 = getelementptr inbounds %struct.lcd_olinuxino_mode, %struct.lcd_olinuxino_mode* %49, i32 0, i32 8
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.lcd_olinuxino_mode*, %struct.lcd_olinuxino_mode** %7, align 8
  %53 = getelementptr inbounds %struct.lcd_olinuxino_mode, %struct.lcd_olinuxino_mode* %52, i32 0, i32 4
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.lcd_olinuxino_mode*, %struct.lcd_olinuxino_mode** %7, align 8
  %56 = getelementptr inbounds %struct.lcd_olinuxino_mode, %struct.lcd_olinuxino_mode* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @dev_err(i32 %48, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64 %51, i64 %54, i32 %57)
  br label %179

59:                                               ; preds = %31
  %60 = load %struct.lcd_olinuxino_mode*, %struct.lcd_olinuxino_mode** %7, align 8
  %61 = getelementptr inbounds %struct.lcd_olinuxino_mode, %struct.lcd_olinuxino_mode* %60, i32 0, i32 9
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.drm_display_mode*, %struct.drm_display_mode** %8, align 8
  %64 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %63, i32 0, i32 10
  store i32 %62, i32* %64, align 8
  %65 = load %struct.lcd_olinuxino_mode*, %struct.lcd_olinuxino_mode** %7, align 8
  %66 = getelementptr inbounds %struct.lcd_olinuxino_mode, %struct.lcd_olinuxino_mode* %65, i32 0, i32 8
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.drm_display_mode*, %struct.drm_display_mode** %8, align 8
  %69 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %68, i32 0, i32 9
  store i64 %67, i64* %69, align 8
  %70 = load %struct.lcd_olinuxino_mode*, %struct.lcd_olinuxino_mode** %7, align 8
  %71 = getelementptr inbounds %struct.lcd_olinuxino_mode, %struct.lcd_olinuxino_mode* %70, i32 0, i32 8
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.lcd_olinuxino_mode*, %struct.lcd_olinuxino_mode** %7, align 8
  %74 = getelementptr inbounds %struct.lcd_olinuxino_mode, %struct.lcd_olinuxino_mode* %73, i32 0, i32 7
  %75 = load i64, i64* %74, align 8
  %76 = add nsw i64 %72, %75
  %77 = load %struct.drm_display_mode*, %struct.drm_display_mode** %8, align 8
  %78 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %77, i32 0, i32 8
  store i64 %76, i64* %78, align 8
  %79 = load %struct.lcd_olinuxino_mode*, %struct.lcd_olinuxino_mode** %7, align 8
  %80 = getelementptr inbounds %struct.lcd_olinuxino_mode, %struct.lcd_olinuxino_mode* %79, i32 0, i32 8
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.lcd_olinuxino_mode*, %struct.lcd_olinuxino_mode** %7, align 8
  %83 = getelementptr inbounds %struct.lcd_olinuxino_mode, %struct.lcd_olinuxino_mode* %82, i32 0, i32 7
  %84 = load i64, i64* %83, align 8
  %85 = add nsw i64 %81, %84
  %86 = load %struct.lcd_olinuxino_mode*, %struct.lcd_olinuxino_mode** %7, align 8
  %87 = getelementptr inbounds %struct.lcd_olinuxino_mode, %struct.lcd_olinuxino_mode* %86, i32 0, i32 6
  %88 = load i64, i64* %87, align 8
  %89 = add nsw i64 %85, %88
  %90 = load %struct.drm_display_mode*, %struct.drm_display_mode** %8, align 8
  %91 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %90, i32 0, i32 7
  store i64 %89, i64* %91, align 8
  %92 = load %struct.lcd_olinuxino_mode*, %struct.lcd_olinuxino_mode** %7, align 8
  %93 = getelementptr inbounds %struct.lcd_olinuxino_mode, %struct.lcd_olinuxino_mode* %92, i32 0, i32 8
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.lcd_olinuxino_mode*, %struct.lcd_olinuxino_mode** %7, align 8
  %96 = getelementptr inbounds %struct.lcd_olinuxino_mode, %struct.lcd_olinuxino_mode* %95, i32 0, i32 7
  %97 = load i64, i64* %96, align 8
  %98 = add nsw i64 %94, %97
  %99 = load %struct.lcd_olinuxino_mode*, %struct.lcd_olinuxino_mode** %7, align 8
  %100 = getelementptr inbounds %struct.lcd_olinuxino_mode, %struct.lcd_olinuxino_mode* %99, i32 0, i32 6
  %101 = load i64, i64* %100, align 8
  %102 = add nsw i64 %98, %101
  %103 = load %struct.lcd_olinuxino_mode*, %struct.lcd_olinuxino_mode** %7, align 8
  %104 = getelementptr inbounds %struct.lcd_olinuxino_mode, %struct.lcd_olinuxino_mode* %103, i32 0, i32 5
  %105 = load i64, i64* %104, align 8
  %106 = add nsw i64 %102, %105
  %107 = load %struct.drm_display_mode*, %struct.drm_display_mode** %8, align 8
  %108 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %107, i32 0, i32 6
  store i64 %106, i64* %108, align 8
  %109 = load %struct.lcd_olinuxino_mode*, %struct.lcd_olinuxino_mode** %7, align 8
  %110 = getelementptr inbounds %struct.lcd_olinuxino_mode, %struct.lcd_olinuxino_mode* %109, i32 0, i32 4
  %111 = load i64, i64* %110, align 8
  %112 = load %struct.drm_display_mode*, %struct.drm_display_mode** %8, align 8
  %113 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %112, i32 0, i32 5
  store i64 %111, i64* %113, align 8
  %114 = load %struct.lcd_olinuxino_mode*, %struct.lcd_olinuxino_mode** %7, align 8
  %115 = getelementptr inbounds %struct.lcd_olinuxino_mode, %struct.lcd_olinuxino_mode* %114, i32 0, i32 4
  %116 = load i64, i64* %115, align 8
  %117 = load %struct.lcd_olinuxino_mode*, %struct.lcd_olinuxino_mode** %7, align 8
  %118 = getelementptr inbounds %struct.lcd_olinuxino_mode, %struct.lcd_olinuxino_mode* %117, i32 0, i32 3
  %119 = load i64, i64* %118, align 8
  %120 = add nsw i64 %116, %119
  %121 = load %struct.drm_display_mode*, %struct.drm_display_mode** %8, align 8
  %122 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %121, i32 0, i32 4
  store i64 %120, i64* %122, align 8
  %123 = load %struct.lcd_olinuxino_mode*, %struct.lcd_olinuxino_mode** %7, align 8
  %124 = getelementptr inbounds %struct.lcd_olinuxino_mode, %struct.lcd_olinuxino_mode* %123, i32 0, i32 4
  %125 = load i64, i64* %124, align 8
  %126 = load %struct.lcd_olinuxino_mode*, %struct.lcd_olinuxino_mode** %7, align 8
  %127 = getelementptr inbounds %struct.lcd_olinuxino_mode, %struct.lcd_olinuxino_mode* %126, i32 0, i32 3
  %128 = load i64, i64* %127, align 8
  %129 = add nsw i64 %125, %128
  %130 = load %struct.lcd_olinuxino_mode*, %struct.lcd_olinuxino_mode** %7, align 8
  %131 = getelementptr inbounds %struct.lcd_olinuxino_mode, %struct.lcd_olinuxino_mode* %130, i32 0, i32 2
  %132 = load i64, i64* %131, align 8
  %133 = add nsw i64 %129, %132
  %134 = load %struct.drm_display_mode*, %struct.drm_display_mode** %8, align 8
  %135 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %134, i32 0, i32 3
  store i64 %133, i64* %135, align 8
  %136 = load %struct.lcd_olinuxino_mode*, %struct.lcd_olinuxino_mode** %7, align 8
  %137 = getelementptr inbounds %struct.lcd_olinuxino_mode, %struct.lcd_olinuxino_mode* %136, i32 0, i32 4
  %138 = load i64, i64* %137, align 8
  %139 = load %struct.lcd_olinuxino_mode*, %struct.lcd_olinuxino_mode** %7, align 8
  %140 = getelementptr inbounds %struct.lcd_olinuxino_mode, %struct.lcd_olinuxino_mode* %139, i32 0, i32 3
  %141 = load i64, i64* %140, align 8
  %142 = add nsw i64 %138, %141
  %143 = load %struct.lcd_olinuxino_mode*, %struct.lcd_olinuxino_mode** %7, align 8
  %144 = getelementptr inbounds %struct.lcd_olinuxino_mode, %struct.lcd_olinuxino_mode* %143, i32 0, i32 2
  %145 = load i64, i64* %144, align 8
  %146 = add nsw i64 %142, %145
  %147 = load %struct.lcd_olinuxino_mode*, %struct.lcd_olinuxino_mode** %7, align 8
  %148 = getelementptr inbounds %struct.lcd_olinuxino_mode, %struct.lcd_olinuxino_mode* %147, i32 0, i32 1
  %149 = load i64, i64* %148, align 8
  %150 = add nsw i64 %146, %149
  %151 = load %struct.drm_display_mode*, %struct.drm_display_mode** %8, align 8
  %152 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %151, i32 0, i32 2
  store i64 %150, i64* %152, align 8
  %153 = load %struct.lcd_olinuxino_mode*, %struct.lcd_olinuxino_mode** %7, align 8
  %154 = getelementptr inbounds %struct.lcd_olinuxino_mode, %struct.lcd_olinuxino_mode* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = load %struct.drm_display_mode*, %struct.drm_display_mode** %8, align 8
  %157 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %156, i32 0, i32 1
  store i32 %155, i32* %157, align 4
  %158 = load i32, i32* %9, align 4
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %160, label %166

160:                                              ; preds = %59
  %161 = load i32, i32* @DRM_MODE_TYPE_PREFERRED, align 4
  %162 = load %struct.drm_display_mode*, %struct.drm_display_mode** %8, align 8
  %163 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = or i32 %164, %161
  store i32 %165, i32* %163, align 8
  br label %166

166:                                              ; preds = %160, %59
  %167 = load i32, i32* @DRM_MODE_TYPE_DRIVER, align 4
  %168 = load %struct.drm_display_mode*, %struct.drm_display_mode** %8, align 8
  %169 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = or i32 %170, %167
  store i32 %171, i32* %169, align 8
  %172 = load %struct.drm_display_mode*, %struct.drm_display_mode** %8, align 8
  %173 = call i32 @drm_mode_set_name(%struct.drm_display_mode* %172)
  %174 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %175 = load %struct.drm_display_mode*, %struct.drm_display_mode** %8, align 8
  %176 = call i32 @drm_mode_probed_add(%struct.drm_connector* %174, %struct.drm_display_mode* %175)
  %177 = load i32, i32* %10, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %10, align 4
  br label %179

179:                                              ; preds = %166, %45
  %180 = load i32, i32* %9, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %9, align 4
  br label %24

182:                                              ; preds = %24
  %183 = load %struct.lcd_olinuxino_info*, %struct.lcd_olinuxino_info** %5, align 8
  %184 = getelementptr inbounds %struct.lcd_olinuxino_info, %struct.lcd_olinuxino_info* %183, i32 0, i32 4
  %185 = load i32, i32* %184, align 8
  %186 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %187 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %187, i32 0, i32 3
  store i32 %185, i32* %188, align 4
  %189 = load %struct.lcd_olinuxino_info*, %struct.lcd_olinuxino_info** %5, align 8
  %190 = getelementptr inbounds %struct.lcd_olinuxino_info, %struct.lcd_olinuxino_info* %189, i32 0, i32 3
  %191 = load i32, i32* %190, align 4
  %192 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %193 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %193, i32 0, i32 2
  store i32 %191, i32* %194, align 4
  %195 = load %struct.lcd_olinuxino_info*, %struct.lcd_olinuxino_info** %5, align 8
  %196 = getelementptr inbounds %struct.lcd_olinuxino_info, %struct.lcd_olinuxino_info* %195, i32 0, i32 2
  %197 = load i32, i32* %196, align 8
  %198 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %199 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %198, i32 0, i32 0
  %200 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %199, i32 0, i32 1
  store i32 %197, i32* %200, align 4
  %201 = load %struct.lcd_olinuxino_info*, %struct.lcd_olinuxino_info** %5, align 8
  %202 = getelementptr inbounds %struct.lcd_olinuxino_info, %struct.lcd_olinuxino_info* %201, i32 0, i32 1
  %203 = load i64, i64* %202, align 8
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %211

205:                                              ; preds = %182
  %206 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %207 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %206, i32 0, i32 0
  %208 = load %struct.lcd_olinuxino_info*, %struct.lcd_olinuxino_info** %5, align 8
  %209 = getelementptr inbounds %struct.lcd_olinuxino_info, %struct.lcd_olinuxino_info* %208, i32 0, i32 1
  %210 = call i32 @drm_display_info_set_bus_formats(%struct.TYPE_6__* %207, i64* %209, i32 1)
  br label %211

211:                                              ; preds = %205, %182
  %212 = load %struct.lcd_olinuxino_info*, %struct.lcd_olinuxino_info** %5, align 8
  %213 = getelementptr inbounds %struct.lcd_olinuxino_info, %struct.lcd_olinuxino_info* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 8
  %215 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %216 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %215, i32 0, i32 0
  %217 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %216, i32 0, i32 0
  store i32 %214, i32* %217, align 4
  %218 = load i32, i32* %10, align 4
  ret i32 %218
}

declare dso_local %struct.lcd_olinuxino* @to_lcd_olinuxino(%struct.drm_panel*) #1

declare dso_local %struct.drm_display_mode* @drm_mode_create(%struct.drm_device*) #1

declare dso_local i32 @dev_err(i32, i8*, i64, i64, i32) #1

declare dso_local i32 @drm_mode_set_name(%struct.drm_display_mode*) #1

declare dso_local i32 @drm_mode_probed_add(%struct.drm_connector*, %struct.drm_display_mode*) #1

declare dso_local i32 @drm_display_info_set_bus_formats(%struct.TYPE_6__*, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
