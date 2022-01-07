; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-target.c_calc_discard_block_range.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-target.c_calc_discard_block_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache = type { i64 }
%struct.bio = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cache*, %struct.bio*, i32*, i32*)* @calc_discard_block_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @calc_discard_block_range(%struct.cache* %0, %struct.bio* %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.cache*, align 8
  %6 = alloca %struct.bio*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.cache* %0, %struct.cache** %5, align 8
  store %struct.bio* %1, %struct.bio** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %11 = load %struct.bio*, %struct.bio** %6, align 8
  %12 = getelementptr inbounds %struct.bio, %struct.bio* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %9, align 8
  %15 = load %struct.bio*, %struct.bio** %6, align 8
  %16 = call i64 @bio_end_sector(%struct.bio* %15)
  store i64 %16, i64* %10, align 8
  %17 = load i64, i64* %9, align 8
  %18 = load %struct.cache*, %struct.cache** %5, align 8
  %19 = getelementptr inbounds %struct.cache, %struct.cache* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @dm_sector_div_up(i64 %17, i64 %20)
  %22 = call i32 @to_dblock(i32 %21)
  %23 = load i32*, i32** %7, align 8
  store i32 %22, i32* %23, align 4
  %24 = load i64, i64* %10, align 8
  %25 = load i64, i64* %9, align 8
  %26 = sub nsw i64 %24, %25
  %27 = load %struct.cache*, %struct.cache** %5, align 8
  %28 = getelementptr inbounds %struct.cache, %struct.cache* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp slt i64 %26, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %4
  %32 = load i32*, i32** %7, align 8
  %33 = load i32, i32* %32, align 4
  %34 = load i32*, i32** %8, align 8
  store i32 %33, i32* %34, align 4
  br label %43

35:                                               ; preds = %4
  %36 = load i64, i64* %10, align 8
  %37 = load %struct.cache*, %struct.cache** %5, align 8
  %38 = getelementptr inbounds %struct.cache, %struct.cache* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @block_div(i64 %36, i64 %39)
  %41 = call i32 @to_dblock(i32 %40)
  %42 = load i32*, i32** %8, align 8
  store i32 %41, i32* %42, align 4
  br label %43

43:                                               ; preds = %35, %31
  ret void
}

declare dso_local i64 @bio_end_sector(%struct.bio*) #1

declare dso_local i32 @to_dblock(i32) #1

declare dso_local i32 @dm_sector_div_up(i64, i64) #1

declare dso_local i32 @block_div(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
