; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/persistent-data/extr_dm-array.c_get_ablock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/persistent-data/extr_dm-array.c_get_ablock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_array_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.dm_block = type { i32 }
%struct.array_block = type { i32 }

@array_validator = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_array_info*, i32, %struct.dm_block**, %struct.array_block**)* @get_ablock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_ablock(%struct.dm_array_info* %0, i32 %1, %struct.dm_block** %2, %struct.array_block** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.dm_array_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.dm_block**, align 8
  %9 = alloca %struct.array_block**, align 8
  %10 = alloca i32, align 4
  store %struct.dm_array_info* %0, %struct.dm_array_info** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.dm_block** %2, %struct.dm_block*** %8, align 8
  store %struct.array_block** %3, %struct.array_block*** %9, align 8
  %11 = load %struct.dm_array_info*, %struct.dm_array_info** %6, align 8
  %12 = getelementptr inbounds %struct.dm_array_info, %struct.dm_array_info* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %7, align 4
  %16 = load %struct.dm_block**, %struct.dm_block*** %8, align 8
  %17 = call i32 @dm_tm_read_lock(i32 %14, i32 %15, i32* @array_validator, %struct.dm_block** %16)
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %10, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %4
  %21 = load i32, i32* %10, align 4
  store i32 %21, i32* %5, align 4
  br label %27

22:                                               ; preds = %4
  %23 = load %struct.dm_block**, %struct.dm_block*** %8, align 8
  %24 = load %struct.dm_block*, %struct.dm_block** %23, align 8
  %25 = call %struct.array_block* @dm_block_data(%struct.dm_block* %24)
  %26 = load %struct.array_block**, %struct.array_block*** %9, align 8
  store %struct.array_block* %25, %struct.array_block** %26, align 8
  store i32 0, i32* %5, align 4
  br label %27

27:                                               ; preds = %22, %20
  %28 = load i32, i32* %5, align 4
  ret i32 %28
}

declare dso_local i32 @dm_tm_read_lock(i32, i32, i32*, %struct.dm_block**) #1

declare dso_local %struct.array_block* @dm_block_data(%struct.dm_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
