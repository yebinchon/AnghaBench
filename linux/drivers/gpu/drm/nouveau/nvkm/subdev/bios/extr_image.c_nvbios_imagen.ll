; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extr_image.c_nvbios_imagen.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extr_image.c_nvbios_imagen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_bios = type { %struct.nvkm_subdev }
%struct.nvkm_subdev = type { i32 }
%struct.nvbios_image = type { i32, i32, i32, i64 }
%struct.nvbios_pcirT = type { i32, i32, i32 }
%struct.nvbios_npdeT = type { i32, i32 }

@.str = private unnamed_addr constant [36 x i8] c"%08x: ROM signature (%04x) unknown\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_bios*, %struct.nvbios_image*)* @nvbios_imagen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvbios_imagen(%struct.nvkm_bios* %0, %struct.nvbios_image* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nvkm_bios*, align 8
  %5 = alloca %struct.nvbios_image*, align 8
  %6 = alloca %struct.nvkm_subdev*, align 8
  %7 = alloca %struct.nvbios_pcirT, align 4
  %8 = alloca %struct.nvbios_npdeT, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.nvkm_bios* %0, %struct.nvkm_bios** %4, align 8
  store %struct.nvbios_image* %1, %struct.nvbios_image** %5, align 8
  %12 = load %struct.nvkm_bios*, %struct.nvkm_bios** %4, align 8
  %13 = getelementptr inbounds %struct.nvkm_bios, %struct.nvkm_bios* %12, i32 0, i32 0
  store %struct.nvkm_subdev* %13, %struct.nvkm_subdev** %6, align 8
  %14 = load %struct.nvkm_bios*, %struct.nvkm_bios** %4, align 8
  %15 = load %struct.nvbios_image*, %struct.nvbios_image** %5, align 8
  %16 = getelementptr inbounds %struct.nvbios_image, %struct.nvbios_image* %15, i32 0, i32 3
  %17 = load i64, i64* %16, align 8
  %18 = add nsw i64 %17, 0
  %19 = call i32 @nvbios_rd16(%struct.nvkm_bios* %14, i64 %18)
  store i32 %19, i32* %11, align 4
  switch i32 %19, label %21 [
    i32 43605, label %20
    i32 47991, label %20
    i32 20054, label %20
  ]

20:                                               ; preds = %2, %2, %2
  br label %28

21:                                               ; preds = %2
  %22 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %6, align 8
  %23 = load %struct.nvbios_image*, %struct.nvbios_image** %5, align 8
  %24 = getelementptr inbounds %struct.nvbios_image, %struct.nvbios_image* %23, i32 0, i32 3
  %25 = load i64, i64* %24, align 8
  %26 = load i32, i32* %11, align 4
  %27 = call i32 @nvkm_debug(%struct.nvkm_subdev* %22, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i64 %25, i32 %26)
  store i32 0, i32* %3, align 4
  br label %74

28:                                               ; preds = %20
  %29 = load %struct.nvkm_bios*, %struct.nvkm_bios** %4, align 8
  %30 = load %struct.nvbios_image*, %struct.nvbios_image** %5, align 8
  %31 = getelementptr inbounds %struct.nvbios_image, %struct.nvbios_image* %30, i32 0, i32 3
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @nvbios_pcirTp(%struct.nvkm_bios* %29, i64 %32, i32* %9, i32* %10, %struct.nvbios_pcirT* %7)
  store i32 %33, i32* %11, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %28
  store i32 0, i32* %3, align 4
  br label %74

36:                                               ; preds = %28
  %37 = getelementptr inbounds %struct.nvbios_pcirT, %struct.nvbios_pcirT* %7, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.nvbios_image*, %struct.nvbios_image** %5, align 8
  %40 = getelementptr inbounds %struct.nvbios_image, %struct.nvbios_image* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 8
  %41 = getelementptr inbounds %struct.nvbios_pcirT, %struct.nvbios_pcirT* %7, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.nvbios_image*, %struct.nvbios_image** %5, align 8
  %44 = getelementptr inbounds %struct.nvbios_image, %struct.nvbios_image* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  %45 = getelementptr inbounds %struct.nvbios_pcirT, %struct.nvbios_pcirT* %7, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.nvbios_image*, %struct.nvbios_image** %5, align 8
  %48 = getelementptr inbounds %struct.nvbios_image, %struct.nvbios_image* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  %49 = load %struct.nvbios_image*, %struct.nvbios_image** %5, align 8
  %50 = getelementptr inbounds %struct.nvbios_image, %struct.nvbios_image* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp ne i32 %51, 112
  br i1 %52, label %53, label %70

53:                                               ; preds = %36
  %54 = load %struct.nvkm_bios*, %struct.nvkm_bios** %4, align 8
  %55 = load %struct.nvbios_image*, %struct.nvbios_image** %5, align 8
  %56 = getelementptr inbounds %struct.nvbios_image, %struct.nvbios_image* %55, i32 0, i32 3
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @nvbios_npdeTp(%struct.nvkm_bios* %54, i64 %57, %struct.nvbios_npdeT* %8)
  store i32 %58, i32* %11, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %53
  store i32 1, i32* %3, align 4
  br label %74

61:                                               ; preds = %53
  %62 = getelementptr inbounds %struct.nvbios_npdeT, %struct.nvbios_npdeT* %8, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.nvbios_image*, %struct.nvbios_image** %5, align 8
  %65 = getelementptr inbounds %struct.nvbios_image, %struct.nvbios_image* %64, i32 0, i32 2
  store i32 %63, i32* %65, align 8
  %66 = getelementptr inbounds %struct.nvbios_npdeT, %struct.nvbios_npdeT* %8, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.nvbios_image*, %struct.nvbios_image** %5, align 8
  %69 = getelementptr inbounds %struct.nvbios_image, %struct.nvbios_image* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 4
  br label %73

70:                                               ; preds = %36
  %71 = load %struct.nvbios_image*, %struct.nvbios_image** %5, align 8
  %72 = getelementptr inbounds %struct.nvbios_image, %struct.nvbios_image* %71, i32 0, i32 1
  store i32 1, i32* %72, align 4
  br label %73

73:                                               ; preds = %70, %61
  store i32 1, i32* %3, align 4
  br label %74

74:                                               ; preds = %73, %60, %35, %21
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local i32 @nvbios_rd16(%struct.nvkm_bios*, i64) #1

declare dso_local i32 @nvkm_debug(%struct.nvkm_subdev*, i8*, i64, i32) #1

declare dso_local i32 @nvbios_pcirTp(%struct.nvkm_bios*, i64, i32*, i32*, %struct.nvbios_pcirT*) #1

declare dso_local i32 @nvbios_npdeTp(%struct.nvkm_bios*, i64, %struct.nvbios_npdeT*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
