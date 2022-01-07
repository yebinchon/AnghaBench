; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/persistent-data/extr_dm-array.c_fill_ablock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/persistent-data/extr_dm-array.c_fill_ablock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_array_info = type { %struct.dm_btree_value_type }
%struct.dm_btree_value_type = type { i32, i32, i32 (i32, i8*)* }
%struct.array_block = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dm_array_info*, %struct.array_block*, i8*, i32)* @fill_ablock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fill_ablock(%struct.dm_array_info* %0, %struct.array_block* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.dm_array_info*, align 8
  %6 = alloca %struct.array_block*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.dm_btree_value_type*, align 8
  store %struct.dm_array_info* %0, %struct.dm_array_info** %5, align 8
  store %struct.array_block* %1, %struct.array_block** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load %struct.dm_array_info*, %struct.dm_array_info** %5, align 8
  %13 = getelementptr inbounds %struct.dm_array_info, %struct.dm_array_info* %12, i32 0, i32 0
  store %struct.dm_btree_value_type* %13, %struct.dm_btree_value_type** %11, align 8
  %14 = load i32, i32* %8, align 4
  %15 = load %struct.array_block*, %struct.array_block** %6, align 8
  %16 = getelementptr inbounds %struct.array_block, %struct.array_block* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @le32_to_cpu(i32 %17)
  %19 = icmp ugt i32 %14, %18
  %20 = zext i1 %19 to i32
  %21 = call i32 @BUG_ON(i32 %20)
  %22 = load i32, i32* %8, align 4
  %23 = load %struct.array_block*, %struct.array_block** %6, align 8
  %24 = getelementptr inbounds %struct.array_block, %struct.array_block* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @le32_to_cpu(i32 %25)
  %27 = icmp ult i32 %22, %26
  %28 = zext i1 %27 to i32
  %29 = call i32 @BUG_ON(i32 %28)
  %30 = load %struct.array_block*, %struct.array_block** %6, align 8
  %31 = getelementptr inbounds %struct.array_block, %struct.array_block* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @le32_to_cpu(i32 %32)
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %10, align 4
  store i32 %34, i32* %9, align 4
  br label %35

35:                                               ; preds = %63, %4
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp ult i32 %36, %37
  br i1 %38, label %39, label %66

39:                                               ; preds = %35
  %40 = load %struct.dm_btree_value_type*, %struct.dm_btree_value_type** %11, align 8
  %41 = getelementptr inbounds %struct.dm_btree_value_type, %struct.dm_btree_value_type* %40, i32 0, i32 2
  %42 = load i32 (i32, i8*)*, i32 (i32, i8*)** %41, align 8
  %43 = icmp ne i32 (i32, i8*)* %42, null
  br i1 %43, label %44, label %53

44:                                               ; preds = %39
  %45 = load %struct.dm_btree_value_type*, %struct.dm_btree_value_type** %11, align 8
  %46 = getelementptr inbounds %struct.dm_btree_value_type, %struct.dm_btree_value_type* %45, i32 0, i32 2
  %47 = load i32 (i32, i8*)*, i32 (i32, i8*)** %46, align 8
  %48 = load %struct.dm_btree_value_type*, %struct.dm_btree_value_type** %11, align 8
  %49 = getelementptr inbounds %struct.dm_btree_value_type, %struct.dm_btree_value_type* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i8*, i8** %7, align 8
  %52 = call i32 %47(i32 %50, i8* %51)
  br label %53

53:                                               ; preds = %44, %39
  %54 = load %struct.dm_array_info*, %struct.dm_array_info** %5, align 8
  %55 = load %struct.array_block*, %struct.array_block** %6, align 8
  %56 = load i32, i32* %9, align 4
  %57 = call i32 @element_at(%struct.dm_array_info* %54, %struct.array_block* %55, i32 %56)
  %58 = load i8*, i8** %7, align 8
  %59 = load %struct.dm_btree_value_type*, %struct.dm_btree_value_type** %11, align 8
  %60 = getelementptr inbounds %struct.dm_btree_value_type, %struct.dm_btree_value_type* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @memcpy(i32 %57, i8* %58, i32 %61)
  br label %63

63:                                               ; preds = %53
  %64 = load i32, i32* %9, align 4
  %65 = add i32 %64, 1
  store i32 %65, i32* %9, align 4
  br label %35

66:                                               ; preds = %35
  %67 = load i32, i32* %8, align 4
  %68 = call i32 @cpu_to_le32(i32 %67)
  %69 = load %struct.array_block*, %struct.array_block** %6, align 8
  %70 = getelementptr inbounds %struct.array_block, %struct.array_block* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 4
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @element_at(%struct.dm_array_info*, %struct.array_block*, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
