; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/fb/extr_ramnv04.c_nv04_ram_new.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/fb/extr_ramnv04.c_nv04_ram_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_fb = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }
%struct.nvkm_ram = type { i32 }

@NV04_PFB_BOOT_0 = common dso_local global i32 0, align 4
@NV04_PFB_BOOT_0_RAM_AMOUNT = common dso_local global i32 0, align 4
@NVKM_RAM_TYPE_SGRAM = common dso_local global i32 0, align 4
@NVKM_RAM_TYPE_SDRAM = common dso_local global i32 0, align 4
@nv04_ram_func = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nv04_ram_new(%struct.nvkm_fb* %0, %struct.nvkm_ram** %1) #0 {
  %3 = alloca %struct.nvkm_fb*, align 8
  %4 = alloca %struct.nvkm_ram**, align 8
  %5 = alloca %struct.nvkm_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.nvkm_fb* %0, %struct.nvkm_fb** %3, align 8
  store %struct.nvkm_ram** %1, %struct.nvkm_ram*** %4, align 8
  %9 = load %struct.nvkm_fb*, %struct.nvkm_fb** %3, align 8
  %10 = getelementptr inbounds %struct.nvkm_fb, %struct.nvkm_fb* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.nvkm_device*, %struct.nvkm_device** %11, align 8
  store %struct.nvkm_device* %12, %struct.nvkm_device** %5, align 8
  %13 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %14 = load i32, i32* @NV04_PFB_BOOT_0, align 4
  %15 = call i32 @nvkm_rd32(%struct.nvkm_device* %13, i32 %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = and i32 %16, 256
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %2
  %20 = load i32, i32* %6, align 4
  %21 = ashr i32 %20, 12
  %22 = and i32 %21, 15
  %23 = mul nsw i32 %22, 2
  %24 = add nsw i32 %23, 2
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = mul nsw i32 %25, 1048576
  store i32 %26, i32* %7, align 4
  br label %36

27:                                               ; preds = %2
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @NV04_PFB_BOOT_0_RAM_AMOUNT, align 4
  %30 = and i32 %28, %29
  switch i32 %30, label %35 [
    i32 130, label %31
    i32 131, label %32
    i32 128, label %33
    i32 129, label %34
  ]

31:                                               ; preds = %27
  store i32 33554432, i32* %7, align 4
  br label %35

32:                                               ; preds = %27
  store i32 16777216, i32* %7, align 4
  br label %35

33:                                               ; preds = %27
  store i32 8388608, i32* %7, align 4
  br label %35

34:                                               ; preds = %27
  store i32 4194304, i32* %7, align 4
  br label %35

35:                                               ; preds = %27, %34, %33, %32, %31
  br label %36

36:                                               ; preds = %35, %19
  %37 = load i32, i32* %6, align 4
  %38 = and i32 %37, 56
  %39 = icmp sle i32 %38, 16
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  %41 = load i32, i32* @NVKM_RAM_TYPE_SGRAM, align 4
  store i32 %41, i32* %8, align 4
  br label %44

42:                                               ; preds = %36
  %43 = load i32, i32* @NVKM_RAM_TYPE_SDRAM, align 4
  store i32 %43, i32* %8, align 4
  br label %44

44:                                               ; preds = %42, %40
  %45 = load %struct.nvkm_fb*, %struct.nvkm_fb** %3, align 8
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* %7, align 4
  %48 = load %struct.nvkm_ram**, %struct.nvkm_ram*** %4, align 8
  %49 = call i32 @nvkm_ram_new_(i32* @nv04_ram_func, %struct.nvkm_fb* %45, i32 %46, i32 %47, %struct.nvkm_ram** %48)
  ret i32 %49
}

declare dso_local i32 @nvkm_rd32(%struct.nvkm_device*, i32) #1

declare dso_local i32 @nvkm_ram_new_(i32*, %struct.nvkm_fb*, i32, i32, %struct.nvkm_ram**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
