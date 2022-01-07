; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv04/extr_tvnv17.c_nv17_tv_get_ld_modes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv04/extr_tvnv17.c_nv17_tv_get_ld_modes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_display_mode = type { i64, i32, i32, i32, i32, i64, i32 }
%struct.drm_encoder = type { i32 }
%struct.drm_connector = type { i32 }
%struct.nv17_tv_norm_params = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64, i64 }

@nv17_tv_modes = common dso_local global %struct.drm_display_mode* null, align 8
@DRM_MODE_FLAG_DBLSCAN = common dso_local global i32 0, align 4
@DRM_MODE_TYPE_PREFERRED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_encoder*, %struct.drm_connector*)* @nv17_tv_get_ld_modes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv17_tv_get_ld_modes(%struct.drm_encoder* %0, %struct.drm_connector* %1) #0 {
  %3 = alloca %struct.drm_encoder*, align 8
  %4 = alloca %struct.drm_connector*, align 8
  %5 = alloca %struct.nv17_tv_norm_params*, align 8
  %6 = alloca %struct.drm_display_mode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.drm_display_mode*, align 8
  store %struct.drm_encoder* %0, %struct.drm_encoder** %3, align 8
  store %struct.drm_connector* %1, %struct.drm_connector** %4, align 8
  %9 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %10 = call %struct.nv17_tv_norm_params* @get_tv_norm(%struct.drm_encoder* %9)
  store %struct.nv17_tv_norm_params* %10, %struct.nv17_tv_norm_params** %5, align 8
  store i32 0, i32* %7, align 4
  %11 = load %struct.drm_display_mode*, %struct.drm_display_mode** @nv17_tv_modes, align 8
  store %struct.drm_display_mode* %11, %struct.drm_display_mode** %6, align 8
  br label %12

12:                                               ; preds = %80, %2
  %13 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %14 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %83

17:                                               ; preds = %12
  %18 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %19 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %22 = call %struct.drm_display_mode* @drm_mode_duplicate(i32 %20, %struct.drm_display_mode* %21)
  store %struct.drm_display_mode* %22, %struct.drm_display_mode** %8, align 8
  %23 = load %struct.nv17_tv_norm_params*, %struct.nv17_tv_norm_params** %5, align 8
  %24 = getelementptr inbounds %struct.nv17_tv_norm_params, %struct.nv17_tv_norm_params* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.drm_display_mode*, %struct.drm_display_mode** %8, align 8
  %28 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = mul nsw i32 %26, %29
  %31 = sdiv i32 %30, 1000
  %32 = load %struct.drm_display_mode*, %struct.drm_display_mode** %8, align 8
  %33 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 8
  %35 = mul nsw i32 %31, %34
  %36 = sdiv i32 %35, 1000
  %37 = load %struct.drm_display_mode*, %struct.drm_display_mode** %8, align 8
  %38 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 8
  %39 = load %struct.drm_display_mode*, %struct.drm_display_mode** %8, align 8
  %40 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @DRM_MODE_FLAG_DBLSCAN, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %17
  %46 = load %struct.drm_display_mode*, %struct.drm_display_mode** %8, align 8
  %47 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = mul nsw i32 %48, 2
  store i32 %49, i32* %47, align 8
  br label %50

50:                                               ; preds = %45, %17
  %51 = load %struct.drm_display_mode*, %struct.drm_display_mode** %8, align 8
  %52 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.nv17_tv_norm_params*, %struct.nv17_tv_norm_params** %5, align 8
  %55 = getelementptr inbounds %struct.nv17_tv_norm_params, %struct.nv17_tv_norm_params* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp eq i64 %53, %57
  br i1 %58, label %59, label %74

59:                                               ; preds = %50
  %60 = load %struct.drm_display_mode*, %struct.drm_display_mode** %8, align 8
  %61 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %60, i32 0, i32 5
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.nv17_tv_norm_params*, %struct.nv17_tv_norm_params** %5, align 8
  %64 = getelementptr inbounds %struct.nv17_tv_norm_params, %struct.nv17_tv_norm_params* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = icmp eq i64 %62, %66
  br i1 %67, label %68, label %74

68:                                               ; preds = %59
  %69 = load i32, i32* @DRM_MODE_TYPE_PREFERRED, align 4
  %70 = load %struct.drm_display_mode*, %struct.drm_display_mode** %8, align 8
  %71 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %70, i32 0, i32 6
  %72 = load i32, i32* %71, align 8
  %73 = or i32 %72, %69
  store i32 %73, i32* %71, align 8
  br label %74

74:                                               ; preds = %68, %59, %50
  %75 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %76 = load %struct.drm_display_mode*, %struct.drm_display_mode** %8, align 8
  %77 = call i32 @drm_mode_probed_add(%struct.drm_connector* %75, %struct.drm_display_mode* %76)
  %78 = load i32, i32* %7, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %7, align 4
  br label %80

80:                                               ; preds = %74
  %81 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %82 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %81, i32 1
  store %struct.drm_display_mode* %82, %struct.drm_display_mode** %6, align 8
  br label %12

83:                                               ; preds = %12
  %84 = load i32, i32* %7, align 4
  ret i32 %84
}

declare dso_local %struct.nv17_tv_norm_params* @get_tv_norm(%struct.drm_encoder*) #1

declare dso_local %struct.drm_display_mode* @drm_mode_duplicate(i32, %struct.drm_display_mode*) #1

declare dso_local i32 @drm_mode_probed_add(%struct.drm_connector*, %struct.drm_display_mode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
