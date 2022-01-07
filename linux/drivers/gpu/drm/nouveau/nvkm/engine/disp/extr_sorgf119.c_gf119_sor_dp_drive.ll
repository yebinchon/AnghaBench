; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/disp/extr_sorgf119.c_gf119_sor_dp_drive.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/disp/extr_sorgf119.c_gf119_sor_dp_drive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_ior = type { %struct.TYPE_10__*, %struct.TYPE_8__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gf119_sor_dp_drive(%struct.nvkm_ior* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.nvkm_ior*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.nvkm_device*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca [4 x i32], align 16
  store %struct.nvkm_ior* %0, %struct.nvkm_ior** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %17 = load %struct.nvkm_ior*, %struct.nvkm_ior** %7, align 8
  %18 = getelementptr inbounds %struct.nvkm_ior, %struct.nvkm_ior* %17, i32 0, i32 1
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load %struct.nvkm_device*, %struct.nvkm_device** %22, align 8
  store %struct.nvkm_device* %23, %struct.nvkm_device** %13, align 8
  %24 = load %struct.nvkm_ior*, %struct.nvkm_ior** %7, align 8
  %25 = call i32 @nv50_sor_link(%struct.nvkm_ior* %24)
  store i32 %25, i32* %14, align 4
  %26 = load %struct.nvkm_ior*, %struct.nvkm_ior** %7, align 8
  %27 = getelementptr inbounds %struct.nvkm_ior, %struct.nvkm_ior* %26, i32 0, i32 0
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %8, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = mul nsw i32 %35, 8
  store i32 %36, i32* %15, align 4
  %37 = load %struct.nvkm_device*, %struct.nvkm_device** %13, align 8
  %38 = load i32, i32* %14, align 4
  %39 = add nsw i32 6406424, %38
  %40 = call i32 @nvkm_rd32(%struct.nvkm_device* %37, i32 %39)
  %41 = load i32, i32* %15, align 4
  %42 = shl i32 255, %41
  %43 = xor i32 %42, -1
  %44 = and i32 %40, %43
  %45 = getelementptr inbounds [4 x i32], [4 x i32]* %16, i64 0, i64 0
  store i32 %44, i32* %45, align 16
  %46 = load %struct.nvkm_device*, %struct.nvkm_device** %13, align 8
  %47 = load i32, i32* %14, align 4
  %48 = add nsw i32 6406432, %47
  %49 = call i32 @nvkm_rd32(%struct.nvkm_device* %46, i32 %48)
  %50 = load i32, i32* %15, align 4
  %51 = shl i32 255, %50
  %52 = xor i32 %51, -1
  %53 = and i32 %49, %52
  %54 = getelementptr inbounds [4 x i32], [4 x i32]* %16, i64 0, i64 1
  store i32 %53, i32* %54, align 4
  %55 = load %struct.nvkm_device*, %struct.nvkm_device** %13, align 8
  %56 = load i32, i32* %14, align 4
  %57 = add nsw i32 6406448, %56
  %58 = call i32 @nvkm_rd32(%struct.nvkm_device* %55, i32 %57)
  %59 = getelementptr inbounds [4 x i32], [4 x i32]* %16, i64 0, i64 2
  store i32 %58, i32* %59, align 8
  %60 = getelementptr inbounds [4 x i32], [4 x i32]* %16, i64 0, i64 2
  %61 = load i32, i32* %60, align 8
  %62 = and i32 %61, 65280
  %63 = load i32, i32* %12, align 4
  %64 = shl i32 %63, 8
  %65 = icmp slt i32 %62, %64
  br i1 %65, label %69, label %66

66:                                               ; preds = %6
  %67 = load i32, i32* %8, align 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %77

69:                                               ; preds = %66, %6
  %70 = getelementptr inbounds [4 x i32], [4 x i32]* %16, i64 0, i64 2
  %71 = load i32, i32* %70, align 8
  %72 = and i32 %71, -65281
  %73 = load i32, i32* %12, align 4
  %74 = shl i32 %73, 8
  %75 = or i32 %72, %74
  %76 = getelementptr inbounds [4 x i32], [4 x i32]* %16, i64 0, i64 2
  store i32 %75, i32* %76, align 8
  br label %77

77:                                               ; preds = %69, %66
  %78 = load %struct.nvkm_device*, %struct.nvkm_device** %13, align 8
  %79 = load i32, i32* %14, align 4
  %80 = add nsw i32 6406424, %79
  %81 = getelementptr inbounds [4 x i32], [4 x i32]* %16, i64 0, i64 0
  %82 = load i32, i32* %81, align 16
  %83 = load i32, i32* %10, align 4
  %84 = load i32, i32* %15, align 4
  %85 = shl i32 %83, %84
  %86 = or i32 %82, %85
  %87 = call i32 @nvkm_wr32(%struct.nvkm_device* %78, i32 %80, i32 %86)
  %88 = load %struct.nvkm_device*, %struct.nvkm_device** %13, align 8
  %89 = load i32, i32* %14, align 4
  %90 = add nsw i32 6406432, %89
  %91 = getelementptr inbounds [4 x i32], [4 x i32]* %16, i64 0, i64 1
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* %11, align 4
  %94 = load i32, i32* %15, align 4
  %95 = shl i32 %93, %94
  %96 = or i32 %92, %95
  %97 = call i32 @nvkm_wr32(%struct.nvkm_device* %88, i32 %90, i32 %96)
  %98 = load %struct.nvkm_device*, %struct.nvkm_device** %13, align 8
  %99 = load i32, i32* %14, align 4
  %100 = add nsw i32 6406448, %99
  %101 = getelementptr inbounds [4 x i32], [4 x i32]* %16, i64 0, i64 2
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @nvkm_wr32(%struct.nvkm_device* %98, i32 %100, i32 %102)
  %104 = load %struct.nvkm_device*, %struct.nvkm_device** %13, align 8
  %105 = load i32, i32* %14, align 4
  %106 = add nsw i32 6406460, %105
  %107 = call i32 @nvkm_rd32(%struct.nvkm_device* %104, i32 %106)
  %108 = load i32, i32* %15, align 4
  %109 = shl i32 255, %108
  %110 = xor i32 %109, -1
  %111 = and i32 %107, %110
  %112 = getelementptr inbounds [4 x i32], [4 x i32]* %16, i64 0, i64 3
  store i32 %111, i32* %112, align 4
  %113 = load %struct.nvkm_device*, %struct.nvkm_device** %13, align 8
  %114 = load i32, i32* %14, align 4
  %115 = add nsw i32 6406460, %114
  %116 = getelementptr inbounds [4 x i32], [4 x i32]* %16, i64 0, i64 3
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* %9, align 4
  %119 = load i32, i32* %15, align 4
  %120 = shl i32 %118, %119
  %121 = or i32 %117, %120
  %122 = call i32 @nvkm_wr32(%struct.nvkm_device* %113, i32 %115, i32 %121)
  ret void
}

declare dso_local i32 @nv50_sor_link(%struct.nvkm_ior*) #1

declare dso_local i32 @nvkm_rd32(%struct.nvkm_device*, i32) #1

declare dso_local i32 @nvkm_wr32(%struct.nvkm_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
