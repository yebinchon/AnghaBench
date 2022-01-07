; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/fb/extr_ramgf108.c_gf108_ram_probe_fbp_amount.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/fb/extr_ramgf108.c_gf108_ram_probe_fbp_amount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_ram_func = type { i64 (%struct.nvkm_device*, i32)* }
%struct.nvkm_device = type opaque
%struct.nvkm_device.0 = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gf108_ram_probe_fbp_amount(%struct.nvkm_ram_func* %0, i32 %1, %struct.nvkm_device.0* %2, i32 %3, i32* %4) #0 {
  %6 = alloca %struct.nvkm_ram_func*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.nvkm_device.0*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.nvkm_ram_func* %0, %struct.nvkm_ram_func** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.nvkm_device.0* %2, %struct.nvkm_device.0** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %16 = load %struct.nvkm_device.0*, %struct.nvkm_device.0** %8, align 8
  %17 = call i32 @nvkm_rd32(%struct.nvkm_device.0* %16, i32 140344)
  store i32 %17, i32* %11, align 4
  %18 = load %struct.nvkm_device.0*, %struct.nvkm_device.0** %8, align 8
  %19 = call i32 @nvkm_rd32(%struct.nvkm_device.0* %18, i32 140348)
  store i32 %19, i32* %12, align 4
  %20 = load i32, i32* %12, align 4
  %21 = load i32, i32* %11, align 4
  %22 = sdiv i32 %20, %21
  store i32 %22, i32* %13, align 4
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* %13, align 4
  %25 = mul nsw i32 %23, %24
  store i32 %25, i32* %14, align 4
  store i32 0, i32* %15, align 4
  br label %26

26:                                               ; preds = %48, %5
  %27 = load i32, i32* %13, align 4
  %28 = add nsw i32 %27, -1
  store i32 %28, i32* %13, align 4
  %29 = icmp ne i32 %27, 0
  br i1 %29, label %30, label %51

30:                                               ; preds = %26
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* %14, align 4
  %33 = call i32 @BIT(i32 %32)
  %34 = and i32 %31, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %48, label %36

36:                                               ; preds = %30
  %37 = load %struct.nvkm_ram_func*, %struct.nvkm_ram_func** %6, align 8
  %38 = getelementptr inbounds %struct.nvkm_ram_func, %struct.nvkm_ram_func* %37, i32 0, i32 0
  %39 = load i64 (%struct.nvkm_device*, i32)*, i64 (%struct.nvkm_device*, i32)** %38, align 8
  %40 = load %struct.nvkm_device.0*, %struct.nvkm_device.0** %8, align 8
  %41 = bitcast %struct.nvkm_device.0* %40 to %struct.nvkm_device*
  %42 = load i32, i32* %14, align 4
  %43 = call i64 %39(%struct.nvkm_device* %41, i32 %42)
  %44 = load i32, i32* %15, align 4
  %45 = sext i32 %44 to i64
  %46 = add nsw i64 %45, %43
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %15, align 4
  br label %48

48:                                               ; preds = %36, %30
  %49 = load i32, i32* %14, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %14, align 4
  br label %26

51:                                               ; preds = %26
  %52 = load i32*, i32** %10, align 8
  store i32 1, i32* %52, align 4
  %53 = load i32, i32* %15, align 4
  ret i32 %53
}

declare dso_local i32 @nvkm_rd32(%struct.nvkm_device.0*, i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
