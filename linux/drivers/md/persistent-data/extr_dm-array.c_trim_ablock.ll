; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/persistent-data/extr_dm-array.c_trim_ablock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/persistent-data/extr_dm-array.c_trim_ablock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_array_info = type { %struct.dm_btree_value_type }
%struct.dm_btree_value_type = type { i32, i32 (i32, i32)* }
%struct.array_block = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dm_array_info*, %struct.array_block*, i32)* @trim_ablock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @trim_ablock(%struct.dm_array_info* %0, %struct.array_block* %1, i32 %2) #0 {
  %4 = alloca %struct.dm_array_info*, align 8
  %5 = alloca %struct.array_block*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.dm_btree_value_type*, align 8
  store %struct.dm_array_info* %0, %struct.dm_array_info** %4, align 8
  store %struct.array_block* %1, %struct.array_block** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.dm_array_info*, %struct.dm_array_info** %4, align 8
  %11 = getelementptr inbounds %struct.dm_array_info, %struct.dm_array_info* %10, i32 0, i32 0
  store %struct.dm_btree_value_type* %11, %struct.dm_btree_value_type** %9, align 8
  %12 = load i32, i32* %6, align 4
  %13 = load %struct.array_block*, %struct.array_block** %5, align 8
  %14 = getelementptr inbounds %struct.array_block, %struct.array_block* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @le32_to_cpu(i32 %15)
  %17 = icmp ugt i32 %12, %16
  %18 = zext i1 %17 to i32
  %19 = call i32 @BUG_ON(i32 %18)
  %20 = load i32, i32* %6, align 4
  %21 = load %struct.array_block*, %struct.array_block** %5, align 8
  %22 = getelementptr inbounds %struct.array_block, %struct.array_block* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @le32_to_cpu(i32 %23)
  %25 = icmp ugt i32 %20, %24
  %26 = zext i1 %25 to i32
  %27 = call i32 @BUG_ON(i32 %26)
  %28 = load %struct.array_block*, %struct.array_block** %5, align 8
  %29 = getelementptr inbounds %struct.array_block, %struct.array_block* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @le32_to_cpu(i32 %30)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  store i32 %32, i32* %7, align 4
  br label %33

33:                                               ; preds = %56, %3
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp ugt i32 %34, %35
  br i1 %36, label %37, label %59

37:                                               ; preds = %33
  %38 = load %struct.dm_btree_value_type*, %struct.dm_btree_value_type** %9, align 8
  %39 = getelementptr inbounds %struct.dm_btree_value_type, %struct.dm_btree_value_type* %38, i32 0, i32 1
  %40 = load i32 (i32, i32)*, i32 (i32, i32)** %39, align 8
  %41 = icmp ne i32 (i32, i32)* %40, null
  br i1 %41, label %42, label %55

42:                                               ; preds = %37
  %43 = load %struct.dm_btree_value_type*, %struct.dm_btree_value_type** %9, align 8
  %44 = getelementptr inbounds %struct.dm_btree_value_type, %struct.dm_btree_value_type* %43, i32 0, i32 1
  %45 = load i32 (i32, i32)*, i32 (i32, i32)** %44, align 8
  %46 = load %struct.dm_btree_value_type*, %struct.dm_btree_value_type** %9, align 8
  %47 = getelementptr inbounds %struct.dm_btree_value_type, %struct.dm_btree_value_type* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.dm_array_info*, %struct.dm_array_info** %4, align 8
  %50 = load %struct.array_block*, %struct.array_block** %5, align 8
  %51 = load i32, i32* %7, align 4
  %52 = sub i32 %51, 1
  %53 = call i32 @element_at(%struct.dm_array_info* %49, %struct.array_block* %50, i32 %52)
  %54 = call i32 %45(i32 %48, i32 %53)
  br label %55

55:                                               ; preds = %42, %37
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %7, align 4
  %58 = add i32 %57, -1
  store i32 %58, i32* %7, align 4
  br label %33

59:                                               ; preds = %33
  %60 = load i32, i32* %6, align 4
  %61 = call i32 @cpu_to_le32(i32 %60)
  %62 = load %struct.array_block*, %struct.array_block** %5, align 8
  %63 = getelementptr inbounds %struct.array_block, %struct.array_block* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 4
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @element_at(%struct.dm_array_info*, %struct.array_block*, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
