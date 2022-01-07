; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/disp/extr_sorgf119.c_gf119_sor_dp_links.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/disp/extr_sorgf119.c_gf119_sor_dp_links.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_ior = type { %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32, i32, i64, i64 }
%struct.TYPE_5__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }
%struct.nvkm_i2c_aux = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gf119_sor_dp_links(%struct.nvkm_ior* %0, %struct.nvkm_i2c_aux* %1) #0 {
  %3 = alloca %struct.nvkm_ior*, align 8
  %4 = alloca %struct.nvkm_i2c_aux*, align 8
  %5 = alloca %struct.nvkm_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.nvkm_ior* %0, %struct.nvkm_ior** %3, align 8
  store %struct.nvkm_i2c_aux* %1, %struct.nvkm_i2c_aux** %4, align 8
  %10 = load %struct.nvkm_ior*, %struct.nvkm_ior** %3, align 8
  %11 = getelementptr inbounds %struct.nvkm_ior, %struct.nvkm_ior* %10, i32 0, i32 1
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = load %struct.nvkm_device*, %struct.nvkm_device** %15, align 8
  store %struct.nvkm_device* %16, %struct.nvkm_device** %5, align 8
  %17 = load %struct.nvkm_ior*, %struct.nvkm_ior** %3, align 8
  %18 = call i32 @nv50_ior_base(%struct.nvkm_ior* %17)
  store i32 %18, i32* %6, align 4
  %19 = load %struct.nvkm_ior*, %struct.nvkm_ior** %3, align 8
  %20 = call i32 @nv50_sor_link(%struct.nvkm_ior* %19)
  store i32 %20, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %21 = load %struct.nvkm_ior*, %struct.nvkm_ior** %3, align 8
  %22 = getelementptr inbounds %struct.nvkm_ior, %struct.nvkm_ior* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = shl i32 %24, 18
  %26 = load i32, i32* %9, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %9, align 4
  %28 = load %struct.nvkm_ior*, %struct.nvkm_ior** %3, align 8
  %29 = getelementptr inbounds %struct.nvkm_ior, %struct.nvkm_ior* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = shl i32 1, %31
  %33 = sub nsw i32 %32, 1
  %34 = shl i32 %33, 16
  %35 = load i32, i32* %8, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %8, align 4
  %37 = load %struct.nvkm_ior*, %struct.nvkm_ior** %3, align 8
  %38 = getelementptr inbounds %struct.nvkm_ior, %struct.nvkm_ior* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 3
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %2
  %43 = load i32, i32* %8, align 4
  %44 = or i32 %43, 1073741824
  store i32 %44, i32* %8, align 4
  br label %45

45:                                               ; preds = %42, %2
  %46 = load %struct.nvkm_ior*, %struct.nvkm_ior** %3, align 8
  %47 = getelementptr inbounds %struct.nvkm_ior, %struct.nvkm_ior* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %45
  %52 = load i32, i32* %8, align 4
  %53 = or i32 %52, 16384
  store i32 %53, i32* %8, align 4
  br label %54

54:                                               ; preds = %51, %45
  %55 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %56 = load i32, i32* %6, align 4
  %57 = add nsw i32 6365952, %56
  %58 = load i32, i32* %9, align 4
  %59 = call i32 @nvkm_mask(%struct.nvkm_device* %55, i32 %57, i32 8126464, i32 %58)
  %60 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %61 = load i32, i32* %7, align 4
  %62 = add nsw i32 6406412, %61
  %63 = load i32, i32* %8, align 4
  %64 = call i32 @nvkm_mask(%struct.nvkm_device* %60, i32 %62, i32 1075789824, i32 %63)
  ret i32 0
}

declare dso_local i32 @nv50_ior_base(%struct.nvkm_ior*) #1

declare dso_local i32 @nv50_sor_link(%struct.nvkm_ior*) #1

declare dso_local i32 @nvkm_mask(%struct.nvkm_device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
