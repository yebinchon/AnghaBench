; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-clone-metadata.c_dm_clone_cond_set_range.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-clone-metadata.c_dm_clone_cond_set_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_clone_metadata = type { i32, i32, %struct.dirty_map*, i64 }
%struct.dirty_map = type { i32, i32 }

@EPERM = common dso_local global i32 0, align 4
@BITS_PER_LONG = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dm_clone_cond_set_range(%struct.dm_clone_metadata* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.dm_clone_metadata*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.dirty_map*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.dm_clone_metadata* %0, %struct.dm_clone_metadata** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  store i32 0, i32* %7, align 4
  %12 = load %struct.dm_clone_metadata*, %struct.dm_clone_metadata** %4, align 8
  %13 = getelementptr inbounds %struct.dm_clone_metadata, %struct.dm_clone_metadata* %12, i32 0, i32 0
  %14 = load i64, i64* %11, align 8
  %15 = call i32 @spin_lock_irqsave(i32* %13, i64 %14)
  %16 = load %struct.dm_clone_metadata*, %struct.dm_clone_metadata** %4, align 8
  %17 = getelementptr inbounds %struct.dm_clone_metadata, %struct.dm_clone_metadata* %16, i32 0, i32 3
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = load i32, i32* @EPERM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %7, align 4
  br label %62

23:                                               ; preds = %3
  %24 = load %struct.dm_clone_metadata*, %struct.dm_clone_metadata** %4, align 8
  %25 = getelementptr inbounds %struct.dm_clone_metadata, %struct.dm_clone_metadata* %24, i32 0, i32 2
  %26 = load %struct.dirty_map*, %struct.dirty_map** %25, align 8
  store %struct.dirty_map* %26, %struct.dirty_map** %8, align 8
  %27 = load i64, i64* %5, align 8
  store i64 %27, i64* %10, align 8
  br label %28

28:                                               ; preds = %58, %23
  %29 = load i64, i64* %10, align 8
  %30 = load i64, i64* %5, align 8
  %31 = load i64, i64* %6, align 8
  %32 = add i64 %30, %31
  %33 = icmp ult i64 %29, %32
  br i1 %33, label %34, label %61

34:                                               ; preds = %28
  %35 = load i64, i64* %10, align 8
  %36 = load %struct.dm_clone_metadata*, %struct.dm_clone_metadata** %4, align 8
  %37 = getelementptr inbounds %struct.dm_clone_metadata, %struct.dm_clone_metadata* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @test_bit(i64 %35, i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %57, label %41

41:                                               ; preds = %34
  %42 = load i64, i64* %10, align 8
  %43 = load i64, i64* @BITS_PER_LONG, align 8
  %44 = udiv i64 %42, %43
  store i64 %44, i64* %9, align 8
  %45 = load i64, i64* %9, align 8
  %46 = load %struct.dirty_map*, %struct.dirty_map** %8, align 8
  %47 = getelementptr inbounds %struct.dirty_map, %struct.dirty_map* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @__set_bit(i64 %45, i32 %48)
  %50 = load i64, i64* %10, align 8
  %51 = load %struct.dm_clone_metadata*, %struct.dm_clone_metadata** %4, align 8
  %52 = getelementptr inbounds %struct.dm_clone_metadata, %struct.dm_clone_metadata* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @__set_bit(i64 %50, i32 %53)
  %55 = load %struct.dirty_map*, %struct.dirty_map** %8, align 8
  %56 = getelementptr inbounds %struct.dirty_map, %struct.dirty_map* %55, i32 0, i32 0
  store i32 1, i32* %56, align 4
  br label %57

57:                                               ; preds = %41, %34
  br label %58

58:                                               ; preds = %57
  %59 = load i64, i64* %10, align 8
  %60 = add i64 %59, 1
  store i64 %60, i64* %10, align 8
  br label %28

61:                                               ; preds = %28
  br label %62

62:                                               ; preds = %61, %20
  %63 = load %struct.dm_clone_metadata*, %struct.dm_clone_metadata** %4, align 8
  %64 = getelementptr inbounds %struct.dm_clone_metadata, %struct.dm_clone_metadata* %63, i32 0, i32 0
  %65 = load i64, i64* %11, align 8
  %66 = call i32 @spin_unlock_irqrestore(i32* %64, i64 %65)
  %67 = load i32, i32* %7, align 4
  ret i32 %67
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @test_bit(i64, i32) #1

declare dso_local i32 @__set_bit(i64, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
