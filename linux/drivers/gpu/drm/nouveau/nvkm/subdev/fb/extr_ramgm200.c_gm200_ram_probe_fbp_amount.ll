; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/fb/extr_ramgm200.c_gm200_ram_probe_fbp_amount.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/fb/extr_ramgm200.c_gm200_ram_probe_fbp_amount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_ram_func = type { i64 (%struct.nvkm_device*, i32)* }
%struct.nvkm_device = type opaque
%struct.nvkm_device.0 = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gm200_ram_probe_fbp_amount(%struct.nvkm_ram_func* %0, i32 %1, %struct.nvkm_device.0* %2, i32 %3, i32* %4) #0 {
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
  %16 = alloca i32, align 4
  store %struct.nvkm_ram_func* %0, %struct.nvkm_ram_func** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.nvkm_device.0* %2, %struct.nvkm_device.0** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %17 = load %struct.nvkm_device.0*, %struct.nvkm_device.0** %8, align 8
  %18 = call i32 @nvkm_rd32(%struct.nvkm_device.0* %17, i32 140368)
  store i32 %18, i32* %11, align 4
  %19 = load %struct.nvkm_device.0*, %struct.nvkm_device.0** %8, align 8
  %20 = call i32 @nvkm_rd32(%struct.nvkm_device.0* %19, i32 140376)
  store i32 %20, i32* %12, align 4
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* %12, align 4
  %23 = mul nsw i32 %21, %22
  store i32 %23, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %24 = load %struct.nvkm_device.0*, %struct.nvkm_device.0** %8, align 8
  %25 = call i32 @nvkm_rd32(%struct.nvkm_device.0* %24, i32 138552)
  %26 = load i32, i32* %9, align 4
  %27 = call i32 @BIT(i32 %26)
  %28 = and i32 %25, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %71, label %30

30:                                               ; preds = %5
  %31 = load %struct.nvkm_device.0*, %struct.nvkm_device.0** %8, align 8
  %32 = load i32, i32* %9, align 4
  %33 = mul nsw i32 %32, 4
  %34 = add nsw i32 138608, %33
  %35 = call i32 @nvkm_rd32(%struct.nvkm_device.0* %31, i32 %34)
  store i32 %35, i32* %15, align 4
  %36 = load i32, i32* %15, align 4
  %37 = xor i32 %36, -1
  %38 = load i32, i32* %11, align 4
  %39 = shl i32 1, %38
  %40 = sub nsw i32 %39, 1
  %41 = and i32 %37, %40
  store i32 %41, i32* %16, align 4
  br label %42

42:                                               ; preds = %64, %30
  %43 = load i32, i32* %12, align 4
  %44 = add nsw i32 %43, -1
  store i32 %44, i32* %12, align 4
  %45 = icmp ne i32 %43, 0
  br i1 %45, label %46, label %67

46:                                               ; preds = %42
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* %13, align 4
  %49 = shl i32 1, %48
  %50 = and i32 %47, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %64, label %52

52:                                               ; preds = %46
  %53 = load %struct.nvkm_ram_func*, %struct.nvkm_ram_func** %6, align 8
  %54 = getelementptr inbounds %struct.nvkm_ram_func, %struct.nvkm_ram_func* %53, i32 0, i32 0
  %55 = load i64 (%struct.nvkm_device*, i32)*, i64 (%struct.nvkm_device*, i32)** %54, align 8
  %56 = load %struct.nvkm_device.0*, %struct.nvkm_device.0** %8, align 8
  %57 = bitcast %struct.nvkm_device.0* %56 to %struct.nvkm_device*
  %58 = load i32, i32* %13, align 4
  %59 = call i64 %55(%struct.nvkm_device* %57, i32 %58)
  %60 = load i32, i32* %14, align 4
  %61 = sext i32 %60 to i64
  %62 = add nsw i64 %61, %59
  %63 = trunc i64 %62 to i32
  store i32 %63, i32* %14, align 4
  br label %64

64:                                               ; preds = %52, %46
  %65 = load i32, i32* %13, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %13, align 4
  br label %42

67:                                               ; preds = %42
  %68 = load i32, i32* %16, align 4
  %69 = call i32 @hweight32(i32 %68)
  %70 = load i32*, i32** %10, align 8
  store i32 %69, i32* %70, align 4
  br label %71

71:                                               ; preds = %67, %5
  %72 = load i32, i32* %14, align 4
  ret i32 %72
}

declare dso_local i32 @nvkm_rd32(%struct.nvkm_device.0*, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @hweight32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
