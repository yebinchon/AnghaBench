; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/secboot/extr_gp102.c_gp102_secboot_new.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/secboot/extr_gp102.c_gp102_secboot_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_device = type { i32 }
%struct.nvkm_secboot = type { i32 }
%struct.gm200_secboot = type { %struct.nvkm_secboot }
%struct.nvkm_acr = type { i32 }

@NVKM_SECBOOT_FALCON_SEC2 = common dso_local global i32 0, align 4
@NVKM_SECBOOT_FALCON_FECS = common dso_local global i32 0, align 4
@NVKM_SECBOOT_FALCON_GPCCS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@gp102_secboot = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gp102_secboot_new(%struct.nvkm_device* %0, i32 %1, %struct.nvkm_secboot** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nvkm_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nvkm_secboot**, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.gm200_secboot*, align 8
  %10 = alloca %struct.nvkm_acr*, align 8
  store %struct.nvkm_device* %0, %struct.nvkm_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.nvkm_secboot** %2, %struct.nvkm_secboot*** %7, align 8
  %11 = load i32, i32* @NVKM_SECBOOT_FALCON_SEC2, align 4
  %12 = load i32, i32* @NVKM_SECBOOT_FALCON_FECS, align 4
  %13 = call i32 @BIT(i32 %12)
  %14 = load i32, i32* @NVKM_SECBOOT_FALCON_GPCCS, align 4
  %15 = call i32 @BIT(i32 %14)
  %16 = or i32 %13, %15
  %17 = load i32, i32* @NVKM_SECBOOT_FALCON_SEC2, align 4
  %18 = call i32 @BIT(i32 %17)
  %19 = or i32 %16, %18
  %20 = call %struct.nvkm_acr* @acr_r367_new(i32 %11, i32 %19)
  store %struct.nvkm_acr* %20, %struct.nvkm_acr** %10, align 8
  %21 = load %struct.nvkm_acr*, %struct.nvkm_acr** %10, align 8
  %22 = call i64 @IS_ERR(%struct.nvkm_acr* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %3
  %25 = load %struct.nvkm_acr*, %struct.nvkm_acr** %10, align 8
  %26 = call i32 @PTR_ERR(%struct.nvkm_acr* %25)
  store i32 %26, i32* %4, align 4
  br label %50

27:                                               ; preds = %3
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call %struct.gm200_secboot* @kzalloc(i32 4, i32 %28)
  store %struct.gm200_secboot* %29, %struct.gm200_secboot** %9, align 8
  %30 = load %struct.gm200_secboot*, %struct.gm200_secboot** %9, align 8
  %31 = icmp ne %struct.gm200_secboot* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %27
  store %struct.nvkm_secboot** null, %struct.nvkm_secboot*** %7, align 8
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %50

35:                                               ; preds = %27
  %36 = load %struct.gm200_secboot*, %struct.gm200_secboot** %9, align 8
  %37 = getelementptr inbounds %struct.gm200_secboot, %struct.gm200_secboot* %36, i32 0, i32 0
  %38 = load %struct.nvkm_secboot**, %struct.nvkm_secboot*** %7, align 8
  store %struct.nvkm_secboot* %37, %struct.nvkm_secboot** %38, align 8
  %39 = load %struct.nvkm_acr*, %struct.nvkm_acr** %10, align 8
  %40 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %41 = load i32, i32* %6, align 4
  %42 = load %struct.gm200_secboot*, %struct.gm200_secboot** %9, align 8
  %43 = getelementptr inbounds %struct.gm200_secboot, %struct.gm200_secboot* %42, i32 0, i32 0
  %44 = call i32 @nvkm_secboot_ctor(i32* @gp102_secboot, %struct.nvkm_acr* %39, %struct.nvkm_device* %40, i32 %41, %struct.nvkm_secboot* %43)
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %35
  %48 = load i32, i32* %8, align 4
  store i32 %48, i32* %4, align 4
  br label %50

49:                                               ; preds = %35
  store i32 0, i32* %4, align 4
  br label %50

50:                                               ; preds = %49, %47, %32, %24
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local %struct.nvkm_acr* @acr_r367_new(i32, i32) #1

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
