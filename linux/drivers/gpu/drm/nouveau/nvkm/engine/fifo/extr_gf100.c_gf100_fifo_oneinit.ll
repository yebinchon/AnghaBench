; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/fifo/extr_gf100.c_gf100_fifo_oneinit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/fifo/extr_gf100.c_gf100_fifo_oneinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_fifo = type { i32 }
%struct.gf100_fifo = type { %struct.TYPE_8__, %struct.TYPE_7__, i32, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.nvkm_subdev }
%struct.nvkm_subdev = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }
%struct.nvkm_vmm = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"%d PBDMA(s)\0A\00", align 1
@NVKM_MEM_TARGET_INST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_fifo*)* @gf100_fifo_oneinit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gf100_fifo_oneinit(%struct.nvkm_fifo* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nvkm_fifo*, align 8
  %4 = alloca %struct.gf100_fifo*, align 8
  %5 = alloca %struct.nvkm_subdev*, align 8
  %6 = alloca %struct.nvkm_device*, align 8
  %7 = alloca %struct.nvkm_vmm*, align 8
  %8 = alloca i32, align 4
  store %struct.nvkm_fifo* %0, %struct.nvkm_fifo** %3, align 8
  %9 = load %struct.nvkm_fifo*, %struct.nvkm_fifo** %3, align 8
  %10 = call %struct.gf100_fifo* @gf100_fifo(%struct.nvkm_fifo* %9)
  store %struct.gf100_fifo* %10, %struct.gf100_fifo** %4, align 8
  %11 = load %struct.gf100_fifo*, %struct.gf100_fifo** %4, align 8
  %12 = getelementptr inbounds %struct.gf100_fifo, %struct.gf100_fifo* %11, i32 0, i32 3
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  store %struct.nvkm_subdev* %14, %struct.nvkm_subdev** %5, align 8
  %15 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %5, align 8
  %16 = getelementptr inbounds %struct.nvkm_subdev, %struct.nvkm_subdev* %15, i32 0, i32 0
  %17 = load %struct.nvkm_device*, %struct.nvkm_device** %16, align 8
  store %struct.nvkm_device* %17, %struct.nvkm_device** %6, align 8
  %18 = load %struct.nvkm_device*, %struct.nvkm_device** %6, align 8
  %19 = call %struct.nvkm_vmm* @nvkm_bar_bar1_vmm(%struct.nvkm_device* %18)
  store %struct.nvkm_vmm* %19, %struct.nvkm_vmm** %7, align 8
  %20 = load %struct.nvkm_device*, %struct.nvkm_device** %6, align 8
  %21 = call i32 @nvkm_wr32(%struct.nvkm_device* %20, i32 8708, i32 -1)
  %22 = load %struct.nvkm_device*, %struct.nvkm_device** %6, align 8
  %23 = call i32 @nvkm_rd32(%struct.nvkm_device* %22, i32 8708)
  %24 = call i32 @hweight32(i32 %23)
  %25 = load %struct.gf100_fifo*, %struct.gf100_fifo** %4, align 8
  %26 = getelementptr inbounds %struct.gf100_fifo, %struct.gf100_fifo* %25, i32 0, i32 2
  store i32 %24, i32* %26, align 8
  %27 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %5, align 8
  %28 = load %struct.gf100_fifo*, %struct.gf100_fifo** %4, align 8
  %29 = getelementptr inbounds %struct.gf100_fifo, %struct.gf100_fifo* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @nvkm_debug(%struct.nvkm_subdev* %27, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load %struct.nvkm_device*, %struct.nvkm_device** %6, align 8
  %33 = load i32, i32* @NVKM_MEM_TARGET_INST, align 4
  %34 = load %struct.gf100_fifo*, %struct.gf100_fifo** %4, align 8
  %35 = getelementptr inbounds %struct.gf100_fifo, %struct.gf100_fifo* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  %39 = call i32 @nvkm_memory_new(%struct.nvkm_device* %32, i32 %33, i32 4096, i32 4096, i32 0, i32* %38)
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %1
  %43 = load i32, i32* %8, align 4
  store i32 %43, i32* %2, align 4
  br label %98

44:                                               ; preds = %1
  %45 = load %struct.nvkm_device*, %struct.nvkm_device** %6, align 8
  %46 = load i32, i32* @NVKM_MEM_TARGET_INST, align 4
  %47 = load %struct.gf100_fifo*, %struct.gf100_fifo** %4, align 8
  %48 = getelementptr inbounds %struct.gf100_fifo, %struct.gf100_fifo* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 1
  %52 = call i32 @nvkm_memory_new(%struct.nvkm_device* %45, i32 %46, i32 4096, i32 4096, i32 0, i32* %51)
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %8, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %44
  %56 = load i32, i32* %8, align 4
  store i32 %56, i32* %2, align 4
  br label %98

57:                                               ; preds = %44
  %58 = load %struct.gf100_fifo*, %struct.gf100_fifo** %4, align 8
  %59 = getelementptr inbounds %struct.gf100_fifo, %struct.gf100_fifo* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  %61 = call i32 @init_waitqueue_head(i32* %60)
  %62 = load %struct.nvkm_device*, %struct.nvkm_device** %6, align 8
  %63 = load i32, i32* @NVKM_MEM_TARGET_INST, align 4
  %64 = load %struct.gf100_fifo*, %struct.gf100_fifo** %4, align 8
  %65 = getelementptr inbounds %struct.gf100_fifo, %struct.gf100_fifo* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 1
  %67 = call i32 @nvkm_memory_new(%struct.nvkm_device* %62, i32 %63, i32 524288, i32 4096, i32 0, i32* %66)
  store i32 %67, i32* %8, align 4
  %68 = load i32, i32* %8, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %57
  %71 = load i32, i32* %8, align 4
  store i32 %71, i32* %2, align 4
  br label %98

72:                                               ; preds = %57
  %73 = load %struct.nvkm_vmm*, %struct.nvkm_vmm** %7, align 8
  %74 = load %struct.gf100_fifo*, %struct.gf100_fifo** %4, align 8
  %75 = getelementptr inbounds %struct.gf100_fifo, %struct.gf100_fifo* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @nvkm_memory_size(i32 %77)
  %79 = load %struct.gf100_fifo*, %struct.gf100_fifo** %4, align 8
  %80 = getelementptr inbounds %struct.gf100_fifo, %struct.gf100_fifo* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 0
  %82 = call i32 @nvkm_vmm_get(%struct.nvkm_vmm* %73, i32 12, i32 %78, i32* %81)
  store i32 %82, i32* %8, align 4
  %83 = load i32, i32* %8, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %72
  %86 = load i32, i32* %8, align 4
  store i32 %86, i32* %2, align 4
  br label %98

87:                                               ; preds = %72
  %88 = load %struct.gf100_fifo*, %struct.gf100_fifo** %4, align 8
  %89 = getelementptr inbounds %struct.gf100_fifo, %struct.gf100_fifo* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.nvkm_vmm*, %struct.nvkm_vmm** %7, align 8
  %93 = load %struct.gf100_fifo*, %struct.gf100_fifo** %4, align 8
  %94 = getelementptr inbounds %struct.gf100_fifo, %struct.gf100_fifo* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @nvkm_memory_map(i32 %91, i32 0, %struct.nvkm_vmm* %92, i32 %96, i32* null, i32 0)
  store i32 %97, i32* %2, align 4
  br label %98

98:                                               ; preds = %87, %85, %70, %55, %42
  %99 = load i32, i32* %2, align 4
  ret i32 %99
}

declare dso_local %struct.gf100_fifo* @gf100_fifo(%struct.nvkm_fifo*) #1

declare dso_local %struct.nvkm_vmm* @nvkm_bar_bar1_vmm(%struct.nvkm_device*) #1

declare dso_local i32 @nvkm_wr32(%struct.nvkm_device*, i32, i32) #1

declare dso_local i32 @hweight32(i32) #1

declare dso_local i32 @nvkm_rd32(%struct.nvkm_device*, i32) #1

declare dso_local i32 @nvkm_debug(%struct.nvkm_subdev*, i8*, i32) #1

declare dso_local i32 @nvkm_memory_new(%struct.nvkm_device*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @nvkm_vmm_get(%struct.nvkm_vmm*, i32, i32, i32*) #1

declare dso_local i32 @nvkm_memory_size(i32) #1

declare dso_local i32 @nvkm_memory_map(i32, i32, %struct.nvkm_vmm*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
