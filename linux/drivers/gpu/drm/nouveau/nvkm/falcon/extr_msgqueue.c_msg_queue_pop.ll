; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/falcon/extr_msgqueue.c_msg_queue_pop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/falcon/extr_msgqueue.c_msg_queue_pop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_msgqueue = type { %struct.nvkm_falcon* }
%struct.nvkm_falcon = type { %struct.nvkm_subdev* }
%struct.nvkm_subdev = type { i32 }
%struct.nvkm_msgqueue_queue = type { i64, i64, i32 }

@.str = private unnamed_addr constant [27 x i8] c"no message data available\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"message data smaller than read request\0A\00", align 1
@QUEUE_ALIGNMENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_msgqueue*, %struct.nvkm_msgqueue_queue*, i8*, i64)* @msg_queue_pop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msg_queue_pop(%struct.nvkm_msgqueue* %0, %struct.nvkm_msgqueue_queue* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nvkm_msgqueue*, align 8
  %7 = alloca %struct.nvkm_msgqueue_queue*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.nvkm_falcon*, align 8
  %11 = alloca %struct.nvkm_subdev*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.nvkm_msgqueue* %0, %struct.nvkm_msgqueue** %6, align 8
  store %struct.nvkm_msgqueue_queue* %1, %struct.nvkm_msgqueue_queue** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load %struct.nvkm_msgqueue*, %struct.nvkm_msgqueue** %6, align 8
  %16 = getelementptr inbounds %struct.nvkm_msgqueue, %struct.nvkm_msgqueue* %15, i32 0, i32 0
  %17 = load %struct.nvkm_falcon*, %struct.nvkm_falcon** %16, align 8
  store %struct.nvkm_falcon* %17, %struct.nvkm_falcon** %10, align 8
  %18 = load %struct.nvkm_msgqueue*, %struct.nvkm_msgqueue** %6, align 8
  %19 = getelementptr inbounds %struct.nvkm_msgqueue, %struct.nvkm_msgqueue* %18, i32 0, i32 0
  %20 = load %struct.nvkm_falcon*, %struct.nvkm_falcon** %19, align 8
  %21 = getelementptr inbounds %struct.nvkm_falcon, %struct.nvkm_falcon* %20, i32 0, i32 0
  %22 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %21, align 8
  store %struct.nvkm_subdev* %22, %struct.nvkm_subdev** %11, align 8
  %23 = load %struct.nvkm_falcon*, %struct.nvkm_falcon** %10, align 8
  %24 = load %struct.nvkm_msgqueue_queue*, %struct.nvkm_msgqueue_queue** %7, align 8
  %25 = getelementptr inbounds %struct.nvkm_msgqueue_queue, %struct.nvkm_msgqueue_queue* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = call i64 @nvkm_falcon_rd32(%struct.nvkm_falcon* %23, i32 %26)
  store i64 %27, i64* %12, align 8
  %28 = load i64, i64* %12, align 8
  %29 = load %struct.nvkm_msgqueue_queue*, %struct.nvkm_msgqueue_queue** %7, align 8
  %30 = getelementptr inbounds %struct.nvkm_msgqueue_queue, %struct.nvkm_msgqueue_queue* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp slt i64 %28, %31
  br i1 %32, label %33, label %39

33:                                               ; preds = %4
  %34 = load %struct.nvkm_msgqueue_queue*, %struct.nvkm_msgqueue_queue** %7, align 8
  %35 = getelementptr inbounds %struct.nvkm_msgqueue_queue, %struct.nvkm_msgqueue_queue* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.nvkm_msgqueue_queue*, %struct.nvkm_msgqueue_queue** %7, align 8
  %38 = getelementptr inbounds %struct.nvkm_msgqueue_queue, %struct.nvkm_msgqueue_queue* %37, i32 0, i32 0
  store i64 %36, i64* %38, align 8
  br label %39

39:                                               ; preds = %33, %4
  %40 = load %struct.nvkm_msgqueue_queue*, %struct.nvkm_msgqueue_queue** %7, align 8
  %41 = getelementptr inbounds %struct.nvkm_msgqueue_queue, %struct.nvkm_msgqueue_queue* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  store i64 %42, i64* %13, align 8
  %43 = load i64, i64* %12, align 8
  %44 = load i64, i64* %13, align 8
  %45 = sub nsw i64 %43, %44
  store i64 %45, i64* %14, align 8
  %46 = load i64, i64* %14, align 8
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %39
  %49 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %11, align 8
  %50 = call i32 @nvkm_warn(%struct.nvkm_subdev* %49, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %76

51:                                               ; preds = %39
  %52 = load i64, i64* %9, align 8
  %53 = load i64, i64* %14, align 8
  %54 = icmp sgt i64 %52, %53
  br i1 %54, label %55, label %59

55:                                               ; preds = %51
  %56 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %11, align 8
  %57 = call i32 @nvkm_warn(%struct.nvkm_subdev* %56, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %58 = load i64, i64* %14, align 8
  store i64 %58, i64* %9, align 8
  br label %59

59:                                               ; preds = %55, %51
  %60 = load %struct.nvkm_msgqueue*, %struct.nvkm_msgqueue** %6, align 8
  %61 = getelementptr inbounds %struct.nvkm_msgqueue, %struct.nvkm_msgqueue* %60, i32 0, i32 0
  %62 = load %struct.nvkm_falcon*, %struct.nvkm_falcon** %61, align 8
  %63 = load i64, i64* %13, align 8
  %64 = load i64, i64* %9, align 8
  %65 = load i8*, i8** %8, align 8
  %66 = call i32 @nvkm_falcon_read_dmem(%struct.nvkm_falcon* %62, i64 %63, i64 %64, i32 0, i8* %65)
  %67 = load i64, i64* %9, align 8
  %68 = load i32, i32* @QUEUE_ALIGNMENT, align 4
  %69 = call i64 @ALIGN(i64 %67, i32 %68)
  %70 = load %struct.nvkm_msgqueue_queue*, %struct.nvkm_msgqueue_queue** %7, align 8
  %71 = getelementptr inbounds %struct.nvkm_msgqueue_queue, %struct.nvkm_msgqueue_queue* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = add nsw i64 %72, %69
  store i64 %73, i64* %71, align 8
  %74 = load i64, i64* %9, align 8
  %75 = trunc i64 %74 to i32
  store i32 %75, i32* %5, align 4
  br label %76

76:                                               ; preds = %59, %48
  %77 = load i32, i32* %5, align 4
  ret i32 %77
}

declare dso_local i64 @nvkm_falcon_rd32(%struct.nvkm_falcon*, i32) #1

declare dso_local i32 @nvkm_warn(%struct.nvkm_subdev*, i8*) #1

declare dso_local i32 @nvkm_falcon_read_dmem(%struct.nvkm_falcon*, i64, i64, i32, i8*) #1

declare dso_local i64 @ALIGN(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
