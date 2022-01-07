; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/zte/extr_zx_tvenc.c_zx_tvenc_connector_mode_valid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/zte/extr_zx_tvenc.c_zx_tvenc_connector_mode_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i32 }
%struct.drm_display_mode = type { i32 }
%struct.zx_tvenc = type { i32 }
%struct.zx_tvenc_mode = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"unsupported mode: %s\0A\00", align 1
@MODE_NOMODE = common dso_local global i32 0, align 4
@MODE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_connector*, %struct.drm_display_mode*)* @zx_tvenc_connector_mode_valid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zx_tvenc_connector_mode_valid(%struct.drm_connector* %0, %struct.drm_display_mode* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_connector*, align 8
  %5 = alloca %struct.drm_display_mode*, align 8
  %6 = alloca %struct.zx_tvenc*, align 8
  %7 = alloca %struct.zx_tvenc_mode*, align 8
  store %struct.drm_connector* %0, %struct.drm_connector** %4, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %5, align 8
  %8 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %9 = call %struct.zx_tvenc* @to_zx_tvenc(%struct.drm_connector* %8)
  store %struct.zx_tvenc* %9, %struct.zx_tvenc** %6, align 8
  %10 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %11 = call %struct.zx_tvenc_mode* @zx_tvenc_find_zmode(%struct.drm_display_mode* %10)
  store %struct.zx_tvenc_mode* %11, %struct.zx_tvenc_mode** %7, align 8
  %12 = load %struct.zx_tvenc_mode*, %struct.zx_tvenc_mode** %7, align 8
  %13 = icmp ne %struct.zx_tvenc_mode* %12, null
  br i1 %13, label %23, label %14

14:                                               ; preds = %2
  %15 = load %struct.zx_tvenc*, %struct.zx_tvenc** %6, align 8
  %16 = getelementptr inbounds %struct.zx_tvenc, %struct.zx_tvenc* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %19 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @DRM_DEV_ERROR(i32 %17, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load i32, i32* @MODE_NOMODE, align 4
  store i32 %22, i32* %3, align 4
  br label %25

23:                                               ; preds = %2
  %24 = load i32, i32* @MODE_OK, align 4
  store i32 %24, i32* %3, align 4
  br label %25

25:                                               ; preds = %23, %14
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

declare dso_local %struct.zx_tvenc* @to_zx_tvenc(%struct.drm_connector*) #1

declare dso_local %struct.zx_tvenc_mode* @zx_tvenc_find_zmode(%struct.drm_display_mode*) #1

declare dso_local i32 @DRM_DEV_ERROR(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
