; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-zoned-metadata.c_dmz_release_mblock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-zoned-metadata.c_dmz_release_mblock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmz_metadata = type { i32, i32, i32 }
%struct.dmz_mblock = type { i64, i32, i32, i32 }

@DMZ_META_ERROR = common dso_local global i32 0, align 4
@DMZ_META_DIRTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dmz_metadata*, %struct.dmz_mblock*)* @dmz_release_mblock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dmz_release_mblock(%struct.dmz_metadata* %0, %struct.dmz_mblock* %1) #0 {
  %3 = alloca %struct.dmz_metadata*, align 8
  %4 = alloca %struct.dmz_mblock*, align 8
  store %struct.dmz_metadata* %0, %struct.dmz_metadata** %3, align 8
  store %struct.dmz_mblock* %1, %struct.dmz_mblock** %4, align 8
  %5 = load %struct.dmz_mblock*, %struct.dmz_mblock** %4, align 8
  %6 = icmp ne %struct.dmz_mblock* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  br label %55

8:                                                ; preds = %2
  %9 = load %struct.dmz_metadata*, %struct.dmz_metadata** %3, align 8
  %10 = getelementptr inbounds %struct.dmz_metadata, %struct.dmz_metadata* %9, i32 0, i32 0
  %11 = call i32 @spin_lock(i32* %10)
  %12 = load %struct.dmz_mblock*, %struct.dmz_mblock** %4, align 8
  %13 = getelementptr inbounds %struct.dmz_mblock, %struct.dmz_mblock* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = add nsw i64 %14, -1
  store i64 %15, i64* %13, align 8
  %16 = load %struct.dmz_mblock*, %struct.dmz_mblock** %4, align 8
  %17 = getelementptr inbounds %struct.dmz_mblock, %struct.dmz_mblock* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %51

20:                                               ; preds = %8
  %21 = load i32, i32* @DMZ_META_ERROR, align 4
  %22 = load %struct.dmz_mblock*, %struct.dmz_mblock** %4, align 8
  %23 = getelementptr inbounds %struct.dmz_mblock, %struct.dmz_mblock* %22, i32 0, i32 2
  %24 = call i64 @test_bit(i32 %21, i32* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %20
  %27 = load %struct.dmz_mblock*, %struct.dmz_mblock** %4, align 8
  %28 = getelementptr inbounds %struct.dmz_mblock, %struct.dmz_mblock* %27, i32 0, i32 3
  %29 = load %struct.dmz_metadata*, %struct.dmz_metadata** %3, align 8
  %30 = getelementptr inbounds %struct.dmz_metadata, %struct.dmz_metadata* %29, i32 0, i32 2
  %31 = call i32 @rb_erase(i32* %28, i32* %30)
  %32 = load %struct.dmz_metadata*, %struct.dmz_metadata** %3, align 8
  %33 = load %struct.dmz_mblock*, %struct.dmz_mblock** %4, align 8
  %34 = call i32 @dmz_free_mblock(%struct.dmz_metadata* %32, %struct.dmz_mblock* %33)
  br label %50

35:                                               ; preds = %20
  %36 = load i32, i32* @DMZ_META_DIRTY, align 4
  %37 = load %struct.dmz_mblock*, %struct.dmz_mblock** %4, align 8
  %38 = getelementptr inbounds %struct.dmz_mblock, %struct.dmz_mblock* %37, i32 0, i32 2
  %39 = call i64 @test_bit(i32 %36, i32* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %49, label %41

41:                                               ; preds = %35
  %42 = load %struct.dmz_mblock*, %struct.dmz_mblock** %4, align 8
  %43 = getelementptr inbounds %struct.dmz_mblock, %struct.dmz_mblock* %42, i32 0, i32 1
  %44 = load %struct.dmz_metadata*, %struct.dmz_metadata** %3, align 8
  %45 = getelementptr inbounds %struct.dmz_metadata, %struct.dmz_metadata* %44, i32 0, i32 1
  %46 = call i32 @list_add_tail(i32* %43, i32* %45)
  %47 = load %struct.dmz_metadata*, %struct.dmz_metadata** %3, align 8
  %48 = call i32 @dmz_shrink_mblock_cache(%struct.dmz_metadata* %47, i32 1)
  br label %49

49:                                               ; preds = %41, %35
  br label %50

50:                                               ; preds = %49, %26
  br label %51

51:                                               ; preds = %50, %8
  %52 = load %struct.dmz_metadata*, %struct.dmz_metadata** %3, align 8
  %53 = getelementptr inbounds %struct.dmz_metadata, %struct.dmz_metadata* %52, i32 0, i32 0
  %54 = call i32 @spin_unlock(i32* %53)
  br label %55

55:                                               ; preds = %51, %7
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @rb_erase(i32*, i32*) #1

declare dso_local i32 @dmz_free_mblock(%struct.dmz_metadata*, %struct.dmz_mblock*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @dmz_shrink_mblock_cache(%struct.dmz_metadata*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
