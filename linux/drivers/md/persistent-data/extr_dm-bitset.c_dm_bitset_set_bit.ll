; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/persistent-data/extr_dm-bitset.c_dm_bitset_set_bit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/persistent-data/extr_dm-bitset.c_dm_bitset_set_bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_disk_bitset = type { i32, i32 }

@BITS_PER_ARRAY_ENTRY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dm_bitset_set_bit(%struct.dm_disk_bitset* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.dm_disk_bitset*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.dm_disk_bitset* %0, %struct.dm_disk_bitset** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %12 = load i32, i32* %8, align 4
  %13 = load i32, i32* @BITS_PER_ARRAY_ENTRY, align 4
  %14 = urem i32 %12, %13
  store i32 %14, i32* %11, align 4
  %15 = load %struct.dm_disk_bitset*, %struct.dm_disk_bitset** %6, align 8
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* %8, align 4
  %18 = load i32*, i32** %9, align 8
  %19 = call i32 @get_array_entry(%struct.dm_disk_bitset* %15, i32 %16, i32 %17, i32* %18)
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %10, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %4
  %23 = load i32, i32* %10, align 4
  store i32 %23, i32* %5, align 4
  br label %32

24:                                               ; preds = %4
  %25 = load i32, i32* %11, align 4
  %26 = load %struct.dm_disk_bitset*, %struct.dm_disk_bitset** %6, align 8
  %27 = getelementptr inbounds %struct.dm_disk_bitset, %struct.dm_disk_bitset* %26, i32 0, i32 1
  %28 = bitcast i32* %27 to i64*
  %29 = call i32 @set_bit(i32 %25, i64* %28)
  %30 = load %struct.dm_disk_bitset*, %struct.dm_disk_bitset** %6, align 8
  %31 = getelementptr inbounds %struct.dm_disk_bitset, %struct.dm_disk_bitset* %30, i32 0, i32 0
  store i32 1, i32* %31, align 4
  store i32 0, i32* %5, align 4
  br label %32

32:                                               ; preds = %24, %22
  %33 = load i32, i32* %5, align 4
  ret i32 %33
}

declare dso_local i32 @get_array_entry(%struct.dm_disk_bitset*, i32, i32, i32*) #1

declare dso_local i32 @set_bit(i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
