; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_nv30.c_nv30_gr_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_nv30.c_nv30_gr_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_gr = type { i32 }
%struct.nv20_gr = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }

@NV20_PGRAPH_CHANNEL_CTX_TABLE = common dso_local global i32 0, align 4
@NV03_PGRAPH_INTR = common dso_local global i32 0, align 4
@NV03_PGRAPH_INTR_EN = common dso_local global i32 0, align 4
@NV04_PGRAPH_DEBUG_0 = common dso_local global i32 0, align 4
@NV04_PGRAPH_DEBUG_1 = common dso_local global i32 0, align 4
@NV04_PGRAPH_DEBUG_3 = common dso_local global i32 0, align 4
@NV10_PGRAPH_DEBUG_4 = common dso_local global i32 0, align 4
@NV04_PGRAPH_LIMIT_VIOL_PIX = common dso_local global i32 0, align 4
@NV10_PGRAPH_RDI_INDEX = common dso_local global i32 0, align 4
@NV10_PGRAPH_RDI_DATA = common dso_local global i32 0, align 4
@NV10_PGRAPH_CTX_CONTROL = common dso_local global i32 0, align 4
@NV10_PGRAPH_STATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nv30_gr_init(%struct.nvkm_gr* %0) #0 {
  %2 = alloca %struct.nvkm_gr*, align 8
  %3 = alloca %struct.nv20_gr*, align 8
  %4 = alloca %struct.nvkm_device*, align 8
  store %struct.nvkm_gr* %0, %struct.nvkm_gr** %2, align 8
  %5 = load %struct.nvkm_gr*, %struct.nvkm_gr** %2, align 8
  %6 = call %struct.nv20_gr* @nv20_gr(%struct.nvkm_gr* %5)
  store %struct.nv20_gr* %6, %struct.nv20_gr** %3, align 8
  %7 = load %struct.nv20_gr*, %struct.nv20_gr** %3, align 8
  %8 = getelementptr inbounds %struct.nv20_gr, %struct.nv20_gr* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load %struct.nvkm_device*, %struct.nvkm_device** %11, align 8
  store %struct.nvkm_device* %12, %struct.nvkm_device** %4, align 8
  %13 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %14 = load i32, i32* @NV20_PGRAPH_CHANNEL_CTX_TABLE, align 4
  %15 = load %struct.nv20_gr*, %struct.nv20_gr** %3, align 8
  %16 = getelementptr inbounds %struct.nv20_gr, %struct.nv20_gr* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @nvkm_memory_addr(i32 %17)
  %19 = ashr i32 %18, 4
  %20 = call i32 @nvkm_wr32(%struct.nvkm_device* %13, i32 %14, i32 %19)
  %21 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %22 = load i32, i32* @NV03_PGRAPH_INTR, align 4
  %23 = call i32 @nvkm_wr32(%struct.nvkm_device* %21, i32 %22, i32 -1)
  %24 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %25 = load i32, i32* @NV03_PGRAPH_INTR_EN, align 4
  %26 = call i32 @nvkm_wr32(%struct.nvkm_device* %24, i32 %25, i32 -1)
  %27 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %28 = load i32, i32* @NV04_PGRAPH_DEBUG_0, align 4
  %29 = call i32 @nvkm_wr32(%struct.nvkm_device* %27, i32 %28, i32 -1)
  %30 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %31 = load i32, i32* @NV04_PGRAPH_DEBUG_0, align 4
  %32 = call i32 @nvkm_wr32(%struct.nvkm_device* %30, i32 %31, i32 0)
  %33 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %34 = load i32, i32* @NV04_PGRAPH_DEBUG_1, align 4
  %35 = call i32 @nvkm_wr32(%struct.nvkm_device* %33, i32 %34, i32 1074956224)
  %36 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %37 = call i32 @nvkm_wr32(%struct.nvkm_device* %36, i32 4196496, i32 28599295)
  %38 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %39 = load i32, i32* @NV04_PGRAPH_DEBUG_3, align 4
  %40 = call i32 @nvkm_wr32(%struct.nvkm_device* %38, i32 %39, i32 -220330891)
  %41 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %42 = load i32, i32* @NV10_PGRAPH_DEBUG_4, align 4
  %43 = call i32 @nvkm_wr32(%struct.nvkm_device* %41, i32 %42, i32 32768)
  %44 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %45 = load i32, i32* @NV04_PGRAPH_LIMIT_VIOL_PIX, align 4
  %46 = call i32 @nvkm_wr32(%struct.nvkm_device* %44, i32 %45, i32 -263462922)
  %47 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %48 = call i32 @nvkm_wr32(%struct.nvkm_device* %47, i32 4197248, i32 268687496)
  %49 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %50 = call i32 @nvkm_wr32(%struct.nvkm_device* %49, i32 4197252, i32 201326592)
  %51 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %52 = call i32 @nvkm_wr32(%struct.nvkm_device* %51, i32 4194456, i32 0)
  %53 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %54 = call i32 @nvkm_wr32(%struct.nvkm_device* %53, i32 4194460, i32 371968)
  %55 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %56 = call i32 @nvkm_wr32(%struct.nvkm_device* %55, i32 4197256, i32 1660879103)
  %57 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %58 = call i32 @nvkm_wr32(%struct.nvkm_device* %57, i32 4194464, i32 0)
  %59 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %60 = call i32 @nvkm_wr32(%struct.nvkm_device* %59, i32 4194468, i32 8)
  %61 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %62 = call i32 @nvkm_wr32(%struct.nvkm_device* %61, i32 4196520, i32 -1216044032)
  %63 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %64 = call i32 @nvkm_wr32(%struct.nvkm_device* %63, i32 4197280, i32 3114629)
  %65 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %66 = call i32 @nvkm_wr32(%struct.nvkm_device* %65, i32 4197284, i32 2301759)
  %67 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %68 = call i32 @nvkm_wr32(%struct.nvkm_device* %67, i32 4196516, i32 1073741856)
  %69 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %70 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = icmp eq i32 %71, 52
  br i1 %72, label %73, label %98

