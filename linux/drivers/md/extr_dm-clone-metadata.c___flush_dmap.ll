; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-clone-metadata.c___flush_dmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-clone-metadata.c___flush_dmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_clone_metadata = type { i64, i32 }
%struct.dirty_map = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_clone_metadata*, %struct.dirty_map*)* @__flush_dmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__flush_dmap(%struct.dm_clone_metadata* %0, %struct.dirty_map* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dm_clone_metadata*, align 8
  %5 = alloca %struct.dirty_map*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.dm_clone_metadata* %0, %struct.dm_clone_metadata** %4, align 8
  store %struct.dirty_map* %1, %struct.dirty_map** %5, align 8
  store i64 0, i64* %7, align 8
  br label %9

9:                                                ; preds = %40, %2
  %10 = load %struct.dirty_map*, %struct.dirty_map** %5, align 8
  %11 = getelementptr inbounds %struct.dirty_map, %struct.dirty_map* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.dm_clone_metadata*, %struct.dm_clone_metadata** %4, align 8
  %14 = getelementptr inbounds %struct.dm_clone_metadata, %struct.dm_clone_metadata* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* %7, align 8
  %17 = call i64 @find_next_bit(i32 %12, i64 %15, i64 %16)
  store i64 %17, i64* %7, align 8
  %18 = load i64, i64* %7, align 8
  %19 = load %struct.dm_clone_metadata*, %struct.dm_clone_metadata** %4, align 8
  %20 = getelementptr inbounds %struct.dm_clone_metadata, %struct.dm_clone_metadata* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %18, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %9
  br label %46

24:                                               ; preds = %9
  %25 = load %struct.dm_clone_metadata*, %struct.dm_clone_metadata** %4, align 8
  %26 = load i64, i64* %7, align 8
  %27 = call i32 @__update_metadata_word(%struct.dm_clone_metadata* %25, i64 %26)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = load i32, i32* %6, align 4
  store i32 %31, i32* %3, align 4
  br label %64

32:                                               ; preds = %24
  %33 = load i64, i64* %7, align 8
  %34 = load %struct.dirty_map*, %struct.dirty_map** %5, align 8
  %35 = getelementptr inbounds %struct.dirty_map, %struct.dirty_map* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @__clear_bit(i64 %33, i32 %36)
  %38 = load i64, i64* %7, align 8
  %39 = add i64 %38, 1
  store i64 %39, i64* %7, align 8
  br label %40

40:                                               ; preds = %32
  %41 = load i64, i64* %7, align 8
  %42 = load %struct.dm_clone_metadata*, %struct.dm_clone_metadata** %4, align 8
  %43 = getelementptr inbounds %struct.dm_clone_metadata, %struct.dm_clone_metadata* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ult i64 %41, %44
  br i1 %45, label %9, label %46

46:                                               ; preds = %40, %23
  %47 = load %struct.dm_clone_metadata*, %struct.dm_clone_metadata** %4, align 8
  %48 = call i32 @__metadata_commit(%struct.dm_clone_metadata* %47)
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %6, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %46
  %52 = load i32, i32* %6, align 4
  store i32 %52, i32* %3, align 4
  br label %64

53:                                               ; preds = %46
  %54 = load %struct.dm_clone_metadata*, %struct.dm_clone_metadata** %4, align 8
  %55 = getelementptr inbounds %struct.dm_clone_metadata, %struct.dm_clone_metadata* %54, i32 0, i32 1
  %56 = load i64, i64* %8, align 8
  %57 = call i32 @spin_lock_irqsave(i32* %55, i64 %56)
  %58 = load %struct.dirty_map*, %struct.dirty_map** %5, align 8
  %59 = getelementptr inbounds %struct.dirty_map, %struct.dirty_map* %58, i32 0, i32 0
  store i64 0, i64* %59, align 8
  %60 = load %struct.dm_clone_metadata*, %struct.dm_clone_metadata** %4, align 8
  %61 = getelementptr inbounds %struct.dm_clone_metadata, %struct.dm_clone_metadata* %60, i32 0, i32 1
  %62 = load i64, i64* %8, align 8
  %63 = call i32 @spin_unlock_irqrestore(i32* %61, i64 %62)
  store i32 0, i32* %3, align 4
  br label %64

64:                                               ; preds = %53, %51, %30
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i64 @find_next_bit(i32, i64, i64) #1

declare dso_local i32 @__update_metadata_word(%struct.dm_clone_metadata*, i64) #1

declare dso_local i32 @__clear_bit(i64, i32) #1

declare dso_local i32 @__metadata_commit(%struct.dm_clone_metadata*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
