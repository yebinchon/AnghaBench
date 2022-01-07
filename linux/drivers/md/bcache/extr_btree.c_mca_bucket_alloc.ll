; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/bcache/extr_btree.c_mca_bucket_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/bcache/extr_btree.c_mca_bucket_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btree = type { i32, %struct.cache_set*, i32, i32, i32, i32 }
%struct.cache_set = type { i32 }
%struct.bkey = type { i32 }

@btree_node_write_work = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.btree* (%struct.cache_set*, %struct.bkey*, i32)* @mca_bucket_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.btree* @mca_bucket_alloc(%struct.cache_set* %0, %struct.bkey* %1, i32 %2) #0 {
  %4 = alloca %struct.btree*, align 8
  %5 = alloca %struct.cache_set*, align 8
  %6 = alloca %struct.bkey*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.btree*, align 8
  store %struct.cache_set* %0, %struct.cache_set** %5, align 8
  store %struct.bkey* %1, %struct.bkey** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %7, align 4
  %10 = call %struct.btree* @kzalloc(i32 32, i32 %9)
  store %struct.btree* %10, %struct.btree** %8, align 8
  %11 = load %struct.btree*, %struct.btree** %8, align 8
  %12 = icmp ne %struct.btree* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  store %struct.btree* null, %struct.btree** %4, align 8
  br label %45

14:                                               ; preds = %3
  %15 = load %struct.btree*, %struct.btree** %8, align 8
  %16 = getelementptr inbounds %struct.btree, %struct.btree* %15, i32 0, i32 5
  %17 = call i32 @init_rwsem(i32* %16)
  %18 = load %struct.btree*, %struct.btree** %8, align 8
  %19 = getelementptr inbounds %struct.btree, %struct.btree* %18, i32 0, i32 5
  %20 = call i32 @lockdep_set_novalidate_class(i32* %19)
  %21 = load %struct.btree*, %struct.btree** %8, align 8
  %22 = getelementptr inbounds %struct.btree, %struct.btree* %21, i32 0, i32 4
  %23 = call i32 @mutex_init(i32* %22)
  %24 = load %struct.btree*, %struct.btree** %8, align 8
  %25 = getelementptr inbounds %struct.btree, %struct.btree* %24, i32 0, i32 4
  %26 = call i32 @lockdep_set_novalidate_class(i32* %25)
  %27 = load %struct.btree*, %struct.btree** %8, align 8
  %28 = getelementptr inbounds %struct.btree, %struct.btree* %27, i32 0, i32 3
  %29 = call i32 @INIT_LIST_HEAD(i32* %28)
  %30 = load %struct.btree*, %struct.btree** %8, align 8
  %31 = getelementptr inbounds %struct.btree, %struct.btree* %30, i32 0, i32 2
  %32 = load i32, i32* @btree_node_write_work, align 4
  %33 = call i32 @INIT_DELAYED_WORK(i32* %31, i32 %32)
  %34 = load %struct.cache_set*, %struct.cache_set** %5, align 8
  %35 = load %struct.btree*, %struct.btree** %8, align 8
  %36 = getelementptr inbounds %struct.btree, %struct.btree* %35, i32 0, i32 1
  store %struct.cache_set* %34, %struct.cache_set** %36, align 8
  %37 = load %struct.btree*, %struct.btree** %8, align 8
  %38 = getelementptr inbounds %struct.btree, %struct.btree* %37, i32 0, i32 0
  %39 = call i32 @sema_init(i32* %38, i32 1)
  %40 = load %struct.btree*, %struct.btree** %8, align 8
  %41 = load %struct.bkey*, %struct.bkey** %6, align 8
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @mca_data_alloc(%struct.btree* %40, %struct.bkey* %41, i32 %42)
  %44 = load %struct.btree*, %struct.btree** %8, align 8
  store %struct.btree* %44, %struct.btree** %4, align 8
  br label %45

45:                                               ; preds = %14, %13
  %46 = load %struct.btree*, %struct.btree** %4, align 8
  ret %struct.btree* %46
}

declare dso_local %struct.btree* @kzalloc(i32, i32) #1

declare dso_local i32 @init_rwsem(i32*) #1

declare dso_local i32 @lockdep_set_novalidate_class(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @sema_init(i32*, i32) #1

declare dso_local i32 @mca_data_alloc(%struct.btree*, %struct.bkey*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
