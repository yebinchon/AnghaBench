; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_gk20a.c_gk20a_gr_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_gk20a.c_gk20a_gr_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gf100_gr = type { i32, %struct.TYPE_8__*, i32, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { {}*, {}*, {}*, {}* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gk20a_gr_init(%struct.gf100_gr* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gf100_gr*, align 8
  %4 = alloca %struct.nvkm_device*, align 8
  %5 = alloca i32, align 4
  store %struct.gf100_gr* %0, %struct.gf100_gr** %3, align 8
  %6 = load %struct.gf100_gr*, %struct.gf100_gr** %3, align 8
  %7 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %6, i32 0, i32 3
  %8 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load %struct.nvkm_device*, %struct.nvkm_device** %10, align 8
  store %struct.nvkm_device* %11, %struct.nvkm_device** %4, align 8
  %12 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %13 = call i32 @nvkm_wr32(%struct.nvkm_device* %12, i32 4227116, i32 1)
  %14 = load %struct.gf100_gr*, %struct.gf100_gr** %3, align 8
  %15 = load %struct.gf100_gr*, %struct.gf100_gr** %3, align 8
  %16 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @gf100_gr_mmio(%struct.gf100_gr* %14, i32 %17)
  %19 = load %struct.gf100_gr*, %struct.gf100_gr** %3, align 8
  %20 = call i32 @gk20a_gr_wait_mem_scrubbing(%struct.gf100_gr* %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %1
  %24 = load i32, i32* %5, align 4
  store i32 %24, i32* %2, align 4
  br label %124

25:                                               ; preds = %1
  %26 = load %struct.gf100_gr*, %struct.gf100_gr** %3, align 8
  %27 = call i32 @gf100_gr_wait_idle(%struct.gf100_gr* %26)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = load i32, i32* %5, align 4
  store i32 %31, i32* %2, align 4
  br label %124

32:                                               ; preds = %25
  %33 = load %struct.gf100_gr*, %struct.gf100_gr** %3, align 8
  %34 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %33, i32 0, i32 1
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 3
  %37 = bitcast {}** %36 to i32 (%struct.gf100_gr*)**
  %38 = load i32 (%struct.gf100_gr*)*, i32 (%struct.gf100_gr*)** %37, align 8
  %39 = icmp ne i32 (%struct.gf100_gr*)* %38, null
  br i1 %39, label %40, label %49

40:                                               ; preds = %32
  %41 = load %struct.gf100_gr*, %struct.gf100_gr** %3, align 8
  %42 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %41, i32 0, i32 1
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 3
  %45 = bitcast {}** %44 to i32 (%struct.gf100_gr*)**
  %46 = load i32 (%struct.gf100_gr*)*, i32 (%struct.gf100_gr*)** %45, align 8
  %47 = load %struct.gf100_gr*, %struct.gf100_gr** %3, align 8
  %48 = call i32 %46(%struct.gf100_gr* %47)
  br label %49

49:                                               ; preds = %40, %32
  %50 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %51 = call i32 @nvkm_mask(%struct.nvkm_device* %50, i32 5255192, i32 1, i32 1)
  %52 = load %struct.gf100_gr*, %struct.gf100_gr** %3, align 8
  %53 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %52, i32 0, i32 1
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 2
  %56 = bitcast {}** %55 to i32 (%struct.gf100_gr*)**
  %57 = load i32 (%struct.gf100_gr*)*, i32 (%struct.gf100_gr*)** %56, align 8
  %58 = load %struct.gf100_gr*, %struct.gf100_gr** %3, align 8
  %59 = call i32 %57(%struct.gf100_gr* %58)
  %60 = load %struct.gf100_gr*, %struct.gf100_gr** %3, align 8
  %61 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %60, i32 0, i32 1
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 1
  %64 = bitcast {}** %63 to i32 (%struct.gf100_gr*)**
  %65 = load i32 (%struct.gf100_gr*)*, i32 (%struct.gf100_gr*)** %64, align 8
  %66 = load %struct.gf100_gr*, %struct.gf100_gr** %3, align 8
  %67 = call i32 %65(%struct.gf100_gr* %66)
  %68 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %69 = call i32 @nvkm_wr32(%struct.nvkm_device* %68, i32 4195584, i32 65537)
  %70 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %71 = call i32 @nvkm_wr32(%struct.nvkm_device* %70, i32 4194560, i32 -1)
  %72 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %73 = call i32 @nvkm_wr32(%struct.nvkm_device* %72, i32 4194620, i32 -1)
  %74 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %75 = call i32 @nvkm_wr32(%struct.nvkm_device* %74, i32 4234276, i32 983040)
  %76 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %77 = call i32 @nvkm_wr32(%struct.nvkm_device* %76, i32 4210688, i32 -1073741824)
  %78 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %79 = call i32 @nvkm_wr32(%struct.nvkm_device* %78, i32 4212224, i32 -1073741824)
  %80 = load %struct.gf100_gr*, %struct.gf100_gr** %3, align 8
  %81 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %80, i32 0, i32 1
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 0
  %84 = bitcast {}** %83 to i32 (%struct.gf100_gr*)**
  %85 = load i32 (%struct.gf100_gr*)*, i32 (%struct.gf100_gr*)** %84, align 8
  %86 = icmp ne i32 (%struct.gf100_gr*)* %85, null
  br i1 %86, label %87, label %96

87:                                               ; preds = %49
  %88 = load %struct.gf100_gr*, %struct.gf100_gr** %3, align 8
  %89 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %88, i32 0, i32 1
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 0
  %92 = bitcast {}** %91 to i32 (%struct.gf100_gr*)**
  %93 = load i32 (%struct.gf100_gr*)*, i32 (%struct.gf100_gr*)** %92, align 8
  %94 = load %struct.gf100_gr*, %struct.gf100_gr** %3, align 8
  %95 = call i32 %93(%struct.gf100_gr* %94)
  br label %96

96:                                               ; preds = %87, %49
  %97 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %98 = call i32 @nvkm_wr32(%struct.nvkm_device* %97, i32 4300044, i32 2)
  %99 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %100 = load %struct.gf100_gr*, %struct.gf100_gr** %3, align 8
  %101 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = shl i32 1, %102
  %104 = sub nsw i32 %103, 1
  %105 = and i32 %104, 255
  %106 = shl i32 %105, 16
  %107 = call i32 @nvkm_wr32(%struct.nvkm_device* %99, i32 4304020, i32 %106)
  %108 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %109 = call i32 @nvkm_wr32(%struct.nvkm_device* %108, i32 4194568, i32 -1)
  %110 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %111 = call i32 @nvkm_wr32(%struct.nvkm_device* %110, i32 4194616, i32 -1)
  %112 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %113 = call i32 @nvkm_wr32(%struct.nvkm_device* %112, i32 4194584, i32 -1)
  %114 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %115 = call i32 @nvkm_wr32(%struct.nvkm_device* %114, i32 4194608, i32 -1)
  %116 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %117 = call i32 @nvkm_wr32(%struct.nvkm_device* %116, i32 4194588, i32 -1)
  %118 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %119 = call i32 @nvkm_wr32(%struct.nvkm_device* %118, i32 4194612, i32 -1)
  %120 = load %struct.gf100_gr*, %struct.gf100_gr** %3, align 8
  %121 = call i32 @gf100_gr_zbc_init(%struct.gf100_gr* %120)
  %122 = load %struct.gf100_gr*, %struct.gf100_gr** %3, align 8
  %123 = call i32 @gf100_gr_init_ctxctl(%struct.gf100_gr* %122)
  store i32 %123, i32* %2, align 4
  br label %124

124:                                              ; preds = %96, %30, %23
  %125 = load i32, i32* %2, align 4
  ret i32 %125
}

declare dso_local i32 @nvkm_wr32(%struct.nvkm_device*, i32, i32) #1

declare dso_local i32 @gf100_gr_mmio(%struct.gf100_gr*, i32) #1

declare dso_local i32 @gk20a_gr_wait_mem_scrubbing(%struct.gf100_gr*) #1

declare dso_local i32 @gf100_gr_wait_idle(%struct.gf100_gr*) #1

declare dso_local i32 @nvkm_mask(%struct.nvkm_device*, i32, i32, i32) #1

declare dso_local i32 @gf100_gr_zbc_init(%struct.gf100_gr*) #1

declare dso_local i32 @gf100_gr_init_ctxctl(%struct.gf100_gr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
