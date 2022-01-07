; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/persistent-data/extr_dm-btree.c_dm_btree_find_key.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/persistent-data/extr_dm-btree.c_dm_btree_find_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_btree_info = type { i32 }
%struct.ro_spine = type { i32 }

@ENODATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_btree_info*, i32, i32, i32*)* @dm_btree_find_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dm_btree_find_key(%struct.dm_btree_info* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.dm_btree_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.ro_spine, align 4
  store %struct.dm_btree_info* %0, %struct.dm_btree_info** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %13 = load %struct.dm_btree_info*, %struct.dm_btree_info** %5, align 8
  %14 = call i32 @init_ro_spine(%struct.ro_spine* %12, %struct.dm_btree_info* %13)
  store i32 0, i32* %11, align 4
  br label %15

15:                                               ; preds = %52, %4
  %16 = load i32, i32* %11, align 4
  %17 = load %struct.dm_btree_info*, %struct.dm_btree_info** %5, align 8
  %18 = getelementptr inbounds %struct.dm_btree_info, %struct.dm_btree_info* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp slt i32 %16, %19
  br i1 %20, label %21, label %55

21:                                               ; preds = %15
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* %7, align 4
  %24 = load i32*, i32** %8, align 8
  %25 = load i32, i32* %11, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %11, align 4
  %29 = load %struct.dm_btree_info*, %struct.dm_btree_info** %5, align 8
  %30 = getelementptr inbounds %struct.dm_btree_info, %struct.dm_btree_info* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = sub nsw i32 %31, 1
  %33 = icmp eq i32 %28, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %21
  br label %36

35:                                               ; preds = %21
  br label %36

36:                                               ; preds = %35, %34
  %37 = phi i32* [ null, %34 ], [ %6, %35 ]
  %38 = call i32 @find_key(%struct.ro_spine* %12, i32 %22, i32 %23, i32* %27, i32* %37)
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* @ENODATA, align 4
  %41 = sub nsw i32 0, %40
  %42 = icmp eq i32 %39, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %36
  store i32 0, i32* %9, align 4
  br label %55

44:                                               ; preds = %36
  %45 = load i32, i32* %9, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %44
  br label %55

48:                                               ; preds = %44
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %10, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %10, align 4
  br label %52

52:                                               ; preds = %49
  %53 = load i32, i32* %11, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %11, align 4
  br label %15

55:                                               ; preds = %47, %43, %15
  %56 = call i32 @exit_ro_spine(%struct.ro_spine* %12)
  %57 = load i32, i32* %9, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %55
  %60 = load i32, i32* %9, align 4
  br label %63

61:                                               ; preds = %55
  %62 = load i32, i32* %10, align 4
  br label %63

63:                                               ; preds = %61, %59
  %64 = phi i32 [ %60, %59 ], [ %62, %61 ]
  ret i32 %64
}

declare dso_local i32 @init_ro_spine(%struct.ro_spine*, %struct.dm_btree_info*) #1

declare dso_local i32 @find_key(%struct.ro_spine*, i32, i32, i32*, i32*) #1

declare dso_local i32 @exit_ro_spine(%struct.ro_spine*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
