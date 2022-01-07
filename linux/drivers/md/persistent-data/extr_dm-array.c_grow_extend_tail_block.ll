; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/persistent-data/extr_dm-array.c_grow_extend_tail_block.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/persistent-data/extr_dm-array.c_grow_extend_tail_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resize = type { i32, i32, i32, i32 }
%struct.dm_block = type { i32 }
%struct.array_block = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.resize*, i32)* @grow_extend_tail_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @grow_extend_tail_block(%struct.resize* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.resize*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.dm_block*, align 8
  %8 = alloca %struct.array_block*, align 8
  store %struct.resize* %0, %struct.resize** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.resize*, %struct.resize** %4, align 8
  %10 = getelementptr inbounds %struct.resize, %struct.resize* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.resize*, %struct.resize** %4, align 8
  %13 = getelementptr inbounds %struct.resize, %struct.resize* %12, i32 0, i32 3
  %14 = load %struct.resize*, %struct.resize** %4, align 8
  %15 = getelementptr inbounds %struct.resize, %struct.resize* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @shadow_ablock(i32 %11, i32* %13, i32 %16, %struct.dm_block** %7, %struct.array_block** %8)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = load i32, i32* %6, align 4
  store i32 %21, i32* %3, align 4
  br label %38

22:                                               ; preds = %2
  %23 = load %struct.resize*, %struct.resize** %4, align 8
  %24 = getelementptr inbounds %struct.resize, %struct.resize* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.array_block*, %struct.array_block** %8, align 8
  %27 = load %struct.resize*, %struct.resize** %4, align 8
  %28 = getelementptr inbounds %struct.resize, %struct.resize* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @fill_ablock(i32 %25, %struct.array_block* %26, i32 %29, i32 %30)
  %32 = load %struct.resize*, %struct.resize** %4, align 8
  %33 = getelementptr inbounds %struct.resize, %struct.resize* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.dm_block*, %struct.dm_block** %7, align 8
  %36 = call i32 @unlock_ablock(i32 %34, %struct.dm_block* %35)
  %37 = load i32, i32* %6, align 4
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %22, %20
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i32 @shadow_ablock(i32, i32*, i32, %struct.dm_block**, %struct.array_block**) #1

declare dso_local i32 @fill_ablock(i32, %struct.array_block*, i32, i32) #1

declare dso_local i32 @unlock_ablock(i32, %struct.dm_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
