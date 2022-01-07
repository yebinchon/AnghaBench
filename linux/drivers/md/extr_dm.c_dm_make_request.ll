; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm.c_dm_make_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm.c_dm_make_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_queue = type { %struct.mapped_device* }
%struct.mapped_device = type { i32 }
%struct.bio = type { i32 }
%struct.dm_table = type { i32 }

@BLK_QC_T_NONE = common dso_local global i32 0, align 4
@DMF_BLOCK_IO_FOR_SUSPEND = common dso_local global i32 0, align 4
@REQ_RAHEAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.request_queue*, %struct.bio*)* @dm_make_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dm_make_request(%struct.request_queue* %0, %struct.bio* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.request_queue*, align 8
  %5 = alloca %struct.bio*, align 8
  %6 = alloca %struct.mapped_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.dm_table*, align 8
  store %struct.request_queue* %0, %struct.request_queue** %4, align 8
  store %struct.bio* %1, %struct.bio** %5, align 8
  %10 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %11 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %10, i32 0, i32 0
  %12 = load %struct.mapped_device*, %struct.mapped_device** %11, align 8
  store %struct.mapped_device* %12, %struct.mapped_device** %6, align 8
  %13 = load i32, i32* @BLK_QC_T_NONE, align 4
  store i32 %13, i32* %7, align 4
  %14 = load %struct.mapped_device*, %struct.mapped_device** %6, align 8
  %15 = call %struct.dm_table* @dm_get_live_table(%struct.mapped_device* %14, i32* %8)
  store %struct.dm_table* %15, %struct.dm_table** %9, align 8
  %16 = load i32, i32* @DMF_BLOCK_IO_FOR_SUSPEND, align 4
  %17 = load %struct.mapped_device*, %struct.mapped_device** %6, align 8
  %18 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %17, i32 0, i32 0
  %19 = call i32 @test_bit(i32 %16, i32* %18)
  %20 = call i64 @unlikely(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %41

22:                                               ; preds = %2
  %23 = load %struct.mapped_device*, %struct.mapped_device** %6, align 8
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @dm_put_live_table(%struct.mapped_device* %23, i32 %24)
  %26 = load %struct.bio*, %struct.bio** %5, align 8
  %27 = getelementptr inbounds %struct.bio, %struct.bio* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @REQ_RAHEAD, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %22
  %33 = load %struct.mapped_device*, %struct.mapped_device** %6, align 8
  %34 = load %struct.bio*, %struct.bio** %5, align 8
  %35 = call i32 @queue_io(%struct.mapped_device* %33, %struct.bio* %34)
  br label %39

36:                                               ; preds = %22
  %37 = load %struct.bio*, %struct.bio** %5, align 8
  %38 = call i32 @bio_io_error(%struct.bio* %37)
  br label %39

39:                                               ; preds = %36, %32
  %40 = load i32, i32* %7, align 4
  store i32 %40, i32* %3, align 4
  br label %50

41:                                               ; preds = %2
  %42 = load %struct.mapped_device*, %struct.mapped_device** %6, align 8
  %43 = load %struct.dm_table*, %struct.dm_table** %9, align 8
  %44 = load %struct.bio*, %struct.bio** %5, align 8
  %45 = call i32 @dm_process_bio(%struct.mapped_device* %42, %struct.dm_table* %43, %struct.bio* %44)
  store i32 %45, i32* %7, align 4
  %46 = load %struct.mapped_device*, %struct.mapped_device** %6, align 8
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @dm_put_live_table(%struct.mapped_device* %46, i32 %47)
  %49 = load i32, i32* %7, align 4
  store i32 %49, i32* %3, align 4
  br label %50

50:                                               ; preds = %41, %39
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local %struct.dm_table* @dm_get_live_table(%struct.mapped_device*, i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @dm_put_live_table(%struct.mapped_device*, i32) #1

declare dso_local i32 @queue_io(%struct.mapped_device*, %struct.bio*) #1

declare dso_local i32 @bio_io_error(%struct.bio*) #1

declare dso_local i32 @dm_process_bio(%struct.mapped_device*, %struct.dm_table*, %struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
