; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-table.c_dm_table_register_integrity.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-table.c_dm_table_register_integrity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_table = type { i32, %struct.mapped_device*, i64 }
%struct.mapped_device = type { i32 }
%struct.gendisk = type { i32 }

@.str = private unnamed_addr constant [66 x i8] c"%s: conflict with existing integrity profile: %s profile mismatch\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_table*)* @dm_table_register_integrity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dm_table_register_integrity(%struct.dm_table* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dm_table*, align 8
  %4 = alloca %struct.mapped_device*, align 8
  %5 = alloca %struct.gendisk*, align 8
  store %struct.dm_table* %0, %struct.dm_table** %3, align 8
  %6 = load %struct.dm_table*, %struct.dm_table** %3, align 8
  %7 = getelementptr inbounds %struct.dm_table, %struct.dm_table* %6, i32 0, i32 1
  %8 = load %struct.mapped_device*, %struct.mapped_device** %7, align 8
  store %struct.mapped_device* %8, %struct.mapped_device** %4, align 8
  store %struct.gendisk* null, %struct.gendisk** %5, align 8
  %9 = load %struct.dm_table*, %struct.dm_table** %3, align 8
  %10 = getelementptr inbounds %struct.dm_table, %struct.dm_table* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %51

14:                                               ; preds = %1
  %15 = load %struct.dm_table*, %struct.dm_table** %3, align 8
  %16 = call %struct.gendisk* @dm_table_get_integrity_disk(%struct.dm_table* %15)
  store %struct.gendisk* %16, %struct.gendisk** %5, align 8
  %17 = load %struct.gendisk*, %struct.gendisk** %5, align 8
  %18 = icmp ne %struct.gendisk* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %14
  store i32 0, i32* %2, align 4
  br label %51

20:                                               ; preds = %14
  %21 = load %struct.mapped_device*, %struct.mapped_device** %4, align 8
  %22 = call i32 @dm_disk(%struct.mapped_device* %21)
  %23 = call i32 @integrity_profile_exists(i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %33, label %25

25:                                               ; preds = %20
  %26 = load %struct.dm_table*, %struct.dm_table** %3, align 8
  %27 = getelementptr inbounds %struct.dm_table, %struct.dm_table* %26, i32 0, i32 0
  store i32 1, i32* %27, align 8
  %28 = load %struct.mapped_device*, %struct.mapped_device** %4, align 8
  %29 = call i32 @dm_disk(%struct.mapped_device* %28)
  %30 = load %struct.gendisk*, %struct.gendisk** %5, align 8
  %31 = call i32 @blk_get_integrity(%struct.gendisk* %30)
  %32 = call i32 @blk_integrity_register(i32 %29, i32 %31)
  store i32 0, i32* %2, align 4
  br label %51

33:                                               ; preds = %20
  %34 = load %struct.mapped_device*, %struct.mapped_device** %4, align 8
  %35 = call i32 @dm_disk(%struct.mapped_device* %34)
  %36 = load %struct.gendisk*, %struct.gendisk** %5, align 8
  %37 = call i64 @blk_integrity_compare(i32 %35, %struct.gendisk* %36)
  %38 = icmp slt i64 %37, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %33
  %40 = load %struct.dm_table*, %struct.dm_table** %3, align 8
  %41 = getelementptr inbounds %struct.dm_table, %struct.dm_table* %40, i32 0, i32 1
  %42 = load %struct.mapped_device*, %struct.mapped_device** %41, align 8
  %43 = call i32 @dm_device_name(%struct.mapped_device* %42)
  %44 = load %struct.gendisk*, %struct.gendisk** %5, align 8
  %45 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @DMWARN(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), i32 %43, i32 %46)
  store i32 1, i32* %2, align 4
  br label %51

48:                                               ; preds = %33
  %49 = load %struct.dm_table*, %struct.dm_table** %3, align 8
  %50 = getelementptr inbounds %struct.dm_table, %struct.dm_table* %49, i32 0, i32 0
  store i32 1, i32* %50, align 8
  store i32 0, i32* %2, align 4
  br label %51

51:                                               ; preds = %48, %39, %25, %19, %13
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local %struct.gendisk* @dm_table_get_integrity_disk(%struct.dm_table*) #1

declare dso_local i32 @integrity_profile_exists(i32) #1

declare dso_local i32 @dm_disk(%struct.mapped_device*) #1

declare dso_local i32 @blk_integrity_register(i32, i32) #1

declare dso_local i32 @blk_get_integrity(%struct.gendisk*) #1

declare dso_local i64 @blk_integrity_compare(i32, %struct.gendisk*) #1

declare dso_local i32 @DMWARN(i8*, i32, i32) #1

declare dso_local i32 @dm_device_name(%struct.mapped_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
