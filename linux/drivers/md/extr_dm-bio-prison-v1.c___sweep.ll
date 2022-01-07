; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-bio-prison-v1.c___sweep.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-bio-prison-v1.c___sweep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_deferred_set = type { i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.list_head = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dm_deferred_set*, %struct.list_head*)* @__sweep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__sweep(%struct.dm_deferred_set* %0, %struct.list_head* %1) #0 {
  %3 = alloca %struct.dm_deferred_set*, align 8
  %4 = alloca %struct.list_head*, align 8
  store %struct.dm_deferred_set* %0, %struct.dm_deferred_set** %3, align 8
  store %struct.list_head* %1, %struct.list_head** %4, align 8
  br label %5

5:                                                ; preds = %27, %2
  %6 = load %struct.dm_deferred_set*, %struct.dm_deferred_set** %3, align 8
  %7 = getelementptr inbounds %struct.dm_deferred_set, %struct.dm_deferred_set* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.dm_deferred_set*, %struct.dm_deferred_set** %3, align 8
  %10 = getelementptr inbounds %struct.dm_deferred_set, %struct.dm_deferred_set* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %8, %11
  br i1 %12, label %13, label %25

13:                                               ; preds = %5
  %14 = load %struct.dm_deferred_set*, %struct.dm_deferred_set** %3, align 8
  %15 = getelementptr inbounds %struct.dm_deferred_set, %struct.dm_deferred_set* %14, i32 0, i32 2
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = load %struct.dm_deferred_set*, %struct.dm_deferred_set** %3, align 8
  %18 = getelementptr inbounds %struct.dm_deferred_set, %struct.dm_deferred_set* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  br label %25

25:                                               ; preds = %13, %5
  %26 = phi i1 [ false, %5 ], [ %24, %13 ]
  br i1 %26, label %27, label %44

27:                                               ; preds = %25
  %28 = load %struct.dm_deferred_set*, %struct.dm_deferred_set** %3, align 8
  %29 = getelementptr inbounds %struct.dm_deferred_set, %struct.dm_deferred_set* %28, i32 0, i32 2
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = load %struct.dm_deferred_set*, %struct.dm_deferred_set** %3, align 8
  %32 = getelementptr inbounds %struct.dm_deferred_set, %struct.dm_deferred_set* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load %struct.list_head*, %struct.list_head** %4, align 8
  %37 = call i32 @list_splice_init(i32* %35, %struct.list_head* %36)
  %38 = load %struct.dm_deferred_set*, %struct.dm_deferred_set** %3, align 8
  %39 = getelementptr inbounds %struct.dm_deferred_set, %struct.dm_deferred_set* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = call i64 @ds_next(i64 %40)
  %42 = load %struct.dm_deferred_set*, %struct.dm_deferred_set** %3, align 8
  %43 = getelementptr inbounds %struct.dm_deferred_set, %struct.dm_deferred_set* %42, i32 0, i32 0
  store i64 %41, i64* %43, align 8
  br label %5

44:                                               ; preds = %25
  %45 = load %struct.dm_deferred_set*, %struct.dm_deferred_set** %3, align 8
  %46 = getelementptr inbounds %struct.dm_deferred_set, %struct.dm_deferred_set* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.dm_deferred_set*, %struct.dm_deferred_set** %3, align 8
  %49 = getelementptr inbounds %struct.dm_deferred_set, %struct.dm_deferred_set* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp eq i64 %47, %50
  br i1 %51, label %52, label %74

52:                                               ; preds = %44
  %53 = load %struct.dm_deferred_set*, %struct.dm_deferred_set** %3, align 8
  %54 = getelementptr inbounds %struct.dm_deferred_set, %struct.dm_deferred_set* %53, i32 0, i32 2
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = load %struct.dm_deferred_set*, %struct.dm_deferred_set** %3, align 8
  %57 = getelementptr inbounds %struct.dm_deferred_set, %struct.dm_deferred_set* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %74, label %63

63:                                               ; preds = %52
  %64 = load %struct.dm_deferred_set*, %struct.dm_deferred_set** %3, align 8
  %65 = getelementptr inbounds %struct.dm_deferred_set, %struct.dm_deferred_set* %64, i32 0, i32 2
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = load %struct.dm_deferred_set*, %struct.dm_deferred_set** %3, align 8
  %68 = getelementptr inbounds %struct.dm_deferred_set, %struct.dm_deferred_set* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load %struct.list_head*, %struct.list_head** %4, align 8
  %73 = call i32 @list_splice_init(i32* %71, %struct.list_head* %72)
  br label %74

74:                                               ; preds = %63, %52, %44
  ret void
}

declare dso_local i32 @list_splice_init(i32*, %struct.list_head*) #1

declare dso_local i64 @ds_next(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
