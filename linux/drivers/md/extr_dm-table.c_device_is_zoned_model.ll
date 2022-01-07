; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-table.c_device_is_zoned_model.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-table.c_device_is_zoned_model.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_target = type { i32 }
%struct.dm_dev = type { i32 }
%struct.request_queue = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_target*, %struct.dm_dev*, i32, i32, i8*)* @device_is_zoned_model to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @device_is_zoned_model(%struct.dm_target* %0, %struct.dm_dev* %1, i32 %2, i32 %3, i8* %4) #0 {
  %6 = alloca %struct.dm_target*, align 8
  %7 = alloca %struct.dm_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.request_queue*, align 8
  %12 = alloca i32*, align 8
  store %struct.dm_target* %0, %struct.dm_target** %6, align 8
  store %struct.dm_dev* %1, %struct.dm_dev** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i8* %4, i8** %10, align 8
  %13 = load %struct.dm_dev*, %struct.dm_dev** %7, align 8
  %14 = getelementptr inbounds %struct.dm_dev, %struct.dm_dev* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.request_queue* @bdev_get_queue(i32 %15)
  store %struct.request_queue* %16, %struct.request_queue** %11, align 8
  %17 = load i8*, i8** %10, align 8
  %18 = bitcast i8* %17 to i32*
  store i32* %18, i32** %12, align 8
  %19 = load %struct.request_queue*, %struct.request_queue** %11, align 8
  %20 = icmp ne %struct.request_queue* %19, null
  br i1 %20, label %21, label %27

21:                                               ; preds = %5
  %22 = load %struct.request_queue*, %struct.request_queue** %11, align 8
  %23 = call i32 @blk_queue_zoned_model(%struct.request_queue* %22)
  %24 = load i32*, i32** %12, align 8
  %25 = load i32, i32* %24, align 4
  %26 = icmp eq i32 %23, %25
  br label %27

27:                                               ; preds = %21, %5
  %28 = phi i1 [ false, %5 ], [ %26, %21 ]
  %29 = zext i1 %28 to i32
  ret i32 %29
}

declare dso_local %struct.request_queue* @bdev_get_queue(i32) #1

declare dso_local i32 @blk_queue_zoned_model(%struct.request_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
