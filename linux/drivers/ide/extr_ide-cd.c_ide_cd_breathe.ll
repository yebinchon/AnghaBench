; ModuleID = '/home/carl/AnghaBench/linux/drivers/ide/extr_ide-cd.c_ide_cd_breathe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ide/extr_ide-cd.c_ide_cd_breathe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.cdrom_info* }
%struct.cdrom_info = type { i64 }
%struct.request = type { i32 }
%struct.TYPE_5__ = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@ATAPI_WAIT_WRITE_BUSY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, %struct.request*)* @ide_cd_breathe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ide_cd_breathe(%struct.TYPE_4__* %0, %struct.request* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca %struct.request*, align 8
  %6 = alloca %struct.cdrom_info*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store %struct.request* %1, %struct.request** %5, align 8
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  %9 = load %struct.cdrom_info*, %struct.cdrom_info** %8, align 8
  store %struct.cdrom_info* %9, %struct.cdrom_info** %6, align 8
  %10 = load %struct.request*, %struct.request** %5, align 8
  %11 = call %struct.TYPE_5__* @scsi_req(%struct.request* %10)
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %2
  %16 = load i64, i64* @jiffies, align 8
  %17 = load i64, i64* @ATAPI_WAIT_WRITE_BUSY, align 8
  %18 = add nsw i64 %16, %17
  %19 = load %struct.cdrom_info*, %struct.cdrom_info** %6, align 8
  %20 = getelementptr inbounds %struct.cdrom_info, %struct.cdrom_info* %19, i32 0, i32 0
  store i64 %18, i64* %20, align 8
  br label %21

21:                                               ; preds = %15, %2
  %22 = load %struct.request*, %struct.request** %5, align 8
  %23 = call %struct.TYPE_5__* @scsi_req(%struct.request* %22)
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  store i32 1, i32* %24, align 4
  %25 = load i64, i64* @jiffies, align 8
  %26 = load %struct.cdrom_info*, %struct.cdrom_info** %6, align 8
  %27 = getelementptr inbounds %struct.cdrom_info, %struct.cdrom_info* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = call i64 @time_after(i64 %25, i64 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %21
  store i32 0, i32* %3, align 4
  br label %39

32:                                               ; preds = %21
  %33 = load %struct.request*, %struct.request** %5, align 8
  %34 = call i32 @blk_mq_requeue_request(%struct.request* %33, i32 0)
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @blk_mq_delay_kick_requeue_list(i32 %37, i32 1)
  store i32 1, i32* %3, align 4
  br label %39

39:                                               ; preds = %32, %31
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local %struct.TYPE_5__* @scsi_req(%struct.request*) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @blk_mq_requeue_request(%struct.request*, i32) #1

declare dso_local i32 @blk_mq_delay_kick_requeue_list(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
