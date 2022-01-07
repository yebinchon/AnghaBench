; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extr_conn.c_nvbios_connEp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extr_conn.c_nvbios_connEp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_bios = type { i32 }
%struct.nvbios_connE = type { i32, i32, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nvbios_connEp(%struct.nvkm_bios* %0, i32 %1, i32* %2, i32* %3, %struct.nvbios_connE* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.nvkm_bios*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.nvbios_connE*, align 8
  %12 = alloca i32, align 4
  store %struct.nvkm_bios* %0, %struct.nvkm_bios** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store %struct.nvbios_connE* %4, %struct.nvbios_connE** %11, align 8
  %13 = load %struct.nvkm_bios*, %struct.nvkm_bios** %7, align 8
  %14 = load i32, i32* %8, align 4
  %15 = load i32*, i32** %9, align 8
  %16 = load i32*, i32** %10, align 8
  %17 = call i32 @nvbios_connEe(%struct.nvkm_bios* %13, i32 %14, i32* %15, i32* %16)
  store i32 %17, i32* %12, align 4
  %18 = load %struct.nvbios_connE*, %struct.nvbios_connE** %11, align 8
  %19 = call i32 @memset(%struct.nvbios_connE* %18, i32 0, i32 28)
  %20 = load i32, i32* %12, align 4
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  %25 = load i32*, i32** %9, align 8
  %26 = load i32, i32* %25, align 4
  %27 = mul nsw i32 %24, %26
  switch i32 %27, label %118 [
    i32 48, label %28
    i32 64, label %28
  ]

28:                                               ; preds = %5, %5
  %29 = load %struct.nvkm_bios*, %struct.nvkm_bios** %7, align 8
  %30 = load i32, i32* %12, align 4
  %31 = add nsw i32 %30, 0
  %32 = call i32 @nvbios_rd08(%struct.nvkm_bios* %29, i32 %31)
  %33 = load %struct.nvbios_connE*, %struct.nvbios_connE** %11, align 8
  %34 = getelementptr inbounds %struct.nvbios_connE, %struct.nvbios_connE* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  %35 = load %struct.nvkm_bios*, %struct.nvkm_bios** %7, align 8
  %36 = load i32, i32* %12, align 4
  %37 = add nsw i32 %36, 1
  %38 = call i32 @nvbios_rd08(%struct.nvkm_bios* %35, i32 %37)
  %39 = and i32 %38, 15
  %40 = load %struct.nvbios_connE*, %struct.nvbios_connE** %11, align 8
  %41 = getelementptr inbounds %struct.nvbios_connE, %struct.nvbios_connE* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  %42 = load %struct.nvkm_bios*, %struct.nvkm_bios** %7, align 8
  %43 = load i32, i32* %12, align 4
  %44 = add nsw i32 %43, 1
  %45 = call i32 @nvbios_rd08(%struct.nvkm_bios* %42, i32 %44)
  %46 = and i32 %45, 48
  %47 = ashr i32 %46, 4
  %48 = load %struct.nvbios_connE*, %struct.nvbios_connE** %11, align 8
  %49 = getelementptr inbounds %struct.nvbios_connE, %struct.nvbios_connE* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 4
  %50 = load %struct.nvkm_bios*, %struct.nvkm_bios** %7, align 8
  %51 = load i32, i32* %12, align 4
  %52 = add nsw i32 %51, 1
  %53 = call i32 @nvbios_rd08(%struct.nvkm_bios* %50, i32 %52)
  %54 = and i32 %53, 192
  %55 = ashr i32 %54, 6
  %56 = load %struct.nvbios_connE*, %struct.nvbios_connE** %11, align 8
  %57 = getelementptr inbounds %struct.nvbios_connE, %struct.nvbios_connE* %56, i32 0, i32 3
  store i32 %55, i32* %57, align 4
  %58 = load i32*, i32** %10, align 8
  %59 = load i32, i32* %58, align 4
  %60 = icmp slt i32 %59, 4
  br i1 %60, label %61, label %63

61:                                               ; preds = %28
  %62 = load i32, i32* %12, align 4
  store i32 %62, i32* %6, align 4
  br label %120

63:                                               ; preds = %28
  %64 = load %struct.nvkm_bios*, %struct.nvkm_bios** %7, align 8
  %65 = load i32, i32* %12, align 4
  %66 = add nsw i32 %65, 2
  %67 = call i32 @nvbios_rd08(%struct.nvkm_bios* %64, i32 %66)
  %68 = and i32 %67, 3
  %69 = shl i32 %68, 2
  %70 = load %struct.nvbios_connE*, %struct.nvbios_connE** %11, align 8
  %71 = getelementptr inbounds %struct.nvbios_connE, %struct.nvbios_connE* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = or i32 %72, %69
  store i32 %73, i32* %71, align 4
  %74 = load %struct.nvkm_bios*, %struct.nvkm_bios** %7, align 8
  %75 = load i32, i32* %12, align 4
  %76 = add nsw i32 %75, 2
  %77 = call i32 @nvbios_rd08(%struct.nvkm_bios* %74, i32 %76)
  %78 = and i32 %77, 12
  %79 = load %struct.nvbios_connE*, %struct.nvbios_connE** %11, align 8
  %80 = getelementptr inbounds %struct.nvbios_connE, %struct.nvbios_connE* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = or i32 %81, %78
  store i32 %82, i32* %80, align 4
  %83 = load %struct.nvkm_bios*, %struct.nvkm_bios** %7, align 8
  %84 = load i32, i32* %12, align 4
  %85 = add nsw i32 %84, 2
  %86 = call i32 @nvbios_rd08(%struct.nvkm_bios* %83, i32 %85)
  %87 = and i32 %86, 240
  %88 = ashr i32 %87, 4
  %89 = load %struct.nvbios_connE*, %struct.nvbios_connE** %11, align 8
  %90 = getelementptr inbounds %struct.nvbios_connE, %struct.nvbios_connE* %89, i32 0, i32 4
  store i32 %88, i32* %90, align 4
  %91 = load %struct.nvkm_bios*, %struct.nvkm_bios** %7, align 8
  %92 = load i32, i32* %12, align 4
  %93 = add nsw i32 %92, 3
  %94 = call i32 @nvbios_rd08(%struct.nvkm_bios* %91, i32 %93)
  %95 = and i32 %94, 7
  %96 = shl i32 %95, 4
  %97 = load %struct.nvbios_connE*, %struct.nvbios_connE** %11, align 8
  %98 = getelementptr inbounds %struct.nvbios_connE, %struct.nvbios_connE* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = or i32 %99, %96
  store i32 %100, i32* %98, align 4
  %101 = load %struct.nvkm_bios*, %struct.nvkm_bios** %7, align 8
  %102 = load i32, i32* %12, align 4
  %103 = add nsw i32 %102, 3
  %104 = call i32 @nvbios_rd08(%struct.nvkm_bios* %101, i32 %103)
  %105 = and i32 %104, 8
  %106 = ashr i32 %105, 3
  %107 = load %struct.nvbios_connE*, %struct.nvbios_connE** %11, align 8
  %108 = getelementptr inbounds %struct.nvbios_connE, %struct.nvbios_connE* %107, i32 0, i32 5
  store i32 %106, i32* %108, align 4
  %109 = load %struct.nvkm_bios*, %struct.nvkm_bios** %7, align 8
  %110 = load i32, i32* %12, align 4
  %111 = add nsw i32 %110, 3
  %112 = call i32 @nvbios_rd08(%struct.nvkm_bios* %109, i32 %111)
  %113 = and i32 %112, 112
  %114 = ashr i32 %113, 4
  %115 = load %struct.nvbios_connE*, %struct.nvbios_connE** %11, align 8
  %116 = getelementptr inbounds %struct.nvbios_connE, %struct.nvbios_connE* %115, i32 0, i32 6
  store i32 %114, i32* %116, align 4
  %117 = load i32, i32* %12, align 4
  store i32 %117, i32* %6, align 4
  br label %120

118:                                              ; preds = %5
  br label %119

119:                                              ; preds = %118
  store i32 0, i32* %6, align 4
  br label %120

120:                                              ; preds = %119, %63, %61
  %121 = load i32, i32* %6, align 4
  ret i32 %121
}

declare dso_local i32 @nvbios_connEe(%struct.nvkm_bios*, i32, i32*, i32*) #1

declare dso_local i32 @memset(%struct.nvbios_connE*, i32, i32) #1

declare dso_local i32 @nvbios_rd08(%struct.nvkm_bios*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
