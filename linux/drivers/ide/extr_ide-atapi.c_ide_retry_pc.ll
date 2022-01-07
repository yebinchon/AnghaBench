; ModuleID = '/home/carl/AnghaBench/linux/drivers/ide/extr_ide-atapi.c_ide_retry_pc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ide/extr_ide-atapi.c_ide_retry_pc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, %struct.TYPE_9__*, i32, %struct.ide_atapi_pc, %struct.request* }
%struct.TYPE_9__ = type { %struct.request* }
%struct.ide_atapi_pc = type { i32 }
%struct.request = type { i32 }
%struct.TYPE_11__ = type { i32 }

@ide_tape = common dso_local global i64 0, align 8
@IDE_AFLAG_IGNORE_DSC = common dso_local global i32 0, align 4
@BLK_STS_IOERR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ide_retry_pc(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca %struct.request*, align 8
  %4 = alloca %struct.request*, align 8
  %5 = alloca %struct.ide_atapi_pc*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %2, align 8
  %6 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 1
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  %10 = load %struct.request*, %struct.request** %9, align 8
  store %struct.request* %10, %struct.request** %3, align 8
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 4
  %13 = load %struct.request*, %struct.request** %12, align 8
  store %struct.request* %13, %struct.request** %4, align 8
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 3
  store %struct.ide_atapi_pc* %15, %struct.ide_atapi_pc** %5, align 8
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %17 = call i32 @ide_read_error(%struct.TYPE_10__* %16)
  %18 = load %struct.ide_atapi_pc*, %struct.ide_atapi_pc** %5, align 8
  %19 = call i32 @ide_init_pc(%struct.ide_atapi_pc* %18)
  %20 = load %struct.ide_atapi_pc*, %struct.ide_atapi_pc** %5, align 8
  %21 = getelementptr inbounds %struct.ide_atapi_pc, %struct.ide_atapi_pc* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.request*, %struct.request** %4, align 8
  %24 = call %struct.TYPE_11__* @scsi_req(%struct.request* %23)
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @memcpy(i32 %22, i32 %26, i32 12)
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @ide_tape, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %39

33:                                               ; preds = %1
  %34 = load i32, i32* @IDE_AFLAG_IGNORE_DSC, align 4
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = or i32 %37, %34
  store i32 %38, i32* %36, align 8
  br label %39

39:                                               ; preds = %33, %1
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 1
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 0
  store %struct.request* null, %struct.request** %43, align 8
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %45 = load %struct.request*, %struct.request** %3, align 8
  %46 = call i32 @ide_requeue_and_plug(%struct.TYPE_10__* %44, %struct.request* %45)
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %48 = load %struct.ide_atapi_pc*, %struct.ide_atapi_pc** %5, align 8
  %49 = call i64 @ide_queue_sense_rq(%struct.TYPE_10__* %47, %struct.ide_atapi_pc* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %39
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %53 = load i32, i32* @BLK_STS_IOERR, align 4
  %54 = load %struct.request*, %struct.request** %3, align 8
  %55 = call i32 @blk_rq_bytes(%struct.request* %54)
  %56 = call i32 @ide_complete_rq(%struct.TYPE_10__* %52, i32 %53, i32 %55)
  br label %57

57:                                               ; preds = %51, %39
  ret void
}

declare dso_local i32 @ide_read_error(%struct.TYPE_10__*) #1

declare dso_local i32 @ide_init_pc(%struct.ide_atapi_pc*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local %struct.TYPE_11__* @scsi_req(%struct.request*) #1

declare dso_local i32 @ide_requeue_and_plug(%struct.TYPE_10__*, %struct.request*) #1

declare dso_local i64 @ide_queue_sense_rq(%struct.TYPE_10__*, %struct.ide_atapi_pc*) #1

declare dso_local i32 @ide_complete_rq(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @blk_rq_bytes(%struct.request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
