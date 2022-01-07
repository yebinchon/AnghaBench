; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm.c_dm_call_pr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm.c_dm_call_pr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.block_device = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.mapped_device* }
%struct.mapped_device = type { i32 }
%struct.dm_table = type { i32 }
%struct.dm_target = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.dm_target*, i32, i8*)* }

@ENOTTY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.block_device*, i32, i8*)* @dm_call_pr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dm_call_pr(%struct.block_device* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.block_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.mapped_device*, align 8
  %8 = alloca %struct.dm_table*, align 8
  %9 = alloca %struct.dm_target*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.block_device* %0, %struct.block_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %12 = load %struct.block_device*, %struct.block_device** %4, align 8
  %13 = getelementptr inbounds %struct.block_device, %struct.block_device* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load %struct.mapped_device*, %struct.mapped_device** %15, align 8
  store %struct.mapped_device* %16, %struct.mapped_device** %7, align 8
  %17 = load i32, i32* @ENOTTY, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %10, align 4
  %19 = load %struct.mapped_device*, %struct.mapped_device** %7, align 8
  %20 = call %struct.dm_table* @dm_get_live_table(%struct.mapped_device* %19, i32* %11)
  store %struct.dm_table* %20, %struct.dm_table** %8, align 8
  %21 = load %struct.dm_table*, %struct.dm_table** %8, align 8
  %22 = icmp ne %struct.dm_table* %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %3
  %24 = load %struct.dm_table*, %struct.dm_table** %8, align 8
  %25 = call i32 @dm_table_get_size(%struct.dm_table* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %23, %3
  br label %55

28:                                               ; preds = %23
  %29 = load %struct.dm_table*, %struct.dm_table** %8, align 8
  %30 = call i32 @dm_table_get_num_targets(%struct.dm_table* %29)
  %31 = icmp ne i32 %30, 1
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  br label %55

33:                                               ; preds = %28
  %34 = load %struct.dm_table*, %struct.dm_table** %8, align 8
  %35 = call %struct.dm_target* @dm_table_get_target(%struct.dm_table* %34, i32 0)
  store %struct.dm_target* %35, %struct.dm_target** %9, align 8
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %10, align 4
  %38 = load %struct.dm_target*, %struct.dm_target** %9, align 8
  %39 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %38, i32 0, i32 0
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32 (%struct.dm_target*, i32, i8*)*, i32 (%struct.dm_target*, i32, i8*)** %41, align 8
  %43 = icmp ne i32 (%struct.dm_target*, i32, i8*)* %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %33
  br label %55

45:                                               ; preds = %33
  %46 = load %struct.dm_target*, %struct.dm_target** %9, align 8
  %47 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %46, i32 0, i32 0
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i32 (%struct.dm_target*, i32, i8*)*, i32 (%struct.dm_target*, i32, i8*)** %49, align 8
  %51 = load %struct.dm_target*, %struct.dm_target** %9, align 8
  %52 = load i32, i32* %5, align 4
  %53 = load i8*, i8** %6, align 8
  %54 = call i32 %50(%struct.dm_target* %51, i32 %52, i8* %53)
  store i32 %54, i32* %10, align 4
  br label %55

55:                                               ; preds = %45, %44, %32, %27
  %56 = load %struct.mapped_device*, %struct.mapped_device** %7, align 8
  %57 = load i32, i32* %11, align 4
  %58 = call i32 @dm_put_live_table(%struct.mapped_device* %56, i32 %57)
  %59 = load i32, i32* %10, align 4
  ret i32 %59
}

declare dso_local %struct.dm_table* @dm_get_live_table(%struct.mapped_device*, i32*) #1

declare dso_local i32 @dm_table_get_size(%struct.dm_table*) #1

declare dso_local i32 @dm_table_get_num_targets(%struct.dm_table*) #1

declare dso_local %struct.dm_target* @dm_table_get_target(%struct.dm_table*, i32) #1

declare dso_local i32 @dm_put_live_table(%struct.mapped_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
