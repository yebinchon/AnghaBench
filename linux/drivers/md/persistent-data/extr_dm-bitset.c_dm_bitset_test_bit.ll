; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/persistent-data/extr_dm-bitset.c_dm_bitset_test_bit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/persistent-data/extr_dm-bitset.c_dm_bitset_test_bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_disk_bitset = type { i32 }

@BITS_PER_ARRAY_ENTRY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dm_bitset_test_bit(%struct.dm_disk_bitset* %0, i32 %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.dm_disk_bitset*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.dm_disk_bitset* %0, %struct.dm_disk_bitset** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %14 = load i32, i32* %9, align 4
  %15 = load i32, i32* @BITS_PER_ARRAY_ENTRY, align 4
  %16 = urem i32 %14, %15
  store i32 %16, i32* %13, align 4
  %17 = load %struct.dm_disk_bitset*, %struct.dm_disk_bitset** %7, align 8
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* %9, align 4
  %20 = load i32*, i32** %10, align 8
  %21 = call i32 @get_array_entry(%struct.dm_disk_bitset* %17, i32 %18, i32 %19, i32* %20)
  store i32 %21, i32* %12, align 4
  %22 = load i32, i32* %12, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %5
  %25 = load i32, i32* %12, align 4
  store i32 %25, i32* %6, align 4
  br label %33

26:                                               ; preds = %5
  %27 = load i32, i32* %13, align 4
  %28 = load %struct.dm_disk_bitset*, %struct.dm_disk_bitset** %7, align 8
  %29 = getelementptr inbounds %struct.dm_disk_bitset, %struct.dm_disk_bitset* %28, i32 0, i32 0
  %30 = bitcast i32* %29 to i64*
  %31 = call i32 @test_bit(i32 %27, i64* %30)
  %32 = load i32*, i32** %11, align 8
  store i32 %31, i32* %32, align 4
  store i32 0, i32* %6, align 4
  br label %33

33:                                               ; preds = %26, %24
  %34 = load i32, i32* %6, align 4
  ret i32 %34
}

declare dso_local i32 @get_array_entry(%struct.dm_disk_bitset*, i32, i32, i32*) #1

declare dso_local i32 @test_bit(i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
