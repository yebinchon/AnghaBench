; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-ioctl.c_table_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-ioctl.c_table_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.dm_ioctl = type { i32 }
%struct.mapped_device = type { i32 }
%struct.dm_table = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.dm_ioctl*, i64)* @table_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @table_status(%struct.file* %0, %struct.dm_ioctl* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.dm_ioctl*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.mapped_device*, align 8
  %9 = alloca %struct.dm_table*, align 8
  %10 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store %struct.dm_ioctl* %1, %struct.dm_ioctl** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load %struct.dm_ioctl*, %struct.dm_ioctl** %6, align 8
  %12 = call %struct.mapped_device* @find_device(%struct.dm_ioctl* %11)
  store %struct.mapped_device* %12, %struct.mapped_device** %8, align 8
  %13 = load %struct.mapped_device*, %struct.mapped_device** %8, align 8
  %14 = icmp ne %struct.mapped_device* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @ENXIO, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %38

18:                                               ; preds = %3
  %19 = load %struct.mapped_device*, %struct.mapped_device** %8, align 8
  %20 = load %struct.dm_ioctl*, %struct.dm_ioctl** %6, align 8
  %21 = call i32 @__dev_status(%struct.mapped_device* %19, %struct.dm_ioctl* %20)
  %22 = load %struct.mapped_device*, %struct.mapped_device** %8, align 8
  %23 = load %struct.dm_ioctl*, %struct.dm_ioctl** %6, align 8
  %24 = call %struct.dm_table* @dm_get_live_or_inactive_table(%struct.mapped_device* %22, %struct.dm_ioctl* %23, i32* %10)
  store %struct.dm_table* %24, %struct.dm_table** %9, align 8
  %25 = load %struct.dm_table*, %struct.dm_table** %9, align 8
  %26 = icmp ne %struct.dm_table* %25, null
  br i1 %26, label %27, label %32

27:                                               ; preds = %18
  %28 = load %struct.dm_table*, %struct.dm_table** %9, align 8
  %29 = load %struct.dm_ioctl*, %struct.dm_ioctl** %6, align 8
  %30 = load i64, i64* %7, align 8
  %31 = call i32 @retrieve_status(%struct.dm_table* %28, %struct.dm_ioctl* %29, i64 %30)
  br label %32

32:                                               ; preds = %27, %18
  %33 = load %struct.mapped_device*, %struct.mapped_device** %8, align 8
  %34 = load i32, i32* %10, align 4
  %35 = call i32 @dm_put_live_table(%struct.mapped_device* %33, i32 %34)
  %36 = load %struct.mapped_device*, %struct.mapped_device** %8, align 8
  %37 = call i32 @dm_put(%struct.mapped_device* %36)
  store i32 0, i32* %4, align 4
  br label %38

38:                                               ; preds = %32, %15
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

declare dso_local %struct.mapped_device* @find_device(%struct.dm_ioctl*) #1

declare dso_local i32 @__dev_status(%struct.mapped_device*, %struct.dm_ioctl*) #1

declare dso_local %struct.dm_table* @dm_get_live_or_inactive_table(%struct.mapped_device*, %struct.dm_ioctl*, i32*) #1

declare dso_local i32 @retrieve_status(%struct.dm_table*, %struct.dm_ioctl*, i64) #1

declare dso_local i32 @dm_put_live_table(%struct.mapped_device*, i32) #1

declare dso_local i32 @dm_put(%struct.mapped_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
