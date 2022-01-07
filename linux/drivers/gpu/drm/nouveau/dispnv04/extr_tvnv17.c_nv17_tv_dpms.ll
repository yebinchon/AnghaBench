; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv04/extr_tvnv17.c_nv17_tv_dpms.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv04/extr_tvnv17.c_nv17_tv_dpms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { %struct.drm_device* }
%struct.drm_device = type { i32 }
%struct.nouveau_drm = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.nvkm_gpio = type { i32 }
%struct.nv17_tv_state = type { i32 }
%struct.nv17_tv_norm_params = type { i64 }
%struct.TYPE_7__ = type { %struct.nv17_tv_state }
%struct.TYPE_8__ = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [48 x i8] c"Setting dpms mode %d on TV encoder (output %d)\0A\00", align 1
@CTV_ENC_MODE = common dso_local global i64 0, align 8
@DRM_MODE_DPMS_OFF = common dso_local global i32 0, align 4
@DRM_MODE_DPMS_ON = common dso_local global i32 0, align 4
@DCB_GPIO_TVDAC1 = common dso_local global i32 0, align 4
@DCB_GPIO_TVDAC0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_encoder*, i32)* @nv17_tv_dpms to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nv17_tv_dpms(%struct.drm_encoder* %0, i32 %1) #0 {
  %3 = alloca %struct.drm_encoder*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.nouveau_drm*, align 8
  %7 = alloca %struct.nvkm_gpio*, align 8
  %8 = alloca %struct.nv17_tv_state*, align 8
  %9 = alloca %struct.nv17_tv_norm_params*, align 8
  store %struct.drm_encoder* %0, %struct.drm_encoder** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %11 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %10, i32 0, i32 0
  %12 = load %struct.drm_device*, %struct.drm_device** %11, align 8
  store %struct.drm_device* %12, %struct.drm_device** %5, align 8
  %13 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %14 = call %struct.nouveau_drm* @nouveau_drm(%struct.drm_device* %13)
  store %struct.nouveau_drm* %14, %struct.nouveau_drm** %6, align 8
  %15 = load %struct.nouveau_drm*, %struct.nouveau_drm** %6, align 8
  %16 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = call %struct.nvkm_gpio* @nvxx_gpio(i32* %17)
  store %struct.nvkm_gpio* %18, %struct.nvkm_gpio** %7, align 8
  %19 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %20 = call %struct.TYPE_7__* @to_tv_enc(%struct.drm_encoder* %19)
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  store %struct.nv17_tv_state* %21, %struct.nv17_tv_state** %8, align 8
  %22 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %23 = call %struct.nv17_tv_norm_params* @get_tv_norm(%struct.drm_encoder* %22)
  store %struct.nv17_tv_norm_params* %23, %struct.nv17_tv_norm_params** %9, align 8
  %24 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %25 = call %struct.TYPE_8__* @nouveau_encoder(%struct.drm_encoder* %24)
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* %4, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %2
  br label %95

31:                                               ; preds = %2
  %32 = load i32, i32* %4, align 4
  %33 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %34 = call %struct.TYPE_8__* @nouveau_encoder(%struct.drm_encoder* %33)
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  store i32 %32, i32* %35, align 8
  %36 = load %struct.nouveau_drm*, %struct.nouveau_drm** %6, align 8
  %37 = load i32, i32* %4, align 4
  %38 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %39 = call %struct.TYPE_8__* @nouveau_encoder(%struct.drm_encoder* %38)
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @NV_INFO(%struct.nouveau_drm* %36, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %37, i32 %43)
  %45 = load %struct.nv17_tv_state*, %struct.nv17_tv_state** %8, align 8
  %46 = getelementptr inbounds %struct.nv17_tv_state, %struct.nv17_tv_state* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = and i32 %47, -2
  store i32 %48, i32* %46, align 4
  %49 = load %struct.nv17_tv_norm_params*, %struct.nv17_tv_norm_params** %9, align 8
  %50 = getelementptr inbounds %struct.nv17_tv_norm_params, %struct.nv17_tv_norm_params* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @CTV_ENC_MODE, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %31
  %55 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %56 = load i32, i32* %4, align 4
  %57 = call i32 @nv04_dfp_update_fp_control(%struct.drm_encoder* %55, i32 %56)
  br label %71

