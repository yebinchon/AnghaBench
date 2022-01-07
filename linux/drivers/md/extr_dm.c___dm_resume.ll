; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm.c___dm_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm.c___dm_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mapped_device = type { i32 }
%struct.dm_table = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mapped_device*, %struct.dm_table*)* @__dm_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__dm_resume(%struct.mapped_device* %0, %struct.dm_table* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mapped_device*, align 8
  %5 = alloca %struct.dm_table*, align 8
  %6 = alloca i32, align 4
  store %struct.mapped_device* %0, %struct.mapped_device** %4, align 8
  store %struct.dm_table* %1, %struct.dm_table** %5, align 8
  %7 = load %struct.dm_table*, %struct.dm_table** %5, align 8
  %8 = icmp ne %struct.dm_table* %7, null
  br i1 %8, label %9, label %17

9:                                                ; preds = %2
  %10 = load %struct.dm_table*, %struct.dm_table** %5, align 8
  %11 = call i32 @dm_table_resume_targets(%struct.dm_table* %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %9
  %15 = load i32, i32* %6, align 4
  store i32 %15, i32* %3, align 4
  br label %31

16:                                               ; preds = %9
  br label %17

17:                                               ; preds = %16, %2
  %18 = load %struct.mapped_device*, %struct.mapped_device** %4, align 8
  %19 = call i32 @dm_queue_flush(%struct.mapped_device* %18)
  %20 = load %struct.mapped_device*, %struct.mapped_device** %4, align 8
  %21 = call i64 @dm_request_based(%struct.mapped_device* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %17
  %24 = load %struct.mapped_device*, %struct.mapped_device** %4, align 8
  %25 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @dm_start_queue(i32 %26)
  br label %28

28:                                               ; preds = %23, %17
  %29 = load %struct.mapped_device*, %struct.mapped_device** %4, align 8
  %30 = call i32 @unlock_fs(%struct.mapped_device* %29)
  store i32 0, i32* %3, align 4
  br label %31

31:                                               ; preds = %28, %14
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local i32 @dm_table_resume_targets(%struct.dm_table*) #1

declare dso_local i32 @dm_queue_flush(%struct.mapped_device*) #1

declare dso_local i64 @dm_request_based(%struct.mapped_device*) #1

declare dso_local i32 @dm_start_queue(i32) #1

declare dso_local i32 @unlock_fs(%struct.mapped_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
