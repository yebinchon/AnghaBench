; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/devinit/extr_nv50.c_nv50_devinit_preinit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/devinit/extr_nv50.c_nv50_devinit_preinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_devinit = type { i32, %struct.nvkm_subdev }
%struct.nvkm_subdev = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }

@NVKM_ENGINE_DISP = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"adaptor not initialised\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nv50_devinit_preinit(%struct.nvkm_devinit* %0) #0 {
  %2 = alloca %struct.nvkm_devinit*, align 8
  %3 = alloca %struct.nvkm_subdev*, align 8
  %4 = alloca %struct.nvkm_device*, align 8
  %5 = alloca i64, align 8
  store %struct.nvkm_devinit* %0, %struct.nvkm_devinit** %2, align 8
  %6 = load %struct.nvkm_devinit*, %struct.nvkm_devinit** %2, align 8
  %7 = getelementptr inbounds %struct.nvkm_devinit, %struct.nvkm_devinit* %6, i32 0, i32 1
  store %struct.nvkm_subdev* %7, %struct.nvkm_subdev** %3, align 8
  %8 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %3, align 8
  %9 = getelementptr inbounds %struct.nvkm_subdev, %struct.nvkm_subdev* %8, i32 0, i32 0
  %10 = load %struct.nvkm_device*, %struct.nvkm_device** %9, align 8
  store %struct.nvkm_device* %10, %struct.nvkm_device** %4, align 8
  %11 = load %struct.nvkm_devinit*, %struct.nvkm_devinit** %2, align 8
  %12 = getelementptr inbounds %struct.nvkm_devinit, %struct.nvkm_devinit* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %27, label %15

15:                                               ; preds = %1
  %16 = load %struct.nvkm_devinit*, %struct.nvkm_devinit** %2, align 8
  %17 = call i64 @nvkm_devinit_disable(%struct.nvkm_devinit* %16)
  store i64 %17, i64* %5, align 8
  %18 = load i64, i64* %5, align 8
  %19 = load i64, i64* @NVKM_ENGINE_DISP, align 8
  %20 = shl i64 1, %19
  %21 = and i64 %18, %20
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %15
  %24 = load %struct.nvkm_devinit*, %struct.nvkm_devinit** %2, align 8
  %25 = getelementptr inbounds %struct.nvkm_devinit, %struct.nvkm_devinit* %24, i32 0, i32 0
  store i32 1, i32* %25, align 8
  br label %26

26:                                               ; preds = %23, %15
  br label %27

27:                                               ; preds = %26, %1
  %28 = load %struct.nvkm_devinit*, %struct.nvkm_devinit** %2, align 8
  %29 = getelementptr inbounds %struct.nvkm_devinit, %struct.nvkm_devinit* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %46, label %32

32:                                               ; preds = %27
  %33 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %34 = call i32 @nvkm_rdvgac(%struct.nvkm_device* %33, i32 0, i32 0)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %45, label %36

36:                                               ; preds = %32
  %37 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %38 = call i32 @nvkm_rdvgac(%struct.nvkm_device* %37, i32 0, i32 26)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %45, label %40

40:                                               ; preds = %36
  %41 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %3, align 8
  %42 = call i32 @nvkm_debug(%struct.nvkm_subdev* %41, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %43 = load %struct.nvkm_devinit*, %struct.nvkm_devinit** %2, align 8
  %44 = getelementptr inbounds %struct.nvkm_devinit, %struct.nvkm_devinit* %43, i32 0, i32 0
  store i32 1, i32* %44, align 8
  br label %45

45:                                               ; preds = %40, %36, %32
  br label %46

46:                                               ; preds = %45, %27
  ret void
}

declare dso_local i64 @nvkm_devinit_disable(%struct.nvkm_devinit*) #1

declare dso_local i32 @nvkm_rdvgac(%struct.nvkm_device*, i32, i32) #1

declare dso_local i32 @nvkm_debug(%struct.nvkm_subdev*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
