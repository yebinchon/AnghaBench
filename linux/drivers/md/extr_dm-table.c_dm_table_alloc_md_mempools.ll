; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-table.c_dm_table_alloc_md_mempools.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-table.c_dm_table_alloc_md_mempools.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_table = type { i32, i32, i32, %struct.dm_target* }
%struct.dm_target = type { i32, i32 }
%struct.mapped_device = type { i32 }

@DM_TYPE_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"no table type is set, can't allocate mempools\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_table*, %struct.mapped_device*)* @dm_table_alloc_md_mempools to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dm_table_alloc_md_mempools(%struct.dm_table* %0, %struct.mapped_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dm_table*, align 8
  %5 = alloca %struct.mapped_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.dm_target*, align 8
  %10 = alloca i32, align 4
  store %struct.dm_table* %0, %struct.dm_table** %4, align 8
  store %struct.mapped_device* %1, %struct.mapped_device** %5, align 8
  %11 = load %struct.dm_table*, %struct.dm_table** %4, align 8
  %12 = call i32 @dm_table_get_type(%struct.dm_table* %11)
  store i32 %12, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @DM_TYPE_NONE, align 4
  %15 = icmp eq i32 %13, %14
  %16 = zext i1 %15 to i32
  %17 = call i64 @unlikely(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %2
  %20 = call i32 @DMWARN(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %74

23:                                               ; preds = %2
  %24 = load i32, i32* %6, align 4
  %25 = call i64 @__table_type_bio_based(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %55

27:                                               ; preds = %23
  store i32 0, i32* %10, align 4
  br label %28

28:                                               ; preds = %51, %27
  %29 = load i32, i32* %10, align 4
  %30 = load %struct.dm_table*, %struct.dm_table** %4, align 8
  %31 = getelementptr inbounds %struct.dm_table, %struct.dm_table* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp ult i32 %29, %32
  br i1 %33, label %34, label %54

34:                                               ; preds = %28
  %35 = load %struct.dm_table*, %struct.dm_table** %4, align 8
  %36 = getelementptr inbounds %struct.dm_table, %struct.dm_table* %35, i32 0, i32 3
  %37 = load %struct.dm_target*, %struct.dm_target** %36, align 8
  %38 = load i32, i32* %10, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %37, i64 %39
  store %struct.dm_target* %40, %struct.dm_target** %9, align 8
  %41 = load i32, i32* %7, align 4
  %42 = load %struct.dm_target*, %struct.dm_target** %9, align 8
  %43 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @max(i32 %41, i32 %44)
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %8, align 4
  %47 = load %struct.dm_target*, %struct.dm_target** %9, align 8
  %48 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @max(i32 %46, i32 %49)
  store i32 %50, i32* %8, align 4
  br label %51

51:                                               ; preds = %34
  %52 = load i32, i32* %10, align 4
  %53 = add i32 %52, 1
  store i32 %53, i32* %10, align 4
  br label %28

54:                                               ; preds = %28
  br label %55

55:                                               ; preds = %54, %23
  %56 = load %struct.mapped_device*, %struct.mapped_device** %5, align 8
  %57 = load i32, i32* %6, align 4
  %58 = load %struct.dm_table*, %struct.dm_table** %4, align 8
  %59 = getelementptr inbounds %struct.dm_table, %struct.dm_table* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* %8, align 4
  %63 = call i32 @dm_alloc_md_mempools(%struct.mapped_device* %56, i32 %57, i32 %60, i32 %61, i32 %62)
  %64 = load %struct.dm_table*, %struct.dm_table** %4, align 8
  %65 = getelementptr inbounds %struct.dm_table, %struct.dm_table* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 4
  %66 = load %struct.dm_table*, %struct.dm_table** %4, align 8
  %67 = getelementptr inbounds %struct.dm_table, %struct.dm_table* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %73, label %70

70:                                               ; preds = %55
  %71 = load i32, i32* @ENOMEM, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %3, align 4
  br label %74

73:                                               ; preds = %55
  store i32 0, i32* %3, align 4
  br label %74

74:                                               ; preds = %73, %70, %19
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local i32 @dm_table_get_type(%struct.dm_table*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @DMWARN(i8*) #1

declare dso_local i64 @__table_type_bio_based(i32) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @dm_alloc_md_mempools(%struct.mapped_device*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
