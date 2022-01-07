; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv04/extr_tvnv17.c_nv17_tv_restore.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv04/extr_tvnv17.c_nv17_tv_restore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { %struct.drm_device* }
%struct.drm_device = type { i32 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@NV_PRAMDAC_DACCLK = common dso_local global i64 0, align 8
@NV_DPMS_CLEARED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_encoder*)* @nv17_tv_restore to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nv17_tv_restore(%struct.drm_encoder* %0) #0 {
  %2 = alloca %struct.drm_encoder*, align 8
  %3 = alloca %struct.drm_device*, align 8
  store %struct.drm_encoder* %0, %struct.drm_encoder** %2, align 8
  %4 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %5 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %4, i32 0, i32 0
  %6 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  store %struct.drm_device* %6, %struct.drm_device** %3, align 8
  %7 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %8 = load i64, i64* @NV_PRAMDAC_DACCLK, align 8
  %9 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %10 = call i64 @nv04_dac_output_offset(%struct.drm_encoder* %9)
  %11 = add nsw i64 %8, %10
  %12 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %13 = call %struct.TYPE_6__* @nouveau_encoder(%struct.drm_encoder* %12)
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @NVWriteRAMDAC(%struct.drm_device* %7, i32 0, i64 %11, i32 %16)
  %18 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %19 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %20 = call %struct.TYPE_5__* @to_tv_enc(%struct.drm_encoder* %19)
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = call i32 @nv17_tv_state_load(%struct.drm_device* %18, i32* %21)
  %23 = load i32, i32* @NV_DPMS_CLEARED, align 4
  %24 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %25 = call %struct.TYPE_6__* @nouveau_encoder(%struct.drm_encoder* %24)
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  store i32 %23, i32* %26, align 4
  ret void
}

declare dso_local i32 @NVWriteRAMDAC(%struct.drm_device*, i32, i64, i32) #1

declare dso_local i64 @nv04_dac_output_offset(%struct.drm_encoder*) #1

declare dso_local %struct.TYPE_6__* @nouveau_encoder(%struct.drm_encoder*) #1

declare dso_local i32 @nv17_tv_state_load(%struct.drm_device*, i32*) #1

declare dso_local %struct.TYPE_5__* @to_tv_enc(%struct.drm_encoder*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
