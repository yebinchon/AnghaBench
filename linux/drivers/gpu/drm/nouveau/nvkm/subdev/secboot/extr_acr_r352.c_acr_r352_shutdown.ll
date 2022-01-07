; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/secboot/extr_acr_r352.c_acr_r352_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/secboot/extr_acr_r352.c_acr_r352_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acr_r352 = type { i32*, i64 }
%struct.nvkm_secboot = type { i32, i32, %struct.TYPE_2__*, %struct.nvkm_subdev }
%struct.TYPE_2__ = type { i32 (%struct.nvkm_secboot*, i64, i32)* }
%struct.nvkm_subdev = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"running HS unload blob\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"HS unload failed, ret 0x%08x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"HS unload blob completed\0A\00", align 1
@NVKM_SECBOOT_FALCON_END = common dso_local global i32 0, align 4
@NON_SECURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acr_r352*, %struct.nvkm_secboot*)* @acr_r352_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acr_r352_shutdown(%struct.acr_r352* %0, %struct.nvkm_secboot* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.acr_r352*, align 8
  %5 = alloca %struct.nvkm_secboot*, align 8
  %6 = alloca %struct.nvkm_subdev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.acr_r352* %0, %struct.acr_r352** %4, align 8
  store %struct.nvkm_secboot* %1, %struct.nvkm_secboot** %5, align 8
  %9 = load %struct.nvkm_secboot*, %struct.nvkm_secboot** %5, align 8
  %10 = getelementptr inbounds %struct.nvkm_secboot, %struct.nvkm_secboot* %9, i32 0, i32 3
  store %struct.nvkm_subdev* %10, %struct.nvkm_subdev** %6, align 8
  %11 = load %struct.acr_r352*, %struct.acr_r352** %4, align 8
  %12 = getelementptr inbounds %struct.acr_r352, %struct.acr_r352* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %55

15:                                               ; preds = %2
  %16 = load %struct.nvkm_secboot*, %struct.nvkm_secboot** %5, align 8
  %17 = getelementptr inbounds %struct.nvkm_secboot, %struct.nvkm_secboot* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %55

20:                                               ; preds = %15
  %21 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %6, align 8
  %22 = call i32 @nvkm_debug(%struct.nvkm_subdev* %21, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %23 = load %struct.nvkm_secboot*, %struct.nvkm_secboot** %5, align 8
  %24 = getelementptr inbounds %struct.nvkm_secboot, %struct.nvkm_secboot* %23, i32 0, i32 2
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32 (%struct.nvkm_secboot*, i64, i32)*, i32 (%struct.nvkm_secboot*, i64, i32)** %26, align 8
  %28 = load %struct.nvkm_secboot*, %struct.nvkm_secboot** %5, align 8
  %29 = load %struct.acr_r352*, %struct.acr_r352** %4, align 8
  %30 = getelementptr inbounds %struct.acr_r352, %struct.acr_r352* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.nvkm_secboot*, %struct.nvkm_secboot** %5, align 8
  %33 = getelementptr inbounds %struct.nvkm_secboot, %struct.nvkm_secboot* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 %27(%struct.nvkm_secboot* %28, i64 %31, i32 %34)
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %20
  %39 = load i32, i32* %8, align 4
  store i32 %39, i32* %3, align 4
  br label %74

40:                                               ; preds = %20
  %41 = load i32, i32* %8, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %40
  %44 = load i32, i32* %8, align 4
  %45 = icmp ne i32 %44, 29
  br i1 %45, label %46, label %52

46:                                               ; preds = %43
  %47 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %6, align 8
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @nvkm_error(%struct.nvkm_subdev* %47, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %48)
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %3, align 4
  br label %74

52:                                               ; preds = %43, %40
  %53 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %6, align 8
  %54 = call i32 @nvkm_debug(%struct.nvkm_subdev* %53, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  br label %55

55:                                               ; preds = %52, %15, %2
  store i32 0, i32* %7, align 4
  br label %56

56:                                               ; preds = %68, %55
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* @NVKM_SECBOOT_FALCON_END, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %71

60:                                               ; preds = %56
  %61 = load i32, i32* @NON_SECURE, align 4
  %62 = load %struct.acr_r352*, %struct.acr_r352** %4, align 8
  %63 = getelementptr inbounds %struct.acr_r352, %struct.acr_r352* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %7, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  store i32 %61, i32* %67, align 4
  br label %68

68:                                               ; preds = %60
  %69 = load i32, i32* %7, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %7, align 4
  br label %56

71:                                               ; preds = %56
  %72 = load %struct.nvkm_secboot*, %struct.nvkm_secboot** %5, align 8
  %73 = getelementptr inbounds %struct.nvkm_secboot, %struct.nvkm_secboot* %72, i32 0, i32 0
  store i32 0, i32* %73, align 8
  store i32 0, i32* %3, align 4
  br label %74

74:                                               ; preds = %71, %46, %38
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local i32 @nvkm_debug(%struct.nvkm_subdev*, i8*) #1

declare dso_local i32 @nvkm_error(%struct.nvkm_subdev*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
