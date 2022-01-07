; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-zoned-target.c_dmz_queue_chunk_work.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-zoned-target.c_dmz_queue_chunk_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmz_target = type { i32, i32, i32, i32, i32 }
%struct.bio = type { i32 }
%struct.dm_chunk_work = type { i32, i32, i32, %struct.dmz_target*, i32 }

@GFP_NOIO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@dmz_chunk_work = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dmz_target*, %struct.bio*)* @dmz_queue_chunk_work to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dmz_queue_chunk_work(%struct.dmz_target* %0, %struct.bio* %1) #0 {
  %3 = alloca %struct.dmz_target*, align 8
  %4 = alloca %struct.bio*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dm_chunk_work*, align 8
  %7 = alloca i32, align 4
  store %struct.dmz_target* %0, %struct.dmz_target** %3, align 8
  store %struct.bio* %1, %struct.bio** %4, align 8
  %8 = load %struct.dmz_target*, %struct.dmz_target** %3, align 8
  %9 = getelementptr inbounds %struct.dmz_target, %struct.dmz_target* %8, i32 0, i32 4
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.bio*, %struct.bio** %4, align 8
  %12 = call i32 @dmz_bio_chunk(i32 %10, %struct.bio* %11)
  store i32 %12, i32* %5, align 4
  store i32 0, i32* %7, align 4
  %13 = load %struct.dmz_target*, %struct.dmz_target** %3, align 8
  %14 = getelementptr inbounds %struct.dmz_target, %struct.dmz_target* %13, i32 0, i32 0
  %15 = call i32 @mutex_lock(i32* %14)
  %16 = load %struct.dmz_target*, %struct.dmz_target** %3, align 8
  %17 = getelementptr inbounds %struct.dmz_target, %struct.dmz_target* %16, i32 0, i32 3
  %18 = load i32, i32* %5, align 4
  %19 = call %struct.dm_chunk_work* @radix_tree_lookup(i32* %17, i32 %18)
  store %struct.dm_chunk_work* %19, %struct.dm_chunk_work** %6, align 8
  %20 = load %struct.dm_chunk_work*, %struct.dm_chunk_work** %6, align 8
  %21 = icmp ne %struct.dm_chunk_work* %20, null
  br i1 %21, label %63, label %22

