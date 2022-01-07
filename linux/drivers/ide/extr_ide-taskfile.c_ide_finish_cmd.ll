; ModuleID = '/home/carl/AnghaBench/linux/drivers/ide/extr_ide-taskfile.c_ide_finish_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ide/extr_ide-taskfile.c_ide_finish_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.request* }
%struct.request = type { i32 }
%struct.ide_cmd = type { i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_14__ = type { i64 }

@IDE_TFLAG_SET_XFER = common dso_local global i32 0, align 4
@BLK_STS_IOERR = common dso_local global i32 0, align 4
@BLK_STS_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ide_finish_cmd(%struct.TYPE_13__* %0, %struct.ide_cmd* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.ide_cmd*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.request*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store %struct.ide_cmd* %1, %struct.ide_cmd** %5, align 8
  store i64 %2, i64* %6, align 8
  %11 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 0
  %15 = load %struct.request*, %struct.request** %14, align 8
  store %struct.request* %15, %struct.request** %7, align 8
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %17 = call i64 @ide_read_error(%struct.TYPE_13__* %16)
  store i64 %17, i64* %8, align 8
  %18 = load %struct.ide_cmd*, %struct.ide_cmd** %5, align 8
  %19 = getelementptr inbounds %struct.ide_cmd, %struct.ide_cmd* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %9, align 8
  %22 = load %struct.ide_cmd*, %struct.ide_cmd** %5, align 8
  %23 = getelementptr inbounds %struct.ide_cmd, %struct.ide_cmd* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @IDE_TFLAG_SET_XFER, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  %31 = sext i32 %30 to i64
  store i64 %31, i64* %10, align 8
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %33 = load %struct.ide_cmd*, %struct.ide_cmd** %5, align 8
  %34 = load i64, i64* %6, align 8
  %35 = load i64, i64* %8, align 8
  %36 = call i32 @ide_complete_cmd(%struct.TYPE_13__* %32, %struct.ide_cmd* %33, i64 %34, i64 %35)
  %37 = load i64, i64* %8, align 8
  %38 = load %struct.request*, %struct.request** %7, align 8
  %39 = call %struct.TYPE_14__* @scsi_req(%struct.request* %38)
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 0
  store i64 %37, i64* %40, align 8
  %41 = load i64, i64* %8, align 8
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %3
  %44 = load i64, i64* %10, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %43
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %48 = load i64, i64* %9, align 8
  %49 = call i32 @ide_set_xfer_rate(%struct.TYPE_13__* %47, i64 %48)
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %51 = call i32 @ide_driveid_update(%struct.TYPE_13__* %50)
  br label %52

52:                                               ; preds = %46, %43, %3
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %54 = load i64, i64* %8, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %52
  %57 = load i32, i32* @BLK_STS_IOERR, align 4
  br label %60

58:                                               ; preds = %52
  %59 = load i32, i32* @BLK_STS_OK, align 4
  br label %60

60:                                               ; preds = %58, %56
  %61 = phi i32 [ %57, %56 ], [ %59, %58 ]
  %62 = load %struct.request*, %struct.request** %7, align 8
  %63 = call i32 @blk_rq_bytes(%struct.request* %62)
  %64 = call i32 @ide_complete_rq(%struct.TYPE_13__* %53, i32 %61, i32 %63)
  ret void
}

declare dso_local i64 @ide_read_error(%struct.TYPE_13__*) #1

declare dso_local i32 @ide_complete_cmd(%struct.TYPE_13__*, %struct.ide_cmd*, i64, i64) #1

declare dso_local %struct.TYPE_14__* @scsi_req(%struct.request*) #1

declare dso_local i32 @ide_set_xfer_rate(%struct.TYPE_13__*, i64) #1

declare dso_local i32 @ide_driveid_update(%struct.TYPE_13__*) #1

declare dso_local i32 @ide_complete_rq(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @blk_rq_bytes(%struct.request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
