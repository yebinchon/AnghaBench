; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/zte/extr_zx_hdmi.c_zx_hdmi_encoder_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/zte/extr_zx_hdmi.c_zx_hdmi_encoder_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { i32 }
%struct.zx_hdmi = type { i32, i32, i32 }

@VOU_HDMI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_encoder*)* @zx_hdmi_encoder_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zx_hdmi_encoder_enable(%struct.drm_encoder* %0) #0 {
  %2 = alloca %struct.drm_encoder*, align 8
  %3 = alloca %struct.zx_hdmi*, align 8
  store %struct.drm_encoder* %0, %struct.drm_encoder** %2, align 8
  %4 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %5 = call %struct.zx_hdmi* @to_zx_hdmi(%struct.drm_encoder* %4)
  store %struct.zx_hdmi* %5, %struct.zx_hdmi** %3, align 8
  %6 = load %struct.zx_hdmi*, %struct.zx_hdmi** %3, align 8
  %7 = getelementptr inbounds %struct.zx_hdmi, %struct.zx_hdmi* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @clk_prepare_enable(i32 %8)
  %10 = load %struct.zx_hdmi*, %struct.zx_hdmi** %3, align 8
  %11 = getelementptr inbounds %struct.zx_hdmi, %struct.zx_hdmi* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @clk_prepare_enable(i32 %12)
  %14 = load %struct.zx_hdmi*, %struct.zx_hdmi** %3, align 8
  %15 = getelementptr inbounds %struct.zx_hdmi, %struct.zx_hdmi* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @clk_prepare_enable(i32 %16)
  %18 = load %struct.zx_hdmi*, %struct.zx_hdmi** %3, align 8
  %19 = call i32 @zx_hdmi_hw_enable(%struct.zx_hdmi* %18)
  %20 = load i32, i32* @VOU_HDMI, align 4
  %21 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %22 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @vou_inf_enable(i32 %20, i32 %23)
  ret void
}

declare dso_local %struct.zx_hdmi* @to_zx_hdmi(%struct.drm_encoder*) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @zx_hdmi_hw_enable(%struct.zx_hdmi*) #1

declare dso_local i32 @vou_inf_enable(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
