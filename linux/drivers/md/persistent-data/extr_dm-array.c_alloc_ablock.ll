; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/persistent-data/extr_dm-array.c_alloc_ablock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/persistent-data/extr_dm-array.c_alloc_ablock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_array_info = type { %struct.TYPE_3__, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.dm_block = type { i32 }
%struct.array_block = type { i8*, i8*, i8* }

@array_validator = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_array_info*, i64, i32, %struct.dm_block**, %struct.array_block**)* @alloc_ablock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alloc_ablock(%struct.dm_array_info* %0, i64 %1, i32 %2, %struct.dm_block** %3, %struct.array_block** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.dm_array_info*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.dm_block**, align 8
  %11 = alloca %struct.array_block**, align 8
  %12 = alloca i32, align 4
  store %struct.dm_array_info* %0, %struct.dm_array_info** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.dm_block** %3, %struct.dm_block*** %10, align 8
  store %struct.array_block** %4, %struct.array_block*** %11, align 8
  %13 = load %struct.dm_array_info*, %struct.dm_array_info** %7, align 8
  %14 = getelementptr inbounds %struct.dm_array_info, %struct.dm_array_info* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.dm_block**, %struct.dm_block*** %10, align 8
  %18 = call i32 @dm_tm_new_block(i32 %16, i32* @array_validator, %struct.dm_block** %17)
  store i32 %18, i32* %12, align 4
  %19 = load i32, i32* %12, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %5
  %22 = load i32, i32* %12, align 4
  store i32 %22, i32* %6, align 4
  br label %45

23:                                               ; preds = %5
  %24 = load %struct.dm_block**, %struct.dm_block*** %10, align 8
  %25 = load %struct.dm_block*, %struct.dm_block** %24, align 8
  %26 = call %struct.array_block* @dm_block_data(%struct.dm_block* %25)
  %27 = load %struct.array_block**, %struct.array_block*** %11, align 8
  store %struct.array_block* %26, %struct.array_block** %27, align 8
  %28 = load i32, i32* %9, align 4
  %29 = call i8* @cpu_to_le32(i32 %28)
  %30 = load %struct.array_block**, %struct.array_block*** %11, align 8
  %31 = load %struct.array_block*, %struct.array_block** %30, align 8
  %32 = getelementptr inbounds %struct.array_block, %struct.array_block* %31, i32 0, i32 2
  store i8* %29, i8** %32, align 8
  %33 = call i8* @cpu_to_le32(i32 0)
  %34 = load %struct.array_block**, %struct.array_block*** %11, align 8
  %35 = load %struct.array_block*, %struct.array_block** %34, align 8
  %36 = getelementptr inbounds %struct.array_block, %struct.array_block* %35, i32 0, i32 1
  store i8* %33, i8** %36, align 8
  %37 = load %struct.dm_array_info*, %struct.dm_array_info** %7, align 8
  %38 = getelementptr inbounds %struct.dm_array_info, %struct.dm_array_info* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i8* @cpu_to_le32(i32 %40)
  %42 = load %struct.array_block**, %struct.array_block*** %11, align 8
  %43 = load %struct.array_block*, %struct.array_block** %42, align 8
  %44 = getelementptr inbounds %struct.array_block, %struct.array_block* %43, i32 0, i32 0
  store i8* %41, i8** %44, align 8
  store i32 0, i32* %6, align 4
  br label %45

45:                                               ; preds = %23, %21
  %46 = load i32, i32* %6, align 4
  ret i32 %46
}

declare dso_local i32 @dm_tm_new_block(i32, i32*, %struct.dm_block**) #1

declare dso_local %struct.array_block* @dm_block_data(%struct.dm_block*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
