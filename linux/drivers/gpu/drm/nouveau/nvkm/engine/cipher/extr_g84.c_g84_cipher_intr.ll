; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/cipher/extr_g84.c_g84_cipher_intr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/cipher/extr_g84.c_g84_cipher_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_engine = type { %struct.nvkm_subdev }
%struct.nvkm_subdev = type { %struct.nvkm_device* }
%struct.nvkm_device = type { %struct.nvkm_fifo* }
%struct.nvkm_fifo = type { i32 }
%struct.nvkm_fifo_chan = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i8* }

@g84_cipher_intr_mask = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"%08x [%s] ch %d [%010llx %s] mthd %04x data %08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvkm_engine*)* @g84_cipher_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g84_cipher_intr(%struct.nvkm_engine* %0) #0 {
  %2 = alloca %struct.nvkm_engine*, align 8
  %3 = alloca %struct.nvkm_subdev*, align 8
  %4 = alloca %struct.nvkm_device*, align 8
  %5 = alloca %struct.nvkm_fifo*, align 8
  %6 = alloca %struct.nvkm_fifo_chan*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca [128 x i8], align 16
  store %struct.nvkm_engine* %0, %struct.nvkm_engine** %2, align 8
  %13 = load %struct.nvkm_engine*, %struct.nvkm_engine** %2, align 8
  %14 = getelementptr inbounds %struct.nvkm_engine, %struct.nvkm_engine* %13, i32 0, i32 0
  store %struct.nvkm_subdev* %14, %struct.nvkm_subdev** %3, align 8
  %15 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %3, align 8
  %16 = getelementptr inbounds %struct.nvkm_subdev, %struct.nvkm_subdev* %15, i32 0, i32 0
  %17 = load %struct.nvkm_device*, %struct.nvkm_device** %16, align 8
  store %struct.nvkm_device* %17, %struct.nvkm_device** %4, align 8
  %18 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %19 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %18, i32 0, i32 0
  %20 = load %struct.nvkm_fifo*, %struct.nvkm_fifo** %19, align 8
  store %struct.nvkm_fifo* %20, %struct.nvkm_fifo** %5, align 8
  %21 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %22 = call i32 @nvkm_rd32(%struct.nvkm_device* %21, i32 1057072)
  store i32 %22, i32* %7, align 4
  %23 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %24 = call i32 @nvkm_rd32(%struct.nvkm_device* %23, i32 1057168)
  store i32 %24, i32* %8, align 4
  %25 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %26 = call i32 @nvkm_rd32(%struct.nvkm_device* %25, i32 1057172)
  store i32 %26, i32* %9, align 4
  %27 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %28 = call i32 @nvkm_rd32(%struct.nvkm_device* %27, i32 1057160)
  %29 = and i32 %28, 2147483647
  store i32 %29, i32* %10, align 4
  %30 = load %struct.nvkm_fifo*, %struct.nvkm_fifo** %5, align 8
  %31 = load i32, i32* %10, align 4
  %32 = shl i32 %31, 12
  %33 = call %struct.nvkm_fifo_chan* @nvkm_fifo_chan_inst(%struct.nvkm_fifo* %30, i32 %32, i64* %11)
  store %struct.nvkm_fifo_chan* %33, %struct.nvkm_fifo_chan** %6, align 8
  %34 = load i32, i32* %7, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %70

36:                                               ; preds = %1
  %37 = getelementptr inbounds [128 x i8], [128 x i8]* %12, i64 0, i64 0
  %38 = load i32, i32* @g84_cipher_intr_mask, align 4
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @nvkm_snprintbf(i8* %37, i32 128, i32 %38, i32 %39)
  %41 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %3, align 8
  %42 = load i32, i32* %7, align 4
  %43 = getelementptr inbounds [128 x i8], [128 x i8]* %12, i64 0, i64 0
  %44 = load %struct.nvkm_fifo_chan*, %struct.nvkm_fifo_chan** %6, align 8
  %45 = icmp ne %struct.nvkm_fifo_chan* %44, null
  br i1 %45, label %46, label %50

46:                                               ; preds = %36
  %47 = load %struct.nvkm_fifo_chan*, %struct.nvkm_fifo_chan** %6, align 8
  %48 = getelementptr inbounds %struct.nvkm_fifo_chan, %struct.nvkm_fifo_chan* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  br label %51

50:                                               ; preds = %36
  br label %51

51:                                               ; preds = %50, %46
  %52 = phi i32 [ %49, %46 ], [ -1, %50 ]
  %53 = load i32, i32* %10, align 4
  %54 = shl i32 %53, 12
  %55 = load %struct.nvkm_fifo_chan*, %struct.nvkm_fifo_chan** %6, align 8
  %56 = icmp ne %struct.nvkm_fifo_chan* %55, null
  br i1 %56, label %57, label %64

57:                                               ; preds = %51
  %58 = load %struct.nvkm_fifo_chan*, %struct.nvkm_fifo_chan** %6, align 8
  %59 = getelementptr inbounds %struct.nvkm_fifo_chan, %struct.nvkm_fifo_chan* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load i8*, i8** %62, align 8
  br label %65

64:                                               ; preds = %51
  br label %65

65:                                               ; preds = %64, %57
  %66 = phi i8* [ %63, %57 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), %64 ]
  %67 = load i32, i32* %8, align 4
  %68 = load i32, i32* %9, align 4
  %69 = call i32 @nvkm_error(%struct.nvkm_subdev* %41, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %42, i8* %43, i32 %52, i32 %54, i8* %66, i32 %67, i32 %68)
  br label %70

70:                                               ; preds = %65, %1
  %71 = load %struct.nvkm_fifo*, %struct.nvkm_fifo** %5, align 8
  %72 = load i64, i64* %11, align 8
  %73 = call i32 @nvkm_fifo_chan_put(%struct.nvkm_fifo* %71, i64 %72, %struct.nvkm_fifo_chan** %6)
  %74 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %75 = load i32, i32* %7, align 4
  %76 = call i32 @nvkm_wr32(%struct.nvkm_device* %74, i32 1057072, i32 %75)
  %77 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %78 = call i32 @nvkm_wr32(%struct.nvkm_device* %77, i32 1056780, i32 16)
  ret void
}

declare dso_local i32 @nvkm_rd32(%struct.nvkm_device*, i32) #1

declare dso_local %struct.nvkm_fifo_chan* @nvkm_fifo_chan_inst(%struct.nvkm_fifo*, i32, i64*) #1

declare dso_local i32 @nvkm_snprintbf(i8*, i32, i32, i32) #1

declare dso_local i32 @nvkm_error(%struct.nvkm_subdev*, i8*, i32, i8*, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @nvkm_fifo_chan_put(%struct.nvkm_fifo*, i64, %struct.nvkm_fifo_chan**) #1

declare dso_local i32 @nvkm_wr32(%struct.nvkm_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
