; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extr_M0203.c_nvbios_M0203Em.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extr_M0203.c_nvbios_M0203Em.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_bios = type { %struct.nvkm_subdev }
%struct.nvkm_subdev = type { i32 }
%struct.nvbios_M0203E = type { i32 }
%struct.nvbios_M0203T = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"M0203T not found\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"M0203T type %02x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nvbios_M0203Em(%struct.nvkm_bios* %0, i32 %1, i32* %2, i32* %3, %struct.nvbios_M0203E* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.nvkm_bios*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.nvbios_M0203E*, align 8
  %12 = alloca %struct.nvkm_subdev*, align 8
  %13 = alloca %struct.nvbios_M0203T, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.nvkm_bios* %0, %struct.nvkm_bios** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store %struct.nvbios_M0203E* %4, %struct.nvbios_M0203E** %11, align 8
  %18 = load %struct.nvkm_bios*, %struct.nvkm_bios** %7, align 8
  %19 = getelementptr inbounds %struct.nvkm_bios, %struct.nvkm_bios* %18, i32 0, i32 0
  store %struct.nvkm_subdev* %19, %struct.nvkm_subdev** %12, align 8
  store i32 255, i32* %16, align 4
  %20 = load %struct.nvkm_bios*, %struct.nvkm_bios** %7, align 8
  %21 = load i32*, i32** %9, align 8
  %22 = load i32*, i32** %10, align 8
  %23 = call i32 @nvbios_M0203Tp(%struct.nvkm_bios* %20, i32* %21, i32* %22, i32* %14, i32* %15, %struct.nvbios_M0203T* %13)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %5
  %26 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %12, align 8
  %27 = call i32 (%struct.nvkm_subdev*, i8*, ...) @nvkm_warn(%struct.nvkm_subdev* %26, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %57

28:                                               ; preds = %5
  br label %29

29:                                               ; preds = %47, %28
  %30 = load %struct.nvkm_bios*, %struct.nvkm_bios** %7, align 8
  %31 = load i32, i32* %16, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %16, align 4
  %33 = load i32*, i32** %9, align 8
  %34 = load i32*, i32** %10, align 8
  %35 = load %struct.nvbios_M0203E*, %struct.nvbios_M0203E** %11, align 8
  %36 = call i32 @nvbios_M0203Ep(%struct.nvkm_bios* %30, i32 %32, i32* %33, i32* %34, %struct.nvbios_M0203E* %35)
  store i32 %36, i32* %17, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %55

38:                                               ; preds = %29
  %39 = getelementptr inbounds %struct.nvbios_M0203T, %struct.nvbios_M0203T* %13, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  switch i32 %40, label %50 [
    i32 128, label %41
  ]

41:                                               ; preds = %38
  %42 = load %struct.nvbios_M0203E*, %struct.nvbios_M0203E** %11, align 8
  %43 = getelementptr inbounds %struct.nvbios_M0203E, %struct.nvbios_M0203E* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp ne i32 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %41
  br label %29

48:                                               ; preds = %41
  %49 = load i32, i32* %17, align 4
  store i32 %49, i32* %6, align 4
  br label %57

50:                                               ; preds = %38
  %51 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %12, align 8
  %52 = getelementptr inbounds %struct.nvbios_M0203T, %struct.nvbios_M0203T* %13, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 (%struct.nvkm_subdev*, i8*, ...) @nvkm_warn(%struct.nvkm_subdev* %51, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %53)
  store i32 0, i32* %6, align 4
  br label %57

55:                                               ; preds = %29
  %56 = load i32, i32* %17, align 4
  store i32 %56, i32* %6, align 4
  br label %57

57:                                               ; preds = %55, %50, %48, %25
  %58 = load i32, i32* %6, align 4
  ret i32 %58
}

declare dso_local i32 @nvbios_M0203Tp(%struct.nvkm_bios*, i32*, i32*, i32*, i32*, %struct.nvbios_M0203T*) #1

declare dso_local i32 @nvkm_warn(%struct.nvkm_subdev*, i8*, ...) #1

declare dso_local i32 @nvbios_M0203Ep(%struct.nvkm_bios*, i32, i32*, i32*, %struct.nvbios_M0203E*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
