; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm_color.c___set_legacy_tf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm_color.c___set_legacy_tf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc_transfer_func = type { i32 }
%struct.drm_color_lut = type { i32 }
%struct.dc_gamma = type { i64, i32 }

@MAX_COLOR_LEGACY_LUT_ENTRIES = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@GAMMA_RGB_256 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dc_transfer_func*, %struct.drm_color_lut*, i64, i32)* @__set_legacy_tf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__set_legacy_tf(%struct.dc_transfer_func* %0, %struct.drm_color_lut* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.dc_transfer_func*, align 8
  %7 = alloca %struct.drm_color_lut*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.dc_gamma*, align 8
  %11 = alloca i32, align 4
  store %struct.dc_transfer_func* %0, %struct.dc_transfer_func** %6, align 8
  store %struct.drm_color_lut* %1, %struct.drm_color_lut** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.dc_gamma* null, %struct.dc_gamma** %10, align 8
  %12 = load %struct.drm_color_lut*, %struct.drm_color_lut** %7, align 8
  %13 = icmp ne %struct.drm_color_lut* %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %4
  %15 = load i64, i64* %8, align 8
  %16 = load i64, i64* @MAX_COLOR_LEGACY_LUT_ENTRIES, align 8
  %17 = icmp eq i64 %15, %16
  br label %18

18:                                               ; preds = %14, %4
  %19 = phi i1 [ false, %4 ], [ %17, %14 ]
  %20 = zext i1 %19 to i32
  %21 = call i32 @ASSERT(i32 %20)
  %22 = call %struct.dc_gamma* (...) @dc_create_gamma()
  store %struct.dc_gamma* %22, %struct.dc_gamma** %10, align 8
  %23 = load %struct.dc_gamma*, %struct.dc_gamma** %10, align 8
  %24 = icmp ne %struct.dc_gamma* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %18
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %5, align 4
  br label %50

28:                                               ; preds = %18
  %29 = load i32, i32* @GAMMA_RGB_256, align 4
  %30 = load %struct.dc_gamma*, %struct.dc_gamma** %10, align 8
  %31 = getelementptr inbounds %struct.dc_gamma, %struct.dc_gamma* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 8
  %32 = load i64, i64* %8, align 8
  %33 = load %struct.dc_gamma*, %struct.dc_gamma** %10, align 8
  %34 = getelementptr inbounds %struct.dc_gamma, %struct.dc_gamma* %33, i32 0, i32 0
  store i64 %32, i64* %34, align 8
  %35 = load %struct.drm_color_lut*, %struct.drm_color_lut** %7, align 8
  %36 = load %struct.dc_gamma*, %struct.dc_gamma** %10, align 8
  %37 = call i32 @__drm_lut_to_dc_gamma(%struct.drm_color_lut* %35, %struct.dc_gamma* %36, i32 1)
  %38 = load %struct.dc_transfer_func*, %struct.dc_transfer_func** %6, align 8
  %39 = load %struct.dc_gamma*, %struct.dc_gamma** %10, align 8
  %40 = load i32, i32* %9, align 4
  %41 = call i32 @mod_color_calculate_regamma_params(%struct.dc_transfer_func* %38, %struct.dc_gamma* %39, i32 1, i32 %40, i32* null)
  store i32 %41, i32* %11, align 4
  %42 = load i32, i32* %11, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %28
  br label %48

45:                                               ; preds = %28
  %46 = load i32, i32* @ENOMEM, align 4
  %47 = sub nsw i32 0, %46
  br label %48

48:                                               ; preds = %45, %44
  %49 = phi i32 [ 0, %44 ], [ %47, %45 ]
  store i32 %49, i32* %5, align 4
  br label %50

50:                                               ; preds = %48, %25
  %51 = load i32, i32* %5, align 4
  ret i32 %51
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local %struct.dc_gamma* @dc_create_gamma(...) #1

declare dso_local i32 @__drm_lut_to_dc_gamma(%struct.drm_color_lut*, %struct.dc_gamma*, i32) #1

declare dso_local i32 @mod_color_calculate_regamma_params(%struct.dc_transfer_func*, %struct.dc_gamma*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
