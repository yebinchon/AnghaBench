; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extr_rammap.c_nvbios_rammapSp_from_perf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extr_rammap.c_nvbios_rammapSp_from_perf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_bios = type { i32 }
%struct.nvbios_ramcfg = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nvbios_rammapSp_from_perf(%struct.nvkm_bios* %0, i32 %1, i32 %2, i32 %3, %struct.nvbios_ramcfg* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.nvkm_bios*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.nvbios_ramcfg*, align 8
  store %struct.nvkm_bios* %0, %struct.nvkm_bios** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.nvbios_ramcfg* %4, %struct.nvbios_ramcfg** %11, align 8
  %12 = load i32, i32* %10, align 4
  %13 = load i32, i32* %9, align 4
  %14 = mul nsw i32 %12, %13
  %15 = load i32, i32* %8, align 4
  %16 = add nsw i32 %15, %14
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %9, align 4
  %18 = icmp slt i32 %17, 11
  br i1 %18, label %19, label %20

19:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %158

20:                                               ; preds = %5
  %21 = load %struct.nvbios_ramcfg*, %struct.nvbios_ramcfg** %11, align 8
  %22 = getelementptr inbounds %struct.nvbios_ramcfg, %struct.nvbios_ramcfg* %21, i32 0, i32 17
  store i64 0, i64* %22, align 8
  %23 = load %struct.nvkm_bios*, %struct.nvkm_bios** %7, align 8
  %24 = load i32, i32* %8, align 4
  %25 = add nsw i32 %24, 1
  %26 = call i32 @nvbios_rd08(%struct.nvkm_bios* %23, i32 %25)
  %27 = load %struct.nvbios_ramcfg*, %struct.nvbios_ramcfg** %11, align 8
  %28 = getelementptr inbounds %struct.nvbios_ramcfg, %struct.nvbios_ramcfg* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = load %struct.nvkm_bios*, %struct.nvkm_bios** %7, align 8
  %30 = load i32, i32* %8, align 4
  %31 = add nsw i32 %30, 3
  %32 = call i32 @nvbios_rd08(%struct.nvkm_bios* %29, i32 %31)
  %33 = and i32 %32, 1
  %34 = ashr i32 %33, 0
  %35 = load %struct.nvbios_ramcfg*, %struct.nvbios_ramcfg** %11, align 8
  %36 = getelementptr inbounds %struct.nvbios_ramcfg, %struct.nvbios_ramcfg* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = load %struct.nvkm_bios*, %struct.nvkm_bios** %7, align 8
  %38 = load i32, i32* %8, align 4
  %39 = add nsw i32 %38, 3
  %40 = call i32 @nvbios_rd08(%struct.nvkm_bios* %37, i32 %39)
  %41 = and i32 %40, 2
  %42 = ashr i32 %41, 1
  %43 = load %struct.nvbios_ramcfg*, %struct.nvbios_ramcfg** %11, align 8
  %44 = getelementptr inbounds %struct.nvbios_ramcfg, %struct.nvbios_ramcfg* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 8
  %45 = load %struct.nvkm_bios*, %struct.nvkm_bios** %7, align 8
  %46 = load i32, i32* %8, align 4
  %47 = add nsw i32 %46, 3
  %48 = call i32 @nvbios_rd08(%struct.nvkm_bios* %45, i32 %47)
  %49 = and i32 %48, 4
  %50 = ashr i32 %49, 2
  %51 = load %struct.nvbios_ramcfg*, %struct.nvbios_ramcfg** %11, align 8
  %52 = getelementptr inbounds %struct.nvbios_ramcfg, %struct.nvbios_ramcfg* %51, i32 0, i32 3
  store i32 %50, i32* %52, align 4
  %53 = load %struct.nvkm_bios*, %struct.nvkm_bios** %7, align 8
  %54 = load i32, i32* %8, align 4
  %55 = add nsw i32 %54, 3
  %56 = call i32 @nvbios_rd08(%struct.nvkm_bios* %53, i32 %55)
  %57 = and i32 %56, 8
  %58 = ashr i32 %57, 3
  %59 = load %struct.nvbios_ramcfg*, %struct.nvbios_ramcfg** %11, align 8
  %60 = getelementptr inbounds %struct.nvbios_ramcfg, %struct.nvbios_ramcfg* %59, i32 0, i32 4
  store i32 %58, i32* %60, align 8
  %61 = load %struct.nvkm_bios*, %struct.nvkm_bios** %7, align 8
  %62 = load i32, i32* %8, align 4
  %63 = add nsw i32 %62, 3
  %64 = call i32 @nvbios_rd08(%struct.nvkm_bios* %61, i32 %63)
  %65 = and i32 %64, 16
  %66 = ashr i32 %65, 3
  %67 = load %struct.nvbios_ramcfg*, %struct.nvbios_ramcfg** %11, align 8
  %68 = getelementptr inbounds %struct.nvbios_ramcfg, %struct.nvbios_ramcfg* %67, i32 0, i32 5
  store i32 %66, i32* %68, align 4
  %69 = load %struct.nvkm_bios*, %struct.nvkm_bios** %7, align 8
  %70 = load i32, i32* %8, align 4
  %71 = add nsw i32 %70, 3
  %72 = call i32 @nvbios_rd08(%struct.nvkm_bios* %69, i32 %71)
  %73 = and i32 %72, 128
  %74 = ashr i32 %73, 7
  %75 = load %struct.nvbios_ramcfg*, %struct.nvbios_ramcfg** %11, align 8
  %76 = getelementptr inbounds %struct.nvbios_ramcfg, %struct.nvbios_ramcfg* %75, i32 0, i32 6
  store i32 %74, i32* %76, align 8
  %77 = load %struct.nvkm_bios*, %struct.nvkm_bios** %7, align 8
  %78 = load i32, i32* %8, align 4
  %79 = add nsw i32 %78, 4
  %80 = call i32 @nvbios_rd08(%struct.nvkm_bios* %77, i32 %79)
  %81 = and i32 %80, 2
  %82 = ashr i32 %81, 1
  %83 = load %struct.nvbios_ramcfg*, %struct.nvbios_ramcfg** %11, align 8
  %84 = getelementptr inbounds %struct.nvbios_ramcfg, %struct.nvbios_ramcfg* %83, i32 0, i32 7
  store i32 %82, i32* %84, align 4
  %85 = load %struct.nvkm_bios*, %struct.nvkm_bios** %7, align 8
  %86 = load i32, i32* %8, align 4
  %87 = add nsw i32 %86, 4
  %88 = call i32 @nvbios_rd08(%struct.nvkm_bios* %85, i32 %87)
  %89 = and i32 %88, 4
  %90 = ashr i32 %89, 2
  %91 = load %struct.nvbios_ramcfg*, %struct.nvbios_ramcfg** %11, align 8
  %92 = getelementptr inbounds %struct.nvbios_ramcfg, %struct.nvbios_ramcfg* %91, i32 0, i32 8
  store i32 %90, i32* %92, align 8
  %93 = load %struct.nvkm_bios*, %struct.nvkm_bios** %7, align 8
  %94 = load i32, i32* %8, align 4
  %95 = add nsw i32 %94, 4
  %96 = call i32 @nvbios_rd08(%struct.nvkm_bios* %93, i32 %95)
  %97 = and i32 %96, 32
  %98 = ashr i32 %97, 5
  %99 = load %struct.nvbios_ramcfg*, %struct.nvbios_ramcfg** %11, align 8
  %100 = getelementptr inbounds %struct.nvbios_ramcfg, %struct.nvbios_ramcfg* %99, i32 0, i32 9
  store i32 %98, i32* %100, align 4
  %101 = load %struct.nvkm_bios*, %struct.nvkm_bios** %7, align 8
  %102 = load i32, i32* %8, align 4
  %103 = add nsw i32 %102, 5
  %104 = call i32 @nvbios_rd08(%struct.nvkm_bios* %101, i32 %103)
  %105 = and i32 %104, 255
  %106 = ashr i32 %105, 0
  %107 = load %struct.nvbios_ramcfg*, %struct.nvbios_ramcfg** %11, align 8
  %108 = getelementptr inbounds %struct.nvbios_ramcfg, %struct.nvbios_ramcfg* %107, i32 0, i32 10
  store i32 %106, i32* %108, align 8
  %109 = load %struct.nvkm_bios*, %struct.nvkm_bios** %7, align 8
  %110 = load i32, i32* %8, align 4
  %111 = add nsw i32 %110, 6
  %112 = call i32 @nvbios_rd08(%struct.nvkm_bios* %109, i32 %111)
  %113 = and i32 %112, 255
  %114 = ashr i32 %113, 0
  %115 = load %struct.nvbios_ramcfg*, %struct.nvbios_ramcfg** %11, align 8
  %116 = getelementptr inbounds %struct.nvbios_ramcfg, %struct.nvbios_ramcfg* %115, i32 0, i32 11
  store i32 %114, i32* %116, align 4
  %117 = load %struct.nvkm_bios*, %struct.nvkm_bios** %7, align 8
  %118 = load i32, i32* %8, align 4
  %119 = add nsw i32 %118, 7
  %120 = call i32 @nvbios_rd08(%struct.nvkm_bios* %117, i32 %119)
  %121 = and i32 %120, 255
  %122 = ashr i32 %121, 0
  %123 = load %struct.nvbios_ramcfg*, %struct.nvbios_ramcfg** %11, align 8
  %124 = getelementptr inbounds %struct.nvbios_ramcfg, %struct.nvbios_ramcfg* %123, i32 0, i32 12
  store i32 %122, i32* %124, align 8
  %125 = load %struct.nvkm_bios*, %struct.nvkm_bios** %7, align 8
  %126 = load i32, i32* %8, align 4
  %127 = add nsw i32 %126, 8
  %128 = call i32 @nvbios_rd08(%struct.nvkm_bios* %125, i32 %127)
  %129 = and i32 %128, 255
  %130 = ashr i32 %129, 0
  %131 = load %struct.nvbios_ramcfg*, %struct.nvbios_ramcfg** %11, align 8
  %132 = getelementptr inbounds %struct.nvbios_ramcfg, %struct.nvbios_ramcfg* %131, i32 0, i32 13
  store i32 %130, i32* %132, align 4
  %133 = load %struct.nvkm_bios*, %struct.nvkm_bios** %7, align 8
  %134 = load i32, i32* %8, align 4
  %135 = add nsw i32 %134, 9
  %136 = call i32 @nvbios_rd08(%struct.nvkm_bios* %133, i32 %135)
  %137 = and i32 %136, 255
  %138 = ashr i32 %137, 0
  %139 = load %struct.nvbios_ramcfg*, %struct.nvbios_ramcfg** %11, align 8
  %140 = getelementptr inbounds %struct.nvbios_ramcfg, %struct.nvbios_ramcfg* %139, i32 0, i32 14
  store i32 %138, i32* %140, align 8
  %141 = load %struct.nvkm_bios*, %struct.nvkm_bios** %7, align 8
  %142 = load i32, i32* %8, align 4
  %143 = add nsw i32 %142, 10
  %144 = call i32 @nvbios_rd08(%struct.nvkm_bios* %141, i32 %143)
  %145 = and i32 %144, 15
  %146 = ashr i32 %145, 0
  %147 = load %struct.nvbios_ramcfg*, %struct.nvbios_ramcfg** %11, align 8
  %148 = getelementptr inbounds %struct.nvbios_ramcfg, %struct.nvbios_ramcfg* %147, i32 0, i32 15
  store i32 %146, i32* %148, align 4
  %149 = load %struct.nvkm_bios*, %struct.nvkm_bios** %7, align 8
  %150 = load i32, i32* %8, align 4
  %151 = add nsw i32 %150, 10
  %152 = call i32 @nvbios_rd08(%struct.nvkm_bios* %149, i32 %151)
  %153 = and i32 %152, 240
  %154 = ashr i32 %153, 4
  %155 = load %struct.nvbios_ramcfg*, %struct.nvbios_ramcfg** %11, align 8
  %156 = getelementptr inbounds %struct.nvbios_ramcfg, %struct.nvbios_ramcfg* %155, i32 0, i32 16
  store i32 %154, i32* %156, align 8
  %157 = load i32, i32* %8, align 4
  store i32 %157, i32* %6, align 4
  br label %158

158:                                              ; preds = %20, %19
  %159 = load i32, i32* %6, align 4
  ret i32 %159
}

declare dso_local i32 @nvbios_rd08(%struct.nvkm_bios*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
