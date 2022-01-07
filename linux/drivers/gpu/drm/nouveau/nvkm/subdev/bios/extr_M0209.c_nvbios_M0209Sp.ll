; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extr_M0209.c_nvbios_M0209Sp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extr_M0209.c_nvbios_M0209Sp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_bios = type { i32 }
%struct.nvbios_M0209S = type { i32* }
%struct.nvbios_M0209E = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nvbios_M0209Sp(%struct.nvkm_bios* %0, i32 %1, i32 %2, i32* %3, i32* %4, %struct.nvbios_M0209S* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.nvkm_bios*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.nvbios_M0209S*, align 8
  %14 = alloca %struct.nvbios_M0209E, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.nvkm_bios* %0, %struct.nvkm_bios** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store %struct.nvbios_M0209S* %5, %struct.nvbios_M0209S** %13, align 8
  %24 = load %struct.nvkm_bios*, %struct.nvkm_bios** %8, align 8
  %25 = load i32, i32* %9, align 4
  %26 = load i32*, i32** %11, align 8
  %27 = load i32*, i32** %12, align 8
  %28 = call i32 @nvbios_M0209Ep(%struct.nvkm_bios* %24, i32 %25, i32* %26, i32* %27, i32* %15, i32* %16, %struct.nvbios_M0209E* %14)
  store i32 %28, i32* %17, align 4
  %29 = load i32, i32* %17, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %122

31:                                               ; preds = %6
  %32 = load %struct.nvkm_bios*, %struct.nvkm_bios** %8, align 8
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* %10, align 4
  %35 = load i32*, i32** %11, align 8
  %36 = load i32*, i32** %12, align 8
  %37 = call i32 @nvbios_M0209Se(%struct.nvkm_bios* %32, i32 %33, i32 %34, i32* %35, i32* %36)
  store i32 %37, i32* %19, align 4
  %38 = load %struct.nvbios_M0209S*, %struct.nvbios_M0209S** %13, align 8
  %39 = call i32 @memset(%struct.nvbios_M0209S* %38, i32 0, i32 8)
  %40 = load i32, i32* %19, align 4
  %41 = icmp ne i32 %40, 0
  %42 = xor i1 %41, true
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  %45 = load i32*, i32** %11, align 8
  %46 = load i32, i32* %45, align 4
  %47 = mul nsw i32 %44, %46
  switch i32 %47, label %120 [
    i32 16, label %48
  ]

48:                                               ; preds = %31
  store i32 0, i32* %18, align 4
  br label %49

49:                                               ; preds = %115, %48
  %50 = load i32, i32* %18, align 4
  %51 = load %struct.nvbios_M0209S*, %struct.nvbios_M0209S** %13, align 8
  %52 = getelementptr inbounds %struct.nvbios_M0209S, %struct.nvbios_M0209S* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = call i32 @ARRAY_SIZE(i32* %53)
  %55 = icmp slt i32 %50, %54
  br i1 %55, label %56, label %118

56:                                               ; preds = %49
  %57 = load i32, i32* %18, align 4
  %58 = getelementptr inbounds %struct.nvbios_M0209E, %struct.nvbios_M0209E* %14, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = srem i32 %57, %59
  %61 = getelementptr inbounds %struct.nvbios_M0209E, %struct.nvbios_M0209E* %14, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = mul nsw i32 %60, %62
  store i32 %63, i32* %20, align 4
  %64 = getelementptr inbounds %struct.nvbios_M0209E, %struct.nvbios_M0209E* %14, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = zext i32 %65 to i64
  %67 = shl i64 1, %66
  %68 = sub i64 %67, 1
  %69 = trunc i64 %68 to i32
  store i32 %69, i32* %21, align 4
  %70 = load i32, i32* %20, align 4
  %71 = sdiv i32 %70, 8
  store i32 %71, i32* %22, align 4
  %72 = load i32, i32* %20, align 4
  %73 = srem i32 %72, 8
  store i32 %73, i32* %23, align 4
  %74 = load %struct.nvkm_bios*, %struct.nvkm_bios** %8, align 8
  %75 = load i32, i32* %19, align 4
  %76 = load i32, i32* %22, align 4
  %77 = add nsw i32 %75, %76
  %78 = call i32 @nvbios_rd32(%struct.nvkm_bios* %74, i32 %77)
  %79 = load %struct.nvbios_M0209S*, %struct.nvbios_M0209S** %13, align 8
  %80 = getelementptr inbounds %struct.nvbios_M0209S, %struct.nvbios_M0209S* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = load i32, i32* %18, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  store i32 %78, i32* %84, align 4
  %85 = load %struct.nvbios_M0209S*, %struct.nvbios_M0209S** %13, align 8
  %86 = getelementptr inbounds %struct.nvbios_M0209S, %struct.nvbios_M0209S* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = load i32, i32* %18, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* %23, align 4
  %93 = ashr i32 %91, %92
  %94 = load %struct.nvbios_M0209S*, %struct.nvbios_M0209S** %13, align 8
  %95 = getelementptr inbounds %struct.nvbios_M0209S, %struct.nvbios_M0209S* %94, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  %97 = load i32, i32* %18, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  store i32 %93, i32* %99, align 4
  %100 = load %struct.nvbios_M0209S*, %struct.nvbios_M0209S** %13, align 8
  %101 = getelementptr inbounds %struct.nvbios_M0209S, %struct.nvbios_M0209S* %100, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  %103 = load i32, i32* %18, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* %21, align 4
  %108 = and i32 %106, %107
  %109 = load %struct.nvbios_M0209S*, %struct.nvbios_M0209S** %13, align 8
  %110 = getelementptr inbounds %struct.nvbios_M0209S, %struct.nvbios_M0209S* %109, i32 0, i32 0
  %111 = load i32*, i32** %110, align 8
  %112 = load i32, i32* %18, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %111, i64 %113
  store i32 %108, i32* %114, align 4
  br label %115

115:                                              ; preds = %56
  %116 = load i32, i32* %18, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %18, align 4
  br label %49

118:                                              ; preds = %49
  %119 = load i32, i32* %19, align 4
  store i32 %119, i32* %7, align 4
  br label %123

120:                                              ; preds = %31
  br label %121

121:                                              ; preds = %120
  br label %122

122:                                              ; preds = %121, %6
  store i32 0, i32* %7, align 4
  br label %123

123:                                              ; preds = %122, %118
  %124 = load i32, i32* %7, align 4
  ret i32 %124
}

declare dso_local i32 @nvbios_M0209Ep(%struct.nvkm_bios*, i32, i32*, i32*, i32*, i32*, %struct.nvbios_M0209E*) #1

declare dso_local i32 @nvbios_M0209Se(%struct.nvkm_bios*, i32, i32, i32*, i32*) #1

declare dso_local i32 @memset(%struct.nvbios_M0209S*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @nvbios_rd32(%struct.nvkm_bios*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
