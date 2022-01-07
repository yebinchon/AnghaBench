; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-log.c_disk_dtr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-log.c_disk_dtr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_dirty_log = type { i64 }
%struct.log_c = type { %struct.TYPE_2__, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dm_dirty_log*)* @disk_dtr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @disk_dtr(%struct.dm_dirty_log* %0) #0 {
  %2 = alloca %struct.dm_dirty_log*, align 8
  %3 = alloca %struct.log_c*, align 8
  store %struct.dm_dirty_log* %0, %struct.dm_dirty_log** %2, align 8
  %4 = load %struct.dm_dirty_log*, %struct.dm_dirty_log** %2, align 8
  %5 = getelementptr inbounds %struct.dm_dirty_log, %struct.dm_dirty_log* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = inttoptr i64 %6 to %struct.log_c*
  store %struct.log_c* %7, %struct.log_c** %3, align 8
  %8 = load %struct.log_c*, %struct.log_c** %3, align 8
  %9 = getelementptr inbounds %struct.log_c, %struct.log_c* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.log_c*, %struct.log_c** %3, align 8
  %12 = getelementptr inbounds %struct.log_c, %struct.log_c* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @dm_put_device(i32 %10, i32 %13)
  %15 = load %struct.log_c*, %struct.log_c** %3, align 8
  %16 = getelementptr inbounds %struct.log_c, %struct.log_c* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @vfree(i32 %17)
  %19 = load %struct.log_c*, %struct.log_c** %3, align 8
  %20 = getelementptr inbounds %struct.log_c, %struct.log_c* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @dm_io_client_destroy(i32 %22)
  %24 = load %struct.log_c*, %struct.log_c** %3, align 8
  %25 = call i32 @destroy_log_context(%struct.log_c* %24)
  ret void
}

declare dso_local i32 @dm_put_device(i32, i32) #1

declare dso_local i32 @vfree(i32) #1

declare dso_local i32 @dm_io_client_destroy(i32) #1

declare dso_local i32 @destroy_log_context(%struct.log_c*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
