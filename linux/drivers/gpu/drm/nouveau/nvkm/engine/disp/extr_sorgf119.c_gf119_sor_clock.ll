; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/disp/extr_sorgf119.c_gf119_sor_clock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/disp/extr_sorgf119.c_gf119_sor_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_ior = type { %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_9__* }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i32, i64 }
%struct.TYPE_9__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }

@TMDS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gf119_sor_clock(%struct.nvkm_ior* %0) #0 {
  %2 = alloca %struct.nvkm_ior*, align 8
  %3 = alloca %struct.nvkm_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.nvkm_ior* %0, %struct.nvkm_ior** %2, align 8
  %8 = load %struct.nvkm_ior*, %struct.nvkm_ior** %2, align 8
  %9 = getelementptr inbounds %struct.nvkm_ior, %struct.nvkm_ior* %8, i32 0, i32 2
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = load %struct.nvkm_device*, %struct.nvkm_device** %13, align 8
  store %struct.nvkm_device* %14, %struct.nvkm_device** %3, align 8
  %15 = load %struct.nvkm_ior*, %struct.nvkm_ior** %2, align 8
  %16 = call i32 @nv50_ior_base(%struct.nvkm_ior* %15)
  store i32 %16, i32* %4, align 4
  %17 = load %struct.nvkm_ior*, %struct.nvkm_ior** %2, align 8
  %18 = getelementptr inbounds %struct.nvkm_ior, %struct.nvkm_ior* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp eq i32 %20, 3
  %22 = zext i1 %21 to i32
  store i32 %22, i32* %5, align 4
  %23 = load %struct.nvkm_ior*, %struct.nvkm_ior** %2, align 8
  %24 = getelementptr inbounds %struct.nvkm_ior, %struct.nvkm_ior* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp eq i32 %26, 3
  %28 = zext i1 %27 to i32
  store i32 %28, i32* %6, align 4
  %29 = load %struct.nvkm_ior*, %struct.nvkm_ior** %2, align 8
  %30 = getelementptr inbounds %struct.nvkm_ior, %struct.nvkm_ior* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @TMDS, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %56

35:                                               ; preds = %1
  %36 = load %struct.nvkm_ior*, %struct.nvkm_ior** %2, align 8
  %37 = getelementptr inbounds %struct.nvkm_ior, %struct.nvkm_ior* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  %41 = zext i1 %40 to i64
  %42 = select i1 %40, i32 20, i32 10
  store i32 %42, i32* %7, align 4
  %43 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %44 = load i32, i32* %4, align 4
  %45 = add nsw i32 6365952, %44
  %46 = load i32, i32* %7, align 4
  %47 = shl i32 %46, 18
  %48 = call i32 @nvkm_mask(%struct.nvkm_device* %43, i32 %45, i32 8126464, i32 %47)
  %49 = load %struct.nvkm_ior*, %struct.nvkm_ior** %2, align 8
  %50 = getelementptr inbounds %struct.nvkm_ior, %struct.nvkm_ior* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %35
  store i32 1, i32* %6, align 4
  br label %55

55:                                               ; preds = %54, %35
  br label %56

56:                                               ; preds = %55, %1
  %57 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %58 = load i32, i32* %4, align 4
  %59 = add nsw i32 6365952, %58
  %60 = load i32, i32* %6, align 4
  %61 = shl i32 %60, 8
  %62 = load i32, i32* %5, align 4
  %63 = or i32 %61, %62
  %64 = call i32 @nvkm_mask(%struct.nvkm_device* %57, i32 %59, i32 1799, i32 %63)
  ret void
}

declare dso_local i32 @nv50_ior_base(%struct.nvkm_ior*) #1

declare dso_local i32 @nvkm_mask(%struct.nvkm_device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
