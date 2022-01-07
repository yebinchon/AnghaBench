; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_nv10.c_nv10_gr_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_nv10.c_nv10_gr_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nv10_gr_chan = type { i32 }
%struct.nv10_gr = type { %struct.nv10_gr_chan**, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nv10_gr_chan* (%struct.nv10_gr*)* @nv10_gr_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nv10_gr_chan* @nv10_gr_channel(%struct.nv10_gr* %0) #0 {
  %2 = alloca %struct.nv10_gr*, align 8
  %3 = alloca %struct.nvkm_device*, align 8
  %4 = alloca %struct.nv10_gr_chan*, align 8
  %5 = alloca i32, align 4
  store %struct.nv10_gr* %0, %struct.nv10_gr** %2, align 8
  %6 = load %struct.nv10_gr*, %struct.nv10_gr** %2, align 8
  %7 = getelementptr inbounds %struct.nv10_gr, %struct.nv10_gr* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load %struct.nvkm_device*, %struct.nvkm_device** %10, align 8
  store %struct.nvkm_device* %11, %struct.nvkm_device** %3, align 8
  store %struct.nv10_gr_chan* null, %struct.nv10_gr_chan** %4, align 8
  %12 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %13 = call i32 @nvkm_rd32(%struct.nvkm_device* %12, i32 4194628)
  %14 = and i32 %13, 65536
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %35

16:                                               ; preds = %1
  %17 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %18 = call i32 @nvkm_rd32(%struct.nvkm_device* %17, i32 4194632)
  %19 = ashr i32 %18, 24
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = load %struct.nv10_gr*, %struct.nv10_gr** %2, align 8
  %22 = getelementptr inbounds %struct.nv10_gr, %struct.nv10_gr* %21, i32 0, i32 0
  %23 = load %struct.nv10_gr_chan**, %struct.nv10_gr_chan*** %22, align 8
  %24 = call i32 @ARRAY_SIZE(%struct.nv10_gr_chan** %23)
  %25 = icmp slt i32 %20, %24
  br i1 %25, label %26, label %34

26:                                               ; preds = %16
  %27 = load %struct.nv10_gr*, %struct.nv10_gr** %2, align 8
  %28 = getelementptr inbounds %struct.nv10_gr, %struct.nv10_gr* %27, i32 0, i32 0
  %29 = load %struct.nv10_gr_chan**, %struct.nv10_gr_chan*** %28, align 8
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.nv10_gr_chan*, %struct.nv10_gr_chan** %29, i64 %31
  %33 = load %struct.nv10_gr_chan*, %struct.nv10_gr_chan** %32, align 8
  store %struct.nv10_gr_chan* %33, %struct.nv10_gr_chan** %4, align 8
  br label %34

34:                                               ; preds = %26, %16
  br label %35

35:                                               ; preds = %34, %1
  %36 = load %struct.nv10_gr_chan*, %struct.nv10_gr_chan** %4, align 8
  ret %struct.nv10_gr_chan* %36
}

declare dso_local i32 @nvkm_rd32(%struct.nvkm_device*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.nv10_gr_chan**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
