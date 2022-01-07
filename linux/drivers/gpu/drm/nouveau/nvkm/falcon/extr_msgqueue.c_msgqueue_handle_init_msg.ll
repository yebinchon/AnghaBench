; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/falcon/extr_msgqueue.c_msgqueue_handle_init_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/falcon/extr_msgqueue.c_msgqueue_handle_init_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_msgqueue = type { %struct.TYPE_4__*, %struct.nvkm_falcon* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { {}* }
%struct.nvkm_falcon = type { %struct.nvkm_subdev* }
%struct.nvkm_subdev = type { i32 }
%struct.nvkm_msgqueue_hdr = type { i32 }

@.str = private unnamed_addr constant [37 x i8] c"falcon %s unsupported for msgqueue!\0A\00", align 1
@nvkm_subdev_name = common dso_local global i32* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@HDR_SIZE = common dso_local global i32 0, align 4
@MSG_BUF_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"message too big (%d bytes)\0A\00", align 1
@ENOSPC = common dso_local global i32 0, align 4
@QUEUE_ALIGNMENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_msgqueue*, %struct.nvkm_msgqueue_hdr*)* @msgqueue_handle_init_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msgqueue_handle_init_msg(%struct.nvkm_msgqueue* %0, %struct.nvkm_msgqueue_hdr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nvkm_msgqueue*, align 8
  %5 = alloca %struct.nvkm_msgqueue_hdr*, align 8
  %6 = alloca %struct.nvkm_falcon*, align 8
  %7 = alloca %struct.nvkm_subdev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.nvkm_msgqueue* %0, %struct.nvkm_msgqueue** %4, align 8
  store %struct.nvkm_msgqueue_hdr* %1, %struct.nvkm_msgqueue_hdr** %5, align 8
  %11 = load %struct.nvkm_msgqueue*, %struct.nvkm_msgqueue** %4, align 8
  %12 = getelementptr inbounds %struct.nvkm_msgqueue, %struct.nvkm_msgqueue* %11, i32 0, i32 1
  %13 = load %struct.nvkm_falcon*, %struct.nvkm_falcon** %12, align 8
  store %struct.nvkm_falcon* %13, %struct.nvkm_falcon** %6, align 8
  %14 = load %struct.nvkm_falcon*, %struct.nvkm_falcon** %6, align 8
  %15 = getelementptr inbounds %struct.nvkm_falcon, %struct.nvkm_falcon* %14, i32 0, i32 0
  %16 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %15, align 8
  store %struct.nvkm_subdev* %16, %struct.nvkm_subdev** %7, align 8
  %17 = load %struct.nvkm_falcon*, %struct.nvkm_falcon** %6, align 8
  %18 = getelementptr inbounds %struct.nvkm_falcon, %struct.nvkm_falcon* %17, i32 0, i32 0
  %19 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %18, align 8
  %20 = getelementptr inbounds %struct.nvkm_subdev, %struct.nvkm_subdev* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  switch i32 %21, label %24 [
    i32 128, label %22
    i32 129, label %23
  ]

22:                                               ; preds = %2
  store i32 1228, i32* %9, align 4
  br label %38

23:                                               ; preds = %2
  store i32 2612, i32* %9, align 4
  br label %38

24:                                               ; preds = %2
  %25 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %7, align 8
  %26 = load i32*, i32** @nvkm_subdev_name, align 8
  %27 = load %struct.nvkm_falcon*, %struct.nvkm_falcon** %6, align 8
  %28 = getelementptr inbounds %struct.nvkm_falcon, %struct.nvkm_falcon* %27, i32 0, i32 0
  %29 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %28, align 8
  %30 = getelementptr inbounds %struct.nvkm_subdev, %struct.nvkm_subdev* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %26, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @nvkm_error(%struct.nvkm_subdev* %25, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %34)
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %100

38:                                               ; preds = %23, %22
  %39 = load %struct.nvkm_falcon*, %struct.nvkm_falcon** %6, align 8
  %40 = load i32, i32* %9, align 4
  %41 = call i32 @nvkm_falcon_rd32(%struct.nvkm_falcon* %39, i32 %40)
  store i32 %41, i32* %8, align 4
  %42 = load %struct.nvkm_falcon*, %struct.nvkm_falcon** %6, align 8
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* @HDR_SIZE, align 4
  %45 = load %struct.nvkm_msgqueue_hdr*, %struct.nvkm_msgqueue_hdr** %5, align 8
  %46 = call i32 @nvkm_falcon_read_dmem(%struct.nvkm_falcon* %42, i32 %43, i32 %44, i32 0, %struct.nvkm_msgqueue_hdr* %45)
  %47 = load %struct.nvkm_msgqueue_hdr*, %struct.nvkm_msgqueue_hdr** %5, align 8
  %48 = getelementptr inbounds %struct.nvkm_msgqueue_hdr, %struct.nvkm_msgqueue_hdr* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @MSG_BUF_SIZE, align 4
  %51 = icmp sgt i32 %49, %50
  br i1 %51, label %52, label %60

52:                                               ; preds = %38
  %53 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %7, align 8
  %54 = load %struct.nvkm_msgqueue_hdr*, %struct.nvkm_msgqueue_hdr** %5, align 8
  %55 = getelementptr inbounds %struct.nvkm_msgqueue_hdr, %struct.nvkm_msgqueue_hdr* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @nvkm_error(%struct.nvkm_subdev* %53, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %56)
  %58 = load i32, i32* @ENOSPC, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %3, align 4
  br label %100

60:                                               ; preds = %38
  %61 = load %struct.nvkm_falcon*, %struct.nvkm_falcon** %6, align 8
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* @HDR_SIZE, align 4
  %64 = add nsw i32 %62, %63
  %65 = load %struct.nvkm_msgqueue_hdr*, %struct.nvkm_msgqueue_hdr** %5, align 8
  %66 = getelementptr inbounds %struct.nvkm_msgqueue_hdr, %struct.nvkm_msgqueue_hdr* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @HDR_SIZE, align 4
  %69 = sub nsw i32 %67, %68
  %70 = load %struct.nvkm_msgqueue_hdr*, %struct.nvkm_msgqueue_hdr** %5, align 8
  %71 = getelementptr inbounds %struct.nvkm_msgqueue_hdr, %struct.nvkm_msgqueue_hdr* %70, i64 1
  %72 = call i32 @nvkm_falcon_read_dmem(%struct.nvkm_falcon* %61, i32 %64, i32 %69, i32 0, %struct.nvkm_msgqueue_hdr* %71)
  %73 = load %struct.nvkm_msgqueue_hdr*, %struct.nvkm_msgqueue_hdr** %5, align 8
  %74 = getelementptr inbounds %struct.nvkm_msgqueue_hdr, %struct.nvkm_msgqueue_hdr* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @QUEUE_ALIGNMENT, align 4
  %77 = call i32 @ALIGN(i32 %75, i32 %76)
  %78 = load i32, i32* %8, align 4
  %79 = add nsw i32 %78, %77
  store i32 %79, i32* %8, align 4
  %80 = load %struct.nvkm_falcon*, %struct.nvkm_falcon** %6, align 8
  %81 = load i32, i32* %9, align 4
  %82 = load i32, i32* %8, align 4
  %83 = call i32 @nvkm_falcon_wr32(%struct.nvkm_falcon* %80, i32 %81, i32 %82)
  %84 = load %struct.nvkm_msgqueue*, %struct.nvkm_msgqueue** %4, align 8
  %85 = getelementptr inbounds %struct.nvkm_msgqueue, %struct.nvkm_msgqueue* %84, i32 0, i32 0
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 0
  %90 = bitcast {}** %89 to i32 (%struct.nvkm_msgqueue*, %struct.nvkm_msgqueue_hdr*)**
  %91 = load i32 (%struct.nvkm_msgqueue*, %struct.nvkm_msgqueue_hdr*)*, i32 (%struct.nvkm_msgqueue*, %struct.nvkm_msgqueue_hdr*)** %90, align 8
  %92 = load %struct.nvkm_msgqueue*, %struct.nvkm_msgqueue** %4, align 8
  %93 = load %struct.nvkm_msgqueue_hdr*, %struct.nvkm_msgqueue_hdr** %5, align 8
  %94 = call i32 %91(%struct.nvkm_msgqueue* %92, %struct.nvkm_msgqueue_hdr* %93)
  store i32 %94, i32* %10, align 4
  %95 = load i32, i32* %10, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %60
  %98 = load i32, i32* %10, align 4
  store i32 %98, i32* %3, align 4
  br label %100

99:                                               ; preds = %60
  store i32 0, i32* %3, align 4
  br label %100

100:                                              ; preds = %99, %97, %52, %24
  %101 = load i32, i32* %3, align 4
  ret i32 %101
}

declare dso_local i32 @nvkm_error(%struct.nvkm_subdev*, i8*, i32) #1

declare dso_local i32 @nvkm_falcon_rd32(%struct.nvkm_falcon*, i32) #1

declare dso_local i32 @nvkm_falcon_read_dmem(%struct.nvkm_falcon*, i32, i32, i32, %struct.nvkm_msgqueue_hdr*) #1

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32 @nvkm_falcon_wr32(%struct.nvkm_falcon*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
