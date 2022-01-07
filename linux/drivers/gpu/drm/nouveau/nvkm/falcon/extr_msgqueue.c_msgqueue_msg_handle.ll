; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/falcon/extr_msgqueue.c_msgqueue_msg_handle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/falcon/extr_msgqueue.c_msgqueue_msg_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_msgqueue = type { %struct.nvkm_msgqueue_seq*, %struct.TYPE_2__* }
%struct.nvkm_msgqueue_seq = type { i64, i64, i32 (%struct.nvkm_msgqueue.0*, %struct.nvkm_msgqueue_hdr*)*, i32 }
%struct.nvkm_msgqueue.0 = type opaque
%struct.nvkm_msgqueue_hdr = type opaque
%struct.TYPE_2__ = type { %struct.nvkm_subdev* }
%struct.nvkm_subdev = type { i32 }
%struct.nvkm_msgqueue_hdr.1 = type { i64 }

@SEQ_STATE_USED = common dso_local global i64 0, align 8
@SEQ_STATE_CANCELLED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"msg for unknown sequence %d\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_msgqueue*, %struct.nvkm_msgqueue_hdr.1*)* @msgqueue_msg_handle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msgqueue_msg_handle(%struct.nvkm_msgqueue* %0, %struct.nvkm_msgqueue_hdr.1* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nvkm_msgqueue*, align 8
  %5 = alloca %struct.nvkm_msgqueue_hdr.1*, align 8
  %6 = alloca %struct.nvkm_subdev*, align 8
  %7 = alloca %struct.nvkm_msgqueue_seq*, align 8
  store %struct.nvkm_msgqueue* %0, %struct.nvkm_msgqueue** %4, align 8
  store %struct.nvkm_msgqueue_hdr.1* %1, %struct.nvkm_msgqueue_hdr.1** %5, align 8
  %8 = load %struct.nvkm_msgqueue*, %struct.nvkm_msgqueue** %4, align 8
  %9 = getelementptr inbounds %struct.nvkm_msgqueue, %struct.nvkm_msgqueue* %8, i32 0, i32 1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %11, align 8
  store %struct.nvkm_subdev* %12, %struct.nvkm_subdev** %6, align 8
  %13 = load %struct.nvkm_msgqueue*, %struct.nvkm_msgqueue** %4, align 8
  %14 = getelementptr inbounds %struct.nvkm_msgqueue, %struct.nvkm_msgqueue* %13, i32 0, i32 0
  %15 = load %struct.nvkm_msgqueue_seq*, %struct.nvkm_msgqueue_seq** %14, align 8
  %16 = load %struct.nvkm_msgqueue_hdr.1*, %struct.nvkm_msgqueue_hdr.1** %5, align 8
  %17 = getelementptr inbounds %struct.nvkm_msgqueue_hdr.1, %struct.nvkm_msgqueue_hdr.1* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = getelementptr inbounds %struct.nvkm_msgqueue_seq, %struct.nvkm_msgqueue_seq* %15, i64 %18
  store %struct.nvkm_msgqueue_seq* %19, %struct.nvkm_msgqueue_seq** %7, align 8
  %20 = load %struct.nvkm_msgqueue_seq*, %struct.nvkm_msgqueue_seq** %7, align 8
  %21 = getelementptr inbounds %struct.nvkm_msgqueue_seq, %struct.nvkm_msgqueue_seq* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @SEQ_STATE_USED, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %39

25:                                               ; preds = %2
  %26 = load %struct.nvkm_msgqueue_seq*, %struct.nvkm_msgqueue_seq** %7, align 8
  %27 = getelementptr inbounds %struct.nvkm_msgqueue_seq, %struct.nvkm_msgqueue_seq* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @SEQ_STATE_CANCELLED, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %39

