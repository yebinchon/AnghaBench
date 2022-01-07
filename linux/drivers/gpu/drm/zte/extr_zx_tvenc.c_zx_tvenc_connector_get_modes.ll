; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/zte/extr_zx_tvenc.c_zx_tvenc_connector_get_modes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/zte/extr_zx_tvenc.c_zx_tvenc_connector_get_modes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zx_tvenc_mode = type { i32 }
%struct.drm_connector = type { i32 }
%struct.zx_tvenc = type { %struct.device* }
%struct.device = type { i32 }
%struct.drm_display_mode = type { i32 }

@tvenc_modes = common dso_local global %struct.zx_tvenc_mode** null, align 8
@.str = private unnamed_addr constant [30 x i8] c"failed to duplicate drm mode\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_connector*)* @zx_tvenc_connector_get_modes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zx_tvenc_connector_get_modes(%struct.drm_connector* %0) #0 {
  %2 = alloca %struct.drm_connector*, align 8
  %3 = alloca %struct.zx_tvenc*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.zx_tvenc_mode*, align 8
  %7 = alloca %struct.drm_display_mode*, align 8
  store %struct.drm_connector* %0, %struct.drm_connector** %2, align 8
  %8 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %9 = call %struct.zx_tvenc* @to_zx_tvenc(%struct.drm_connector* %8)
  store %struct.zx_tvenc* %9, %struct.zx_tvenc** %3, align 8
  %10 = load %struct.zx_tvenc*, %struct.zx_tvenc** %3, align 8
  %11 = getelementptr inbounds %struct.zx_tvenc, %struct.zx_tvenc* %10, i32 0, i32 0
  %12 = load %struct.device*, %struct.device** %11, align 8
  store %struct.device* %12, %struct.device** %4, align 8
  store i32 0, i32* %5, align 4
  br label %13

13:                                               ; preds = %41, %1
  %14 = load i32, i32* %5, align 4
  %15 = load %struct.zx_tvenc_mode**, %struct.zx_tvenc_mode*** @tvenc_modes, align 8
  %16 = call i32 @ARRAY_SIZE(%struct.zx_tvenc_mode** %15)
  %17 = icmp slt i32 %14, %16
  br i1 %17, label %18, label %44

18:                                               ; preds = %13
  %19 = load %struct.zx_tvenc_mode**, %struct.zx_tvenc_mode*** @tvenc_modes, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.zx_tvenc_mode*, %struct.zx_tvenc_mode** %19, i64 %21
  %23 = load %struct.zx_tvenc_mode*, %struct.zx_tvenc_mode** %22, align 8
  store %struct.zx_tvenc_mode* %23, %struct.zx_tvenc_mode** %6, align 8
  %24 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %25 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.zx_tvenc_mode*, %struct.zx_tvenc_mode** %6, align 8
  %28 = getelementptr inbounds %struct.zx_tvenc_mode, %struct.zx_tvenc_mode* %27, i32 0, i32 0
  %29 = call %struct.drm_display_mode* @drm_mode_duplicate(i32 %26, i32* %28)
  store %struct.drm_display_mode* %29, %struct.drm_display_mode** %7, align 8
  %30 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %31 = icmp ne %struct.drm_display_mode* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %18
  %33 = load %struct.device*, %struct.device** %4, align 8
  %34 = call i32 @DRM_DEV_ERROR(%struct.device* %33, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %41

35:                                               ; preds = %18
  %36 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %37 = call i32 @drm_mode_set_name(%struct.drm_display_mode* %36)
  %38 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %39 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %40 = call i32 @drm_mode_probed_add(%struct.drm_connector* %38, %struct.drm_display_mode* %39)
  br label %41

41:                                               ; preds = %35, %32
  %42 = load i32, i32* %5, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %5, align 4
  br label %13

44:                                               ; preds = %13
  %45 = load i32, i32* %5, align 4
  ret i32 %45
}

declare dso_local %struct.zx_tvenc* @to_zx_tvenc(%struct.drm_connector*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.zx_tvenc_mode**) #1

declare dso_local %struct.drm_display_mode* @drm_mode_duplicate(i32, i32*) #1

declare dso_local i32 @DRM_DEV_ERROR(%struct.device*, i8*) #1

declare dso_local i32 @drm_mode_set_name(%struct.drm_display_mode*) #1

declare dso_local i32 @drm_mode_probed_add(%struct.drm_connector*, %struct.drm_display_mode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
