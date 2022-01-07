; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extr_rammap.c_nvbios_rammapEp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extr_rammap.c_nvbios_rammapEp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_bios = type { i32 }
%struct.nvbios_ramcfg = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nvbios_rammapEp(%struct.nvkm_bios* %0, i32 %1, i32* %2, i32* %3, i32* %4, i32* %5, %struct.nvbios_ramcfg* %6) #0 {
  %8 = alloca %struct.nvkm_bios*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.nvbios_ramcfg*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.nvkm_bios* %0, %struct.nvkm_bios** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  store %struct.nvbios_ramcfg* %6, %struct.nvbios_ramcfg** %14, align 8
  %17 = load %struct.nvkm_bios*, %struct.nvkm_bios** %8, align 8
  %18 = load i32, i32* %9, align 4
  %19 = load i32*, i32** %10, align 8
  %20 = load i32*, i32** %11, align 8
  %21 = load i32*, i32** %12, align 8
  %22 = load i32*, i32** %13, align 8
  %23 = call i32 @nvbios_rammapEe(%struct.nvkm_bios* %17, i32 %18, i32* %19, i32* %20, i32* %21, i32* %22)
  store i32 %23, i32* %15, align 4
  %24 = load %struct.nvbios_ramcfg*, %struct.nvbios_ramcfg** %14, align 8
  %25 = call i32 @memset(%struct.nvbios_ramcfg* %24, i32 0, i32 96)
  %26 = load i32*, i32** %10, align 8
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.nvbios_ramcfg*, %struct.nvbios_ramcfg** %14, align 8
  %29 = getelementptr inbounds %struct.nvbios_ramcfg, %struct.nvbios_ramcfg* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  %30 = load i32*, i32** %11, align 8
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.nvbios_ramcfg*, %struct.nvbios_ramcfg** %14, align 8
  %33 = getelementptr inbounds %struct.nvbios_ramcfg, %struct.nvbios_ramcfg* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  %34 = load i32, i32* %15, align 4
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  %37 = xor i1 %36, true
  %38 = zext i1 %37 to i32
  %39 = load i32*, i32** %10, align 8
  %40 = load i32, i32* %39, align 4
  %41 = mul nsw i32 %38, %40
  switch i32 %41, label %178 [
    i32 16, label %42
    i32 17, label %71
  ]

42:                                               ; preds = %7
  %43 = load %struct.nvkm_bios*, %struct.nvkm_bios** %8, align 8
  %44 = load i32, i32* %15, align 4
  %45 = add nsw i32 %44, 0
  %46 = call i8* @nvbios_rd16(%struct.nvkm_bios* %43, i32 %45)
  %47 = load %struct.nvbios_ramcfg*, %struct.nvbios_ramcfg** %14, align 8
  %48 = getelementptr inbounds %struct.nvbios_ramcfg, %struct.nvbios_ramcfg* %47, i32 0, i32 20
  store i8* %46, i8** %48, align 8
  %49 = load %struct.nvkm_bios*, %struct.nvkm_bios** %8, align 8
  %50 = load i32, i32* %15, align 4
  %51 = add nsw i32 %50, 2
  %52 = call i8* @nvbios_rd16(%struct.nvkm_bios* %49, i32 %51)
  %53 = load %struct.nvbios_ramcfg*, %struct.nvbios_ramcfg** %14, align 8
  %54 = getelementptr inbounds %struct.nvbios_ramcfg, %struct.nvbios_ramcfg* %53, i32 0, i32 19
  store i8* %52, i8** %54, align 8
  %55 = load %struct.nvkm_bios*, %struct.nvkm_bios** %8, align 8
  %56 = load i32, i32* %15, align 4
  %57 = add nsw i32 %56, 4
  %58 = call i32 @nvbios_rd08(%struct.nvkm_bios* %55, i32 %57)
  %59 = and i32 %58, 2
  %60 = ashr i32 %59, 1
  %61 = load %struct.nvbios_ramcfg*, %struct.nvbios_ramcfg** %14, align 8
  %62 = getelementptr inbounds %struct.nvbios_ramcfg, %struct.nvbios_ramcfg* %61, i32 0, i32 2
  store i32 %60, i32* %62, align 8
  %63 = load %struct.nvkm_bios*, %struct.nvkm_bios** %8, align 8
  %64 = load i32, i32* %15, align 4
  %65 = add nsw i32 %64, 4
  %66 = call i32 @nvbios_rd08(%struct.nvkm_bios* %63, i32 %65)
  %67 = and i32 %66, 8
  %68 = ashr i32 %67, 3
  %69 = load %struct.nvbios_ramcfg*, %struct.nvbios_ramcfg** %14, align 8
  %70 = getelementptr inbounds %struct.nvbios_ramcfg, %struct.nvbios_ramcfg* %69, i32 0, i32 3
  store i32 %68, i32* %70, align 4
  br label %179

