; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_gf100.c_gf100_gr_chan_bind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_gf100.c_gf100_gr_chan_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_object = type { i32 }
%struct.nvkm_gpuobj = type { i32 }
%struct.gf100_gr_chan = type { i32, %struct.TYPE_8__*, %struct.gf100_gr* }
%struct.TYPE_8__ = type { i32 }
%struct.gf100_gr = type { i32, i32*, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_object*, %struct.nvkm_gpuobj*, i32, %struct.nvkm_gpuobj**)* @gf100_gr_chan_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gf100_gr_chan_bind(%struct.nvkm_object* %0, %struct.nvkm_gpuobj* %1, i32 %2, %struct.nvkm_gpuobj** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nvkm_object*, align 8
  %7 = alloca %struct.nvkm_gpuobj*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.nvkm_gpuobj**, align 8
  %10 = alloca %struct.gf100_gr_chan*, align 8
  %11 = alloca %struct.gf100_gr*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.nvkm_object* %0, %struct.nvkm_object** %6, align 8
  store %struct.nvkm_gpuobj* %1, %struct.nvkm_gpuobj** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.nvkm_gpuobj** %3, %struct.nvkm_gpuobj*** %9, align 8
  %14 = load %struct.nvkm_object*, %struct.nvkm_object** %6, align 8
  %15 = call %struct.gf100_gr_chan* @gf100_gr_chan(%struct.nvkm_object* %14)
  store %struct.gf100_gr_chan* %15, %struct.gf100_gr_chan** %10, align 8
  %16 = load %struct.gf100_gr_chan*, %struct.gf100_gr_chan** %10, align 8
  %17 = getelementptr inbounds %struct.gf100_gr_chan, %struct.gf100_gr_chan* %16, i32 0, i32 2
  %18 = load %struct.gf100_gr*, %struct.gf100_gr** %17, align 8
  store %struct.gf100_gr* %18, %struct.gf100_gr** %11, align 8
  %19 = load %struct.gf100_gr*, %struct.gf100_gr** %11, align 8
  %20 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %19, i32 0, i32 3
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.gf100_gr*, %struct.gf100_gr** %11, align 8
  %26 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* %8, align 4
  %29 = load %struct.nvkm_gpuobj*, %struct.nvkm_gpuobj** %7, align 8
  %30 = load %struct.nvkm_gpuobj**, %struct.nvkm_gpuobj*** %9, align 8
  %31 = call i32 @nvkm_gpuobj_new(i32 %24, i32 %27, i32 %28, i32 0, %struct.nvkm_gpuobj* %29, %struct.nvkm_gpuobj** %30)
  store i32 %31, i32* %12, align 4
  %32 = load i32, i32* %12, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %4
  %35 = load i32, i32* %12, align 4
  store i32 %35, i32* %5, align 4
  br label %132

36:                                               ; preds = %4
  %37 = load %struct.nvkm_gpuobj**, %struct.nvkm_gpuobj*** %9, align 8
  %38 = load %struct.nvkm_gpuobj*, %struct.nvkm_gpuobj** %37, align 8
  %39 = call i32 @nvkm_kmap(%struct.nvkm_gpuobj* %38)
  store i32 0, i32* %13, align 4
  br label %40

40:                                               ; preds = %59, %36
  %41 = load i32, i32* %13, align 4
  %42 = load %struct.gf100_gr*, %struct.gf100_gr** %11, align 8
  %43 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp slt i32 %41, %44
  br i1 %45, label %46, label %62

46:                                               ; preds = %40
  %47 = load %struct.nvkm_gpuobj**, %struct.nvkm_gpuobj*** %9, align 8
  %48 = load %struct.nvkm_gpuobj*, %struct.nvkm_gpuobj** %47, align 8
  %49 = load i32, i32* %13, align 4
  %50 = load %struct.gf100_gr*, %struct.gf100_gr** %11, align 8
  %51 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %13, align 4
  %54 = sdiv i32 %53, 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %52, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @nvkm_wo32(%struct.nvkm_gpuobj* %48, i32 %49, i32 %57)
  br label %59

59:                                               ; preds = %46
  %60 = load i32, i32* %13, align 4
  %61 = add nsw i32 %60, 4
  store i32 %61, i32* %13, align 4
  br label %40

62:                                               ; preds = %40
  %63 = load %struct.gf100_gr*, %struct.gf100_gr** %11, align 8
  %64 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %84, label %67

67:                                               ; preds = %62
  %68 = load %struct.nvkm_gpuobj**, %struct.nvkm_gpuobj*** %9, align 8
  %69 = load %struct.nvkm_gpuobj*, %struct.nvkm_gpuobj** %68, align 8
  %70 = load %struct.gf100_gr_chan*, %struct.gf100_gr_chan** %10, align 8
  %71 = getelementptr inbounds %struct.gf100_gr_chan, %struct.gf100_gr_chan* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = sdiv i32 %72, 2
  %74 = call i32 @nvkm_wo32(%struct.nvkm_gpuobj* %69, i32 0, i32 %73)
  %75 = load %struct.nvkm_gpuobj**, %struct.nvkm_gpuobj*** %9, align 8
  %76 = load %struct.nvkm_gpuobj*, %struct.nvkm_gpuobj** %75, align 8
  %77 = load %struct.gf100_gr_chan*, %struct.gf100_gr_chan** %10, align 8
  %78 = getelementptr inbounds %struct.gf100_gr_chan, %struct.gf100_gr_chan* %77, i32 0, i32 1
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = ashr i32 %81, 8
  %83 = call i32 @nvkm_wo32(%struct.nvkm_gpuobj* %76, i32 4, i32 %82)
  br label %128

84:                                               ; preds = %62
  %85 = load %struct.nvkm_gpuobj**, %struct.nvkm_gpuobj*** %9, align 8
  %86 = load %struct.nvkm_gpuobj*, %struct.nvkm_gpuobj** %85, align 8
  %87 = call i32 @nvkm_wo32(%struct.nvkm_gpuobj* %86, i32 244, i32 0)
  %88 = load %struct.nvkm_gpuobj**, %struct.nvkm_gpuobj*** %9, align 8
  %89 = load %struct.nvkm_gpuobj*, %struct.nvkm_gpuobj** %88, align 8
  %90 = call i32 @nvkm_wo32(%struct.nvkm_gpuobj* %89, i32 248, i32 0)
  %91 = load %struct.nvkm_gpuobj**, %struct.nvkm_gpuobj*** %9, align 8
  %92 = load %struct.nvkm_gpuobj*, %struct.nvkm_gpuobj** %91, align 8
  %93 = load %struct.gf100_gr_chan*, %struct.gf100_gr_chan** %10, align 8
  %94 = getelementptr inbounds %struct.gf100_gr_chan, %struct.gf100_gr_chan* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = sdiv i32 %95, 2
  %97 = call i32 @nvkm_wo32(%struct.nvkm_gpuobj* %92, i32 16, i32 %96)
  %98 = load %struct.nvkm_gpuobj**, %struct.nvkm_gpuobj*** %9, align 8
  %99 = load %struct.nvkm_gpuobj*, %struct.nvkm_gpuobj** %98, align 8
  %100 = load %struct.gf100_gr_chan*, %struct.gf100_gr_chan** %10, align 8
  %101 = getelementptr inbounds %struct.gf100_gr_chan, %struct.gf100_gr_chan* %100, i32 0, i32 1
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @lower_32_bits(i32 %104)
  %106 = call i32 @nvkm_wo32(%struct.nvkm_gpuobj* %99, i32 20, i32 %105)
  %107 = load %struct.nvkm_gpuobj**, %struct.nvkm_gpuobj*** %9, align 8
  %108 = load %struct.nvkm_gpuobj*, %struct.nvkm_gpuobj** %107, align 8
  %109 = load %struct.gf100_gr_chan*, %struct.gf100_gr_chan** %10, align 8
  %110 = getelementptr inbounds %struct.gf100_gr_chan, %struct.gf100_gr_chan* %109, i32 0, i32 1
  %111 = load %struct.TYPE_8__*, %struct.TYPE_8__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @upper_32_bits(i32 %113)
  %115 = call i32 @nvkm_wo32(%struct.nvkm_gpuobj* %108, i32 24, i32 %114)
  %116 = load %struct.nvkm_gpuobj**, %struct.nvkm_gpuobj*** %9, align 8
  %117 = load %struct.nvkm_gpuobj*, %struct.nvkm_gpuobj** %116, align 8
  %118 = call i32 @nvkm_wo32(%struct.nvkm_gpuobj* %117, i32 28, i32 1)
  %119 = load %struct.nvkm_gpuobj**, %struct.nvkm_gpuobj*** %9, align 8
  %120 = load %struct.nvkm_gpuobj*, %struct.nvkm_gpuobj** %119, align 8
  %121 = call i32 @nvkm_wo32(%struct.nvkm_gpuobj* %120, i32 32, i32 0)
  %122 = load %struct.nvkm_gpuobj**, %struct.nvkm_gpuobj*** %9, align 8
  %123 = load %struct.nvkm_gpuobj*, %struct.nvkm_gpuobj** %122, align 8
  %124 = call i32 @nvkm_wo32(%struct.nvkm_gpuobj* %123, i32 40, i32 0)
  %125 = load %struct.nvkm_gpuobj**, %struct.nvkm_gpuobj*** %9, align 8
  %126 = load %struct.nvkm_gpuobj*, %struct.nvkm_gpuobj** %125, align 8
  %127 = call i32 @nvkm_wo32(%struct.nvkm_gpuobj* %126, i32 44, i32 0)
  br label %128

128:                                              ; preds = %84, %67
  %129 = load %struct.nvkm_gpuobj**, %struct.nvkm_gpuobj*** %9, align 8
  %130 = load %struct.nvkm_gpuobj*, %struct.nvkm_gpuobj** %129, align 8
  %131 = call i32 @nvkm_done(%struct.nvkm_gpuobj* %130)
  store i32 0, i32* %5, align 4
  br label %132

132:                                              ; preds = %128, %34
  %133 = load i32, i32* %5, align 4
  ret i32 %133
}

declare dso_local %struct.gf100_gr_chan* @gf100_gr_chan(%struct.nvkm_object*) #1

declare dso_local i32 @nvkm_gpuobj_new(i32, i32, i32, i32, %struct.nvkm_gpuobj*, %struct.nvkm_gpuobj**) #1

declare dso_local i32 @nvkm_kmap(%struct.nvkm_gpuobj*) #1

declare dso_local i32 @nvkm_wo32(%struct.nvkm_gpuobj*, i32, i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @nvkm_done(%struct.nvkm_gpuobj*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