22:                                               ; preds = %2
  %23 = load i32, i32* @GFP_NOIO, align 4
  %24 = call %struct.dm_chunk_work* @kmalloc(i32 32, i32 %23)
  store %struct.dm_chunk_work* %24, %struct.dm_chunk_work** %6, align 8
  %25 = load %struct.dm_chunk_work*, %struct.dm_chunk_work** %6, align 8
  %26 = icmp ne %struct.dm_chunk_work* %25, null
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  %29 = call i64 @unlikely(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %22
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %7, align 4
  br label %85

34:                                               ; preds = %22
  %35 = load %struct.dm_chunk_work*, %struct.dm_chunk_work** %6, align 8
  %36 = getelementptr inbounds %struct.dm_chunk_work, %struct.dm_chunk_work* %35, i32 0, i32 1
  %37 = load i32, i32* @dmz_chunk_work, align 4
  %38 = call i32 @INIT_WORK(i32* %36, i32 %37)
  %39 = load %struct.dm_chunk_work*, %struct.dm_chunk_work** %6, align 8
  %40 = getelementptr inbounds %struct.dm_chunk_work, %struct.dm_chunk_work* %39, i32 0, i32 4
  %41 = call i32 @refcount_set(i32* %40, i32 0)
  %42 = load %struct.dmz_target*, %struct.dmz_target** %3, align 8
  %43 = load %struct.dm_chunk_work*, %struct.dm_chunk_work** %6, align 8
  %44 = getelementptr inbounds %struct.dm_chunk_work, %struct.dm_chunk_work* %43, i32 0, i32 3
  store %struct.dmz_target* %42, %struct.dmz_target** %44, align 8
  %45 = load i32, i32* %5, align 4
  %46 = load %struct.dm_chunk_work*, %struct.dm_chunk_work** %6, align 8
  %47 = getelementptr inbounds %struct.dm_chunk_work, %struct.dm_chunk_work* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  %48 = load %struct.dm_chunk_work*, %struct.dm_chunk_work** %6, align 8
  %49 = getelementptr inbounds %struct.dm_chunk_work, %struct.dm_chunk_work* %48, i32 0, i32 2
  %50 = call i32 @bio_list_init(i32* %49)
  %51 = load %struct.dmz_target*, %struct.dmz_target** %3, align 8
  %52 = getelementptr inbounds %struct.dmz_target, %struct.dmz_target* %51, i32 0, i32 3
  %53 = load i32, i32* %5, align 4
  %54 = load %struct.dm_chunk_work*, %struct.dm_chunk_work** %6, align 8
  %55 = call i32 @radix_tree_insert(i32* %52, i32 %53, %struct.dm_chunk_work* %54)
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* %7, align 4
  %57 = call i64 @unlikely(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %34
  %60 = load %struct.dm_chunk_work*, %struct.dm_chunk_work** %6, align 8
  %61 = call i32 @kfree(%struct.dm_chunk_work* %60)
  br label %85

62:                                               ; preds = %34
  br label %63

63:                                               ; preds = %62, %2
  %64 = load %struct.dm_chunk_work*, %struct.dm_chunk_work** %6, align 8
  %65 = getelementptr inbounds %struct.dm_chunk_work, %struct.dm_chunk_work* %64, i32 0, i32 2
  %66 = load %struct.bio*, %struct.bio** %4, align 8
  %67 = call i32 @bio_list_add(i32* %65, %struct.bio* %66)
  %68 = load %struct.dm_chunk_work*, %struct.dm_chunk_work** %6, align 8
  %69 = call i32 @dmz_get_chunk_work(%struct.dm_chunk_work* %68)
  %70 = load %struct.dmz_target*, %struct.dmz_target** %3, align 8
  %71 = getelementptr inbounds %struct.dmz_target, %struct.dmz_target* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @dmz_reclaim_bio_acc(i32 %72)
  %74 = load %struct.dmz_target*, %struct.dmz_target** %3, align 8
  %75 = getelementptr inbounds %struct.dmz_target, %struct.dmz_target* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.dm_chunk_work*, %struct.dm_chunk_work** %6, align 8
  %78 = getelementptr inbounds %struct.dm_chunk_work, %struct.dm_chunk_work* %77, i32 0, i32 1
  %79 = call i64 @queue_work(i32 %76, i32* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %63
  %82 = load %struct.dm_chunk_work*, %struct.dm_chunk_work** %6, align 8
  %83 = call i32 @dmz_get_chunk_work(%struct.dm_chunk_work* %82)
  br label %84

84:                                               ; preds = %81, %63
  br label %85

85:                                               ; preds = %84, %59, %31
  %86 = load %struct.dmz_target*, %struct.dmz_target** %3, align 8
  %87 = getelementptr inbounds %struct.dmz_target, %struct.dmz_target* %86, i32 0, i32 0
  %88 = call i32 @mutex_unlock(i32* %87)
  %89 = load i32, i32* %7, align 4
  ret i32 %89
}

declare dso_local i32 @dmz_bio_chunk(i32, %struct.bio*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.dm_chunk_work* @radix_tree_lookup(i32*, i32) #1

declare dso_local %struct.dm_chunk_work* @kmalloc(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @refcount_set(i32*, i32) #1

declare dso_local i32 @bio_list_init(i32*) #1

declare dso_local i32 @radix_tree_insert(i32*, i32, %struct.dm_chunk_work*) #1

declare dso_local i32 @kfree(%struct.dm_chunk_work*) #1

declare dso_local i32 @bio_list_add(i32*, %struct.bio*) #1

declare dso_local i32 @dmz_get_chunk_work(%struct.dm_chunk_work*) #1

declare dso_local i32 @dmz_reclaim_bio_acc(i32) #1

declare dso_local i64 @queue_work(i32, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
