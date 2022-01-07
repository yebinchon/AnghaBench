; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/secboot/extr_gm200.c_gm200_secboot_new.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/secboot/extr_gm200.c_gm200_secboot_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_device = type { i32 }
%struct.nvkm_secboot = type { i32 }
%struct.gm200_secboot = type { %struct.nvkm_secboot }
%struct.nvkm_acr = type { i32 }

@NVKM_SECBOOT_FALCON_FECS = common dso_local global i32 0, align 4
@NVKM_SECBOOT_FALCON_GPCCS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@gm200_secboot = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gm200_secboot_new(%struct.nvkm_device* %0, i32 %1, %struct.nvkm_secboot** %2) #0 {
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
  %16 = call %struct.nvkm_acr* @acr_r361_new(i32 %15)
  store %struct.nvkm_acr* %16, %struct.nvkm_acr** %10, align 8
  %17 = load %struct.nvkm_acr*, %struct.nvkm_acr** %10, align 8
  %18 = call i64 @IS_ERR(%struct.nvkm_acr* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = load %struct.nvkm_acr*, %struct.nvkm_acr** %10, align 8
  %22 = call i32 @PTR_ERR(%struct.nvkm_acr* %21)
  store i32 %22, i32* %4, align 4
  br label %46

23:                                               ; preds = %3
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call %struct.gm200_secboot* @kzalloc(i32 4, i32 %24)
  store %struct.gm200_secboot* %25, %struct.gm200_secboot** %9, align 8
  %26 = load %struct.gm200_secboot*, %struct.gm200_secboot** %9, align 8
  %27 = icmp ne %struct.gm200_secboot* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %23
  store %struct.nvkm_secboot** null, %struct.nvkm_secboot*** %7, align 8
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %46

31:                                               ; preds = %23
  %32 = load %struct.gm200_secboot*, %struct.gm200_secboot** %9, align 8
  %33 = getelementptr inbounds %struct.gm200_secboot, %struct.gm200_secboot* %32, i32 0, i32 0
  %34 = load %struct.nvkm_secboot**, %struct.nvkm_secboot*** %7, align 8
  store %struct.nvkm_secboot* %33, %struct.nvkm_secboot** %34, align 8
  %35 = load %struct.nvkm_acr*, %struct.nvkm_acr** %10, align 8
  %36 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %37 = load i32, i32* %6, align 4
  %38 = load %struct.gm200_secboot*, %struct.gm200_secboot** %9, align 8
  %39 = getelementptr inbounds %struct.gm200_secboot, %struct.gm200_secboot* %38, i32 0, i32 0
  %40 = call i32 @nvkm_secboot_ctor(i32* @gm200_secboot, %struct.nvkm_acr* %35, %struct.nvkm_device* %36, i32 %37, %struct.nvkm_secboot* %39)
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %31
  %44 = load i32, i32* %8, align 4
  store i32 %44, i32* %4, align 4
  br label %46

45:                                               ; preds = %31
  store i32 0, i32* %4, align 4
  br label %46

46:                                               ; preds = %45, %43, %28, %20
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local %struct.nvkm_acr* @acr_r361_new(i32) #1

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
