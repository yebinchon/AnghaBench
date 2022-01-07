; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/ce/extr_gt215.c_gt215_ce_intr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/ce/extr_gt215.c_gt215_ce_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_falcon = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.nvkm_subdev }
%struct.nvkm_subdev = type { i32, %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }
%struct.nvkm_fifo_chan = type { i32, %struct.TYPE_8__, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i8* }
%struct.TYPE_6__ = type { i32 }
%struct.nvkm_enum = type { i8* }

@NVKM_ENGINE_CE0 = common dso_local global i32 0, align 4
@gt215_ce_isr_error_name = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [73 x i8] c"DISPATCH_ERROR %04x [%s] ch %d [%010llx %s] subc %d mthd %04x data %08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gt215_ce_intr(%struct.nvkm_falcon* %0, %struct.nvkm_fifo_chan* %1) #0 {
  %3 = alloca %struct.nvkm_falcon*, align 8
  %4 = alloca %struct.nvkm_fifo_chan*, align 8
  %5 = alloca %struct.nvkm_subdev*, align 8
  %6 = alloca %struct.nvkm_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.nvkm_enum*, align 8
  store %struct.nvkm_falcon* %0, %struct.nvkm_falcon** %3, align 8
  store %struct.nvkm_fifo_chan* %1, %struct.nvkm_fifo_chan** %4, align 8
  %14 = load %struct.nvkm_falcon*, %struct.nvkm_falcon** %3, align 8
  %15 = getelementptr inbounds %struct.nvkm_falcon, %struct.nvkm_falcon* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  store %struct.nvkm_subdev* %16, %struct.nvkm_subdev** %5, align 8
  %17 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %5, align 8
  %18 = getelementptr inbounds %struct.nvkm_subdev, %struct.nvkm_subdev* %17, i32 0, i32 1
  %19 = load %struct.nvkm_device*, %struct.nvkm_device** %18, align 8
  store %struct.nvkm_device* %19, %struct.nvkm_device** %6, align 8
  %20 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %5, align 8
  %21 = getelementptr inbounds %struct.nvkm_subdev, %struct.nvkm_subdev* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @NVKM_ENGINE_CE0, align 4
  %24 = sub nsw i32 %22, %23
  %25 = mul nsw i32 %24, 4096
  store i32 %25, i32* %7, align 4
  %26 = load %struct.nvkm_device*, %struct.nvkm_device** %6, align 8
  %27 = load i32, i32* %7, align 4
  %28 = add nsw i32 1065024, %27
  %29 = call i32 @nvkm_rd32(%struct.nvkm_device* %26, i32 %28)
  %30 = and i32 %29, 65535
  store i32 %30, i32* %8, align 4
  %31 = load %struct.nvkm_device*, %struct.nvkm_device** %6, align 8
  %32 = load i32, i32* %7, align 4
  %33 = add nsw i32 1065024, %32
  %34 = call i32 @nvkm_rd32(%struct.nvkm_device* %31, i32 %33)
  %35 = ashr i32 %34, 16
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = and i32 %36, 2047
  %38 = shl i32 %37, 2
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %9, align 4
  %40 = and i32 %39, 14336
  %41 = ashr i32 %40, 11
  store i32 %41, i32* %11, align 4
  %42 = load %struct.nvkm_device*, %struct.nvkm_device** %6, align 8
  %43 = load i32, i32* %7, align 4
  %44 = add nsw i32 1065028, %43
  %45 = call i32 @nvkm_rd32(%struct.nvkm_device* %42, i32 %44)
  store i32 %45, i32* %12, align 4
  %46 = load i32, i32* @gt215_ce_isr_error_name, align 4
  %47 = load i32, i32* %8, align 4
  %48 = call %struct.nvkm_enum* @nvkm_enum_find(i32 %46, i32 %47)
  store %struct.nvkm_enum* %48, %struct.nvkm_enum** %13, align 8
  %49 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %5, align 8
  %50 = load i32, i32* %8, align 4
  %51 = load %struct.nvkm_enum*, %struct.nvkm_enum** %13, align 8
  %52 = icmp ne %struct.nvkm_enum* %51, null
  br i1 %52, label %53, label %57

53:                                               ; preds = %2
  %54 = load %struct.nvkm_enum*, %struct.nvkm_enum** %13, align 8
  %55 = getelementptr inbounds %struct.nvkm_enum, %struct.nvkm_enum* %54, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  br label %58

57:                                               ; preds = %2
  br label %58

58:                                               ; preds = %57, %53
  %59 = phi i8* [ %56, %53 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %57 ]
  %60 = load %struct.nvkm_fifo_chan*, %struct.nvkm_fifo_chan** %4, align 8
  %61 = icmp ne %struct.nvkm_fifo_chan* %60, null
  br i1 %61, label %62, label %66

62:                                               ; preds = %58
  %63 = load %struct.nvkm_fifo_chan*, %struct.nvkm_fifo_chan** %4, align 8
  %64 = getelementptr inbounds %struct.nvkm_fifo_chan, %struct.nvkm_fifo_chan* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  br label %67

66:                                               ; preds = %58
  br label %67

67:                                               ; preds = %66, %62
  %68 = phi i32 [ %65, %62 ], [ -1, %66 ]
  %69 = load %struct.nvkm_fifo_chan*, %struct.nvkm_fifo_chan** %4, align 8
  %70 = icmp ne %struct.nvkm_fifo_chan* %69, null
  br i1 %70, label %71, label %77

71:                                               ; preds = %67
  %72 = load %struct.nvkm_fifo_chan*, %struct.nvkm_fifo_chan** %4, align 8
  %73 = getelementptr inbounds %struct.nvkm_fifo_chan, %struct.nvkm_fifo_chan* %72, i32 0, i32 2
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  br label %78

77:                                               ; preds = %67
  br label %78

78:                                               ; preds = %77, %71
  %79 = phi i32 [ %76, %71 ], [ 0, %77 ]
  %80 = load %struct.nvkm_fifo_chan*, %struct.nvkm_fifo_chan** %4, align 8
  %81 = icmp ne %struct.nvkm_fifo_chan* %80, null
  br i1 %81, label %82, label %89

82:                                               ; preds = %78
  %83 = load %struct.nvkm_fifo_chan*, %struct.nvkm_fifo_chan** %4, align 8
  %84 = getelementptr inbounds %struct.nvkm_fifo_chan, %struct.nvkm_fifo_chan* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 0
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 0
  %88 = load i8*, i8** %87, align 8
  br label %90

89:                                               ; preds = %78
  br label %90

90:                                               ; preds = %89, %82
  %91 = phi i8* [ %88, %82 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), %89 ]
  %92 = load i32, i32* %11, align 4
  %93 = load i32, i32* %10, align 4
  %94 = load i32, i32* %12, align 4
  %95 = call i32 @nvkm_error(%struct.nvkm_subdev* %49, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str, i64 0, i64 0), i32 %50, i8* %59, i32 %68, i32 %79, i8* %91, i32 %92, i32 %93, i32 %94)
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
