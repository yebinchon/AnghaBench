; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/disp/extr_sorg94.c_g94_sor_dp_links.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/disp/extr_sorg94.c_g94_sor_dp_links.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_ior = type { %struct.TYPE_5__, %struct.TYPE_8__* }
%struct.TYPE_5__ = type { i32, i32, i64 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }
%struct.nvkm_i2c_aux = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @g94_sor_dp_links(%struct.nvkm_ior* %0, %struct.nvkm_i2c_aux* %1) #0 {
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
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
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
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = shl i32 1, %24
  %26 = sub nsw i32 %25, 1
  %27 = shl i32 %26, 16
  %28 = load i32, i32* %8, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %8, align 4
  %30 = load %struct.nvkm_ior*, %struct.nvkm_ior** %3, align 8
  %31 = getelementptr inbounds %struct.nvkm_ior, %struct.nvkm_ior* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %2
  %36 = load i32, i32* %8, align 4
  %37 = or i32 %36, 16384
  store i32 %37, i32* %8, align 4
  br label %38

38:                                               ; preds = %35, %2
  %39 = load %struct.nvkm_ior*, %struct.nvkm_ior** %3, align 8
  %40 = getelementptr inbounds %struct.nvkm_ior, %struct.nvkm_ior* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = icmp sgt i32 %42, 6
  br i1 %43, label %44, label %47

44:                                               ; preds = %38
  %45 = load i32, i32* %9, align 4
  %46 = or i32 %45, 262144
  store i32 %46, i32* %9, align 4
  br label %47

47:                                               ; preds = %44, %38
  %48 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %49 = load i32, i32* %6, align 4
  %50 = add nsw i32 6374144, %49
  %51 = load i32, i32* %9, align 4
  %52 = call i32 @nvkm_mask(%struct.nvkm_device* %48, i32 %50, i32 786432, i32 %51)
  %53 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %54 = load i32, i32* %7, align 4
  %55 = add nsw i32 6406412, %54
  %56 = load i32, i32* %8, align 4
  %57 = call i32 @nvkm_mask(%struct.nvkm_device* %53, i32 %55, i32 2048000, i32 %56)
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
