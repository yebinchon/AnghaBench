; ModuleID = '/home/carl/AnghaBench/linux/drivers/ide/extr_ide-io.c_execute_drive_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ide/extr_ide-io.c_execute_drive_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.request = type { i32 }
%struct.ide_cmd = type { i64 }
%struct.TYPE_10__ = type { %struct.ide_cmd* }
%struct.TYPE_9__ = type { i64 }

@ATA_PROT_PIO = common dso_local global i64 0, align 8
@BLK_STS_OK = common dso_local global i32 0, align 4
@ide_stopped = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, %struct.request*)* @execute_drive_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @execute_drive_cmd(%struct.TYPE_8__* %0, %struct.request* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.request*, align 8
  %6 = alloca %struct.ide_cmd*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store %struct.request* %1, %struct.request** %5, align 8
  %7 = load %struct.request*, %struct.request** %5, align 8
  %8 = call %struct.TYPE_10__* @ide_req(%struct.request* %7)
  %9 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 0
  %10 = load %struct.ide_cmd*, %struct.ide_cmd** %9, align 8
  store %struct.ide_cmd* %10, %struct.ide_cmd** %6, align 8
  %11 = load %struct.ide_cmd*, %struct.ide_cmd** %6, align 8
  %12 = icmp ne %struct.ide_cmd* %11, null
  br i1 %12, label %13, label %32

13:                                               ; preds = %2
  %14 = load %struct.ide_cmd*, %struct.ide_cmd** %6, align 8
  %15 = getelementptr inbounds %struct.ide_cmd, %struct.ide_cmd* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @ATA_PROT_PIO, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %28

19:                                               ; preds = %13
  %20 = load %struct.ide_cmd*, %struct.ide_cmd** %6, align 8
  %21 = load %struct.request*, %struct.request** %5, align 8
  %22 = call i32 @blk_rq_sectors(%struct.request* %21)
  %23 = shl i32 %22, 9
  %24 = call i32 @ide_init_sg_cmd(%struct.ide_cmd* %20, i32 %23)
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %26 = load %struct.ide_cmd*, %struct.ide_cmd** %6, align 8
  %27 = call i32 @ide_map_sg(%struct.TYPE_8__* %25, %struct.ide_cmd* %26)
  br label %28

28:                                               ; preds = %19, %13
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %30 = load %struct.ide_cmd*, %struct.ide_cmd** %6, align 8
  %31 = call i32 @do_rw_taskfile(%struct.TYPE_8__* %29, %struct.ide_cmd* %30)
  store i32 %31, i32* %3, align 4
  br label %42

32:                                               ; preds = %2
  %33 = load %struct.request*, %struct.request** %5, align 8
  %34 = call %struct.TYPE_9__* @scsi_req(%struct.request* %33)
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  store i64 0, i64* %35, align 8
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %37 = load i32, i32* @BLK_STS_OK, align 4
  %38 = load %struct.request*, %struct.request** %5, align 8
  %39 = call i32 @blk_rq_bytes(%struct.request* %38)
  %40 = call i32 @ide_complete_rq(%struct.TYPE_8__* %36, i32 %37, i32 %39)
  %41 = load i32, i32* @ide_stopped, align 4
  store i32 %41, i32* %3, align 4
  br label %42

42:                                               ; preds = %32, %28
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local %struct.TYPE_10__* @ide_req(%struct.request*) #1

declare dso_local i32 @ide_init_sg_cmd(%struct.ide_cmd*, i32) #1

declare dso_local i32 @blk_rq_sectors(%struct.request*) #1

declare dso_local i32 @ide_map_sg(%struct.TYPE_8__*, %struct.ide_cmd*) #1

declare dso_local i32 @do_rw_taskfile(%struct.TYPE_8__*, %struct.ide_cmd*) #1

declare dso_local %struct.TYPE_9__* @scsi_req(%struct.request*) #1

declare dso_local i32 @ide_complete_rq(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @blk_rq_bytes(%struct.request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
