; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-snap.c_dm_add_exception.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-snap.c_dm_add_exception.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_exception_table_lock = type { i32 }
%struct.dm_snapshot = type { i32 }
%struct.dm_exception = type { i8*, i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*)* @dm_add_exception to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dm_add_exception(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.dm_exception_table_lock, align 4
  %9 = alloca %struct.dm_snapshot*, align 8
  %10 = alloca %struct.dm_exception*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.dm_snapshot*
  store %struct.dm_snapshot* %12, %struct.dm_snapshot** %9, align 8
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.dm_exception* @alloc_completed_exception(i32 %13)
  store %struct.dm_exception* %14, %struct.dm_exception** %10, align 8
  %15 = load %struct.dm_exception*, %struct.dm_exception** %10, align 8
  %16 = icmp ne %struct.dm_exception* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %36

20:                                               ; preds = %3
  %21 = load i8*, i8** %6, align 8
  %22 = load %struct.dm_exception*, %struct.dm_exception** %10, align 8
  %23 = getelementptr inbounds %struct.dm_exception, %struct.dm_exception* %22, i32 0, i32 1
  store i8* %21, i8** %23, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = load %struct.dm_exception*, %struct.dm_exception** %10, align 8
  %26 = getelementptr inbounds %struct.dm_exception, %struct.dm_exception* %25, i32 0, i32 0
  store i8* %24, i8** %26, align 8
  %27 = load %struct.dm_snapshot*, %struct.dm_snapshot** %9, align 8
  %28 = load i8*, i8** %6, align 8
  %29 = call i32 @dm_exception_table_lock_init(%struct.dm_snapshot* %27, i8* %28, %struct.dm_exception_table_lock* %8)
  %30 = call i32 @dm_exception_table_lock(%struct.dm_exception_table_lock* %8)
  %31 = load %struct.dm_snapshot*, %struct.dm_snapshot** %9, align 8
  %32 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %31, i32 0, i32 0
  %33 = load %struct.dm_exception*, %struct.dm_exception** %10, align 8
  %34 = call i32 @dm_insert_exception(i32* %32, %struct.dm_exception* %33)
  %35 = call i32 @dm_exception_table_unlock(%struct.dm_exception_table_lock* %8)
  store i32 0, i32* %4, align 4
  br label %36

36:                                               ; preds = %20, %17
  %37 = load i32, i32* %4, align 4
  ret i32 %37
}

declare dso_local %struct.dm_exception* @alloc_completed_exception(i32) #1

declare dso_local i32 @dm_exception_table_lock_init(%struct.dm_snapshot*, i8*, %struct.dm_exception_table_lock*) #1

declare dso_local i32 @dm_exception_table_lock(%struct.dm_exception_table_lock*) #1

declare dso_local i32 @dm_insert_exception(i32*, %struct.dm_exception*) #1

declare dso_local i32 @dm_exception_table_unlock(%struct.dm_exception_table_lock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
