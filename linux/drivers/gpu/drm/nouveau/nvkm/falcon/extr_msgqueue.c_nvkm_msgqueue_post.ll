; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/falcon/extr_msgqueue.c_nvkm_msgqueue_post.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/falcon/extr_msgqueue.c_nvkm_msgqueue_post.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_msgqueue = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { %struct.nvkm_msgqueue_seq* (%struct.nvkm_msgqueue*, i32)* }
%struct.nvkm_msgqueue_seq = type { i32, %struct.completion*, i32, i32 }
%struct.nvkm_msgqueue_hdr = type { i32, i32 }
%struct.completion = type { i32 }
%struct.nvkm_msgqueue_queue = type { i32, %struct.completion*, i32, i32 }

@ETIMEDOUT = common dso_local global i32 0, align 4
@CMD_FLAGS_STATUS = common dso_local global i32 0, align 4
@CMD_FLAGS_INTR = common dso_local global i32 0, align 4
@SEQ_STATE_USED = common dso_local global i32 0, align 4
@SEQ_STATE_PENDING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nvkm_msgqueue_post(%struct.nvkm_msgqueue* %0, i32 %1, %struct.nvkm_msgqueue_hdr* %2, i32 %3, %struct.completion* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.nvkm_msgqueue*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.nvkm_msgqueue_hdr*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.completion*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.nvkm_msgqueue_seq*, align 8
  %15 = alloca %struct.nvkm_msgqueue_queue*, align 8
  %16 = alloca i32, align 4
  store %struct.nvkm_msgqueue* %0, %struct.nvkm_msgqueue** %8, align 8
  store i32 %1, i32* %9, align 4
  store %struct.nvkm_msgqueue_hdr* %2, %struct.nvkm_msgqueue_hdr** %10, align 8
  store i32 %3, i32* %11, align 4
  store %struct.completion* %4, %struct.completion** %12, align 8
  store i32 %5, i32* %13, align 4
  %17 = load i32, i32* %13, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %6
  %20 = load %struct.nvkm_msgqueue*, %struct.nvkm_msgqueue** %8, align 8
  %21 = getelementptr inbounds %struct.nvkm_msgqueue, %struct.nvkm_msgqueue* %20, i32 0, i32 1
  %22 = call i32 @msecs_to_jiffies(i32 1000)
  %23 = call i32 @wait_for_completion_timeout(i32* %21, i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %19
  %26 = load i32, i32* @ETIMEDOUT, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %7, align 4
  br label %91

28:                                               ; preds = %19, %6
  %29 = load %struct.nvkm_msgqueue*, %struct.nvkm_msgqueue** %8, align 8
  %30 = getelementptr inbounds %struct.nvkm_msgqueue, %struct.nvkm_msgqueue* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load %struct.nvkm_msgqueue_seq* (%struct.nvkm_msgqueue*, i32)*, %struct.nvkm_msgqueue_seq* (%struct.nvkm_msgqueue*, i32)** %32, align 8
  %34 = load %struct.nvkm_msgqueue*, %struct.nvkm_msgqueue** %8, align 8
  %35 = load i32, i32* %9, align 4
  %36 = call %struct.nvkm_msgqueue_seq* %33(%struct.nvkm_msgqueue* %34, i32 %35)
  %37 = bitcast %struct.nvkm_msgqueue_seq* %36 to %struct.nvkm_msgqueue_queue*
  store %struct.nvkm_msgqueue_queue* %37, %struct.nvkm_msgqueue_queue** %15, align 8
  %38 = load %struct.nvkm_msgqueue_queue*, %struct.nvkm_msgqueue_queue** %15, align 8
  %39 = bitcast %struct.nvkm_msgqueue_queue* %38 to %struct.nvkm_msgqueue_seq*
  %40 = call i64 @IS_ERR(%struct.nvkm_msgqueue_seq* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %28
  %43 = load %struct.nvkm_msgqueue_queue*, %struct.nvkm_msgqueue_queue** %15, align 8
  %44 = bitcast %struct.nvkm_msgqueue_queue* %43 to %struct.nvkm_msgqueue_seq*
  %45 = call i32 @PTR_ERR(%struct.nvkm_msgqueue_seq* %44)
  store i32 %45, i32* %7, align 4
  br label %91

46:                                               ; preds = %28
  %47 = load %struct.nvkm_msgqueue*, %struct.nvkm_msgqueue** %8, align 8
  %48 = call %struct.nvkm_msgqueue_seq* @msgqueue_seq_acquire(%struct.nvkm_msgqueue* %47)
  store %struct.nvkm_msgqueue_seq* %48, %struct.nvkm_msgqueue_seq** %14, align 8
  %49 = load %struct.nvkm_msgqueue_seq*, %struct.nvkm_msgqueue_seq** %14, align 8
  %50 = call i64 @IS_ERR(%struct.nvkm_msgqueue_seq* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %46
  %53 = load %struct.nvkm_msgqueue_seq*, %struct.nvkm_msgqueue_seq** %14, align 8
  %54 = call i32 @PTR_ERR(%struct.nvkm_msgqueue_seq* %53)
  store i32 %54, i32* %7, align 4
  br label %91

55:                                               ; preds = %46
  %56 = load %struct.nvkm_msgqueue_seq*, %struct.nvkm_msgqueue_seq** %14, align 8
  %57 = getelementptr inbounds %struct.nvkm_msgqueue_seq, %struct.nvkm_msgqueue_seq* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.nvkm_msgqueue_hdr*, %struct.nvkm_msgqueue_hdr** %10, align 8
  %60 = getelementptr inbounds %struct.nvkm_msgqueue_hdr, %struct.nvkm_msgqueue_hdr* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 4
  %61 = load i32, i32* @CMD_FLAGS_STATUS, align 4
  %62 = load i32, i32* @CMD_FLAGS_INTR, align 4
  %63 = or i32 %61, %62
  %64 = load %struct.nvkm_msgqueue_hdr*, %struct.nvkm_msgqueue_hdr** %10, align 8
  %65 = getelementptr inbounds %struct.nvkm_msgqueue_hdr, %struct.nvkm_msgqueue_hdr* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 4
  %66 = load i32, i32* %11, align 4
  %67 = load %struct.nvkm_msgqueue_seq*, %struct.nvkm_msgqueue_seq** %14, align 8
  %68 = getelementptr inbounds %struct.nvkm_msgqueue_seq, %struct.nvkm_msgqueue_seq* %67, i32 0, i32 2
  store i32 %66, i32* %68, align 8
  %69 = load i32, i32* @SEQ_STATE_USED, align 4
  %70 = load %struct.nvkm_msgqueue_seq*, %struct.nvkm_msgqueue_seq** %14, align 8
  %71 = getelementptr inbounds %struct.nvkm_msgqueue_seq, %struct.nvkm_msgqueue_seq* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 8
  %72 = load %struct.completion*, %struct.completion** %12, align 8
  %73 = load %struct.nvkm_msgqueue_seq*, %struct.nvkm_msgqueue_seq** %14, align 8
  %74 = getelementptr inbounds %struct.nvkm_msgqueue_seq, %struct.nvkm_msgqueue_seq* %73, i32 0, i32 1
  store %struct.completion* %72, %struct.completion** %74, align 8
  %75 = load %struct.nvkm_msgqueue*, %struct.nvkm_msgqueue** %8, align 8
  %76 = load %struct.nvkm_msgqueue_hdr*, %struct.nvkm_msgqueue_hdr** %10, align 8
  %77 = load %struct.nvkm_msgqueue_queue*, %struct.nvkm_msgqueue_queue** %15, align 8
  %78 = bitcast %struct.nvkm_msgqueue_queue* %77 to %struct.nvkm_msgqueue_seq*
  %79 = call i32 @cmd_write(%struct.nvkm_msgqueue* %75, %struct.nvkm_msgqueue_hdr* %76, %struct.nvkm_msgqueue_seq* %78)
  store i32 %79, i32* %16, align 4
  %80 = load i32, i32* %16, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %89

82:                                               ; preds = %55
  %83 = load i32, i32* @SEQ_STATE_PENDING, align 4
  %84 = load %struct.nvkm_msgqueue_seq*, %struct.nvkm_msgqueue_seq** %14, align 8
  %85 = getelementptr inbounds %struct.nvkm_msgqueue_seq, %struct.nvkm_msgqueue_seq* %84, i32 0, i32 0
  store i32 %83, i32* %85, align 8
  %86 = load %struct.nvkm_msgqueue*, %struct.nvkm_msgqueue** %8, align 8
  %87 = load %struct.nvkm_msgqueue_seq*, %struct.nvkm_msgqueue_seq** %14, align 8
  %88 = call i32 @msgqueue_seq_release(%struct.nvkm_msgqueue* %86, %struct.nvkm_msgqueue_seq* %87)
  br label %89

89:                                               ; preds = %82, %55
  %90 = load i32, i32* %16, align 4
  store i32 %90, i32* %7, align 4
  br label %91

91:                                               ; preds = %89, %52, %42, %25
  %92 = load i32, i32* %7, align 4
  ret i32 %92
}

declare dso_local i32 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i64 @IS_ERR(%struct.nvkm_msgqueue_seq*) #1

declare dso_local i32 @PTR_ERR(%struct.nvkm_msgqueue_seq*) #1

declare dso_local %struct.nvkm_msgqueue_seq* @msgqueue_seq_acquire(%struct.nvkm_msgqueue*) #1

declare dso_local i32 @cmd_write(%struct.nvkm_msgqueue*, %struct.nvkm_msgqueue_hdr*, %struct.nvkm_msgqueue_seq*) #1

declare dso_local i32 @msgqueue_seq_release(%struct.nvkm_msgqueue*, %struct.nvkm_msgqueue_seq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
