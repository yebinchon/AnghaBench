; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_nv10.c_nv10_gr_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_nv10.c_nv10_gr_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_gr = type { i32 }
%struct.nv10_gr = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i64, i32 }

@NV03_PGRAPH_INTR = common dso_local global i32 0, align 4
@NV03_PGRAPH_INTR_EN = common dso_local global i32 0, align 4
@NV04_PGRAPH_DEBUG_0 = common dso_local global i32 0, align 4
@NV04_PGRAPH_DEBUG_1 = common dso_local global i32 0, align 4
@NV04_PGRAPH_DEBUG_2 = common dso_local global i32 0, align 4
@NV04_PGRAPH_DEBUG_3 = common dso_local global i32 0, align 4
@NV_11 = common dso_local global i64 0, align 8
@NV10_PGRAPH_DEBUG_4 = common dso_local global i32 0, align 4
@NV10_PGRAPH_STATE = common dso_local global i32 0, align 4
@NV10_PGRAPH_CTX_USER = common dso_local global i32 0, align 4
@NV10_PGRAPH_CTX_CONTROL = common dso_local global i32 0, align 4
@NV10_PGRAPH_FFINTFC_ST2 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nv10_gr_init(%struct.nvkm_gr* %0) #0 {
  %2 = alloca %struct.nvkm_gr*, align 8
  %3 = alloca %struct.nv10_gr*, align 8
  %4 = alloca %struct.nvkm_device*, align 8
  store %struct.nvkm_gr* %0, %struct.nvkm_gr** %2, align 8
  %5 = load %struct.nvkm_gr*, %struct.nvkm_gr** %2, align 8
  %6 = call %struct.nv10_gr* @nv10_gr(%struct.nvkm_gr* %5)
  store %struct.nv10_gr* %6, %struct.nv10_gr** %3, align 8
  %7 = load %struct.nv10_gr*, %struct.nv10_gr** %3, align 8
  %8 = getelementptr inbounds %struct.nv10_gr, %struct.nv10_gr* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load %struct.nvkm_device*, %struct.nvkm_device** %11, align 8
  store %struct.nvkm_device* %12, %struct.nvkm_device** %4, align 8
  %13 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %14 = load i32, i32* @NV03_PGRAPH_INTR, align 4
  %15 = call i32 @nvkm_wr32(%struct.nvkm_device* %13, i32 %14, i32 -1)
  %16 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %17 = load i32, i32* @NV03_PGRAPH_INTR_EN, align 4
  %18 = call i32 @nvkm_wr32(%struct.nvkm_device* %16, i32 %17, i32 -1)
  %19 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %20 = load i32, i32* @NV04_PGRAPH_DEBUG_0, align 4
  %21 = call i32 @nvkm_wr32(%struct.nvkm_device* %19, i32 %20, i32 -1)
  %22 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %23 = load i32, i32* @NV04_PGRAPH_DEBUG_0, align 4
  %24 = call i32 @nvkm_wr32(%struct.nvkm_device* %22, i32 %23, i32 0)
  %25 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %26 = load i32, i32* @NV04_PGRAPH_DEBUG_1, align 4
  %27 = call i32 @nvkm_wr32(%struct.nvkm_device* %25, i32 %26, i32 1148672)
  %28 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %29 = load i32, i32* @NV04_PGRAPH_DEBUG_2, align 4
  %30 = call i32 @nvkm_wr32(%struct.nvkm_device* %28, i32 %29, i32 637086425)
  %31 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %32 = load i32, i32* @NV04_PGRAPH_DEBUG_3, align 4
  %33 = call i32 @nvkm_wr32(%struct.nvkm_device* %31, i32 %32, i32 -169998288)
  %34 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %35 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @NV_11, align 8
  %38 = icmp sge i64 %36, %37
  br i1 %38, label %39, label %56

39:                                               ; preds = %1
  %40 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %41 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = icmp sge i32 %42, 23
  br i1 %43, label %44, label %56

44:                                               ; preds = %39
  %45 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %46 = load i32, i32* @NV10_PGRAPH_DEBUG_4, align 4
  %47 = call i32 @nvkm_wr32(%struct.nvkm_device* %45, i32 %46, i32 520093696)
  %48 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %49 = call i32 @nvkm_wr32(%struct.nvkm_device* %48, i32 4196880, i32 67059638)
  %50 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %51 = call i32 @nvkm_wr32(%struct.nvkm_device* %50, i32 4196408, i32 3114628)
  %52 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %53 = call i32 @nvkm_wr32(%struct.nvkm_device* %52, i32 4196412, i32 1138495)
  %54 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %55 = call i32 @nvkm_wr32(%struct.nvkm_device* %54, i32 4196016, i32 1073741856)
  br label %60

56:                                               ; preds = %39, %1
  %57 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %58 = load i32, i32* @NV10_PGRAPH_DEBUG_4, align 4
  %59 = call i32 @nvkm_wr32(%struct.nvkm_device* %57, i32 %58, i32 0)
  br label %60

60:                                               ; preds = %56, %44
  %61 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %62 = call i32 @NV10_PGRAPH_CTX_SWITCH(i32 0)
  %63 = call i32 @nvkm_wr32(%struct.nvkm_device* %61, i32 %62, i32 0)
  %64 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %65 = call i32 @NV10_PGRAPH_CTX_SWITCH(i32 1)
  %66 = call i32 @nvkm_wr32(%struct.nvkm_device* %64, i32 %65, i32 0)
  %67 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %68 = call i32 @NV10_PGRAPH_CTX_SWITCH(i32 2)
  %69 = call i32 @nvkm_wr32(%struct.nvkm_device* %67, i32 %68, i32 0)
  %70 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %71 = call i32 @NV10_PGRAPH_CTX_SWITCH(i32 3)
  %72 = call i32 @nvkm_wr32(%struct.nvkm_device* %70, i32 %71, i32 0)
  %73 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %74 = call i32 @NV10_PGRAPH_CTX_SWITCH(i32 4)
  %75 = call i32 @nvkm_wr32(%struct.nvkm_device* %73, i32 %74, i32 0)
  %76 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %77 = load i32, i32* @NV10_PGRAPH_STATE, align 4
  %78 = call i32 @nvkm_wr32(%struct.nvkm_device* %76, i32 %77, i32 -1)
  %79 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %80 = load i32, i32* @NV10_PGRAPH_CTX_USER, align 4
  %81 = call i32 @nvkm_mask(%struct.nvkm_device* %79, i32 %80, i32 -16777216, i32 520093696)
  %82 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %83 = load i32, i32* @NV10_PGRAPH_CTX_CONTROL, align 4
  %84 = call i32 @nvkm_wr32(%struct.nvkm_device* %82, i32 %83, i32 268435712)
  %85 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %86 = load i32, i32* @NV10_PGRAPH_FFINTFC_ST2, align 4
  %87 = call i32 @nvkm_wr32(%struct.nvkm_device* %85, i32 %86, i32 134217728)
  ret i32 0
}

declare dso_local %struct.nv10_gr* @nv10_gr(%struct.nvkm_gr*) #1

declare dso_local i32 @nvkm_wr32(%struct.nvkm_device*, i32, i32) #1

declare dso_local i32 @NV10_PGRAPH_CTX_SWITCH(i32) #1

declare dso_local i32 @nvkm_mask(%struct.nvkm_device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
