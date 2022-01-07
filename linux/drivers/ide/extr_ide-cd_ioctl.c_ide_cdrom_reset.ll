; ModuleID = '/home/carl/AnghaBench/linux/drivers/ide/extr_ide-cd_ioctl.c_ide_cdrom_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ide/extr_ide-cd_ioctl.c_ide_cdrom_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdrom_device_info = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32, %struct.cdrom_info* }
%struct.cdrom_info = type { i32 }
%struct.request = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i64 }

@REQ_OP_DRV_IN = common dso_local global i32 0, align 4
@ATA_PRIV_MISC = common dso_local global i32 0, align 4
@RQF_QUIET = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@IDE_AFLAG_DOOR_LOCKED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ide_cdrom_reset(%struct.cdrom_device_info* %0) #0 {
  %2 = alloca %struct.cdrom_device_info*, align 8
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca %struct.cdrom_info*, align 8
  %5 = alloca %struct.request*, align 8
  %6 = alloca i32, align 4
  store %struct.cdrom_device_info* %0, %struct.cdrom_device_info** %2, align 8
  %7 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %2, align 8
  %8 = getelementptr inbounds %struct.cdrom_device_info, %struct.cdrom_device_info* %7, i32 0, i32 0
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  store %struct.TYPE_5__* %9, %struct.TYPE_5__** %3, align 8
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 2
  %12 = load %struct.cdrom_info*, %struct.cdrom_info** %11, align 8
  store %struct.cdrom_info* %12, %struct.cdrom_info** %4, align 8
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @REQ_OP_DRV_IN, align 4
  %17 = call %struct.request* @blk_get_request(i32 %15, i32 %16, i32 0)
  store %struct.request* %17, %struct.request** %5, align 8
  %18 = load i32, i32* @ATA_PRIV_MISC, align 4
  %19 = load %struct.request*, %struct.request** %5, align 8
  %20 = call %struct.TYPE_7__* @ide_req(%struct.request* %19)
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  store i32 %18, i32* %21, align 4
  %22 = load i32, i32* @RQF_QUIET, align 4
  %23 = load %struct.request*, %struct.request** %5, align 8
  %24 = getelementptr inbounds %struct.request, %struct.request* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.cdrom_info*, %struct.cdrom_info** %4, align 8
  %29 = getelementptr inbounds %struct.cdrom_info, %struct.cdrom_info* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.request*, %struct.request** %5, align 8
  %32 = call i32 @blk_execute_rq(i32 %27, i32 %30, %struct.request* %31, i32 0)
  %33 = load %struct.request*, %struct.request** %5, align 8
  %34 = call %struct.TYPE_6__* @scsi_req(%struct.request* %33)
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %1
  %39 = load i32, i32* @EIO, align 4
  %40 = sub nsw i32 0, %39
  br label %42

41:                                               ; preds = %1
  br label %42

42:                                               ; preds = %41, %38
  %43 = phi i32 [ %40, %38 ], [ 0, %41 ]
  store i32 %43, i32* %6, align 4
  %44 = load %struct.request*, %struct.request** %5, align 8
  %45 = call i32 @blk_put_request(%struct.request* %44)
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @IDE_AFLAG_DOOR_LOCKED, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %42
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %54 = call i32 @ide_cd_lockdoor(%struct.TYPE_5__* %53, i32 1)
  br label %55

55:                                               ; preds = %52, %42
  %56 = load i32, i32* %6, align 4
  ret i32 %56
}

declare dso_local %struct.request* @blk_get_request(i32, i32, i32) #1

declare dso_local %struct.TYPE_7__* @ide_req(%struct.request*) #1

declare dso_local i32 @blk_execute_rq(i32, i32, %struct.request*, i32) #1

declare dso_local %struct.TYPE_6__* @scsi_req(%struct.request*) #1

declare dso_local i32 @blk_put_request(%struct.request*) #1

declare dso_local i32 @ide_cd_lockdoor(%struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
