; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/secboot/extr_gp108.c_gp108_secboot_new.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/secboot/extr_gp108.c_gp108_secboot_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_device = type { i32 }
%struct.nvkm_secboot = type { i32 }
%struct.gm200_secboot = type { %struct.nvkm_secboot }
%struct.nvkm_acr = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.nvkm_acr*)* }

@NVKM_SECBOOT_FALCON_SEC2 = common dso_local global i32 0, align 4
@NVKM_SECBOOT_FALCON_FECS = common dso_local global i32 0, align 4
@NVKM_SECBOOT_FALCON_GPCCS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@gp102_secboot = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gp108_secboot_new(%struct.nvkm_device* %0, i32 %1, %struct.nvkm_secboot** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nvkm_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nvkm_secboot**, align 8
  %8 = alloca %struct.gm200_secboot*, align 8
  %9 = alloca %struct.nvkm_acr*, align 8
  store %struct.nvkm_device* %0, %struct.nvkm_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.nvkm_secboot** %2, %struct.nvkm_secboot*** %7, align 8
  %10 = load i32, i32* @NVKM_SECBOOT_FALCON_SEC2, align 4
  %11 = load i32, i32* @NVKM_SECBOOT_FALCON_FECS, align 4
  %12 = call i32 @BIT(i32 %11)
  %13 = load i32, i32* @NVKM_SECBOOT_FALCON_GPCCS, align 4
  %14 = call i32 @BIT(i32 %13)
  %15 = or i32 %12, %14
  %16 = load i32, i32* @NVKM_SECBOOT_FALCON_SEC2, align 4
  %17 = call i32 @BIT(i32 %16)
  %18 = or i32 %15, %17
  %19 = call %struct.nvkm_acr* @acr_r370_new(i32 %10, i32 %18)
  store %struct.nvkm_acr* %19, %struct.nvkm_acr** %9, align 8
  %20 = load %struct.nvkm_acr*, %struct.nvkm_acr** %9, align 8
  %21 = call i64 @IS_ERR(%struct.nvkm_acr* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %3
  %24 = load %struct.nvkm_acr*, %struct.nvkm_acr** %9, align 8
  %25 = call i32 @PTR_ERR(%struct.nvkm_acr* %24)
  store i32 %25, i32* %4, align 4
  br label %50

26:                                               ; preds = %3
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call %struct.gm200_secboot* @kzalloc(i32 4, i32 %27)
  store %struct.gm200_secboot* %28, %struct.gm200_secboot** %8, align 8
  %29 = icmp ne %struct.gm200_secboot* %28, null
  br i1 %29, label %40, label %30

30:                                               ; preds = %26
  %31 = load %struct.nvkm_acr*, %struct.nvkm_acr** %9, align 8
  %32 = getelementptr inbounds %struct.nvkm_acr, %struct.nvkm_acr* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32 (%struct.nvkm_acr*)*, i32 (%struct.nvkm_acr*)** %34, align 8
  %36 = load %struct.nvkm_acr*, %struct.nvkm_acr** %9, align 8
  %37 = call i32 %35(%struct.nvkm_acr* %36)
  %38 = load i32, i32* @ENOMEM, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %50

40:                                               ; preds = %26
  %41 = load %struct.gm200_secboot*, %struct.gm200_secboot** %8, align 8
  %42 = getelementptr inbounds %struct.gm200_secboot, %struct.gm200_secboot* %41, i32 0, i32 0
  %43 = load %struct.nvkm_secboot**, %struct.nvkm_secboot*** %7, align 8
  store %struct.nvkm_secboot* %42, %struct.nvkm_secboot** %43, align 8
  %44 = load %struct.nvkm_acr*, %struct.nvkm_acr** %9, align 8
  %45 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %46 = load i32, i32* %6, align 4
  %47 = load %struct.gm200_secboot*, %struct.gm200_secboot** %8, align 8
  %48 = getelementptr inbounds %struct.gm200_secboot, %struct.gm200_secboot* %47, i32 0, i32 0
  %49 = call i32 @nvkm_secboot_ctor(i32* @gp102_secboot, %struct.nvkm_acr* %44, %struct.nvkm_device* %45, i32 %46, %struct.nvkm_secboot* %48)
  store i32 %49, i32* %4, align 4
  br label %50

50:                                               ; preds = %40, %30, %23
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local %struct.nvkm_acr* @acr_r370_new(i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i64 @IS_ERR(%struct.nvkm_acr*) #1

declare dso_local i32 @PTR_ERR(%struct.nvkm_acr*) #1

declare dso_local %struct.gm200_secboot* @kzalloc(i32, i32) #1

declare dso_local i32 @nvkm_secboot_ctor(i32*, %struct.nvkm_acr*, %struct.nvkm_device*, i32, %struct.nvkm_secboot*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
