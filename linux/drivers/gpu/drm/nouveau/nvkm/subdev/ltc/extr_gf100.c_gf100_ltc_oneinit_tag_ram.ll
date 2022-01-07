; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/ltc/extr_gf100.c_gf100_ltc_oneinit_tag_ram.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/ltc/extr_gf100.c_gf100_ltc_oneinit_tag_ram.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_ltc = type { i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.nvkm_device* }
%struct.nvkm_device = type { %struct.nvkm_fb* }
%struct.nvkm_fb = type { i32, %struct.nvkm_ram* }
%struct.nvkm_ram = type { i32 }

@NVKM_RAM_MM_NORMAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gf100_ltc_oneinit_tag_ram(%struct.nvkm_ltc* %0) #0 {
  %2 = alloca %struct.nvkm_ltc*, align 8
  %3 = alloca %struct.nvkm_device*, align 8
  %4 = alloca %struct.nvkm_fb*, align 8
  %5 = alloca %struct.nvkm_ram*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.nvkm_ltc* %0, %struct.nvkm_ltc** %2, align 8
  %12 = load %struct.nvkm_ltc*, %struct.nvkm_ltc** %2, align 8
  %13 = getelementptr inbounds %struct.nvkm_ltc, %struct.nvkm_ltc* %12, i32 0, i32 4
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.nvkm_device*, %struct.nvkm_device** %14, align 8
  store %struct.nvkm_device* %15, %struct.nvkm_device** %3, align 8
  %16 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %17 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %16, i32 0, i32 0
  %18 = load %struct.nvkm_fb*, %struct.nvkm_fb** %17, align 8
  store %struct.nvkm_fb* %18, %struct.nvkm_fb** %4, align 8
  %19 = load %struct.nvkm_fb*, %struct.nvkm_fb** %4, align 8
  %20 = getelementptr inbounds %struct.nvkm_fb, %struct.nvkm_fb* %19, i32 0, i32 1
  %21 = load %struct.nvkm_ram*, %struct.nvkm_ram** %20, align 8
  store %struct.nvkm_ram* %21, %struct.nvkm_ram** %5, align 8
  %22 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %23 = call i32 @nvkm_rd32(%struct.nvkm_device* %22, i32 1051776)
  %24 = and i32 %23, 4096
  %25 = icmp ne i32 %24, 0
  %26 = zext i1 %25 to i64
  %27 = select i1 %25, i32 16, i32 17
  store i32 %27, i32* %6, align 4
  %28 = load %struct.nvkm_ram*, %struct.nvkm_ram** %5, align 8
  %29 = icmp ne %struct.nvkm_ram* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %1
  %31 = load %struct.nvkm_ltc*, %struct.nvkm_ltc** %2, align 8
  %32 = getelementptr inbounds %struct.nvkm_ltc, %struct.nvkm_ltc* %31, i32 0, i32 0
  store i32 0, i32* %32, align 8
  br label %110

33:                                               ; preds = %1
  %34 = load %struct.nvkm_ram*, %struct.nvkm_ram** %5, align 8
  %35 = getelementptr inbounds %struct.nvkm_ram, %struct.nvkm_ram* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = ashr i32 %36, 17
  %38 = sdiv i32 %37, 4
  %39 = load %struct.nvkm_ltc*, %struct.nvkm_ltc** %2, align 8
  %40 = getelementptr inbounds %struct.nvkm_ltc, %struct.nvkm_ltc* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  %41 = load %struct.nvkm_ltc*, %struct.nvkm_ltc** %2, align 8
  %42 = getelementptr inbounds %struct.nvkm_ltc, %struct.nvkm_ltc* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* %6, align 4
  %45 = shl i32 1, %44
  %46 = icmp sgt i32 %43, %45
  br i1 %46, label %47, label %52

47:                                               ; preds = %33
  %48 = load i32, i32* %6, align 4
  %49 = shl i32 1, %48
  %50 = load %struct.nvkm_ltc*, %struct.nvkm_ltc** %2, align 8
  %51 = getelementptr inbounds %struct.nvkm_ltc, %struct.nvkm_ltc* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  br label %52

52:                                               ; preds = %47, %33
  %53 = load %struct.nvkm_ltc*, %struct.nvkm_ltc** %2, align 8
  %54 = getelementptr inbounds %struct.nvkm_ltc, %struct.nvkm_ltc* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = add nsw i32 %55, 63
  %57 = and i32 %56, -64
  %58 = load %struct.nvkm_ltc*, %struct.nvkm_ltc** %2, align 8
  %59 = getelementptr inbounds %struct.nvkm_ltc, %struct.nvkm_ltc* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  %60 = load %struct.nvkm_ltc*, %struct.nvkm_ltc** %2, align 8
  %61 = getelementptr inbounds %struct.nvkm_ltc, %struct.nvkm_ltc* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = mul nsw i32 %62, 2048
  store i32 %63, i32* %9, align 4
  %64 = load i32, i32* %9, align 4
  %65 = icmp slt i32 %64, 24576
  br i1 %65, label %66, label %67

