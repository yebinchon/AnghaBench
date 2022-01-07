; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/secboot/extr_gp10b.c_gp10b_secboot_new.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/secboot/extr_gp10b.c_gp10b_secboot_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_device = type { i32 }
%struct.nvkm_secboot = type { i32 }
%struct.gm200_secboot = type { %struct.nvkm_secboot }
%struct.nvkm_acr = type { i32 }

@NVKM_SECBOOT_FALCON_FECS = common dso_local global i32 0, align 4
@NVKM_SECBOOT_FALCON_GPCCS = common dso_local global i32 0, align 4
@NVKM_SECBOOT_FALCON_PMU = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@gp10b_secboot = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gp10b_secboot_new(%struct.nvkm_device* %0, i32 %1, %struct.nvkm_secboot** %2) #0 {
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
  %11 = load i32, i32* @NVKM_SECBOOT_FALCON_FECS, align 4
  %12 = call i32 @BIT(i32 %11)
  %13 = load i32, i32* @NVKM_SECBOOT_FALCON_GPCCS, align 4
  %14 = call i32 @BIT(i32 %13)
  %15 = or i32 %12, %14
  %16 = load i32, i32* @NVKM_SECBOOT_FALCON_PMU, align 4
  %17 = call i32 @BIT(i32 %16)
  %18 = or i32 %15, %17
  %19 = call %struct.nvkm_acr* @acr_r352_new(i32 %18)
  store %struct.nvkm_acr* %19, %struct.nvkm_acr** %10, align 8
  %20 = load %struct.nvkm_acr*, %struct.nvkm_acr** %10, align 8
  %21 = call i64 @IS_ERR(%struct.nvkm_acr* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %3
  %24 = load %struct.nvkm_acr*, %struct.nvkm_acr** %10, align 8
  %25 = call i32 @PTR_ERR(%struct.nvkm_acr* %24)
  store i32 %25, i32* %4, align 4
  br label %49

26:                                               ; preds = %3
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call %struct.gm200_secboot* @kzalloc(i32 4, i32 %27)
  store %struct.gm200_secboot* %28, %struct.gm200_secboot** %9, align 8
  %29 = load %struct.gm200_secboot*, %struct.gm200_secboot** %9, align 8
  %30 = icmp ne %struct.gm200_secboot* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %26
  store %struct.nvkm_secboot** null, %struct.nvkm_secboot*** %7, align 8
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %49

34:                                               ; preds = %26
  %35 = load %struct.gm200_secboot*, %struct.gm200_secboot** %9, align 8
  %36 = getelementptr inbounds %struct.gm200_secboot, %struct.gm200_secboot* %35, i32 0, i32 0
  %37 = load %struct.nvkm_secboot**, %struct.nvkm_secboot*** %7, align 8
  store %struct.nvkm_secboot* %36, %struct.nvkm_secboot** %37, align 8
  %38 = load %struct.nvkm_acr*, %struct.nvkm_acr** %10, align 8
  %39 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %40 = load i32, i32* %6, align 4
  %41 = load %struct.gm200_secboot*, %struct.gm200_secboot** %9, align 8
  %42 = getelementptr inbounds %struct.gm200_secboot, %struct.gm200_secboot* %41, i32 0, i32 0
  %43 = call i32 @nvkm_secboot_ctor(i32* @gp10b_secboot, %struct.nvkm_acr* %38, %struct.nvkm_device* %39, i32 %40, %struct.nvkm_secboot* %42)
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %8, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %34
  %47 = load i32, i32* %8, align 4
  store i32 %47, i32* %4, align 4
  br label %49

48:                                               ; preds = %34
  store i32 0, i32* %4, align 4
  br label %49

49:                                               ; preds = %48, %46, %31, %23
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local %struct.nvkm_acr* @acr_r352_new(i32) #1

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