71:                                               ; preds = %7
  %72 = load %struct.nvkm_bios*, %struct.nvkm_bios** %8, align 8
  %73 = load i32, i32* %15, align 4
  %74 = add nsw i32 %73, 0
  %75 = call i8* @nvbios_rd16(%struct.nvkm_bios* %72, i32 %74)
  %76 = load %struct.nvbios_ramcfg*, %struct.nvbios_ramcfg** %14, align 8
  %77 = getelementptr inbounds %struct.nvbios_ramcfg, %struct.nvbios_ramcfg* %76, i32 0, i32 20
  store i8* %75, i8** %77, align 8
  %78 = load %struct.nvkm_bios*, %struct.nvkm_bios** %8, align 8
  %79 = load i32, i32* %15, align 4
  %80 = add nsw i32 %79, 2
  %81 = call i8* @nvbios_rd16(%struct.nvkm_bios* %78, i32 %80)
  %82 = load %struct.nvbios_ramcfg*, %struct.nvbios_ramcfg** %14, align 8
  %83 = getelementptr inbounds %struct.nvbios_ramcfg, %struct.nvbios_ramcfg* %82, i32 0, i32 19
  store i8* %81, i8** %83, align 8
  %84 = load %struct.nvkm_bios*, %struct.nvkm_bios** %8, align 8
  %85 = load i32, i32* %15, align 4
  %86 = add nsw i32 %85, 8
  %87 = call i32 @nvbios_rd08(%struct.nvkm_bios* %84, i32 %86)
  %88 = and i32 %87, 1
  %89 = ashr i32 %88, 0
  %90 = load %struct.nvbios_ramcfg*, %struct.nvbios_ramcfg** %14, align 8
  %91 = getelementptr inbounds %struct.nvbios_ramcfg, %struct.nvbios_ramcfg* %90, i32 0, i32 4
  store i32 %89, i32* %91, align 8
  %92 = load %struct.nvkm_bios*, %struct.nvkm_bios** %8, align 8
  %93 = load i32, i32* %15, align 4
  %94 = add nsw i32 %93, 8
  %95 = call i32 @nvbios_rd08(%struct.nvkm_bios* %92, i32 %94)
  %96 = and i32 %95, 12
  %97 = ashr i32 %96, 2
  %98 = load %struct.nvbios_ramcfg*, %struct.nvbios_ramcfg** %14, align 8
  %99 = getelementptr inbounds %struct.nvbios_ramcfg, %struct.nvbios_ramcfg* %98, i32 0, i32 5
  store i32 %97, i32* %99, align 4
  %100 = load %struct.nvkm_bios*, %struct.nvkm_bios** %8, align 8
  %101 = load i32, i32* %15, align 4
  %102 = add nsw i32 %101, 8
  %103 = call i32 @nvbios_rd08(%struct.nvkm_bios* %100, i32 %102)
  %104 = and i32 %103, 16
  %105 = ashr i32 %104, 4
  %106 = load %struct.nvbios_ramcfg*, %struct.nvbios_ramcfg** %14, align 8
  %107 = getelementptr inbounds %struct.nvbios_ramcfg, %struct.nvbios_ramcfg* %106, i32 0, i32 6
  store i32 %105, i32* %107, align 8
  %108 = load %struct.nvkm_bios*, %struct.nvkm_bios** %8, align 8
  %109 = load i32, i32* %15, align 4
  %110 = add nsw i32 %109, 9
  %111 = call i32 @nvbios_rd32(%struct.nvkm_bios* %108, i32 %110)
  store i32 %111, i32* %16, align 4
  %112 = load i32, i32* %16, align 4
  %113 = and i32 %112, 511
  %114 = ashr i32 %113, 0
  %115 = load %struct.nvbios_ramcfg*, %struct.nvbios_ramcfg** %14, align 8
  %116 = getelementptr inbounds %struct.nvbios_ramcfg, %struct.nvbios_ramcfg* %115, i32 0, i32 7
  store i32 %114, i32* %116, align 4
  %117 = load i32, i32* %16, align 4
  %118 = and i32 %117, 261632
  %119 = ashr i32 %118, 9
  %120 = load %struct.nvbios_ramcfg*, %struct.nvbios_ramcfg** %14, align 8
  %121 = getelementptr inbounds %struct.nvbios_ramcfg, %struct.nvbios_ramcfg* %120, i32 0, i32 8
  store i32 %119, i32* %121, align 8
  %122 = load i32, i32* %16, align 4
  %123 = and i32 %122, 262144
  %124 = ashr i32 %123, 18
  %125 = load %struct.nvbios_ramcfg*, %struct.nvbios_ramcfg** %14, align 8
  %126 = getelementptr inbounds %struct.nvbios_ramcfg, %struct.nvbios_ramcfg* %125, i32 0, i32 9
  store i32 %124, i32* %126, align 4
  %127 = load i32, i32* %16, align 4
  %128 = and i32 %127, 524288
  %129 = ashr i32 %128, 19
  %130 = load %struct.nvbios_ramcfg*, %struct.nvbios_ramcfg** %14, align 8
  %131 = getelementptr inbounds %struct.nvbios_ramcfg, %struct.nvbios_ramcfg* %130, i32 0, i32 10
  store i32 %129, i32* %131, align 8
  %132 = load i32, i32* %16, align 4
  %133 = and i32 %132, 32505856
  %134 = ashr i32 %133, 20
  %135 = load %struct.nvbios_ramcfg*, %struct.nvbios_ramcfg** %14, align 8
  %136 = getelementptr inbounds %struct.nvbios_ramcfg, %struct.nvbios_ramcfg* %135, i32 0, i32 11
  store i32 %134, i32* %136, align 4
  %137 = load i32, i32* %16, align 4
  %138 = and i32 %137, 33554432
  %139 = ashr i32 %138, 25
  %140 = load %struct.nvbios_ramcfg*, %struct.nvbios_ramcfg** %14, align 8
  %141 = getelementptr inbounds %struct.nvbios_ramcfg, %struct.nvbios_ramcfg* %140, i32 0, i32 12
  store i32 %139, i32* %141, align 8
  %142 = load i32, i32* %16, align 4
  %143 = and i32 %142, 67108864
  %144 = ashr i32 %143, 26
  %145 = load %struct.nvbios_ramcfg*, %struct.nvbios_ramcfg** %14, align 8
  %146 = getelementptr inbounds %struct.nvbios_ramcfg, %struct.nvbios_ramcfg* %145, i32 0, i32 13
  store i32 %144, i32* %146, align 4
  %147 = load i32, i32* %16, align 4
  %148 = and i32 %147, 134217728
  %149 = ashr i32 %148, 27
  %150 = load %struct.nvbios_ramcfg*, %struct.nvbios_ramcfg** %14, align 8
  %151 = getelementptr inbounds %struct.nvbios_ramcfg, %struct.nvbios_ramcfg* %150, i32 0, i32 14
  store i32 %149, i32* %151, align 8
  %152 = load %struct.nvkm_bios*, %struct.nvkm_bios** %8, align 8
  %153 = load i32, i32* %15, align 4
  %154 = add nsw i32 %153, 13
  %155 = call i32 @nvbios_rd08(%struct.nvkm_bios* %152, i32 %154)
  %156 = load %struct.nvbios_ramcfg*, %struct.nvbios_ramcfg** %14, align 8
  %157 = getelementptr inbounds %struct.nvbios_ramcfg, %struct.nvbios_ramcfg* %156, i32 0, i32 15
  store i32 %155, i32* %157, align 4
  %158 = load %struct.nvkm_bios*, %struct.nvkm_bios** %8, align 8
  %159 = load i32, i32* %15, align 4
  %160 = add nsw i32 %159, 14
  %161 = call i32 @nvbios_rd08(%struct.nvkm_bios* %158, i32 %160)
  %162 = load %struct.nvbios_ramcfg*, %struct.nvbios_ramcfg** %14, align 8
  %163 = getelementptr inbounds %struct.nvbios_ramcfg, %struct.nvbios_ramcfg* %162, i32 0, i32 16
  store i32 %161, i32* %163, align 8
  %164 = load %struct.nvkm_bios*, %struct.nvkm_bios** %8, align 8
  %165 = load i32, i32* %15, align 4
  %166 = add nsw i32 %165, 15
  %167 = call i32 @nvbios_rd08(%struct.nvkm_bios* %164, i32 %166)
  %168 = load %struct.nvbios_ramcfg*, %struct.nvbios_ramcfg** %14, align 8
  %169 = getelementptr inbounds %struct.nvbios_ramcfg, %struct.nvbios_ramcfg* %168, i32 0, i32 17
  store i32 %167, i32* %169, align 4
  %170 = load %struct.nvkm_bios*, %struct.nvkm_bios** %8, align 8
  %171 = load i32, i32* %15, align 4
  %172 = add nsw i32 %171, 17
  %173 = call i32 @nvbios_rd08(%struct.nvkm_bios* %170, i32 %172)
  %174 = and i32 %173, 12
  %175 = ashr i32 %174, 2
  %176 = load %struct.nvbios_ramcfg*, %struct.nvbios_ramcfg** %14, align 8
  %177 = getelementptr inbounds %struct.nvbios_ramcfg, %struct.nvbios_ramcfg* %176, i32 0, i32 18
  store i32 %175, i32* %177, align 8
  br label %179

178:                                              ; preds = %7
  store i32 0, i32* %15, align 4
  br label %179

179:                                              ; preds = %178, %71, %42
  %180 = load i32, i32* %15, align 4
  ret i32 %180
}

declare dso_local i32 @nvbios_rammapEe(%struct.nvkm_bios*, i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @memset(%struct.nvbios_ramcfg*, i32, i32) #1

declare dso_local i8* @nvbios_rd16(%struct.nvkm_bios*, i32) #1

declare dso_local i32 @nvbios_rd08(%struct.nvkm_bios*, i32) #1

declare dso_local i32 @nvbios_rd32(%struct.nvkm_bios*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
