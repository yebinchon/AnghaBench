; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/falcon/extr_msgqueue.c_msg_queue_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/falcon/extr_msgqueue.c_msg_queue_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_msgqueue = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.nvkm_subdev* }
%struct.nvkm_subdev = type { i32 }
%struct.nvkm_msgqueue_queue = type { i32 }
%struct.nvkm_msgqueue_hdr = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"fail to open queue %d\0A\00", align 1
@HDR_SIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"failed to read message header: %d\0A\00", align 1
@MSG_BUF_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"message too big (%d bytes)\0A\00", align 1
@ENOSPC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"failed to read message: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_msgqueue*, %struct.nvkm_msgqueue_queue*, %struct.nvkm_msgqueue_hdr*)* @msg_queue_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msg_queue_read(%struct.nvkm_msgqueue* %0, %struct.nvkm_msgqueue_queue* %1, %struct.nvkm_msgqueue_hdr* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nvkm_msgqueue*, align 8
  %6 = alloca %struct.nvkm_msgqueue_queue*, align 8
  %7 = alloca %struct.nvkm_msgqueue_hdr*, align 8
  %8 = alloca %struct.nvkm_subdev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.nvkm_msgqueue* %0, %struct.nvkm_msgqueue** %5, align 8
  store %struct.nvkm_msgqueue_queue* %1, %struct.nvkm_msgqueue_queue** %6, align 8
  store %struct.nvkm_msgqueue_hdr* %2, %struct.nvkm_msgqueue_hdr** %7, align 8
  %11 = load %struct.nvkm_msgqueue*, %struct.nvkm_msgqueue** %5, align 8
  %12 = getelementptr inbounds %struct.nvkm_msgqueue, %struct.nvkm_msgqueue* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %14, align 8
  store %struct.nvkm_subdev* %15, %struct.nvkm_subdev** %8, align 8
  %16 = load %struct.nvkm_msgqueue*, %struct.nvkm_msgqueue** %5, align 8
  %17 = load %struct.nvkm_msgqueue_queue*, %struct.nvkm_msgqueue_queue** %6, align 8
  %18 = call i32 @msg_queue_open(%struct.nvkm_msgqueue* %16, %struct.nvkm_msgqueue_queue* %17)
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %3
  %22 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %8, align 8
  %23 = load %struct.nvkm_msgqueue_queue*, %struct.nvkm_msgqueue_queue** %6, align 8
  %24 = getelementptr inbounds %struct.nvkm_msgqueue_queue, %struct.nvkm_msgqueue_queue* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @nvkm_error(%struct.nvkm_subdev* %22, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* %9, align 4
  store i32 %27, i32* %4, align 4
  br label %114

28:                                               ; preds = %3
  %29 = load %struct.nvkm_msgqueue*, %struct.nvkm_msgqueue** %5, align 8
  %30 = load %struct.nvkm_msgqueue_queue*, %struct.nvkm_msgqueue_queue** %6, align 8
  %31 = call i64 @msg_queue_empty(%struct.nvkm_msgqueue* %29, %struct.nvkm_msgqueue_queue* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  store i32 0, i32* %9, align 4
  br label %106

34:                                               ; preds = %28
  %35 = load %struct.nvkm_msgqueue*, %struct.nvkm_msgqueue** %5, align 8
  %36 = load %struct.nvkm_msgqueue_queue*, %struct.nvkm_msgqueue_queue** %6, align 8
  %37 = load %struct.nvkm_msgqueue_hdr*, %struct.nvkm_msgqueue_hdr** %7, align 8
  %38 = load i32, i32* @HDR_SIZE, align 4
  %39 = call i32 @msg_queue_pop(%struct.nvkm_msgqueue* %35, %struct.nvkm_msgqueue_queue* %36, %struct.nvkm_msgqueue_hdr* %37, i32 %38)
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %9, align 4
  %41 = icmp sge i32 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %34
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* @HDR_SIZE, align 4
  %45 = icmp ne i32 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %42
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %9, align 4
  br label %49

49:                                               ; preds = %46, %42, %34
  %50 = load i32, i32* %9, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %49
  %53 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %8, align 8
  %54 = load i32, i32* %9, align 4
  %55 = call i32 @nvkm_error(%struct.nvkm_subdev* %53, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %54)
  br label %106

56:                                               ; preds = %49
  %57 = load %struct.nvkm_msgqueue_hdr*, %struct.nvkm_msgqueue_hdr** %7, align 8
  %58 = getelementptr inbounds %struct.nvkm_msgqueue_hdr, %struct.nvkm_msgqueue_hdr* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @MSG_BUF_SIZE, align 4
  %61 = icmp sgt i32 %59, %60
  br i1 %61, label %62, label %70

62:                                               ; preds = %56
  %63 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %8, align 8
  %64 = load %struct.nvkm_msgqueue_hdr*, %struct.nvkm_msgqueue_hdr** %7, align 8
  %65 = getelementptr inbounds %struct.nvkm_msgqueue_hdr, %struct.nvkm_msgqueue_hdr* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @nvkm_error(%struct.nvkm_subdev* %63, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %66)
  %68 = load i32, i32* @ENOSPC, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %9, align 4
  br label %106

70:                                               ; preds = %56
  %71 = load %struct.nvkm_msgqueue_hdr*, %struct.nvkm_msgqueue_hdr** %7, align 8
  %72 = getelementptr inbounds %struct.nvkm_msgqueue_hdr, %struct.nvkm_msgqueue_hdr* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @HDR_SIZE, align 4
  %75 = icmp sgt i32 %73, %74
  br i1 %75, label %76, label %105

76:                                               ; preds = %70
  %77 = load %struct.nvkm_msgqueue_hdr*, %struct.nvkm_msgqueue_hdr** %7, align 8
  %78 = getelementptr inbounds %struct.nvkm_msgqueue_hdr, %struct.nvkm_msgqueue_hdr* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @HDR_SIZE, align 4
  %81 = sub nsw i32 %79, %80
  store i32 %81, i32* %10, align 4
  %82 = load %struct.nvkm_msgqueue*, %struct.nvkm_msgqueue** %5, align 8
  %83 = load %struct.nvkm_msgqueue_queue*, %struct.nvkm_msgqueue_queue** %6, align 8
  %84 = load %struct.nvkm_msgqueue_hdr*, %struct.nvkm_msgqueue_hdr** %7, align 8
  %85 = getelementptr inbounds %struct.nvkm_msgqueue_hdr, %struct.nvkm_msgqueue_hdr* %84, i64 1
  %86 = load i32, i32* %10, align 4
  %87 = call i32 @msg_queue_pop(%struct.nvkm_msgqueue* %82, %struct.nvkm_msgqueue_queue* %83, %struct.nvkm_msgqueue_hdr* %85, i32 %86)
  store i32 %87, i32* %9, align 4
  %88 = load i32, i32* %9, align 4
  %89 = icmp sge i32 %88, 0
  br i1 %89, label %90, label %97

90:                                               ; preds = %76
  %91 = load i32, i32* %9, align 4
  %92 = load i32, i32* %10, align 4
  %93 = icmp ne i32 %91, %92
  br i1 %93, label %94, label %97

94:                                               ; preds = %90
  %95 = load i32, i32* @EINVAL, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %9, align 4
  br label %97

97:                                               ; preds = %94, %90, %76
  %98 = load i32, i32* %9, align 4
  %99 = icmp slt i32 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %97
  %101 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %8, align 8
  %102 = load i32, i32* %9, align 4
  %103 = call i32 @nvkm_error(%struct.nvkm_subdev* %101, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %102)
  br label %106

104:                                              ; preds = %97
  br label %105

105:                                              ; preds = %104, %70
  br label %106

106:                                              ; preds = %105, %100, %62, %52, %33
  %107 = load %struct.nvkm_msgqueue*, %struct.nvkm_msgqueue** %5, align 8
  %108 = load %struct.nvkm_msgqueue_queue*, %struct.nvkm_msgqueue_queue** %6, align 8
  %109 = load i32, i32* %9, align 4
  %110 = icmp sge i32 %109, 0
  %111 = zext i1 %110 to i32
  %112 = call i32 @msg_queue_close(%struct.nvkm_msgqueue* %107, %struct.nvkm_msgqueue_queue* %108, i32 %111)
  %113 = load i32, i32* %9, align 4
  store i32 %113, i32* %4, align 4
  br label %114

114:                                              ; preds = %106, %21
  %115 = load i32, i32* %4, align 4
  ret i32 %115
}

declare dso_local i32 @msg_queue_open(%struct.nvkm_msgqueue*, %struct.nvkm_msgqueue_queue*) #1

declare dso_local i32 @nvkm_error(%struct.nvkm_subdev*, i8*, i32) #1

declare dso_local i64 @msg_queue_empty(%struct.nvkm_msgqueue*, %struct.nvkm_msgqueue_queue*) #1

declare dso_local i32 @msg_queue_pop(%struct.nvkm_msgqueue*, %struct.nvkm_msgqueue_queue*, %struct.nvkm_msgqueue_hdr*, i32) #1

declare dso_local i32 @msg_queue_close(%struct.nvkm_msgqueue*, %struct.nvkm_msgqueue_queue*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
