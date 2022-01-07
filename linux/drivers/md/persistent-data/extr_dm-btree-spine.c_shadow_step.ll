; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/persistent-data/extr_dm-btree-spine.c_shadow_step.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/persistent-data/extr_dm-btree-spine.c_shadow_step.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shadow_spine = type { i32, i32*, i32, i32 }
%struct.dm_btree_value_type = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @shadow_step(%struct.shadow_spine* %0, i32 %1, %struct.dm_btree_value_type* %2) #0 {
  %4 = alloca %struct.shadow_spine*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dm_btree_value_type*, align 8
  %7 = alloca i32, align 4
  store %struct.shadow_spine* %0, %struct.shadow_spine** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.dm_btree_value_type* %2, %struct.dm_btree_value_type** %6, align 8
  %8 = load %struct.shadow_spine*, %struct.shadow_spine** %4, align 8
  %9 = getelementptr inbounds %struct.shadow_spine, %struct.shadow_spine* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp eq i32 %10, 2
  br i1 %11, label %12, label %35

12:                                               ; preds = %3
  %13 = load %struct.shadow_spine*, %struct.shadow_spine** %4, align 8
  %14 = getelementptr inbounds %struct.shadow_spine, %struct.shadow_spine* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.shadow_spine*, %struct.shadow_spine** %4, align 8
  %17 = getelementptr inbounds %struct.shadow_spine, %struct.shadow_spine* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @unlock_block(i32 %15, i32 %20)
  %22 = load %struct.shadow_spine*, %struct.shadow_spine** %4, align 8
  %23 = getelementptr inbounds %struct.shadow_spine, %struct.shadow_spine* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.shadow_spine*, %struct.shadow_spine** %4, align 8
  %28 = getelementptr inbounds %struct.shadow_spine, %struct.shadow_spine* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  store i32 %26, i32* %30, align 4
  %31 = load %struct.shadow_spine*, %struct.shadow_spine** %4, align 8
  %32 = getelementptr inbounds %struct.shadow_spine, %struct.shadow_spine* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = add nsw i32 %33, -1
  store i32 %34, i32* %32, align 8
  br label %35

35:                                               ; preds = %12, %3
  %36 = load %struct.shadow_spine*, %struct.shadow_spine** %4, align 8
  %37 = getelementptr inbounds %struct.shadow_spine, %struct.shadow_spine* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %5, align 4
  %40 = load %struct.dm_btree_value_type*, %struct.dm_btree_value_type** %6, align 8
  %41 = load %struct.shadow_spine*, %struct.shadow_spine** %4, align 8
  %42 = getelementptr inbounds %struct.shadow_spine, %struct.shadow_spine* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = load %struct.shadow_spine*, %struct.shadow_spine** %4, align 8
  %45 = getelementptr inbounds %struct.shadow_spine, %struct.shadow_spine* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %43, i64 %47
  %49 = call i32 @bn_shadow(i32 %38, i32 %39, %struct.dm_btree_value_type* %40, i32* %48)
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* %7, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %71, label %52

52:                                               ; preds = %35
  %53 = load %struct.shadow_spine*, %struct.shadow_spine** %4, align 8
  %54 = getelementptr inbounds %struct.shadow_spine, %struct.shadow_spine* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %66, label %57

57:                                               ; preds = %52
  %58 = load %struct.shadow_spine*, %struct.shadow_spine** %4, align 8
  %59 = getelementptr inbounds %struct.shadow_spine, %struct.shadow_spine* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @dm_block_location(i32 %62)
  %64 = load %struct.shadow_spine*, %struct.shadow_spine** %4, align 8
  %65 = getelementptr inbounds %struct.shadow_spine, %struct.shadow_spine* %64, i32 0, i32 2
  store i32 %63, i32* %65, align 8
  br label %66

66:                                               ; preds = %57, %52
  %67 = load %struct.shadow_spine*, %struct.shadow_spine** %4, align 8
  %68 = getelementptr inbounds %struct.shadow_spine, %struct.shadow_spine* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %68, align 8
  br label %71

71:                                               ; preds = %66, %35
  %72 = load i32, i32* %7, align 4
  ret i32 %72
}

declare dso_local i32 @unlock_block(i32, i32) #1

declare dso_local i32 @bn_shadow(i32, i32, %struct.dm_btree_value_type*, i32*) #1

declare dso_local i32 @dm_block_location(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
