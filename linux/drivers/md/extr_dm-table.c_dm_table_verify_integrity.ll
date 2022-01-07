; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-table.c_dm_table_verify_integrity.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-table.c_dm_table_verify_integrity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_table = type { i32, i64, i64 }
%struct.gendisk = type { i32 }

@.str = private unnamed_addr constant [45 x i8] c"%s: unable to establish an integrity profile\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dm_table*)* @dm_table_verify_integrity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dm_table_verify_integrity(%struct.dm_table* %0) #0 {
  %2 = alloca %struct.dm_table*, align 8
  %3 = alloca %struct.gendisk*, align 8
  store %struct.dm_table* %0, %struct.dm_table** %2, align 8
  store %struct.gendisk* null, %struct.gendisk** %3, align 8
  %4 = load %struct.dm_table*, %struct.dm_table** %2, align 8
  %5 = getelementptr inbounds %struct.dm_table, %struct.dm_table* %4, i32 0, i32 2
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %47

9:                                                ; preds = %1
  %10 = load %struct.dm_table*, %struct.dm_table** %2, align 8
  %11 = getelementptr inbounds %struct.dm_table, %struct.dm_table* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %29

14:                                               ; preds = %9
  %15 = load %struct.dm_table*, %struct.dm_table** %2, align 8
  %16 = call %struct.gendisk* @dm_table_get_integrity_disk(%struct.dm_table* %15)
  store %struct.gendisk* %16, %struct.gendisk** %3, align 8
  %17 = load %struct.gendisk*, %struct.gendisk** %3, align 8
  %18 = icmp ne %struct.gendisk* %17, null
  br i1 %18, label %19, label %28

19:                                               ; preds = %14
  %20 = load %struct.dm_table*, %struct.dm_table** %2, align 8
  %21 = getelementptr inbounds %struct.dm_table, %struct.dm_table* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @dm_disk(i32 %22)
  %24 = load %struct.gendisk*, %struct.gendisk** %3, align 8
  %25 = call i64 @blk_integrity_compare(i32 %23, %struct.gendisk* %24)
  %26 = icmp sge i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %19
  br label %47

28:                                               ; preds = %19, %14
  br label %29

29:                                               ; preds = %28, %9
  %30 = load %struct.dm_table*, %struct.dm_table** %2, align 8
  %31 = getelementptr inbounds %struct.dm_table, %struct.dm_table* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @dm_disk(i32 %32)
  %34 = call i64 @integrity_profile_exists(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %47

36:                                               ; preds = %29
  %37 = load %struct.dm_table*, %struct.dm_table** %2, align 8
  %38 = getelementptr inbounds %struct.dm_table, %struct.dm_table* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @dm_device_name(i32 %39)
  %41 = call i32 @DMWARN(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %40)
  %42 = load %struct.dm_table*, %struct.dm_table** %2, align 8
  %43 = getelementptr inbounds %struct.dm_table, %struct.dm_table* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @dm_disk(i32 %44)
  %46 = call i32 @blk_integrity_unregister(i32 %45)
  br label %47

47:                                               ; preds = %8, %27, %36, %29
  ret void
}

declare dso_local %struct.gendisk* @dm_table_get_integrity_disk(%struct.dm_table*) #1

declare dso_local i64 @blk_integrity_compare(i32, %struct.gendisk*) #1

declare dso_local i32 @dm_disk(i32) #1

declare dso_local i64 @integrity_profile_exists(i32) #1

declare dso_local i32 @DMWARN(i8*, i32) #1

declare dso_local i32 @dm_device_name(i32) #1

declare dso_local i32 @blk_integrity_unregister(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
