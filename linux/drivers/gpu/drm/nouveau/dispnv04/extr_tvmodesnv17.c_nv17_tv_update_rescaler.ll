; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv04/extr_tvmodesnv17.c_nv17_tv_update_rescaler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv04/extr_tvmodesnv17.c_nv17_tv_update_rescaler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { %struct.drm_device* }
%struct.drm_device = type { i32 }
%struct.nv17_tv_encoder = type { i32, %struct.nv17_tv_state }
%struct.nv17_tv_state = type { i32, i32, i32, i32 }

@NV_PTV_HFILTER = common dso_local global i32 0, align 4
@NV_PTV_HFILTER2 = common dso_local global i32 0, align 4
@NV_PTV_VFILTER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nv17_tv_update_rescaler(%struct.drm_encoder* %0) #0 {
  %2 = alloca %struct.drm_encoder*, align 8
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.nv17_tv_encoder*, align 8
  %5 = alloca %struct.nv17_tv_state*, align 8
  store %struct.drm_encoder* %0, %struct.drm_encoder** %2, align 8
  %6 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %7 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %6, i32 0, i32 0
  %8 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  store %struct.drm_device* %8, %struct.drm_device** %3, align 8
  %9 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %10 = call %struct.nv17_tv_encoder* @to_tv_enc(%struct.drm_encoder* %9)
  store %struct.nv17_tv_encoder* %10, %struct.nv17_tv_encoder** %4, align 8
  %11 = load %struct.nv17_tv_encoder*, %struct.nv17_tv_encoder** %4, align 8
  %12 = getelementptr inbounds %struct.nv17_tv_encoder, %struct.nv17_tv_encoder* %11, i32 0, i32 1
  store %struct.nv17_tv_state* %12, %struct.nv17_tv_state** %5, align 8
  %13 = load %struct.nv17_tv_encoder*, %struct.nv17_tv_encoder** %4, align 8
  %14 = getelementptr inbounds %struct.nv17_tv_encoder, %struct.nv17_tv_encoder* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @calc_overscan(i32 %15)
  %17 = shl i32 %16, 8
  %18 = or i32 64, %17
  %19 = load %struct.nv17_tv_state*, %struct.nv17_tv_state** %5, align 8
  %20 = getelementptr inbounds %struct.nv17_tv_state, %struct.nv17_tv_state* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  %21 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %22 = call i32 @tv_setup_filter(%struct.drm_encoder* %21)
  %23 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %24 = load %struct.nv17_tv_state*, %struct.nv17_tv_state** %5, align 8
  %25 = call i32 @nv_load_ptv(%struct.drm_device* %23, %struct.nv17_tv_state* %24, i32 208)
  %26 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %27 = load i32, i32* @NV_PTV_HFILTER, align 4
  %28 = load %struct.nv17_tv_state*, %struct.nv17_tv_state** %5, align 8
  %29 = getelementptr inbounds %struct.nv17_tv_state, %struct.nv17_tv_state* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @tv_load_filter(%struct.drm_device* %26, i32 %27, i32 %30)
  %32 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %33 = load i32, i32* @NV_PTV_HFILTER2, align 4
  %34 = load %struct.nv17_tv_state*, %struct.nv17_tv_state** %5, align 8
  %35 = getelementptr inbounds %struct.nv17_tv_state, %struct.nv17_tv_state* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @tv_load_filter(%struct.drm_device* %32, i32 %33, i32 %36)
  %38 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %39 = load i32, i32* @NV_PTV_VFILTER, align 4
  %40 = load %struct.nv17_tv_state*, %struct.nv17_tv_state** %5, align 8
  %41 = getelementptr inbounds %struct.nv17_tv_state, %struct.nv17_tv_state* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @tv_load_filter(%struct.drm_device* %38, i32 %39, i32 %42)
  ret void
}

declare dso_local %struct.nv17_tv_encoder* @to_tv_enc(%struct.drm_encoder*) #1

declare dso_local i32 @calc_overscan(i32) #1

declare dso_local i32 @tv_setup_filter(%struct.drm_encoder*) #1

declare dso_local i32 @nv_load_ptv(%struct.drm_device*, %struct.nv17_tv_state*, i32) #1

declare dso_local i32 @tv_load_filter(%struct.drm_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
