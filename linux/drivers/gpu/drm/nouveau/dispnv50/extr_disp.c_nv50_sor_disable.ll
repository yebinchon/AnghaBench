; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv50/extr_disp.c_nv50_sor_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv50/extr_disp.c_nv50_sor_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { i32 }
%struct.nouveau_encoder = type { %struct.TYPE_2__, i32 (%struct.nouveau_encoder*, i32, i32*, i32, i32)*, %struct.nvkm_i2c_aux*, i32* }
%struct.TYPE_2__ = type { i32 }
%struct.nvkm_i2c_aux = type { i32 }
%struct.nouveau_crtc = type { i32 }

@DP_SET_POWER = common dso_local global i32 0, align 4
@DP_SET_POWER_MASK = common dso_local global i32 0, align 4
@DP_SET_POWER_D3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_encoder*)* @nv50_sor_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nv50_sor_disable(%struct.drm_encoder* %0) #0 {
  %2 = alloca %struct.drm_encoder*, align 8
  %3 = alloca %struct.nouveau_encoder*, align 8
  %4 = alloca %struct.nouveau_crtc*, align 8
  %5 = alloca %struct.nvkm_i2c_aux*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.drm_encoder* %0, %struct.drm_encoder** %2, align 8
  %8 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %9 = call %struct.nouveau_encoder* @nouveau_encoder(%struct.drm_encoder* %8)
  store %struct.nouveau_encoder* %9, %struct.nouveau_encoder** %3, align 8
  %10 = load %struct.nouveau_encoder*, %struct.nouveau_encoder** %3, align 8
  %11 = getelementptr inbounds %struct.nouveau_encoder, %struct.nouveau_encoder* %10, i32 0, i32 3
  %12 = load i32*, i32** %11, align 8
  %13 = call %struct.nouveau_crtc* @nouveau_crtc(i32* %12)
  store %struct.nouveau_crtc* %13, %struct.nouveau_crtc** %4, align 8
  %14 = load %struct.nouveau_encoder*, %struct.nouveau_encoder** %3, align 8
  %15 = getelementptr inbounds %struct.nouveau_encoder, %struct.nouveau_encoder* %14, i32 0, i32 3
  store i32* null, i32** %15, align 8
  %16 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %4, align 8
  %17 = icmp ne %struct.nouveau_crtc* %16, null
  br i1 %17, label %18, label %61

18:                                               ; preds = %1
  %19 = load %struct.nouveau_encoder*, %struct.nouveau_encoder** %3, align 8
  %20 = getelementptr inbounds %struct.nouveau_encoder, %struct.nouveau_encoder* %19, i32 0, i32 2
  %21 = load %struct.nvkm_i2c_aux*, %struct.nvkm_i2c_aux** %20, align 8
  store %struct.nvkm_i2c_aux* %21, %struct.nvkm_i2c_aux** %5, align 8
  %22 = load %struct.nvkm_i2c_aux*, %struct.nvkm_i2c_aux** %5, align 8
  %23 = icmp ne %struct.nvkm_i2c_aux* %22, null
  br i1 %23, label %24, label %42

24:                                               ; preds = %18
  %25 = load %struct.nvkm_i2c_aux*, %struct.nvkm_i2c_aux** %5, align 8
  %26 = load i32, i32* @DP_SET_POWER, align 4
  %27 = call i32 @nvkm_rdaux(%struct.nvkm_i2c_aux* %25, i32 %26, i32* %6, i32 1)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %41

30:                                               ; preds = %24
  %31 = load i32, i32* @DP_SET_POWER_MASK, align 4
  %32 = xor i32 %31, -1
  %33 = load i32, i32* %6, align 4
  %34 = and i32 %33, %32
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* @DP_SET_POWER_D3, align 4
  %36 = load i32, i32* %6, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %6, align 4
  %38 = load %struct.nvkm_i2c_aux*, %struct.nvkm_i2c_aux** %5, align 8
  %39 = load i32, i32* @DP_SET_POWER, align 4
  %40 = call i32 @nvkm_wraux(%struct.nvkm_i2c_aux* %38, i32 %39, i32* %6, i32 1)
  br label %41

41:                                               ; preds = %30, %24
  br label %42

42:                                               ; preds = %41, %18
  %43 = load %struct.nouveau_encoder*, %struct.nouveau_encoder** %3, align 8
  %44 = getelementptr inbounds %struct.nouveau_encoder, %struct.nouveau_encoder* %43, i32 0, i32 1
  %45 = load i32 (%struct.nouveau_encoder*, i32, i32*, i32, i32)*, i32 (%struct.nouveau_encoder*, i32, i32*, i32, i32)** %44, align 8
  %46 = load %struct.nouveau_encoder*, %struct.nouveau_encoder** %3, align 8
  %47 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %4, align 8
  %48 = getelementptr inbounds %struct.nouveau_crtc, %struct.nouveau_crtc* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 %45(%struct.nouveau_encoder* %46, i32 %49, i32* null, i32 0, i32 0)
  %51 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %52 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %4, align 8
  %53 = call i32 @nv50_audio_disable(%struct.drm_encoder* %51, %struct.nouveau_crtc* %52)
  %54 = load %struct.nouveau_encoder*, %struct.nouveau_encoder** %3, align 8
  %55 = getelementptr inbounds %struct.nouveau_encoder, %struct.nouveau_encoder* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %4, align 8
  %58 = call i32 @nv50_hdmi_disable(i32* %56, %struct.nouveau_crtc* %57)
  %59 = load %struct.nouveau_encoder*, %struct.nouveau_encoder** %3, align 8
  %60 = call i32 @nv50_outp_release(%struct.nouveau_encoder* %59)
  br label %61

61:                                               ; preds = %42, %1
  ret void
}

declare dso_local %struct.nouveau_encoder* @nouveau_encoder(%struct.drm_encoder*) #1

declare dso_local %struct.nouveau_crtc* @nouveau_crtc(i32*) #1

declare dso_local i32 @nvkm_rdaux(%struct.nvkm_i2c_aux*, i32, i32*, i32) #1

declare dso_local i32 @nvkm_wraux(%struct.nvkm_i2c_aux*, i32, i32*, i32) #1

declare dso_local i32 @nv50_audio_disable(%struct.drm_encoder*, %struct.nouveau_crtc*) #1

declare dso_local i32 @nv50_hdmi_disable(i32*, %struct.nouveau_crtc*) #1

declare dso_local i32 @nv50_outp_release(%struct.nouveau_encoder*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
