; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-ioctl.c_dev_wait.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-ioctl.c_dev_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.dm_ioctl = type { i32 }
%struct.mapped_device = type { i32 }
%struct.dm_table = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.dm_ioctl*, i64)* @dev_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dev_wait(%struct.file* %0, %struct.dm_ioctl* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.dm_ioctl*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.mapped_device*, align 8
  %10 = alloca %struct.dm_table*, align 8
  %11 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store %struct.dm_ioctl* %1, %struct.dm_ioctl** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 0, i32* %8, align 4
  %12 = load %struct.dm_ioctl*, %struct.dm_ioctl** %6, align 8
  %13 = call %struct.mapped_device* @find_device(%struct.dm_ioctl* %12)
  store %struct.mapped_device* %13, %struct.mapped_device** %9, align 8
  %14 = load %struct.mapped_device*, %struct.mapped_device** %9, align 8
  %15 = icmp ne %struct.mapped_device* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* @ENXIO, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %51

19:                                               ; preds = %3
  %20 = load %struct.mapped_device*, %struct.mapped_device** %9, align 8
  %21 = load %struct.dm_ioctl*, %struct.dm_ioctl** %6, align 8
  %22 = getelementptr inbounds %struct.dm_ioctl, %struct.dm_ioctl* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @dm_wait_event(%struct.mapped_device* %20, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %19
  %27 = load i32, i32* @ERESTARTSYS, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %8, align 4
  br label %47

29:                                               ; preds = %19
  %30 = load %struct.mapped_device*, %struct.mapped_device** %9, align 8
  %31 = load %struct.dm_ioctl*, %struct.dm_ioctl** %6, align 8
  %32 = call i32 @__dev_status(%struct.mapped_device* %30, %struct.dm_ioctl* %31)
  %33 = load %struct.mapped_device*, %struct.mapped_device** %9, align 8
  %34 = load %struct.dm_ioctl*, %struct.dm_ioctl** %6, align 8
  %35 = call %struct.dm_table* @dm_get_live_or_inactive_table(%struct.mapped_device* %33, %struct.dm_ioctl* %34, i32* %11)
  store %struct.dm_table* %35, %struct.dm_table** %10, align 8
  %36 = load %struct.dm_table*, %struct.dm_table** %10, align 8
  %37 = icmp ne %struct.dm_table* %36, null
  br i1 %37, label %38, label %43

38:                                               ; preds = %29
  %39 = load %struct.dm_table*, %struct.dm_table** %10, align 8
  %40 = load %struct.dm_ioctl*, %struct.dm_ioctl** %6, align 8
  %41 = load i64, i64* %7, align 8
  %42 = call i32 @retrieve_status(%struct.dm_table* %39, %struct.dm_ioctl* %40, i64 %41)
  br label %43

43:                                               ; preds = %38, %29
  %44 = load %struct.mapped_device*, %struct.mapped_device** %9, align 8
  %45 = load i32, i32* %11, align 4
  %46 = call i32 @dm_put_live_table(%struct.mapped_device* %44, i32 %45)
  br label %47

47:                                               ; preds = %43, %26
  %48 = load %struct.mapped_device*, %struct.mapped_device** %9, align 8
  %49 = call i32 @dm_put(%struct.mapped_device* %48)
  %50 = load i32, i32* %8, align 4
  store i32 %50, i32* %4, align 4
  br label %51

51:                                               ; preds = %47, %16
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare dso_local %struct.mapped_device* @find_device(%struct.dm_ioctl*) #1

declare dso_local i64 @dm_wait_event(%struct.mapped_device*, i32) #1

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
