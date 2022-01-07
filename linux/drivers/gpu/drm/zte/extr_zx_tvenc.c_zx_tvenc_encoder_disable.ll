; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/zte/extr_zx_tvenc.c_zx_tvenc_encoder_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/zte/extr_zx_tvenc.c_zx_tvenc_encoder_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { i32 }
%struct.zx_tvenc = type { i64, %struct.zx_tvenc_pwrctrl }
%struct.zx_tvenc_pwrctrl = type { i32, i32, i32 }

@VENC_ENABLE = common dso_local global i64 0, align 8
@VOU_TV_ENC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_encoder*)* @zx_tvenc_encoder_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zx_tvenc_encoder_disable(%struct.drm_encoder* %0) #0 {
  %2 = alloca %struct.drm_encoder*, align 8
  %3 = alloca %struct.zx_tvenc*, align 8
  %4 = alloca %struct.zx_tvenc_pwrctrl*, align 8
  store %struct.drm_encoder* %0, %struct.drm_encoder** %2, align 8
  %5 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %6 = call %struct.zx_tvenc* @to_zx_tvenc(%struct.drm_encoder* %5)
  store %struct.zx_tvenc* %6, %struct.zx_tvenc** %3, align 8
  %7 = load %struct.zx_tvenc*, %struct.zx_tvenc** %3, align 8
  %8 = getelementptr inbounds %struct.zx_tvenc, %struct.zx_tvenc* %7, i32 0, i32 1
  store %struct.zx_tvenc_pwrctrl* %8, %struct.zx_tvenc_pwrctrl** %4, align 8
  %9 = load %struct.zx_tvenc*, %struct.zx_tvenc** %3, align 8
  %10 = getelementptr inbounds %struct.zx_tvenc, %struct.zx_tvenc* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @VENC_ENABLE, align 8
  %13 = add nsw i64 %11, %12
  %14 = call i32 @zx_writel(i64 %13, i32 0)
  %15 = load i32, i32* @VOU_TV_ENC, align 4
  %16 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %17 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @vou_inf_disable(i32 %15, i32 %18)
  %20 = load %struct.zx_tvenc_pwrctrl*, %struct.zx_tvenc_pwrctrl** %4, align 8
  %21 = getelementptr inbounds %struct.zx_tvenc_pwrctrl, %struct.zx_tvenc_pwrctrl* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.zx_tvenc_pwrctrl*, %struct.zx_tvenc_pwrctrl** %4, align 8
  %24 = getelementptr inbounds %struct.zx_tvenc_pwrctrl, %struct.zx_tvenc_pwrctrl* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.zx_tvenc_pwrctrl*, %struct.zx_tvenc_pwrctrl** %4, align 8
  %27 = getelementptr inbounds %struct.zx_tvenc_pwrctrl, %struct.zx_tvenc_pwrctrl* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @regmap_update_bits(i32 %22, i32 %25, i32 %28, i32 0)
  ret void
}

declare dso_local %struct.zx_tvenc* @to_zx_tvenc(%struct.drm_encoder*) #1

declare dso_local i32 @zx_writel(i64, i32) #1

declare dso_local i32 @vou_inf_disable(i32, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
