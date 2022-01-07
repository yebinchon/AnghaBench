; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extr_base.c_nvbios_extend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extr_base.c_nvbios_extend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_bios = type { i64, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nvbios_extend(%struct.nvkm_bios* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nvkm_bios*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  store %struct.nvkm_bios* %0, %struct.nvkm_bios** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.nvkm_bios*, %struct.nvkm_bios** %4, align 8
  %8 = getelementptr inbounds %struct.nvkm_bios, %struct.nvkm_bios* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* %5, align 8
  %11 = icmp slt i64 %9, %10
  br i1 %11, label %12, label %42

12:                                               ; preds = %2
  %13 = load %struct.nvkm_bios*, %struct.nvkm_bios** %4, align 8
  %14 = getelementptr inbounds %struct.nvkm_bios, %struct.nvkm_bios* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  store i32* %15, i32** %6, align 8
  %16 = load i64, i64* %5, align 8
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call i32* @kmalloc(i64 %16, i32 %17)
  %19 = load %struct.nvkm_bios*, %struct.nvkm_bios** %4, align 8
  %20 = getelementptr inbounds %struct.nvkm_bios, %struct.nvkm_bios* %19, i32 0, i32 1
  store i32* %18, i32** %20, align 8
  %21 = icmp ne i32* %18, null
  br i1 %21, label %28, label %22

22:                                               ; preds = %12
  %23 = load i32*, i32** %6, align 8
  %24 = load %struct.nvkm_bios*, %struct.nvkm_bios** %4, align 8
  %25 = getelementptr inbounds %struct.nvkm_bios, %struct.nvkm_bios* %24, i32 0, i32 1
  store i32* %23, i32** %25, align 8
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %43

28:                                               ; preds = %12
  %29 = load %struct.nvkm_bios*, %struct.nvkm_bios** %4, align 8
  %30 = getelementptr inbounds %struct.nvkm_bios, %struct.nvkm_bios* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = load i32*, i32** %6, align 8
  %33 = load %struct.nvkm_bios*, %struct.nvkm_bios** %4, align 8
  %34 = getelementptr inbounds %struct.nvkm_bios, %struct.nvkm_bios* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @memcpy(i32* %31, i32* %32, i64 %35)
  %37 = load i64, i64* %5, align 8
  %38 = load %struct.nvkm_bios*, %struct.nvkm_bios** %4, align 8
  %39 = getelementptr inbounds %struct.nvkm_bios, %struct.nvkm_bios* %38, i32 0, i32 0
  store i64 %37, i64* %39, align 8
  %40 = load i32*, i32** %6, align 8
  %41 = call i32 @kfree(i32* %40)
  store i32 1, i32* %3, align 4
  br label %43

42:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %43

43:                                               ; preds = %42, %28, %22
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i32* @kmalloc(i64, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
