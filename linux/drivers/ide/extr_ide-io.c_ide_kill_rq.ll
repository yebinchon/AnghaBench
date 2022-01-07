; ModuleID = '/home/carl/AnghaBench/linux/drivers/ide/extr_ide-io.c_ide_kill_rq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ide/extr_ide-io.c_ide_kill_rq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32* }
%struct.request = type { i64 }
%struct.TYPE_6__ = type { i32 }

@ide_floppy = common dso_local global i64 0, align 8
@ide_tape = common dso_local global i64 0, align 8
@IDE_DRV_ERROR_GENERAL = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@BLK_STS_IOERR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ide_kill_rq(%struct.TYPE_5__* %0, %struct.request* %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca %struct.request*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store %struct.request* %1, %struct.request** %4, align 8
  %7 = load %struct.request*, %struct.request** %4, align 8
  %8 = call i64 @ata_misc_request(%struct.request* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %2
  %11 = load %struct.request*, %struct.request** %4, align 8
  %12 = getelementptr inbounds %struct.request, %struct.request* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br label %15

15:                                               ; preds = %10, %2
  %16 = phi i1 [ false, %2 ], [ %14, %10 ]
  %17 = zext i1 %16 to i32
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %5, align 8
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %6, align 8
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 1
  store i32* null, i32** %23, align 8
  %24 = load i64, i64* %6, align 8
  %25 = load i64, i64* @ide_floppy, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %31, label %27

27:                                               ; preds = %15
  %28 = load i64, i64* %6, align 8
  %29 = load i64, i64* @ide_tape, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %38

31:                                               ; preds = %27, %15
  %32 = load i64, i64* %5, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %31
  %35 = load %struct.request*, %struct.request** %4, align 8
  %36 = call %struct.TYPE_6__* @scsi_req(%struct.request* %35)
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  store i32 0, i32* %37, align 4
  br label %65

38:                                               ; preds = %31, %27
  %39 = load i64, i64* %6, align 8
  %40 = load i64, i64* @ide_tape, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %47

42:                                               ; preds = %38
  %43 = load i32, i32* @IDE_DRV_ERROR_GENERAL, align 4
  %44 = load %struct.request*, %struct.request** %4, align 8
  %45 = call %struct.TYPE_6__* @scsi_req(%struct.request* %44)
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  store i32 %43, i32* %46, align 4
  br label %64

47:                                               ; preds = %38
  %48 = load %struct.request*, %struct.request** %4, align 8
  %49 = call i64 @blk_rq_is_passthrough(%struct.request* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %63

51:                                               ; preds = %47
  %52 = load %struct.request*, %struct.request** %4, align 8
  %53 = call %struct.TYPE_6__* @scsi_req(%struct.request* %52)
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %51
  %58 = load i32, i32* @EIO, align 4
  %59 = sub nsw i32 0, %58
  %60 = load %struct.request*, %struct.request** %4, align 8
  %61 = call %struct.TYPE_6__* @scsi_req(%struct.request* %60)
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  store i32 %59, i32* %62, align 4
  br label %63

63:                                               ; preds = %57, %51, %47
  br label %64

64:                                               ; preds = %63, %42
  br label %65

65:                                               ; preds = %64, %34
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %67 = load i32, i32* @BLK_STS_IOERR, align 4
  %68 = load %struct.request*, %struct.request** %4, align 8
  %69 = call i32 @blk_rq_bytes(%struct.request* %68)
  %70 = call i32 @ide_complete_rq(%struct.TYPE_5__* %66, i32 %67, i32 %69)
  ret void
}

declare dso_local i64 @ata_misc_request(%struct.request*) #1

declare dso_local %struct.TYPE_6__* @scsi_req(%struct.request*) #1

declare dso_local i64 @blk_rq_is_passthrough(%struct.request*) #1

declare dso_local i32 @ide_complete_rq(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @blk_rq_bytes(%struct.request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
