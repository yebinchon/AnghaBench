; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-mpath.c_activate_or_offline_path.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-mpath.c_activate_or_offline_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pgpath = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.request_queue = type { i32 }

@SCSI_DH_DEV_OFFLINED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pgpath*)* @activate_or_offline_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @activate_or_offline_path(%struct.pgpath* %0) #0 {
  %2 = alloca %struct.pgpath*, align 8
  %3 = alloca %struct.request_queue*, align 8
  store %struct.pgpath* %0, %struct.pgpath** %2, align 8
  %4 = load %struct.pgpath*, %struct.pgpath** %2, align 8
  %5 = getelementptr inbounds %struct.pgpath, %struct.pgpath* %4, i32 0, i32 1
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.request_queue* @bdev_get_queue(i32 %9)
  store %struct.request_queue* %10, %struct.request_queue** %3, align 8
  %11 = load %struct.pgpath*, %struct.pgpath** %2, align 8
  %12 = getelementptr inbounds %struct.pgpath, %struct.pgpath* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %1
  %16 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %17 = call i32 @blk_queue_dying(%struct.request_queue* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %15
  %20 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %21 = load %struct.pgpath*, %struct.pgpath** %2, align 8
  %22 = call i32 @scsi_dh_activate(%struct.request_queue* %20, i32 (%struct.pgpath*, i32)* @pg_init_done, %struct.pgpath* %21)
  br label %27

23:                                               ; preds = %15, %1
  %24 = load %struct.pgpath*, %struct.pgpath** %2, align 8
  %25 = load i32, i32* @SCSI_DH_DEV_OFFLINED, align 4
  %26 = call i32 @pg_init_done(%struct.pgpath* %24, i32 %25)
  br label %27

27:                                               ; preds = %23, %19
  ret void
}

declare dso_local %struct.request_queue* @bdev_get_queue(i32) #1

declare dso_local i32 @blk_queue_dying(%struct.request_queue*) #1

declare dso_local i32 @scsi_dh_activate(%struct.request_queue*, i32 (%struct.pgpath*, i32)*, %struct.pgpath*) #1

declare dso_local i32 @pg_init_done(%struct.pgpath*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
