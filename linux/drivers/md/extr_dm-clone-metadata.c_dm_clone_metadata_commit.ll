; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-clone-metadata.c_dm_clone_metadata_commit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-clone-metadata.c_dm_clone_metadata_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_clone_metadata = type { i32, i32, %struct.dirty_map*, %struct.dirty_map*, i32, i64 }
%struct.dirty_map = type { i32 }

@EPERM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dm_clone_metadata_commit(%struct.dm_clone_metadata* %0) #0 {
  %2 = alloca %struct.dm_clone_metadata*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.dirty_map*, align 8
  %6 = alloca %struct.dirty_map*, align 8
  store %struct.dm_clone_metadata* %0, %struct.dm_clone_metadata** %2, align 8
  %7 = load i32, i32* @EPERM, align 4
  %8 = sub nsw i32 0, %7
  store i32 %8, i32* %3, align 4
  %9 = load %struct.dm_clone_metadata*, %struct.dm_clone_metadata** %2, align 8
  %10 = getelementptr inbounds %struct.dm_clone_metadata, %struct.dm_clone_metadata* %9, i32 0, i32 0
  %11 = call i32 @down_write(i32* %10)
  %12 = load %struct.dm_clone_metadata*, %struct.dm_clone_metadata** %2, align 8
  %13 = getelementptr inbounds %struct.dm_clone_metadata, %struct.dm_clone_metadata* %12, i32 0, i32 5
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %22, label %16

16:                                               ; preds = %1
  %17 = load %struct.dm_clone_metadata*, %struct.dm_clone_metadata** %2, align 8
  %18 = getelementptr inbounds %struct.dm_clone_metadata, %struct.dm_clone_metadata* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 8
  %20 = call i64 @dm_bm_is_read_only(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %16, %1
  br label %68

23:                                               ; preds = %16
  %24 = load %struct.dm_clone_metadata*, %struct.dm_clone_metadata** %2, align 8
  %25 = getelementptr inbounds %struct.dm_clone_metadata, %struct.dm_clone_metadata* %24, i32 0, i32 2
  %26 = load %struct.dirty_map*, %struct.dirty_map** %25, align 8
  store %struct.dirty_map* %26, %struct.dirty_map** %5, align 8
  %27 = load %struct.dirty_map*, %struct.dirty_map** %5, align 8
  %28 = load %struct.dm_clone_metadata*, %struct.dm_clone_metadata** %2, align 8
  %29 = getelementptr inbounds %struct.dm_clone_metadata, %struct.dm_clone_metadata* %28, i32 0, i32 3
  %30 = load %struct.dirty_map*, %struct.dirty_map** %29, align 8
  %31 = getelementptr inbounds %struct.dirty_map, %struct.dirty_map* %30, i64 0
  %32 = icmp eq %struct.dirty_map* %27, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %23
  %34 = load %struct.dm_clone_metadata*, %struct.dm_clone_metadata** %2, align 8
  %35 = getelementptr inbounds %struct.dm_clone_metadata, %struct.dm_clone_metadata* %34, i32 0, i32 3
  %36 = load %struct.dirty_map*, %struct.dirty_map** %35, align 8
  %37 = getelementptr inbounds %struct.dirty_map, %struct.dirty_map* %36, i64 1
  br label %43

38:                                               ; preds = %23
  %39 = load %struct.dm_clone_metadata*, %struct.dm_clone_metadata** %2, align 8
  %40 = getelementptr inbounds %struct.dm_clone_metadata, %struct.dm_clone_metadata* %39, i32 0, i32 3
  %41 = load %struct.dirty_map*, %struct.dirty_map** %40, align 8
  %42 = getelementptr inbounds %struct.dirty_map, %struct.dirty_map* %41, i64 0
  br label %43

43:                                               ; preds = %38, %33
  %44 = phi %struct.dirty_map* [ %37, %33 ], [ %42, %38 ]
  store %struct.dirty_map* %44, %struct.dirty_map** %6, align 8
  %45 = load %struct.dirty_map*, %struct.dirty_map** %6, align 8
  %46 = getelementptr inbounds %struct.dirty_map, %struct.dirty_map* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i64 @WARN_ON(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %43
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %3, align 4
  br label %68

53:                                               ; preds = %43
  %54 = load %struct.dm_clone_metadata*, %struct.dm_clone_metadata** %2, align 8
  %55 = getelementptr inbounds %struct.dm_clone_metadata, %struct.dm_clone_metadata* %54, i32 0, i32 1
  %56 = load i64, i64* %4, align 8
  %57 = call i32 @spin_lock_irqsave(i32* %55, i64 %56)
  %58 = load %struct.dirty_map*, %struct.dirty_map** %6, align 8
  %59 = load %struct.dm_clone_metadata*, %struct.dm_clone_metadata** %2, align 8
  %60 = getelementptr inbounds %struct.dm_clone_metadata, %struct.dm_clone_metadata* %59, i32 0, i32 2
  store %struct.dirty_map* %58, %struct.dirty_map** %60, align 8
  %61 = load %struct.dm_clone_metadata*, %struct.dm_clone_metadata** %2, align 8
  %62 = getelementptr inbounds %struct.dm_clone_metadata, %struct.dm_clone_metadata* %61, i32 0, i32 1
  %63 = load i64, i64* %4, align 8
  %64 = call i32 @spin_unlock_irqrestore(i32* %62, i64 %63)
  %65 = load %struct.dm_clone_metadata*, %struct.dm_clone_metadata** %2, align 8
  %66 = load %struct.dirty_map*, %struct.dirty_map** %5, align 8
  %67 = call i32 @__flush_dmap(%struct.dm_clone_metadata* %65, %struct.dirty_map* %66)
  store i32 %67, i32* %3, align 4
  br label %68

68:                                               ; preds = %53, %50, %22
  %69 = load %struct.dm_clone_metadata*, %struct.dm_clone_metadata** %2, align 8
  %70 = getelementptr inbounds %struct.dm_clone_metadata, %struct.dm_clone_metadata* %69, i32 0, i32 0
  %71 = call i32 @up_write(i32* %70)
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local i32 @down_write(i32*) #1

declare dso_local i64 @dm_bm_is_read_only(i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @__flush_dmap(%struct.dm_clone_metadata*, %struct.dirty_map*) #1

declare dso_local i32 @up_write(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
