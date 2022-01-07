; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv04/extr_tvnv17.c_nv17_tv_mode_fixup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv04/extr_tvnv17.c_nv17_tv_mode_fixup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { i32 }
%struct.drm_display_mode = type { i32 }
%struct.nv17_tv_norm_params = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@CTV_ENC_MODE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_encoder*, %struct.drm_display_mode*, %struct.drm_display_mode*)* @nv17_tv_mode_fixup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv17_tv_mode_fixup(%struct.drm_encoder* %0, %struct.drm_display_mode* %1, %struct.drm_display_mode* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_encoder*, align 8
  %6 = alloca %struct.drm_display_mode*, align 8
  %7 = alloca %struct.drm_display_mode*, align 8
  %8 = alloca %struct.nv17_tv_norm_params*, align 8
  store %struct.drm_encoder* %0, %struct.drm_encoder** %5, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %6, align 8
  store %struct.drm_display_mode* %2, %struct.drm_display_mode** %7, align 8
  %9 = load %struct.drm_encoder*, %struct.drm_encoder** %5, align 8
  %10 = call %struct.nv17_tv_norm_params* @get_tv_norm(%struct.drm_encoder* %9)
  store %struct.nv17_tv_norm_params* %10, %struct.nv17_tv_norm_params** %8, align 8
  %11 = load %struct.drm_encoder*, %struct.drm_encoder** %5, align 8
  %12 = call i64 @nv04_dac_in_use(%struct.drm_encoder* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %33

15:                                               ; preds = %3
  %16 = load %struct.nv17_tv_norm_params*, %struct.nv17_tv_norm_params** %8, align 8
  %17 = getelementptr inbounds %struct.nv17_tv_norm_params, %struct.nv17_tv_norm_params* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @CTV_ENC_MODE, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %29

21:                                               ; preds = %15
  %22 = load %struct.nv17_tv_norm_params*, %struct.nv17_tv_norm_params** %8, align 8
  %23 = getelementptr inbounds %struct.nv17_tv_norm_params, %struct.nv17_tv_norm_params* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %28 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  br label %32

29:                                               ; preds = %15
  %30 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %31 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %30, i32 0, i32 0
  store i32 90000, i32* %31, align 4
  br label %32

32:                                               ; preds = %29, %21
  store i32 1, i32* %4, align 4
  br label %33

33:                                               ; preds = %32, %14
  %34 = load i32, i32* %4, align 4
  ret i32 %34
}

declare dso_local %struct.nv17_tv_norm_params* @get_tv_norm(%struct.drm_encoder*) #1

declare dso_local i64 @nv04_dac_in_use(%struct.drm_encoder*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
