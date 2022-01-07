; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/mpeg/extr_nv31.c_nv31_mpeg_intr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/mpeg/extr_nv31.c_nv31_mpeg_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_engine = type { i32 }
%struct.nv31_mpeg = type { %struct.TYPE_10__, %struct.TYPE_9__* }
%struct.TYPE_10__ = type { i32, %struct.nvkm_subdev }
%struct.nvkm_subdev = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i8* }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"ch %d [%s] %08x %08x %08x %08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvkm_engine*)* @nv31_mpeg_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nv31_mpeg_intr(%struct.nvkm_engine* %0) #0 {
  %2 = alloca %struct.nvkm_engine*, align 8
  %3 = alloca %struct.nv31_mpeg*, align 8
  %4 = alloca %struct.nvkm_subdev*, align 8
  %5 = alloca %struct.nvkm_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.nvkm_engine* %0, %struct.nvkm_engine** %2, align 8
  %12 = load %struct.nvkm_engine*, %struct.nvkm_engine** %2, align 8
  %13 = call %struct.nv31_mpeg* @nv31_mpeg(%struct.nvkm_engine* %12)
  store %struct.nv31_mpeg* %13, %struct.nv31_mpeg** %3, align 8
  %14 = load %struct.nv31_mpeg*, %struct.nv31_mpeg** %3, align 8
  %15 = getelementptr inbounds %struct.nv31_mpeg, %struct.nv31_mpeg* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 1
  store %struct.nvkm_subdev* %16, %struct.nvkm_subdev** %4, align 8
  %17 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %4, align 8
  %18 = getelementptr inbounds %struct.nvkm_subdev, %struct.nvkm_subdev* %17, i32 0, i32 0
  %19 = load %struct.nvkm_device*, %struct.nvkm_device** %18, align 8
  store %struct.nvkm_device* %19, %struct.nvkm_device** %5, align 8
  %20 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %21 = call i32 @nvkm_rd32(%struct.nvkm_device* %20, i32 45312)
  store i32 %21, i32* %6, align 4
  %22 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %23 = call i32 @nvkm_rd32(%struct.nvkm_device* %22, i32 45616)
  store i32 %23, i32* %7, align 4
  %24 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %25 = call i32 @nvkm_rd32(%struct.nvkm_device* %24, i32 45620)
  store i32 %25, i32* %8, align 4
  %26 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %27 = call i32 @nvkm_rd32(%struct.nvkm_device* %26, i32 45624)
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %6, align 4
  store i32 %28, i32* %10, align 4
  %29 = load %struct.nv31_mpeg*, %struct.nv31_mpeg** %3, align 8
  %30 = getelementptr inbounds %struct.nv31_mpeg, %struct.nv31_mpeg* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  %32 = load i64, i64* %11, align 8
  %33 = call i32 @spin_lock_irqsave(i32* %31, i64 %32)
  %34 = load i32, i32* %6, align 4
  %35 = and i32 %34, 16777216
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %62

37:                                               ; preds = %1
  %38 = load i32, i32* %7, align 4
  %39 = icmp eq i32 %38, 32
  br i1 %39, label %40, label %48

40:                                               ; preds = %37
  %41 = load i32, i32* %8, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %40
  %44 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %45 = call i32 @nvkm_mask(%struct.nvkm_device* %44, i32 45832, i32 0, i32 0)
  %46 = load i32, i32* %10, align 4
  %47 = and i32 %46, -16777217
  store i32 %47, i32* %10, align 4
  br label %48

48:                                               ; preds = %43, %40, %37
  %49 = load i32, i32* %7, align 4
  %50 = icmp eq i32 %49, 16
  br i1 %50, label %51, label %61

51:                                               ; preds = %48
  %52 = load %struct.nv31_mpeg*, %struct.nv31_mpeg** %3, align 8
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* %9, align 4
  %55 = call i64 @nv31_mpeg_mthd(%struct.nv31_mpeg* %52, i32 %53, i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %51
  %58 = load i32, i32* %10, align 4
  %59 = and i32 %58, -16777217
  store i32 %59, i32* %10, align 4
  br label %60

60:                                               ; preds = %57, %51
  br label %61

61:                                               ; preds = %60, %48
  br label %62

62:                                               ; preds = %61, %1
  %63 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %64 = load i32, i32* %6, align 4
  %65 = call i32 @nvkm_wr32(%struct.nvkm_device* %63, i32 45312, i32 %64)
  %66 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %67 = call i32 @nvkm_wr32(%struct.nvkm_device* %66, i32 45616, i32 1)
  %68 = load i32, i32* %10, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %108

70:                                               ; preds = %62
  %71 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %4, align 8
  %72 = load %struct.nv31_mpeg*, %struct.nv31_mpeg** %3, align 8
  %73 = getelementptr inbounds %struct.nv31_mpeg, %struct.nv31_mpeg* %72, i32 0, i32 1
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %73, align 8
  %75 = icmp ne %struct.TYPE_9__* %74, null
  br i1 %75, label %76, label %84

76:                                               ; preds = %70
  %77 = load %struct.nv31_mpeg*, %struct.nv31_mpeg** %3, align 8
  %78 = getelementptr inbounds %struct.nv31_mpeg, %struct.nv31_mpeg* %77, i32 0, i32 1
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 1
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  br label %85

84:                                               ; preds = %70
  br label %85

85:                                               ; preds = %84, %76
  %86 = phi i32 [ %83, %76 ], [ -1, %84 ]
  %87 = load %struct.nv31_mpeg*, %struct.nv31_mpeg** %3, align 8
  %88 = getelementptr inbounds %struct.nv31_mpeg, %struct.nv31_mpeg* %87, i32 0, i32 1
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %88, align 8
  %90 = icmp ne %struct.TYPE_9__* %89, null
  br i1 %90, label %91, label %100

91:                                               ; preds = %85
  %92 = load %struct.nv31_mpeg*, %struct.nv31_mpeg** %3, align 8
  %93 = getelementptr inbounds %struct.nv31_mpeg, %struct.nv31_mpeg* %92, i32 0, i32 1
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 0
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 0
  %99 = load i8*, i8** %98, align 8
  br label %101

100:                                              ; preds = %85
  br label %101

101:                                              ; preds = %100, %91
  %102 = phi i8* [ %99, %91 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), %100 ]
  %103 = load i32, i32* %6, align 4
  %104 = load i32, i32* %7, align 4
  %105 = load i32, i32* %8, align 4
  %106 = load i32, i32* %9, align 4
  %107 = call i32 @nvkm_error(%struct.nvkm_subdev* %71, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %86, i8* %102, i32 %103, i32 %104, i32 %105, i32 %106)
  br label %108

108:                                              ; preds = %101, %62
  %109 = load %struct.nv31_mpeg*, %struct.nv31_mpeg** %3, align 8
  %110 = getelementptr inbounds %struct.nv31_mpeg, %struct.nv31_mpeg* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 0
  %112 = load i64, i64* %11, align 8
  %113 = call i32 @spin_unlock_irqrestore(i32* %111, i64 %112)
  ret void
}

declare dso_local %struct.nv31_mpeg* @nv31_mpeg(%struct.nvkm_engine*) #1

declare dso_local i32 @nvkm_rd32(%struct.nvkm_device*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @nvkm_mask(%struct.nvkm_device*, i32, i32, i32) #1

declare dso_local i64 @nv31_mpeg_mthd(%struct.nv31_mpeg*, i32, i32) #1

declare dso_local i32 @nvkm_wr32(%struct.nvkm_device*, i32, i32) #1

declare dso_local i32 @nvkm_error(%struct.nvkm_subdev*, i8*, i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
