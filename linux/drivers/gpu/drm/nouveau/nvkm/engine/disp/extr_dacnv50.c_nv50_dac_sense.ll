; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/disp/extr_dacnv50.c_nv50_dac_sense.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/disp/extr_dacnv50.c_nv50_dac_sense.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_ior = type { %struct.TYPE_5__*, %struct.TYPE_8__* }
%struct.TYPE_5__ = type { i32 (%struct.nvkm_ior*, i32, i32, i32, i32, i32)* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }

@ETIMEDOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nv50_dac_sense(%struct.nvkm_ior* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nvkm_ior*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nvkm_device*, align 8
  %7 = alloca i32, align 4
  store %struct.nvkm_ior* %0, %struct.nvkm_ior** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.nvkm_ior*, %struct.nvkm_ior** %4, align 8
  %9 = getelementptr inbounds %struct.nvkm_ior, %struct.nvkm_ior* %8, i32 0, i32 1
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load %struct.nvkm_device*, %struct.nvkm_device** %13, align 8
  store %struct.nvkm_device* %14, %struct.nvkm_device** %6, align 8
  %15 = load %struct.nvkm_ior*, %struct.nvkm_ior** %4, align 8
  %16 = call i32 @nv50_ior_base(%struct.nvkm_ior* %15)
  store i32 %16, i32* %7, align 4
  %17 = load %struct.nvkm_ior*, %struct.nvkm_ior** %4, align 8
  %18 = getelementptr inbounds %struct.nvkm_ior, %struct.nvkm_ior* %17, i32 0, i32 0
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32 (%struct.nvkm_ior*, i32, i32, i32, i32, i32)*, i32 (%struct.nvkm_ior*, i32, i32, i32, i32, i32)** %20, align 8
  %22 = load %struct.nvkm_ior*, %struct.nvkm_ior** %4, align 8
  %23 = call i32 %21(%struct.nvkm_ior* %22, i32 0, i32 1, i32 0, i32 0, i32 0)
  %24 = load %struct.nvkm_device*, %struct.nvkm_device** %6, align 8
  %25 = load i32, i32* %7, align 4
  %26 = add nsw i32 6397964, %25
  %27 = load i32, i32* %5, align 4
  %28 = or i32 1048576, %27
  %29 = call i32 @nvkm_wr32(%struct.nvkm_device* %24, i32 %26, i32 %28)
  %30 = call i32 @mdelay(i32 9)
  %31 = call i32 @udelay(i32 500)
  %32 = load %struct.nvkm_device*, %struct.nvkm_device** %6, align 8
  %33 = load i32, i32* %7, align 4
  %34 = add nsw i32 6397964, %33
  %35 = call i32 @nvkm_mask(%struct.nvkm_device* %32, i32 %34, i32 -1, i32 0)
  store i32 %35, i32* %5, align 4
  %36 = load %struct.nvkm_ior*, %struct.nvkm_ior** %4, align 8
  %37 = getelementptr inbounds %struct.nvkm_ior, %struct.nvkm_ior* %36, i32 0, i32 0
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i32 (%struct.nvkm_ior*, i32, i32, i32, i32, i32)*, i32 (%struct.nvkm_ior*, i32, i32, i32, i32, i32)** %39, align 8
  %41 = load %struct.nvkm_ior*, %struct.nvkm_ior** %4, align 8
  %42 = call i32 %40(%struct.nvkm_ior* %41, i32 0, i32 0, i32 0, i32 0, i32 0)
  %43 = load i32, i32* %5, align 4
  %44 = and i32 %43, -2147483648
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %2
  %47 = load i32, i32* @ETIMEDOUT, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %3, align 4
  br label %53

49:                                               ; preds = %2
  %50 = load i32, i32* %5, align 4
  %51 = and i32 %50, 939524096
  %52 = ashr i32 %51, 27
  store i32 %52, i32* %3, align 4
  br label %53

53:                                               ; preds = %49, %46
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i32 @nv50_ior_base(%struct.nvkm_ior*) #1

declare dso_local i32 @nvkm_wr32(%struct.nvkm_device*, i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @nvkm_mask(%struct.nvkm_device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
