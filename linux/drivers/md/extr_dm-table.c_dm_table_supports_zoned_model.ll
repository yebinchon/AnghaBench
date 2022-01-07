; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-table.c_dm_table_supports_zoned_model.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-table.c_dm_table_supports_zoned_model.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_table = type { i32 }
%struct.dm_target = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.dm_target*, i32, i32*)* }

@BLK_ZONED_HM = common dso_local global i32 0, align 4
@device_is_zoned_model = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_table*, i32)* @dm_table_supports_zoned_model to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dm_table_supports_zoned_model(%struct.dm_table* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dm_table*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dm_target*, align 8
  %7 = alloca i32, align 4
  store %struct.dm_table* %0, %struct.dm_table** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %46, %2
  %9 = load i32, i32* %7, align 4
  %10 = load %struct.dm_table*, %struct.dm_table** %4, align 8
  %11 = call i32 @dm_table_get_num_targets(%struct.dm_table* %10)
  %12 = icmp ult i32 %9, %11
  br i1 %12, label %13, label %49

13:                                               ; preds = %8
  %14 = load %struct.dm_table*, %struct.dm_table** %4, align 8
  %15 = load i32, i32* %7, align 4
  %16 = call %struct.dm_target* @dm_table_get_target(%struct.dm_table* %14, i32 %15)
  store %struct.dm_target* %16, %struct.dm_target** %6, align 8
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @BLK_ZONED_HM, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %27

20:                                               ; preds = %13
  %21 = load %struct.dm_target*, %struct.dm_target** %6, align 8
  %22 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = call i32 @dm_target_supports_zoned_hm(%struct.TYPE_2__* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %20
  store i32 0, i32* %3, align 4
  br label %50

27:                                               ; preds = %20, %13
  %28 = load %struct.dm_target*, %struct.dm_target** %6, align 8
  %29 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32 (%struct.dm_target*, i32, i32*)*, i32 (%struct.dm_target*, i32, i32*)** %31, align 8
  %33 = icmp ne i32 (%struct.dm_target*, i32, i32*)* %32, null
  br i1 %33, label %34, label %44

34:                                               ; preds = %27
  %35 = load %struct.dm_target*, %struct.dm_target** %6, align 8
  %36 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32 (%struct.dm_target*, i32, i32*)*, i32 (%struct.dm_target*, i32, i32*)** %38, align 8
  %40 = load %struct.dm_target*, %struct.dm_target** %6, align 8
  %41 = load i32, i32* @device_is_zoned_model, align 4
  %42 = call i32 %39(%struct.dm_target* %40, i32 %41, i32* %5)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %34, %27
  store i32 0, i32* %3, align 4
  br label %50

45:                                               ; preds = %34
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %7, align 4
  %48 = add i32 %47, 1
  store i32 %48, i32* %7, align 4
  br label %8

49:                                               ; preds = %8
  store i32 1, i32* %3, align 4
  br label %50

50:                                               ; preds = %49, %44, %26
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i32 @dm_table_get_num_targets(%struct.dm_table*) #1

declare dso_local %struct.dm_target* @dm_table_get_target(%struct.dm_table*, i32) #1

declare dso_local i32 @dm_target_supports_zoned_hm(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
