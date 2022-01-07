; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_nv04.c_nv04_gr_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_nv04.c_nv04_gr_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nv04_gr_chan = type { i32 }
%struct.nv04_gr = type { %struct.nv04_gr_chan**, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }

@NV04_PGRAPH_CTX_CONTROL = common dso_local global i32 0, align 4
@NV04_PGRAPH_CTX_USER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nv04_gr_chan* (%struct.nv04_gr*)* @nv04_gr_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nv04_gr_chan* @nv04_gr_channel(%struct.nv04_gr* %0) #0 {
  %2 = alloca %struct.nv04_gr*, align 8
  %3 = alloca %struct.nvkm_device*, align 8
  %4 = alloca %struct.nv04_gr_chan*, align 8
  %5 = alloca i32, align 4
  store %struct.nv04_gr* %0, %struct.nv04_gr** %2, align 8
  %6 = load %struct.nv04_gr*, %struct.nv04_gr** %2, align 8
  %7 = getelementptr inbounds %struct.nv04_gr, %struct.nv04_gr* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load %struct.nvkm_device*, %struct.nvkm_device** %10, align 8
  store %struct.nvkm_device* %11, %struct.nvkm_device** %3, align 8
  store %struct.nv04_gr_chan* null, %struct.nv04_gr_chan** %4, align 8
  %12 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %13 = load i32, i32* @NV04_PGRAPH_CTX_CONTROL, align 4
  %14 = call i32 @nvkm_rd32(%struct.nvkm_device* %12, i32 %13)
  %15 = and i32 %14, 65536
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %37

17:                                               ; preds = %1
  %18 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %19 = load i32, i32* @NV04_PGRAPH_CTX_USER, align 4
  %20 = call i32 @nvkm_rd32(%struct.nvkm_device* %18, i32 %19)
  %21 = ashr i32 %20, 24
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = load %struct.nv04_gr*, %struct.nv04_gr** %2, align 8
  %24 = getelementptr inbounds %struct.nv04_gr, %struct.nv04_gr* %23, i32 0, i32 0
  %25 = load %struct.nv04_gr_chan**, %struct.nv04_gr_chan*** %24, align 8
  %26 = call i32 @ARRAY_SIZE(%struct.nv04_gr_chan** %25)
  %27 = icmp slt i32 %22, %26
  br i1 %27, label %28, label %36

28:                                               ; preds = %17
  %29 = load %struct.nv04_gr*, %struct.nv04_gr** %2, align 8
  %30 = getelementptr inbounds %struct.nv04_gr, %struct.nv04_gr* %29, i32 0, i32 0
  %31 = load %struct.nv04_gr_chan**, %struct.nv04_gr_chan*** %30, align 8
  %32 = load i32, i32* %5, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.nv04_gr_chan*, %struct.nv04_gr_chan** %31, i64 %33
  %35 = load %struct.nv04_gr_chan*, %struct.nv04_gr_chan** %34, align 8
  store %struct.nv04_gr_chan* %35, %struct.nv04_gr_chan** %4, align 8
  br label %36

36:                                               ; preds = %28, %17
  br label %37

37:                                               ; preds = %36, %1
  %38 = load %struct.nv04_gr_chan*, %struct.nv04_gr_chan** %4, align 8
  ret %struct.nv04_gr_chan* %38
}

declare dso_local i32 @nvkm_rd32(%struct.nvkm_device*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.nv04_gr_chan**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