58:                                               ; preds = %31
  %59 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %60 = load i32, i32* @DRM_MODE_DPMS_OFF, align 4
  %61 = call i32 @nv04_dfp_update_fp_control(%struct.drm_encoder* %59, i32 %60)
  %62 = load i32, i32* %4, align 4
  %63 = load i32, i32* @DRM_MODE_DPMS_ON, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %70

65:                                               ; preds = %58
  %66 = load %struct.nv17_tv_state*, %struct.nv17_tv_state** %8, align 8
  %67 = getelementptr inbounds %struct.nv17_tv_state, %struct.nv17_tv_state* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = or i32 %68, 1
  store i32 %69, i32* %67, align 4
  br label %70

70:                                               ; preds = %65, %58
  br label %71

71:                                               ; preds = %70, %54
  %72 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %73 = load %struct.nv17_tv_state*, %struct.nv17_tv_state** %8, align 8
  %74 = call i32 @nv_load_ptv(%struct.drm_device* %72, %struct.nv17_tv_state* %73, i32 200)
  %75 = load %struct.nvkm_gpio*, %struct.nvkm_gpio** %7, align 8
  %76 = load i32, i32* @DCB_GPIO_TVDAC1, align 4
  %77 = load i32, i32* %4, align 4
  %78 = load i32, i32* @DRM_MODE_DPMS_ON, align 4
  %79 = icmp eq i32 %77, %78
  %80 = zext i1 %79 to i32
  %81 = call i32 @nvkm_gpio_set(%struct.nvkm_gpio* %75, i32 0, i32 %76, i32 255, i32 %80)
  %82 = load %struct.nvkm_gpio*, %struct.nvkm_gpio** %7, align 8
  %83 = load i32, i32* @DCB_GPIO_TVDAC0, align 4
  %84 = load i32, i32* %4, align 4
  %85 = load i32, i32* @DRM_MODE_DPMS_ON, align 4
  %86 = icmp eq i32 %84, %85
  %87 = zext i1 %86 to i32
  %88 = call i32 @nvkm_gpio_set(%struct.nvkm_gpio* %82, i32 0, i32 %83, i32 255, i32 %87)
  %89 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %90 = load i32, i32* %4, align 4
  %91 = load i32, i32* @DRM_MODE_DPMS_ON, align 4
  %92 = icmp eq i32 %90, %91
  %93 = zext i1 %92 to i32
  %94 = call i32 @nv04_dac_update_dacclk(%struct.drm_encoder* %89, i32 %93)
  br label %95

95:                                               ; preds = %71, %30
  ret void
}

declare dso_local %struct.nouveau_drm* @nouveau_drm(%struct.drm_device*) #1

declare dso_local %struct.nvkm_gpio* @nvxx_gpio(i32*) #1

declare dso_local %struct.TYPE_7__* @to_tv_enc(%struct.drm_encoder*) #1

declare dso_local %struct.nv17_tv_norm_params* @get_tv_norm(%struct.drm_encoder*) #1

declare dso_local %struct.TYPE_8__* @nouveau_encoder(%struct.drm_encoder*) #1

declare dso_local i32 @NV_INFO(%struct.nouveau_drm*, i8*, i32, i32) #1

declare dso_local i32 @nv04_dfp_update_fp_control(%struct.drm_encoder*, i32) #1

declare dso_local i32 @nv_load_ptv(%struct.drm_device*, %struct.nv17_tv_state*, i32) #1

declare dso_local i32 @nvkm_gpio_set(%struct.nvkm_gpio*, i32, i32, i32, i32) #1

declare dso_local i32 @nv04_dac_update_dacclk(%struct.drm_encoder*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