31:                                               ; preds = %25
  %32 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %6, align 8
  %33 = load %struct.nvkm_msgqueue_seq*, %struct.nvkm_msgqueue_seq** %7, align 8
  %34 = getelementptr inbounds %struct.nvkm_msgqueue_seq, %struct.nvkm_msgqueue_seq* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @nvkm_error(%struct.nvkm_subdev* %32, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %74

39:                                               ; preds = %25, %2
  %40 = load %struct.nvkm_msgqueue_seq*, %struct.nvkm_msgqueue_seq** %7, align 8
  %41 = getelementptr inbounds %struct.nvkm_msgqueue_seq, %struct.nvkm_msgqueue_seq* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @SEQ_STATE_USED, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %60

45:                                               ; preds = %39
  %46 = load %struct.nvkm_msgqueue_seq*, %struct.nvkm_msgqueue_seq** %7, align 8
  %47 = getelementptr inbounds %struct.nvkm_msgqueue_seq, %struct.nvkm_msgqueue_seq* %46, i32 0, i32 2
  %48 = load i32 (%struct.nvkm_msgqueue.0*, %struct.nvkm_msgqueue_hdr*)*, i32 (%struct.nvkm_msgqueue.0*, %struct.nvkm_msgqueue_hdr*)** %47, align 8
  %49 = icmp ne i32 (%struct.nvkm_msgqueue.0*, %struct.nvkm_msgqueue_hdr*)* %48, null
  br i1 %49, label %50, label %59

50:                                               ; preds = %45
  %51 = load %struct.nvkm_msgqueue_seq*, %struct.nvkm_msgqueue_seq** %7, align 8
  %52 = getelementptr inbounds %struct.nvkm_msgqueue_seq, %struct.nvkm_msgqueue_seq* %51, i32 0, i32 2
  %53 = load i32 (%struct.nvkm_msgqueue.0*, %struct.nvkm_msgqueue_hdr*)*, i32 (%struct.nvkm_msgqueue.0*, %struct.nvkm_msgqueue_hdr*)** %52, align 8
  %54 = load %struct.nvkm_msgqueue*, %struct.nvkm_msgqueue** %4, align 8
  %55 = bitcast %struct.nvkm_msgqueue* %54 to %struct.nvkm_msgqueue.0*
  %56 = load %struct.nvkm_msgqueue_hdr.1*, %struct.nvkm_msgqueue_hdr.1** %5, align 8
  %57 = bitcast %struct.nvkm_msgqueue_hdr.1* %56 to %struct.nvkm_msgqueue_hdr*
  %58 = call i32 %53(%struct.nvkm_msgqueue.0* %55, %struct.nvkm_msgqueue_hdr* %57)
  br label %59

59:                                               ; preds = %50, %45
  br label %60

60:                                               ; preds = %59, %39
  %61 = load %struct.nvkm_msgqueue_seq*, %struct.nvkm_msgqueue_seq** %7, align 8
  %62 = getelementptr inbounds %struct.nvkm_msgqueue_seq, %struct.nvkm_msgqueue_seq* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %60
  %66 = load %struct.nvkm_msgqueue_seq*, %struct.nvkm_msgqueue_seq** %7, align 8
  %67 = getelementptr inbounds %struct.nvkm_msgqueue_seq, %struct.nvkm_msgqueue_seq* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = call i32 @complete(i64 %68)
  br label %70

70:                                               ; preds = %65, %60
  %71 = load %struct.nvkm_msgqueue*, %struct.nvkm_msgqueue** %4, align 8
  %72 = load %struct.nvkm_msgqueue_seq*, %struct.nvkm_msgqueue_seq** %7, align 8
  %73 = call i32 @msgqueue_seq_release(%struct.nvkm_msgqueue* %71, %struct.nvkm_msgqueue_seq* %72)
  store i32 0, i32* %3, align 4
  br label %74

74:                                               ; preds = %70, %31
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local i32 @nvkm_error(%struct.nvkm_subdev*, i8*, i32) #1

declare dso_local i32 @complete(i64) #1

declare dso_local i32 @msgqueue_seq_release(%struct.nvkm_msgqueue*, %struct.nvkm_msgqueue_seq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
