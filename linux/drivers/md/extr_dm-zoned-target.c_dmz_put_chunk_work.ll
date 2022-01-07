; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-zoned-target.c_dmz_put_chunk_work.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-zoned-target.c_dmz_put_chunk_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_chunk_work = type { i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dm_chunk_work*)* @dmz_put_chunk_work to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dmz_put_chunk_work(%struct.dm_chunk_work* %0) #0 {
  %2 = alloca %struct.dm_chunk_work*, align 8
  store %struct.dm_chunk_work* %0, %struct.dm_chunk_work** %2, align 8
  %3 = load %struct.dm_chunk_work*, %struct.dm_chunk_work** %2, align 8
  %4 = getelementptr inbounds %struct.dm_chunk_work, %struct.dm_chunk_work* %3, i32 0, i32 3
  %5 = call i64 @refcount_dec_and_test(i32* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %25

7:                                                ; preds = %1
  %8 = load %struct.dm_chunk_work*, %struct.dm_chunk_work** %2, align 8
  %9 = getelementptr inbounds %struct.dm_chunk_work, %struct.dm_chunk_work* %8, i32 0, i32 2
  %10 = call i32 @bio_list_empty(i32* %9)
  %11 = icmp ne i32 %10, 0
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  %14 = call i32 @WARN_ON(i32 %13)
  %15 = load %struct.dm_chunk_work*, %struct.dm_chunk_work** %2, align 8
  %16 = getelementptr inbounds %struct.dm_chunk_work, %struct.dm_chunk_work* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load %struct.dm_chunk_work*, %struct.dm_chunk_work** %2, align 8
  %20 = getelementptr inbounds %struct.dm_chunk_work, %struct.dm_chunk_work* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @radix_tree_delete(i32* %18, i32 %21)
  %23 = load %struct.dm_chunk_work*, %struct.dm_chunk_work** %2, align 8
  %24 = call i32 @kfree(%struct.dm_chunk_work* %23)
  br label %25

25:                                               ; preds = %7, %1
  ret void
}

declare dso_local i64 @refcount_dec_and_test(i32*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @bio_list_empty(i32*) #1

declare dso_local i32 @radix_tree_delete(i32*, i32) #1

declare dso_local i32 @kfree(%struct.dm_chunk_work*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
