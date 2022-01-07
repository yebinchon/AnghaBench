; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/persistent-data/extr_dm-array.c_grow_needs_more_blocks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/persistent-data/extr_dm-array.c_grow_needs_more_blocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resize = type { i32, i64, i64, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.resize*)* @grow_needs_more_blocks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @grow_needs_more_blocks(%struct.resize* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.resize*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.resize* %0, %struct.resize** %3, align 8
  %6 = load %struct.resize*, %struct.resize** %3, align 8
  %7 = getelementptr inbounds %struct.resize, %struct.resize* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  store i32 %8, i32* %5, align 4
  %9 = load %struct.resize*, %struct.resize** %3, align 8
  %10 = getelementptr inbounds %struct.resize, %struct.resize* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp sgt i64 %11, 0
  br i1 %12, label %13, label %26

13:                                               ; preds = %1
  %14 = load i32, i32* %5, align 4
  %15 = add i32 %14, 1
  store i32 %15, i32* %5, align 4
  %16 = load %struct.resize*, %struct.resize** %3, align 8
  %17 = load %struct.resize*, %struct.resize** %3, align 8
  %18 = getelementptr inbounds %struct.resize, %struct.resize* %17, i32 0, i32 5
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @grow_extend_tail_block(%struct.resize* %16, i32 %19)
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %13
  %24 = load i32, i32* %4, align 4
  store i32 %24, i32* %2, align 4
  br label %60

25:                                               ; preds = %13
  br label %26

26:                                               ; preds = %25, %1
  %27 = load %struct.resize*, %struct.resize** %3, align 8
  %28 = getelementptr inbounds %struct.resize, %struct.resize* %27, i32 0, i32 8
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.resize*, %struct.resize** %3, align 8
  %31 = getelementptr inbounds %struct.resize, %struct.resize* %30, i32 0, i32 7
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %5, align 4
  %34 = load %struct.resize*, %struct.resize** %3, align 8
  %35 = getelementptr inbounds %struct.resize, %struct.resize* %34, i32 0, i32 6
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.resize*, %struct.resize** %3, align 8
  %38 = getelementptr inbounds %struct.resize, %struct.resize* %37, i32 0, i32 5
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.resize*, %struct.resize** %3, align 8
  %41 = getelementptr inbounds %struct.resize, %struct.resize* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.resize*, %struct.resize** %3, align 8
  %44 = getelementptr inbounds %struct.resize, %struct.resize* %43, i32 0, i32 3
  %45 = call i32 @insert_full_ablocks(i32 %29, i32 %32, i32 %33, i32 %36, i32 %39, i32 %42, i32* %44)
  store i32 %45, i32* %4, align 4
  %46 = load i32, i32* %4, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %26
  %49 = load i32, i32* %4, align 4
  store i32 %49, i32* %2, align 4
  br label %60

50:                                               ; preds = %26
  %51 = load %struct.resize*, %struct.resize** %3, align 8
  %52 = getelementptr inbounds %struct.resize, %struct.resize* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %50
  %56 = load %struct.resize*, %struct.resize** %3, align 8
  %57 = call i32 @grow_add_tail_block(%struct.resize* %56)
  store i32 %57, i32* %4, align 4
  br label %58

58:                                               ; preds = %55, %50
  %59 = load i32, i32* %4, align 4
  store i32 %59, i32* %2, align 4
  br label %60

60:                                               ; preds = %58, %48, %23
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local i32 @grow_extend_tail_block(%struct.resize*, i32) #1

declare dso_local i32 @insert_full_ablocks(i32, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @grow_add_tail_block(%struct.resize*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
