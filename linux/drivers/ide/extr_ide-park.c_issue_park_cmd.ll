; ModuleID = '/home/carl/AnghaBench/linux/drivers/ide/extr_ide-park.c_issue_park_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ide/extr_ide-park.c_issue_park_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i64, %struct.request_queue*, %struct.TYPE_7__* }
%struct.request_queue = type { i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.request = type { i32 }
%struct.TYPE_9__ = type { i32, i32*, i64 }
%struct.TYPE_10__ = type { i64*, i8* }

@jiffies = common dso_local global i64 0, align 8
@IDE_DFLAG_PARKED = common dso_local global i32 0, align 4
@ide_park_wq = common dso_local global i32 0, align 4
@REQ_OP_DRV_IN = common dso_local global i32 0, align 4
@REQ_PARK_HEADS = common dso_local global i32 0, align 4
@ATA_PRIV_MISC = common dso_local global i8* null, align 8
@EIO = common dso_local global i32 0, align 4
@BLK_MQ_REQ_NOWAIT = common dso_local global i32 0, align 4
@REQ_UNPARK_HEADS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*, i64)* @issue_park_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @issue_park_cmd(%struct.TYPE_8__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca %struct.request_queue*, align 8
  %7 = alloca %struct.request*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store i64 %1, i64* %4, align 8
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 3
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  store %struct.TYPE_7__* %13, %struct.TYPE_7__** %5, align 8
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 2
  %16 = load %struct.request_queue*, %struct.request_queue** %15, align 8
  store %struct.request_queue* %16, %struct.request_queue** %6, align 8
  %17 = load i64, i64* @jiffies, align 8
  %18 = load i64, i64* %4, align 8
  %19 = add i64 %18, %17
  store i64 %19, i64* %4, align 8
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = call i32 @spin_lock_irq(i32* %21)
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @IDE_DFLAG_PARKED, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %57

29:                                               ; preds = %2
  %30 = load i64, i64* %4, align 8
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @time_before(i64 %30, i64 %33)
  store i32 %34, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %35 = load i64, i64* %4, align 8
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 1
  store i64 %35, i64* %37, align 8
  %38 = call i32 @wake_up_all(i32* @ide_park_wq)
  %39 = load i32, i32* %9, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %29
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 1
  %44 = call i64 @del_timer(i32* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  store i32 1, i32* %10, align 4
  br label %47

47:                                               ; preds = %46, %41, %29
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = call i32 @spin_unlock_irq(i32* %49)
  %51 = load i32, i32* %10, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %47
  %54 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %55 = call i32 @blk_mq_run_hw_queues(%struct.request_queue* %54, i32 1)
  br label %56

56:                                               ; preds = %53, %47
  br label %132

57:                                               ; preds = %2
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = call i32 @spin_unlock_irq(i32* %59)
  %61 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %62 = load i32, i32* @REQ_OP_DRV_IN, align 4
  %63 = call %struct.request* @blk_get_request(%struct.request_queue* %61, i32 %62, i32 0)
  store %struct.request* %63, %struct.request** %7, align 8
  %64 = load i32, i32* @REQ_PARK_HEADS, align 4
  %65 = load %struct.request*, %struct.request** %7, align 8
  %66 = call %struct.TYPE_9__* @scsi_req(%struct.request* %65)
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 0
  store i32 %64, i32* %69, align 4
  %70 = load %struct.request*, %struct.request** %7, align 8
  %71 = call %struct.TYPE_9__* @scsi_req(%struct.request* %70)
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 0
  store i32 1, i32* %72, align 8
  %73 = load i8*, i8** @ATA_PRIV_MISC, align 8
  %74 = load %struct.request*, %struct.request** %7, align 8
  %75 = call %struct.TYPE_10__* @ide_req(%struct.request* %74)
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 1
  store i8* %73, i8** %76, align 8
  %77 = load %struct.request*, %struct.request** %7, align 8
  %78 = call %struct.TYPE_10__* @ide_req(%struct.request* %77)
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 0
  store i64* %4, i64** %79, align 8
  %80 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %81 = load %struct.request*, %struct.request** %7, align 8
  %82 = call i32 @blk_execute_rq(%struct.request_queue* %80, i32* null, %struct.request* %81, i32 1)
  %83 = load %struct.request*, %struct.request** %7, align 8
  %84 = call %struct.TYPE_9__* @scsi_req(%struct.request* %83)
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 2
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %57
  %89 = load i32, i32* @EIO, align 4
  %90 = sub nsw i32 0, %89
  br label %92

91:                                               ; preds = %57
  br label %92

92:                                               ; preds = %91, %88
  %93 = phi i32 [ %90, %88 ], [ 0, %91 ]
  store i32 %93, i32* %8, align 4
  %94 = load %struct.request*, %struct.request** %7, align 8
  %95 = call i32 @blk_put_request(%struct.request* %94)
  %96 = load i32, i32* %8, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %92
  br label %131

99:                                               ; preds = %92
  %100 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %101 = load i32, i32* @REQ_OP_DRV_IN, align 4
  %102 = load i32, i32* @BLK_MQ_REQ_NOWAIT, align 4
  %103 = call %struct.request* @blk_get_request(%struct.request_queue* %100, i32 %101, i32 %102)
  store %struct.request* %103, %struct.request** %7, align 8
  %104 = load %struct.request*, %struct.request** %7, align 8
  %105 = call i64 @IS_ERR(%struct.request* %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %99
  br label %131

108:                                              ; preds = %99
  %109 = load i32, i32* @REQ_UNPARK_HEADS, align 4
  %110 = load %struct.request*, %struct.request** %7, align 8
  %111 = call %struct.TYPE_9__* @scsi_req(%struct.request* %110)
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 1
  %113 = load i32*, i32** %112, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 0
  store i32 %109, i32* %114, align 4
  %115 = load %struct.request*, %struct.request** %7, align 8
  %116 = call %struct.TYPE_9__* @scsi_req(%struct.request* %115)
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i32 0, i32 0
  store i32 1, i32* %117, align 8
  %118 = load i8*, i8** @ATA_PRIV_MISC, align 8
  %119 = load %struct.request*, %struct.request** %7, align 8
  %120 = call %struct.TYPE_10__* @ide_req(%struct.request* %119)
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 1
  store i8* %118, i8** %121, align 8
  %122 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 0
  %124 = call i32 @spin_lock_irq(i32* %123)
  %125 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %126 = load %struct.request*, %struct.request** %7, align 8
  %127 = call i32 @ide_insert_request_head(%struct.TYPE_8__* %125, %struct.request* %126)
  %128 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 0
  %130 = call i32 @spin_unlock_irq(i32* %129)
  br label %131

131:                                              ; preds = %108, %107, %98
  br label %132

132:                                              ; preds = %131, %56
  ret void
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @time_before(i64, i64) #1

declare dso_local i32 @wake_up_all(i32*) #1

declare dso_local i64 @del_timer(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @blk_mq_run_hw_queues(%struct.request_queue*, i32) #1

declare dso_local %struct.request* @blk_get_request(%struct.request_queue*, i32, i32) #1

declare dso_local %struct.TYPE_9__* @scsi_req(%struct.request*) #1

declare dso_local %struct.TYPE_10__* @ide_req(%struct.request*) #1

declare dso_local i32 @blk_execute_rq(%struct.request_queue*, i32*, %struct.request*, i32) #1

declare dso_local i32 @blk_put_request(%struct.request*) #1

declare dso_local i64 @IS_ERR(%struct.request*) #1

declare dso_local i32 @ide_insert_request_head(%struct.TYPE_8__*, %struct.request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
