; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm.c_dm_any_congested.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm.c_dm_any_congested.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mapped_device = type { %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.dm_table = type { i32 }

@DMF_BLOCK_IO_FOR_SUSPEND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @dm_any_congested to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dm_any_congested(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.mapped_device*, align 8
  %7 = alloca %struct.dm_table*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  store i32 %8, i32* %5, align 4
  %9 = load i8*, i8** %3, align 8
  %10 = bitcast i8* %9 to %struct.mapped_device*
  store %struct.mapped_device* %10, %struct.mapped_device** %6, align 8
  %11 = load i32, i32* @DMF_BLOCK_IO_FOR_SUSPEND, align 4
  %12 = load %struct.mapped_device*, %struct.mapped_device** %6, align 8
  %13 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %12, i32 0, i32 1
  %14 = call i32 @test_bit(i32 %11, i32* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %44, label %16

16:                                               ; preds = %2
  %17 = load %struct.mapped_device*, %struct.mapped_device** %6, align 8
  %18 = call i64 @dm_request_based(%struct.mapped_device* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %31

20:                                               ; preds = %16
  %21 = load %struct.mapped_device*, %struct.mapped_device** %6, align 8
  %22 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %21, i32 0, i32 0
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %4, align 4
  %30 = and i32 %28, %29
  store i32 %30, i32* %5, align 4
  br label %43

31:                                               ; preds = %16
  %32 = load %struct.mapped_device*, %struct.mapped_device** %6, align 8
  %33 = call %struct.dm_table* @dm_get_live_table_fast(%struct.mapped_device* %32)
  store %struct.dm_table* %33, %struct.dm_table** %7, align 8
  %34 = load %struct.dm_table*, %struct.dm_table** %7, align 8
  %35 = icmp ne %struct.dm_table* %34, null
  br i1 %35, label %36, label %40

36:                                               ; preds = %31
  %37 = load %struct.dm_table*, %struct.dm_table** %7, align 8
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @dm_table_any_congested(%struct.dm_table* %37, i32 %38)
  store i32 %39, i32* %5, align 4
  br label %40

40:                                               ; preds = %36, %31
  %41 = load %struct.mapped_device*, %struct.mapped_device** %6, align 8
  %42 = call i32 @dm_put_live_table_fast(%struct.mapped_device* %41)
  br label %43

43:                                               ; preds = %40, %20
  br label %44

44:                                               ; preds = %43, %2
  %45 = load i32, i32* %5, align 4
  ret i32 %45
}

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i64 @dm_request_based(%struct.mapped_device*) #1

declare dso_local %struct.dm_table* @dm_get_live_table_fast(%struct.mapped_device*) #1

declare dso_local i32 @dm_table_any_congested(%struct.dm_table*, i32) #1

declare dso_local i32 @dm_put_live_table_fast(%struct.mapped_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
