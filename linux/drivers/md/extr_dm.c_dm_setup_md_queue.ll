; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm.c_dm_setup_md_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm.c_dm_setup_md_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mapped_device = type { i32, i32 }
%struct.dm_table = type { i32 }
%struct.queue_limits = type { i32 }

@.str = private unnamed_addr constant [62 x i8] c"Cannot initialize queue for request-based dm-mq mapped device\00", align 1
@dm_make_request = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"Cannot calculate initial queue limits\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dm_setup_md_queue(%struct.mapped_device* %0, %struct.dm_table* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mapped_device*, align 8
  %5 = alloca %struct.dm_table*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.queue_limits, align 4
  %8 = alloca i32, align 4
  store %struct.mapped_device* %0, %struct.mapped_device** %4, align 8
  store %struct.dm_table* %1, %struct.dm_table** %5, align 8
  %9 = load %struct.mapped_device*, %struct.mapped_device** %4, align 8
  %10 = call i32 @dm_get_md_type(%struct.mapped_device* %9)
  store i32 %10, i32* %8, align 4
  %11 = load i32, i32* %8, align 4
  switch i32 %11, label %32 [
    i32 128, label %12
    i32 132, label %22
    i32 131, label %22
    i32 129, label %22
    i32 130, label %30
  ]

12:                                               ; preds = %2
  %13 = load %struct.mapped_device*, %struct.mapped_device** %4, align 8
  %14 = load %struct.dm_table*, %struct.dm_table** %5, align 8
  %15 = call i32 @dm_mq_init_request_queue(%struct.mapped_device* %13, %struct.dm_table* %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %12
  %19 = call i32 @DMERR(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* %6, align 4
  store i32 %20, i32* %3, align 4
  br label %50

21:                                               ; preds = %12
  br label %32

22:                                               ; preds = %2, %2, %2
  %23 = load %struct.mapped_device*, %struct.mapped_device** %4, align 8
  %24 = call i32 @dm_init_normal_md_queue(%struct.mapped_device* %23)
  %25 = load %struct.mapped_device*, %struct.mapped_device** %4, align 8
  %26 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @dm_make_request, align 4
  %29 = call i32 @blk_queue_make_request(i32 %27, i32 %28)
  br label %32

30:                                               ; preds = %2
  %31 = call i32 @WARN_ON_ONCE(i32 1)
  br label %32

32:                                               ; preds = %2, %30, %22, %21
  %33 = load %struct.dm_table*, %struct.dm_table** %5, align 8
  %34 = call i32 @dm_calculate_queue_limits(%struct.dm_table* %33, %struct.queue_limits* %7)
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = call i32 @DMERR(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %39 = load i32, i32* %6, align 4
  store i32 %39, i32* %3, align 4
  br label %50

40:                                               ; preds = %32
  %41 = load %struct.dm_table*, %struct.dm_table** %5, align 8
  %42 = load %struct.mapped_device*, %struct.mapped_device** %4, align 8
  %43 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @dm_table_set_restrictions(%struct.dm_table* %41, i32 %44, %struct.queue_limits* %7)
  %46 = load %struct.mapped_device*, %struct.mapped_device** %4, align 8
  %47 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @blk_register_queue(i32 %48)
  store i32 0, i32* %3, align 4
  br label %50

50:                                               ; preds = %40, %37, %18
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i32 @dm_get_md_type(%struct.mapped_device*) #1

declare dso_local i32 @dm_mq_init_request_queue(%struct.mapped_device*, %struct.dm_table*) #1

declare dso_local i32 @DMERR(i8*) #1

declare dso_local i32 @dm_init_normal_md_queue(%struct.mapped_device*) #1

declare dso_local i32 @blk_queue_make_request(i32, i32) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @dm_calculate_queue_limits(%struct.dm_table*, %struct.queue_limits*) #1

declare dso_local i32 @dm_table_set_restrictions(%struct.dm_table*, i32, %struct.queue_limits*) #1

declare dso_local i32 @blk_register_queue(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
