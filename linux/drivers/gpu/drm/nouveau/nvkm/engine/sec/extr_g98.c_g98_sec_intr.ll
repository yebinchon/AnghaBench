; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/sec/extr_g98.c_g98_sec_intr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/sec/extr_g98.c_g98_sec_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_falcon = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.nvkm_subdev }
%struct.nvkm_subdev = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }
%struct.nvkm_fifo_chan = type { i32, %struct.TYPE_8__, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i8* }
%struct.TYPE_6__ = type { i32 }
%struct.nvkm_enum = type { i8* }

@g98_sec_isr_error_name = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [73 x i8] c"DISPATCH_ERROR %04x [%s] ch %d [%010llx %s] subc %d mthd %04x data %08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"UNKNOWN\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvkm_falcon*, %struct.nvkm_fifo_chan*)* @g98_sec_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g98_sec_intr(%struct.nvkm_falcon* %0, %struct.nvkm_fifo_chan* %1) #0 {
  %3 = alloca %struct.nvkm_falcon*, align 8
  %4 = alloca %struct.nvkm_fifo_chan*, align 8
  %5 = alloca %struct.nvkm_subdev*, align 8
  %6 = alloca %struct.nvkm_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.nvkm_enum*, align 8
  store %struct.nvkm_falcon* %0, %struct.nvkm_falcon** %3, align 8
  store %struct.nvkm_fifo_chan* %1, %struct.nvkm_fifo_chan** %4, align 8
  %13 = load %struct.nvkm_falcon*, %struct.nvkm_falcon** %3, align 8
  %14 = getelementptr inbounds %struct.nvkm_falcon, %struct.nvkm_falcon* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  store %struct.nvkm_subdev* %15, %struct.nvkm_subdev** %5, align 8
  %16 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %5, align 8
  %17 = getelementptr inbounds %struct.nvkm_subdev, %struct.nvkm_subdev* %16, i32 0, i32 0
  %18 = load %struct.nvkm_device*, %struct.nvkm_device** %17, align 8
  store %struct.nvkm_device* %18, %struct.nvkm_device** %6, align 8
  %19 = load %struct.nvkm_device*, %struct.nvkm_device** %6, align 8
  %20 = call i32 @nvkm_rd32(%struct.nvkm_device* %19, i32 553024)
  %21 = and i32 %20, 65535
  store i32 %21, i32* %7, align 4
  %22 = load %struct.nvkm_device*, %struct.nvkm_device** %6, align 8
  %23 = call i32 @nvkm_rd32(%struct.nvkm_device* %22, i32 553024)
  %24 = ashr i32 %23, 16
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = and i32 %25, 2047
  %27 = shl i32 %26, 2
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %8, align 4
  %29 = and i32 %28, 14336
  %30 = ashr i32 %29, 11
  store i32 %30, i32* %10, align 4
  %31 = load %struct.nvkm_device*, %struct.nvkm_device** %6, align 8
  %32 = call i32 @nvkm_rd32(%struct.nvkm_device* %31, i32 553028)
  store i32 %32, i32* %11, align 4
  %33 = load i32, i32* @g98_sec_isr_error_name, align 4
  %34 = load i32, i32* %7, align 4
  %35 = call %struct.nvkm_enum* @nvkm_enum_find(i32 %33, i32 %34)
  store %struct.nvkm_enum* %35, %struct.nvkm_enum** %12, align 8
  %36 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %5, align 8
  %37 = load i32, i32* %7, align 4
  %38 = load %struct.nvkm_enum*, %struct.nvkm_enum** %12, align 8
  %39 = icmp ne %struct.nvkm_enum* %38, null
  br i1 %39, label %40, label %44

40:                                               ; preds = %2
  %41 = load %struct.nvkm_enum*, %struct.nvkm_enum** %12, align 8
  %42 = getelementptr inbounds %struct.nvkm_enum, %struct.nvkm_enum* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  br label %45

44:                                               ; preds = %2
  br label %45

45:                                               ; preds = %44, %40
  %46 = phi i8* [ %43, %40 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), %44 ]
  %47 = load %struct.nvkm_fifo_chan*, %struct.nvkm_fifo_chan** %4, align 8
  %48 = icmp ne %struct.nvkm_fifo_chan* %47, null
  br i1 %48, label %49, label %53

49:                                               ; preds = %45
  %50 = load %struct.nvkm_fifo_chan*, %struct.nvkm_fifo_chan** %4, align 8
  %51 = getelementptr inbounds %struct.nvkm_fifo_chan, %struct.nvkm_fifo_chan* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  br label %54

53:                                               ; preds = %45
  br label %54

54:                                               ; preds = %53, %49
  %55 = phi i32 [ %52, %49 ], [ -1, %53 ]
  %56 = load %struct.nvkm_fifo_chan*, %struct.nvkm_fifo_chan** %4, align 8
  %57 = icmp ne %struct.nvkm_fifo_chan* %56, null
  br i1 %57, label %58, label %64

58:                                               ; preds = %54
  %59 = load %struct.nvkm_fifo_chan*, %struct.nvkm_fifo_chan** %4, align 8
  %60 = getelementptr inbounds %struct.nvkm_fifo_chan, %struct.nvkm_fifo_chan* %59, i32 0, i32 2
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  br label %65

64:                                               ; preds = %54
  br label %65

65:                                               ; preds = %64, %58
  %66 = phi i32 [ %63, %58 ], [ 0, %64 ]
  %67 = load %struct.nvkm_fifo_chan*, %struct.nvkm_fifo_chan** %4, align 8
  %68 = icmp ne %struct.nvkm_fifo_chan* %67, null
  br i1 %68, label %69, label %76

69:                                               ; preds = %65
  %70 = load %struct.nvkm_fifo_chan*, %struct.nvkm_fifo_chan** %4, align 8
  %71 = getelementptr inbounds %struct.nvkm_fifo_chan, %struct.nvkm_fifo_chan* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  %75 = load i8*, i8** %74, align 8
  br label %77

76:                                               ; preds = %65
  br label %77

77:                                               ; preds = %76, %69
  %78 = phi i8* [ %75, %69 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), %76 ]
  %79 = load i32, i32* %10, align 4
  %80 = load i32, i32* %9, align 4
  %81 = load i32, i32* %11, align 4
  %82 = call i32 @nvkm_error(%struct.nvkm_subdev* %36, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str, i64 0, i64 0), i32 %37, i8* %46, i32 %55, i32 %66, i8* %78, i32 %79, i32 %80, i32 %81)
  ret void
}

declare dso_local i32 @nvkm_rd32(%struct.nvkm_device*, i32) #1

declare dso_local %struct.nvkm_enum* @nvkm_enum_find(i32, i32) #1

declare dso_local i32 @nvkm_error(%struct.nvkm_subdev*, i8*, i32, i8*, i32, i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
