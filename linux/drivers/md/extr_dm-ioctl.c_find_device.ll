; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-ioctl.c_find_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-ioctl.c_find_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mapped_device = type { i32 }
%struct.dm_ioctl = type { i32 }
%struct.hash_cell = type { %struct.mapped_device* }

@_hash_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mapped_device* (%struct.dm_ioctl*)* @find_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mapped_device* @find_device(%struct.dm_ioctl* %0) #0 {
  %2 = alloca %struct.dm_ioctl*, align 8
  %3 = alloca %struct.hash_cell*, align 8
  %4 = alloca %struct.mapped_device*, align 8
  store %struct.dm_ioctl* %0, %struct.dm_ioctl** %2, align 8
  store %struct.mapped_device* null, %struct.mapped_device** %4, align 8
  %5 = call i32 @down_read(i32* @_hash_lock)
  %6 = load %struct.dm_ioctl*, %struct.dm_ioctl** %2, align 8
  %7 = call %struct.hash_cell* @__find_device_hash_cell(%struct.dm_ioctl* %6)
  store %struct.hash_cell* %7, %struct.hash_cell** %3, align 8
  %8 = load %struct.hash_cell*, %struct.hash_cell** %3, align 8
  %9 = icmp ne %struct.hash_cell* %8, null
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = load %struct.hash_cell*, %struct.hash_cell** %3, align 8
  %12 = getelementptr inbounds %struct.hash_cell, %struct.hash_cell* %11, i32 0, i32 0
  %13 = load %struct.mapped_device*, %struct.mapped_device** %12, align 8
  store %struct.mapped_device* %13, %struct.mapped_device** %4, align 8
  br label %14

14:                                               ; preds = %10, %1
  %15 = call i32 @up_read(i32* @_hash_lock)
  %16 = load %struct.mapped_device*, %struct.mapped_device** %4, align 8
  ret %struct.mapped_device* %16
}

declare dso_local i32 @down_read(i32*) #1

declare dso_local %struct.hash_cell* @__find_device_hash_cell(%struct.dm_ioctl*) #1

declare dso_local i32 @up_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