66:                                               ; preds = %52
  br label %69

67:                                               ; preds = %52
  %68 = load i32, i32* %9, align 4
  br label %69

69:                                               ; preds = %67, %66
  %70 = phi i32 [ 24576, %66 ], [ %68, %67 ]
  store i32 %70, i32* %8, align 4
  %71 = load %struct.nvkm_ltc*, %struct.nvkm_ltc** %2, align 8
  %72 = getelementptr inbounds %struct.nvkm_ltc, %struct.nvkm_ltc* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = sdiv i32 %73, 64
  %75 = mul nsw i32 %74, 24576
  %76 = load i32, i32* %8, align 4
  %77 = add nsw i32 %75, %76
  store i32 %77, i32* %7, align 4
  %78 = load i32, i32* %9, align 4
  %79 = load i32, i32* %7, align 4
  %80 = add nsw i32 %79, %78
  store i32 %80, i32* %7, align 4
  %81 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %82 = load i32, i32* @NVKM_RAM_MM_NORMAL, align 4
  %83 = load i32, i32* %7, align 4
  %84 = load %struct.nvkm_ltc*, %struct.nvkm_ltc** %2, align 8
  %85 = getelementptr inbounds %struct.nvkm_ltc, %struct.nvkm_ltc* %84, i32 0, i32 3
  %86 = call i32 @nvkm_ram_get(%struct.nvkm_device* %81, i32 %82, i32 1, i32 12, i32 %83, i32 1, i32 1, i32* %85)
  store i32 %86, i32* %10, align 4
  %87 = load i32, i32* %10, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %69
  %90 = load %struct.nvkm_ltc*, %struct.nvkm_ltc** %2, align 8
  %91 = getelementptr inbounds %struct.nvkm_ltc, %struct.nvkm_ltc* %90, i32 0, i32 0
  store i32 0, i32* %91, align 8
  br label %109

92:                                               ; preds = %69
  %93 = load %struct.nvkm_ltc*, %struct.nvkm_ltc** %2, align 8
  %94 = getelementptr inbounds %struct.nvkm_ltc, %struct.nvkm_ltc* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @nvkm_memory_addr(i32 %95)
  %97 = load i32, i32* %8, align 4
  %98 = add nsw i32 %96, %97
  store i32 %98, i32* %11, align 4
  %99 = load i32, i32* %9, align 4
  %100 = sub nsw i32 %99, 1
  %101 = load i32, i32* %11, align 4
  %102 = add nsw i32 %101, %100
  store i32 %102, i32* %11, align 4
  %103 = load i32, i32* %11, align 4
  %104 = load i32, i32* %9, align 4
  %105 = call i32 @do_div(i32 %103, i32 %104)
  %106 = load i32, i32* %11, align 4
  %107 = load %struct.nvkm_ltc*, %struct.nvkm_ltc** %2, align 8
  %108 = getelementptr inbounds %struct.nvkm_ltc, %struct.nvkm_ltc* %107, i32 0, i32 2
  store i32 %106, i32* %108, align 8
  br label %109

109:                                              ; preds = %92, %89
  br label %110

110:                                              ; preds = %109, %30
  %111 = load %struct.nvkm_fb*, %struct.nvkm_fb** %4, align 8
  %112 = getelementptr inbounds %struct.nvkm_fb, %struct.nvkm_fb* %111, i32 0, i32 0
  %113 = call i32 @nvkm_mm_fini(i32* %112)
  %114 = load %struct.nvkm_fb*, %struct.nvkm_fb** %4, align 8
  %115 = getelementptr inbounds %struct.nvkm_fb, %struct.nvkm_fb* %114, i32 0, i32 0
  %116 = load %struct.nvkm_ltc*, %struct.nvkm_ltc** %2, align 8
  %117 = getelementptr inbounds %struct.nvkm_ltc, %struct.nvkm_ltc* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = call i32 @nvkm_mm_init(i32* %115, i32 0, i32 0, i32 %118, i32 1)
  ret i32 %119
}

declare dso_local i32 @nvkm_rd32(%struct.nvkm_device*, i32) #1

declare dso_local i32 @nvkm_ram_get(%struct.nvkm_device*, i32, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @nvkm_memory_addr(i32) #1

declare dso_local i32 @do_div(i32, i32) #1

declare dso_local i32 @nvkm_mm_fini(i32*) #1

declare dso_local i32 @nvkm_mm_init(i32*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
