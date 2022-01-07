; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/disp/extr_sorgm200.c_gm200_sor_dp_drive.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/disp/extr_sorgm200.c_gm200_sor_dp_drive.c"
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
define dso_local void @gm200_sor_dp_drive(%struct.nvkm_ior* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
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
  %37 = load i32, i32* %12, align 4
  %38 = and i32 %37, 15
  store i32 %38, i32* %12, align 4
  %39 = load %struct.nvkm_device*, %struct.nvkm_device** %13, align 8
  %40 = load i32, i32* %14, align 4
  %41 = add nsw i32 6406424, %40
  %42 = call i32 @nvkm_rd32(%struct.nvkm_device* %39, i32 %41)
  %43 = load i32, i32* %15, align 4
  %44 = shl i32 255, %43
  %45 = xor i32 %44, -1
  %46 = and i32 %42, %45
  %47 = getelementptr inbounds [4 x i32], [4 x i32]* %16, i64 0, i64 0
  store i32 %46, i32* %47, align 16
  %48 = load %struct.nvkm_device*, %struct.nvkm_device** %13, align 8
  %49 = load i32, i32* %14, align 4
  %50 = add nsw i32 6406432, %49
  %51 = call i32 @nvkm_rd32(%struct.nvkm_device* %48, i32 %50)
  %52 = load i32, i32* %15, align 4
  %53 = shl i32 255, %52
  %54 = xor i32 %53, -1
  %55 = and i32 %51, %54
  %56 = getelementptr inbounds [4 x i32], [4 x i32]* %16, i64 0, i64 1
  store i32 %55, i32* %56, align 4
  %57 = load %struct.nvkm_device*, %struct.nvkm_device** %13, align 8
  %58 = load i32, i32* %14, align 4
  %59 = add nsw i32 6406448, %58
  %60 = call i32 @nvkm_rd32(%struct.nvkm_device* %57, i32 %59)
  %61 = getelementptr inbounds [4 x i32], [4 x i32]* %16, i64 0, i64 2
  store i32 %60, i32* %61, align 8
  %62 = getelementptr inbounds [4 x i32], [4 x i32]* %16, i64 0, i64 2
  %63 = load i32, i32* %62, align 8
  %64 = and i32 %63, 3840
  %65 = load i32, i32* %12, align 4
  %66 = shl i32 %65, 8
  %67 = icmp slt i32 %64, %66
  br i1 %67, label %71, label %68

68:                                               ; preds = %6
  %69 = load i32, i32* %8, align 4
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %79

71:                                               ; preds = %68, %6
  %72 = getelementptr inbounds [4 x i32], [4 x i32]* %16, i64 0, i64 2
  %73 = load i32, i32* %72, align 8
  %74 = and i32 %73, -3841
  %75 = load i32, i32* %12, align 4
  %76 = shl i32 %75, 8
  %77 = or i32 %74, %76
  %78 = getelementptr inbounds [4 x i32], [4 x i32]* %16, i64 0, i64 2
  store i32 %77, i32* %78, align 8
  br label %79

79:                                               ; preds = %71, %68
  %80 = load %struct.nvkm_device*, %struct.nvkm_device** %13, align 8
  %81 = load i32, i32* %14, align 4
  %82 = add nsw i32 6406424, %81
  %83 = getelementptr inbounds [4 x i32], [4 x i32]* %16, i64 0, i64 0
  %84 = load i32, i32* %83, align 16
  %85 = load i32, i32* %10, align 4
  %86 = load i32, i32* %15, align 4
  %87 = shl i32 %85, %86
  %88 = or i32 %84, %87
  %89 = call i32 @nvkm_wr32(%struct.nvkm_device* %80, i32 %82, i32 %88)
  %90 = load %struct.nvkm_device*, %struct.nvkm_device** %13, align 8
  %91 = load i32, i32* %14, align 4
  %92 = add nsw i32 6406432, %91
  %93 = getelementptr inbounds [4 x i32], [4 x i32]* %16, i64 0, i64 1
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* %11, align 4
  %96 = load i32, i32* %15, align 4
  %97 = shl i32 %95, %96
  %98 = or i32 %94, %97
  %99 = call i32 @nvkm_wr32(%struct.nvkm_device* %90, i32 %92, i32 %98)
  %100 = load %struct.nvkm_device*, %struct.nvkm_device** %13, align 8
  %101 = load i32, i32* %14, align 4
  %102 = add nsw i32 6406448, %101
  %103 = getelementptr inbounds [4 x i32], [4 x i32]* %16, i64 0, i64 2
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @nvkm_wr32(%struct.nvkm_device* %100, i32 %102, i32 %104)
  %106 = load %struct.nvkm_device*, %struct.nvkm_device** %13, align 8
  %107 = load i32, i32* %14, align 4
  %108 = add nsw i32 6406460, %107
  %109 = call i32 @nvkm_rd32(%struct.nvkm_device* %106, i32 %108)
  %110 = load i32, i32* %15, align 4
  %111 = shl i32 255, %110
  %112 = xor i32 %111, -1
  %113 = and i32 %109, %112
  %114 = getelementptr inbounds [4 x i32], [4 x i32]* %16, i64 0, i64 3
  store i32 %113, i32* %114, align 4
  %115 = load %struct.nvkm_device*, %struct.nvkm_device** %13, align 8
  %116 = load i32, i32* %14, align 4
  %117 = add nsw i32 6406460, %116
  %118 = getelementptr inbounds [4 x i32], [4 x i32]* %16, i64 0, i64 3
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* %9, align 4
  %121 = load i32, i32* %15, align 4
  %122 = shl i32 %120, %121
  %123 = or i32 %119, %122
  %124 = call i32 @nvkm_wr32(%struct.nvkm_device* %115, i32 %117, i32 %123)
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
