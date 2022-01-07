; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/persistent-data/extr_dm-bitset.c_read_bits.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/persistent-data/extr_dm-bitset.c_read_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_disk_bitset = type { i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_disk_bitset*, i32, i32)* @read_bits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_bits(%struct.dm_disk_bitset* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dm_disk_bitset*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.dm_disk_bitset* %0, %struct.dm_disk_bitset** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.dm_disk_bitset*, %struct.dm_disk_bitset** %5, align 8
  %11 = getelementptr inbounds %struct.dm_disk_bitset, %struct.dm_disk_bitset* %10, i32 0, i32 4
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* %7, align 4
  %14 = call i32 @dm_array_get_value(i32* %11, i32 %12, i32 %13, i32* %9)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* %8, align 4
  store i32 %18, i32* %4, align 4
  br label %31

19:                                               ; preds = %3
  %20 = load i32, i32* %9, align 4
  %21 = call i32 @le64_to_cpu(i32 %20)
  %22 = load %struct.dm_disk_bitset*, %struct.dm_disk_bitset** %5, align 8
  %23 = getelementptr inbounds %struct.dm_disk_bitset, %struct.dm_disk_bitset* %22, i32 0, i32 3
  store i32 %21, i32* %23, align 4
  %24 = load %struct.dm_disk_bitset*, %struct.dm_disk_bitset** %5, align 8
  %25 = getelementptr inbounds %struct.dm_disk_bitset, %struct.dm_disk_bitset* %24, i32 0, i32 0
  store i32 1, i32* %25, align 4
  %26 = load i32, i32* %7, align 4
  %27 = load %struct.dm_disk_bitset*, %struct.dm_disk_bitset** %5, align 8
  %28 = getelementptr inbounds %struct.dm_disk_bitset, %struct.dm_disk_bitset* %27, i32 0, i32 2
  store i32 %26, i32* %28, align 4
  %29 = load %struct.dm_disk_bitset*, %struct.dm_disk_bitset** %5, align 8
  %30 = getelementptr inbounds %struct.dm_disk_bitset, %struct.dm_disk_bitset* %29, i32 0, i32 1
  store i32 0, i32* %30, align 4
  store i32 0, i32* %4, align 4
  br label %31

31:                                               ; preds = %19, %17
  %32 = load i32, i32* %4, align 4
  ret i32 %32
}

declare dso_local i32 @dm_array_get_value(i32*, i32, i32, i32*) #1

declare dso_local i32 @le64_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
