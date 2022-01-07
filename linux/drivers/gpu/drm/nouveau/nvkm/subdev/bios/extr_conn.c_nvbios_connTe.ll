; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extr_conn.c_nvbios_connTe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extr_conn.c_nvbios_connTe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_bios = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nvbios_connTe(%struct.nvkm_bios* %0, i32* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.nvkm_bios*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.nvkm_bios* %0, %struct.nvkm_bios** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %14 = load %struct.nvkm_bios*, %struct.nvkm_bios** %7, align 8
  %15 = load i32*, i32** %8, align 8
  %16 = load i32*, i32** %9, align 8
  %17 = load i32*, i32** %10, align 8
  %18 = load i32*, i32** %11, align 8
  %19 = call i32 @dcb_table(%struct.nvkm_bios* %14, i32* %15, i32* %16, i32* %17, i32* %18)
  store i32 %19, i32* %12, align 4
  %20 = load i32, i32* %12, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %60

22:                                               ; preds = %5
  %23 = load i32*, i32** %8, align 8
  %24 = load i32, i32* %23, align 4
  %25 = icmp sge i32 %24, 48
  br i1 %25, label %26, label %60

26:                                               ; preds = %22
  %27 = load i32*, i32** %9, align 8
  %28 = load i32, i32* %27, align 4
  %29 = icmp sge i32 %28, 22
  br i1 %29, label %30, label %60

30:                                               ; preds = %26
  %31 = load %struct.nvkm_bios*, %struct.nvkm_bios** %7, align 8
  %32 = load i32, i32* %12, align 4
  %33 = add nsw i32 %32, 20
  %34 = call i32 @nvbios_rd16(%struct.nvkm_bios* %31, i32 %33)
  store i32 %34, i32* %13, align 4
  %35 = load i32, i32* %13, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %59

37:                                               ; preds = %30
  %38 = load %struct.nvkm_bios*, %struct.nvkm_bios** %7, align 8
  %39 = load i32, i32* %13, align 4
  %40 = add nsw i32 %39, 0
  %41 = call i32 @nvbios_rd08(%struct.nvkm_bios* %38, i32 %40)
  %42 = load i32*, i32** %8, align 8
  store i32 %41, i32* %42, align 4
  %43 = load %struct.nvkm_bios*, %struct.nvkm_bios** %7, align 8
  %44 = load i32, i32* %13, align 4
  %45 = add nsw i32 %44, 1
  %46 = call i32 @nvbios_rd08(%struct.nvkm_bios* %43, i32 %45)
  %47 = load i32*, i32** %9, align 8
  store i32 %46, i32* %47, align 4
  %48 = load %struct.nvkm_bios*, %struct.nvkm_bios** %7, align 8
  %49 = load i32, i32* %13, align 4
  %50 = add nsw i32 %49, 2
  %51 = call i32 @nvbios_rd08(%struct.nvkm_bios* %48, i32 %50)
  %52 = load i32*, i32** %10, align 8
  store i32 %51, i32* %52, align 4
  %53 = load %struct.nvkm_bios*, %struct.nvkm_bios** %7, align 8
  %54 = load i32, i32* %13, align 4
  %55 = add nsw i32 %54, 3
  %56 = call i32 @nvbios_rd08(%struct.nvkm_bios* %53, i32 %55)
  %57 = load i32*, i32** %11, align 8
  store i32 %56, i32* %57, align 4
  %58 = load i32, i32* %13, align 4
  store i32 %58, i32* %6, align 4
  br label %61

59:                                               ; preds = %30
  br label %60

60:                                               ; preds = %59, %26, %22, %5
  store i32 0, i32* %6, align 4
  br label %61

61:                                               ; preds = %60, %37
  %62 = load i32, i32* %6, align 4
  ret i32 %62
}

declare dso_local i32 @dcb_table(%struct.nvkm_bios*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @nvbios_rd16(%struct.nvkm_bios*, i32) #1

declare dso_local i32 @nvbios_rd08(%struct.nvkm_bios*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
