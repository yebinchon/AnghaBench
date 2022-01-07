; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/persistent-data/extr_dm-btree.c_dm_btree_lookup_next.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/persistent-data/extr_dm-btree.c_dm_btree_lookup_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_btree_info = type { i32 }
%struct.ro_spine = type { i32 }

@ENODATA = common dso_local global i32 0, align 4
@lower_bound = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dm_btree_lookup_next(%struct.dm_btree_info* %0, i32 %1, i64* %2, i64* %3, i8* %4) #0 {
  %6 = alloca %struct.dm_btree_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.ro_spine, align 4
  store %struct.dm_btree_info* %0, %struct.dm_btree_info** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64* %2, i64** %8, align 8
  store i64* %3, i64** %9, align 8
  store i8* %4, i8** %10, align 8
  %15 = load i32, i32* @ENODATA, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %12, align 4
  %17 = load %struct.dm_btree_info*, %struct.dm_btree_info** %6, align 8
  %18 = call i32 @init_ro_spine(%struct.ro_spine* %14, %struct.dm_btree_info* %17)
  store i32 0, i32* %11, align 4
  br label %19

19:                                               ; preds = %54, %5
  %20 = load i32, i32* %11, align 4
  %21 = load %struct.dm_btree_info*, %struct.dm_btree_info** %6, align 8
  %22 = getelementptr inbounds %struct.dm_btree_info, %struct.dm_btree_info* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = sub i32 %23, 1
  %25 = icmp ult i32 %20, %24
  br i1 %25, label %26, label %57

26:                                               ; preds = %19
  %27 = load i32, i32* %7, align 4
  %28 = load i64*, i64** %8, align 8
  %29 = load i32, i32* %11, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds i64, i64* %28, i64 %30
  %32 = load i64, i64* %31, align 8
  %33 = load i32, i32* @lower_bound, align 4
  %34 = load i64*, i64** %9, align 8
  %35 = call i32 @btree_lookup_raw(%struct.ro_spine* %14, i32 %27, i64 %32, i32 %33, i64* %34, i32* %13, i32 8)
  store i32 %35, i32* %12, align 4
  %36 = load i32, i32* %12, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %26
  br label %68

39:                                               ; preds = %26
  %40 = load i64*, i64** %9, align 8
  %41 = load i64, i64* %40, align 8
  %42 = load i64*, i64** %8, align 8
  %43 = load i32, i32* %11, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds i64, i64* %42, i64 %44
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %41, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %39
  %49 = load i32, i32* @ENODATA, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %12, align 4
  br label %68

51:                                               ; preds = %39
  %52 = load i32, i32* %13, align 4
  %53 = call i32 @le64_to_cpu(i32 %52)
  store i32 %53, i32* %7, align 4
  br label %54

54:                                               ; preds = %51
  %55 = load i32, i32* %11, align 4
  %56 = add i32 %55, 1
  store i32 %56, i32* %11, align 4
  br label %19

57:                                               ; preds = %19
  %58 = load %struct.dm_btree_info*, %struct.dm_btree_info** %6, align 8
  %59 = load i32, i32* %7, align 4
  %60 = load i64*, i64** %8, align 8
  %61 = load i32, i32* %11, align 4
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds i64, i64* %60, i64 %62
  %64 = load i64, i64* %63, align 8
  %65 = load i64*, i64** %9, align 8
  %66 = load i8*, i8** %10, align 8
  %67 = call i32 @dm_btree_lookup_next_single(%struct.dm_btree_info* %58, i32 %59, i64 %64, i64* %65, i8* %66)
  store i32 %67, i32* %12, align 4
  br label %68

68:                                               ; preds = %57, %48, %38
  %69 = call i32 @exit_ro_spine(%struct.ro_spine* %14)
  %70 = load i32, i32* %12, align 4
  ret i32 %70
}

declare dso_local i32 @init_ro_spine(%struct.ro_spine*, %struct.dm_btree_info*) #1

declare dso_local i32 @btree_lookup_raw(%struct.ro_spine*, i32, i64, i32, i64*, i32*, i32) #1

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i32 @dm_btree_lookup_next_single(%struct.dm_btree_info*, i32, i64, i64*, i8*) #1

declare dso_local i32 @exit_ro_spine(%struct.ro_spine*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
