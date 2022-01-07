; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-era-target.c_writeset_test_and_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-era-target.c_writeset_test_and_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_disk_bitset = type { i32 }
%struct.writeset = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_disk_bitset*, %struct.writeset*, i32)* @writeset_test_and_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @writeset_test_and_set(%struct.dm_disk_bitset* %0, %struct.writeset* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dm_disk_bitset*, align 8
  %6 = alloca %struct.writeset*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.dm_disk_bitset* %0, %struct.dm_disk_bitset** %5, align 8
  store %struct.writeset* %1, %struct.writeset** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %7, align 4
  %10 = load %struct.writeset*, %struct.writeset** %6, align 8
  %11 = getelementptr inbounds %struct.writeset, %struct.writeset* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @test_and_set_bit(i32 %9, i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %31, label %15

15:                                               ; preds = %3
  %16 = load %struct.dm_disk_bitset*, %struct.dm_disk_bitset** %5, align 8
  %17 = load %struct.writeset*, %struct.writeset** %6, align 8
  %18 = getelementptr inbounds %struct.writeset, %struct.writeset* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %7, align 4
  %22 = load %struct.writeset*, %struct.writeset** %6, align 8
  %23 = getelementptr inbounds %struct.writeset, %struct.writeset* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = call i32 @dm_bitset_set_bit(%struct.dm_disk_bitset* %16, i32 %20, i32 %21, i32* %24)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %15
  %29 = load i32, i32* %8, align 4
  store i32 %29, i32* %4, align 4
  br label %32

30:                                               ; preds = %15
  store i32 0, i32* %4, align 4
  br label %32

31:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %32

32:                                               ; preds = %31, %30, %28
  %33 = load i32, i32* %4, align 4
  ret i32 %33
}

declare dso_local i32 @test_and_set_bit(i32, i32) #1

declare dso_local i32 @dm_bitset_set_bit(%struct.dm_disk_bitset*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
