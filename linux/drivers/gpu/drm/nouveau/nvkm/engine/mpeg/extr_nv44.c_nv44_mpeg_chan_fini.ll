; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/mpeg/extr_nv44.c_nv44_mpeg_chan_fini.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/mpeg/extr_nv44.c_nv44_mpeg_chan_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_object = type { i32 }
%struct.nv44_mpeg_chan = type { i32, %struct.nv44_mpeg* }
%struct.nv44_mpeg = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_object*, i32)* @nv44_mpeg_chan_fini to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv44_mpeg_chan_fini(%struct.nvkm_object* %0, i32 %1) #0 {
  %3 = alloca %struct.nvkm_object*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nv44_mpeg_chan*, align 8
  %6 = alloca %struct.nv44_mpeg*, align 8
  %7 = alloca %struct.nvkm_device*, align 8
  %8 = alloca i64, align 8
  store %struct.nvkm_object* %0, %struct.nvkm_object** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.nvkm_object*, %struct.nvkm_object** %3, align 8
  %10 = call %struct.nv44_mpeg_chan* @nv44_mpeg_chan(%struct.nvkm_object* %9)
  store %struct.nv44_mpeg_chan* %10, %struct.nv44_mpeg_chan** %5, align 8
  %11 = load %struct.nv44_mpeg_chan*, %struct.nv44_mpeg_chan** %5, align 8
  %12 = getelementptr inbounds %struct.nv44_mpeg_chan, %struct.nv44_mpeg_chan* %11, i32 0, i32 1
  %13 = load %struct.nv44_mpeg*, %struct.nv44_mpeg** %12, align 8
  store %struct.nv44_mpeg* %13, %struct.nv44_mpeg** %6, align 8
  %14 = load %struct.nv44_mpeg*, %struct.nv44_mpeg** %6, align 8
  %15 = getelementptr inbounds %struct.nv44_mpeg, %struct.nv44_mpeg* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load %struct.nvkm_device*, %struct.nvkm_device** %17, align 8
  store %struct.nvkm_device* %18, %struct.nvkm_device** %7, align 8
  %19 = load %struct.nv44_mpeg_chan*, %struct.nv44_mpeg_chan** %5, align 8
  %20 = getelementptr inbounds %struct.nv44_mpeg_chan, %struct.nv44_mpeg_chan* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = ashr i32 %21, 4
  %23 = or i32 -2147483648, %22
  %24 = zext i32 %23 to i64
  store i64 %24, i64* %8, align 8
  %25 = load %struct.nvkm_device*, %struct.nvkm_device** %7, align 8
  %26 = call i32 @nvkm_mask(%struct.nvkm_device* %25, i32 45868, i32 1, i32 0)
  %27 = load %struct.nvkm_device*, %struct.nvkm_device** %7, align 8
  %28 = call i64 @nvkm_rd32(%struct.nvkm_device* %27, i32 45848)
  %29 = load i64, i64* %8, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %2
  %32 = load %struct.nvkm_device*, %struct.nvkm_device** %7, align 8
  %33 = call i32 @nvkm_mask(%struct.nvkm_device* %32, i32 45848, i32 -2147483648, i32 0)
  br label %34

34:                                               ; preds = %31, %2
  %35 = load %struct.nvkm_device*, %struct.nvkm_device** %7, align 8
  %36 = call i32 @nvkm_mask(%struct.nvkm_device* %35, i32 45868, i32 1, i32 1)
  ret i32 0
}

declare dso_local %struct.nv44_mpeg_chan* @nv44_mpeg_chan(%struct.nvkm_object*) #1

declare dso_local i32 @nvkm_mask(%struct.nvkm_device*, i32, i32, i32) #1

declare dso_local i64 @nvkm_rd32(%struct.nvkm_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
