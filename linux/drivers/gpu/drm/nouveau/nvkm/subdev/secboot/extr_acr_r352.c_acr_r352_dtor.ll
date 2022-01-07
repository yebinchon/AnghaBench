; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/secboot/extr_acr_r352.c_acr_r352_dtor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/secboot/extr_acr_r352.c_acr_r352_dtor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_acr = type { i64 }
%struct.acr_r352 = type { i32, i32, %struct.acr_r352*, %struct.acr_r352*, i32 }

@NVKM_SECBOOT_FALCON_PMU = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvkm_acr*)* @acr_r352_dtor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @acr_r352_dtor(%struct.nvkm_acr* %0) #0 {
  %2 = alloca %struct.nvkm_acr*, align 8
  %3 = alloca %struct.acr_r352*, align 8
  store %struct.nvkm_acr* %0, %struct.nvkm_acr** %2, align 8
  %4 = load %struct.nvkm_acr*, %struct.nvkm_acr** %2, align 8
  %5 = call %struct.acr_r352* @acr_r352(%struct.nvkm_acr* %4)
  store %struct.acr_r352* %5, %struct.acr_r352** %3, align 8
  %6 = load %struct.acr_r352*, %struct.acr_r352** %3, align 8
  %7 = getelementptr inbounds %struct.acr_r352, %struct.acr_r352* %6, i32 0, i32 4
  %8 = call i32 @nvkm_gpuobj_del(i32* %7)
  %9 = load %struct.nvkm_acr*, %struct.nvkm_acr** %2, align 8
  %10 = getelementptr inbounds %struct.nvkm_acr, %struct.nvkm_acr* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @NVKM_SECBOOT_FALCON_PMU, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %19

14:                                               ; preds = %1
  %15 = load %struct.acr_r352*, %struct.acr_r352** %3, align 8
  %16 = getelementptr inbounds %struct.acr_r352, %struct.acr_r352* %15, i32 0, i32 3
  %17 = load %struct.acr_r352*, %struct.acr_r352** %16, align 8
  %18 = call i32 @kfree(%struct.acr_r352* %17)
  br label %19

19:                                               ; preds = %14, %1
  %20 = load %struct.acr_r352*, %struct.acr_r352** %3, align 8
  %21 = getelementptr inbounds %struct.acr_r352, %struct.acr_r352* %20, i32 0, i32 2
  %22 = load %struct.acr_r352*, %struct.acr_r352** %21, align 8
  %23 = call i32 @kfree(%struct.acr_r352* %22)
  %24 = load %struct.acr_r352*, %struct.acr_r352** %3, align 8
  %25 = getelementptr inbounds %struct.acr_r352, %struct.acr_r352* %24, i32 0, i32 1
  %26 = call i32 @nvkm_gpuobj_del(i32* %25)
  %27 = load %struct.acr_r352*, %struct.acr_r352** %3, align 8
  %28 = getelementptr inbounds %struct.acr_r352, %struct.acr_r352* %27, i32 0, i32 0
  %29 = call i32 @nvkm_gpuobj_del(i32* %28)
  %30 = load %struct.acr_r352*, %struct.acr_r352** %3, align 8
  %31 = call i32 @kfree(%struct.acr_r352* %30)
  ret void
}

declare dso_local %struct.acr_r352* @acr_r352(%struct.nvkm_acr*) #1

declare dso_local i32 @nvkm_gpuobj_del(i32*) #1

declare dso_local i32 @kfree(%struct.acr_r352*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
