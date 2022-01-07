; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/persistent-data/extr_dm-array.c___shadow_ablock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/persistent-data/extr_dm-array.c___shadow_ablock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_array_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.dm_block = type { i32 }
%struct.array_block = type { i32 }

@array_validator = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_array_info*, i32, %struct.dm_block**, %struct.array_block**)* @__shadow_ablock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__shadow_ablock(%struct.dm_array_info* %0, i32 %1, %struct.dm_block** %2, %struct.array_block** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.dm_array_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.dm_block**, align 8
  %9 = alloca %struct.array_block**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.dm_array_info* %0, %struct.dm_array_info** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.dm_block** %2, %struct.dm_block*** %8, align 8
  store %struct.array_block** %3, %struct.array_block*** %9, align 8
  %12 = load %struct.dm_array_info*, %struct.dm_array_info** %6, align 8
  %13 = getelementptr inbounds %struct.dm_array_info, %struct.dm_array_info* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %7, align 4
  %17 = load %struct.dm_block**, %struct.dm_block*** %8, align 8
  %18 = call i32 @dm_tm_shadow_block(i32 %15, i32 %16, i32* @array_validator, %struct.dm_block** %17, i32* %10)
  store i32 %18, i32* %11, align 4
  %19 = load i32, i32* %11, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %4
  %22 = load i32, i32* %11, align 4
  store i32 %22, i32* %5, align 4
  br label %36

23:                                               ; preds = %4
  %24 = load %struct.dm_block**, %struct.dm_block*** %8, align 8
  %25 = load %struct.dm_block*, %struct.dm_block** %24, align 8
  %26 = call %struct.array_block* @dm_block_data(%struct.dm_block* %25)
  %27 = load %struct.array_block**, %struct.array_block*** %9, align 8
  store %struct.array_block* %26, %struct.array_block** %27, align 8
  %28 = load i32, i32* %10, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %23
  %31 = load %struct.dm_array_info*, %struct.dm_array_info** %6, align 8
  %32 = load %struct.array_block**, %struct.array_block*** %9, align 8
  %33 = load %struct.array_block*, %struct.array_block** %32, align 8
  %34 = call i32 @inc_ablock_entries(%struct.dm_array_info* %31, %struct.array_block* %33)
  br label %35

35:                                               ; preds = %30, %23
  store i32 0, i32* %5, align 4
  br label %36

36:                                               ; preds = %35, %21
  %37 = load i32, i32* %5, align 4
  ret i32 %37
}

declare dso_local i32 @dm_tm_shadow_block(i32, i32, i32*, %struct.dm_block**, i32*) #1

declare dso_local %struct.array_block* @dm_block_data(%struct.dm_block*) #1

declare dso_local i32 @inc_ablock_entries(%struct.dm_array_info*, %struct.array_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
