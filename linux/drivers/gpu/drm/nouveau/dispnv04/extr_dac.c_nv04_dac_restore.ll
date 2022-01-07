; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv04/extr_dac.c_nv04_dac_restore.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv04/extr_dac.c_nv04_dac_restore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { %struct.drm_device* }
%struct.drm_device = type { i32 }
%struct.nouveau_encoder = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@NV_PRAMDAC_DACCLK = common dso_local global i64 0, align 8
@NV_DPMS_CLEARED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_encoder*)* @nv04_dac_restore to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nv04_dac_restore(%struct.drm_encoder* %0) #0 {
  %2 = alloca %struct.drm_encoder*, align 8
  %3 = alloca %struct.nouveau_encoder*, align 8
  %4 = alloca %struct.drm_device*, align 8
  store %struct.drm_encoder* %0, %struct.drm_encoder** %2, align 8
  %5 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %6 = call %struct.nouveau_encoder* @nouveau_encoder(%struct.drm_encoder* %5)
  store %struct.nouveau_encoder* %6, %struct.nouveau_encoder** %3, align 8
  %7 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %8 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %7, i32 0, i32 0
  %9 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  store %struct.drm_device* %9, %struct.drm_device** %4, align 8
  %10 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %11 = call i64 @nv_gf4_disp_arch(%struct.drm_device* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %24

13:                                               ; preds = %1
  %14 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %15 = load i64, i64* @NV_PRAMDAC_DACCLK, align 8
  %16 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %17 = call i64 @nv04_dac_output_offset(%struct.drm_encoder* %16)
  %18 = add nsw i64 %15, %17
  %19 = load %struct.nouveau_encoder*, %struct.nouveau_encoder** %3, align 8
  %20 = getelementptr inbounds %struct.nouveau_encoder, %struct.nouveau_encoder* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @NVWriteRAMDAC(%struct.drm_device* %14, i32 0, i64 %18, i32 %22)
  br label %24

24:                                               ; preds = %13, %1
  %25 = load i32, i32* @NV_DPMS_CLEARED, align 4
  %26 = load %struct.nouveau_encoder*, %struct.nouveau_encoder** %3, align 8
  %27 = getelementptr inbounds %struct.nouveau_encoder, %struct.nouveau_encoder* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  ret void
}

declare dso_local %struct.nouveau_encoder* @nouveau_encoder(%struct.drm_encoder*) #1

declare dso_local i64 @nv_gf4_disp_arch(%struct.drm_device*) #1

declare dso_local i32 @NVWriteRAMDAC(%struct.drm_device*, i32, i64, i32) #1

declare dso_local i64 @nv04_dac_output_offset(%struct.drm_encoder*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
