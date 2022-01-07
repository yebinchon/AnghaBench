; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-raid.c_configure_discard_support.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-raid.c_configure_discard_support.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.raid_set = type { i32, %struct.TYPE_3__*, %struct.dm_target* }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.dm_target = type { i32 }
%struct.request_queue = type { i32 }

@devices_handle_discard_safely = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [73 x i8] c"raid456 discard support disabled due to discard_zeroes_data uncertainty.\00", align 1
@.str.1 = private unnamed_addr constant [57 x i8] c"Set dm-raid.devices_handle_discard_safely=Y to override.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.raid_set*)* @configure_discard_support to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @configure_discard_support(%struct.raid_set* %0) #0 {
  %2 = alloca %struct.raid_set*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.dm_target*, align 8
  %6 = alloca %struct.request_queue*, align 8
  store %struct.raid_set* %0, %struct.raid_set** %2, align 8
  %7 = load %struct.raid_set*, %struct.raid_set** %2, align 8
  %8 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %7, i32 0, i32 2
  %9 = load %struct.dm_target*, %struct.dm_target** %8, align 8
  store %struct.dm_target* %9, %struct.dm_target** %5, align 8
  %10 = load %struct.raid_set*, %struct.raid_set** %2, align 8
  %11 = call i32 @rs_is_raid456(%struct.raid_set* %10)
  store i32 %11, i32* %4, align 4
  store i32 0, i32* %3, align 4
  br label %12

12:                                               ; preds = %59, %1
  %13 = load i32, i32* %3, align 4
  %14 = load %struct.raid_set*, %struct.raid_set** %2, align 8
  %15 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %62

18:                                               ; preds = %12
  %19 = load %struct.raid_set*, %struct.raid_set** %2, align 8
  %20 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %19, i32 0, i32 1
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = load i32, i32* %3, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %18
  br label %59

30:                                               ; preds = %18
  %31 = load %struct.raid_set*, %struct.raid_set** %2, align 8
  %32 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %31, i32 0, i32 1
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = load i32, i32* %3, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call %struct.request_queue* @bdev_get_queue(i32 %39)
  store %struct.request_queue* %40, %struct.request_queue** %6, align 8
  %41 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %42 = icmp ne %struct.request_queue* %41, null
  br i1 %42, label %43, label %47

43:                                               ; preds = %30
  %44 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %45 = call i32 @blk_queue_discard(%struct.request_queue* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %43, %30
  br label %65

48:                                               ; preds = %43
  %49 = load i32, i32* %4, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %48
  %52 = load i32, i32* @devices_handle_discard_safely, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %51
  %55 = call i32 @DMERR(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str, i64 0, i64 0))
  %56 = call i32 @DMERR(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0))
  br label %65

57:                                               ; preds = %51
  br label %58

58:                                               ; preds = %57, %48
  br label %59

59:                                               ; preds = %58, %29
  %60 = load i32, i32* %3, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %3, align 4
  br label %12

62:                                               ; preds = %12
  %63 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %64 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %63, i32 0, i32 0
  store i32 1, i32* %64, align 4
  br label %65

65:                                               ; preds = %62, %54, %47
  ret void
}

declare dso_local i32 @rs_is_raid456(%struct.raid_set*) #1

declare dso_local %struct.request_queue* @bdev_get_queue(i32) #1

declare dso_local i32 @blk_queue_discard(%struct.request_queue*) #1

declare dso_local i32 @DMERR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