73:                                               ; preds = %1
  %74 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %75 = load i32, i32* @NV10_PGRAPH_RDI_INDEX, align 4
  %76 = call i32 @nvkm_wr32(%struct.nvkm_device* %74, i32 %75, i32 15335428)
  %77 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %78 = load i32, i32* @NV10_PGRAPH_RDI_DATA, align 4
  %79 = call i32 @nvkm_wr32(%struct.nvkm_device* %77, i32 %78, i32 2097665)
  %80 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %81 = load i32, i32* @NV10_PGRAPH_RDI_INDEX, align 4
  %82 = call i32 @nvkm_wr32(%struct.nvkm_device* %80, i32 %81, i32 15335432)
  %83 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %84 = load i32, i32* @NV10_PGRAPH_RDI_DATA, align 4
  %85 = call i32 @nvkm_wr32(%struct.nvkm_device* %83, i32 %84, i32 8)
  %86 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %87 = load i32, i32* @NV10_PGRAPH_RDI_INDEX, align 4
  %88 = call i32 @nvkm_wr32(%struct.nvkm_device* %86, i32 %87, i32 15335424)
  %89 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %90 = load i32, i32* @NV10_PGRAPH_RDI_DATA, align 4
  %91 = call i32 @nvkm_wr32(%struct.nvkm_device* %89, i32 %90, i32 50)
  %92 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %93 = load i32, i32* @NV10_PGRAPH_RDI_INDEX, align 4
  %94 = call i32 @nvkm_wr32(%struct.nvkm_device* %92, i32 %93, i32 14680068)
  %95 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %96 = load i32, i32* @NV10_PGRAPH_RDI_DATA, align 4
  %97 = call i32 @nvkm_wr32(%struct.nvkm_device* %95, i32 %96, i32 2)
  br label %98

98:                                               ; preds = %73, %1
  %99 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %100 = call i32 @nvkm_wr32(%struct.nvkm_device* %99, i32 4194496, i32 22)
  %101 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %102 = load i32, i32* @NV10_PGRAPH_CTX_CONTROL, align 4
  %103 = call i32 @nvkm_wr32(%struct.nvkm_device* %101, i32 %102, i32 268435712)
  %104 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %105 = load i32, i32* @NV10_PGRAPH_STATE, align 4
  %106 = call i32 @nvkm_wr32(%struct.nvkm_device* %104, i32 %105, i32 -1)
  %107 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %108 = call i32 @nvkm_wr32(%struct.nvkm_device* %107, i32 4196188, i32 1)
  %109 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %110 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %111 = call i32 @nvkm_rd32(%struct.nvkm_device* %110, i32 1049088)
  %112 = call i32 @nvkm_wr32(%struct.nvkm_device* %109, i32 4196772, i32 %111)
  %113 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %114 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %115 = call i32 @nvkm_rd32(%struct.nvkm_device* %114, i32 1049092)
  %116 = call i32 @nvkm_wr32(%struct.nvkm_device* %113, i32 4196776, i32 %115)
  %117 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %118 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = icmp ne i32 %119, 52
  br i1 %120, label %121, label %134

121:                                              ; preds = %98
  %122 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %123 = call i32 @nvkm_wr32(%struct.nvkm_device* %122, i32 4196176, i32 15335424)
  %124 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %125 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %126 = call i32 @nvkm_rd32(%struct.nvkm_device* %125, i32 1049088)
  %127 = call i32 @nvkm_wr32(%struct.nvkm_device* %124, i32 4196180, i32 %126)
  %128 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %129 = call i32 @nvkm_wr32(%struct.nvkm_device* %128, i32 4196176, i32 15335428)
  %130 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %131 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %132 = call i32 @nvkm_rd32(%struct.nvkm_device* %131, i32 1049092)
  %133 = call i32 @nvkm_wr32(%struct.nvkm_device* %130, i32 4196180, i32 %132)
  br label %134

134:                                              ; preds = %121, %98
  ret i32 0
}

declare dso_local %struct.nv20_gr* @nv20_gr(%struct.nvkm_gr*) #1

declare dso_local i32 @nvkm_wr32(%struct.nvkm_device*, i32, i32) #1

declare dso_local i32 @nvkm_memory_addr(i32) #1

declare dso_local i32 @nvkm_rd32(%struct.nvkm_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
