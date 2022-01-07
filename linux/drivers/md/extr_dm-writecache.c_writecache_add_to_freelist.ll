; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-writecache.c_writecache_add_to_freelist.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-writecache.c_writecache_add_to_freelist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_writecache = type { i32, i32, %struct.TYPE_2__, %struct.wc_entry* }
%struct.TYPE_2__ = type { %struct.rb_node* }
%struct.rb_node = type { %struct.rb_node*, %struct.rb_node* }
%struct.wc_entry = type { i32, %struct.rb_node }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dm_writecache*, %struct.wc_entry*)* @writecache_add_to_freelist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @writecache_add_to_freelist(%struct.dm_writecache* %0, %struct.wc_entry* %1) #0 {
  %3 = alloca %struct.dm_writecache*, align 8
  %4 = alloca %struct.wc_entry*, align 8
  %5 = alloca %struct.rb_node**, align 8
  %6 = alloca %struct.rb_node*, align 8
  store %struct.dm_writecache* %0, %struct.dm_writecache** %3, align 8
  store %struct.wc_entry* %1, %struct.wc_entry** %4, align 8
  %7 = load %struct.dm_writecache*, %struct.dm_writecache** %3, align 8
  %8 = call i64 @WC_MODE_SORT_FREELIST(%struct.dm_writecache* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %56

10:                                               ; preds = %2
  %11 = load %struct.dm_writecache*, %struct.dm_writecache** %3, align 8
  %12 = getelementptr inbounds %struct.dm_writecache, %struct.dm_writecache* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  store %struct.rb_node** %13, %struct.rb_node*** %5, align 8
  store %struct.rb_node* null, %struct.rb_node** %6, align 8
  %14 = load %struct.rb_node**, %struct.rb_node*** %5, align 8
  %15 = load %struct.rb_node*, %struct.rb_node** %14, align 8
  %16 = icmp ne %struct.rb_node* %15, null
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i64 @unlikely(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %10
  %22 = load %struct.wc_entry*, %struct.wc_entry** %4, align 8
  %23 = load %struct.dm_writecache*, %struct.dm_writecache** %3, align 8
  %24 = getelementptr inbounds %struct.dm_writecache, %struct.dm_writecache* %23, i32 0, i32 3
  store %struct.wc_entry* %22, %struct.wc_entry** %24, align 8
  br label %25

25:                                               ; preds = %21, %10
  br label %26

26:                                               ; preds = %44, %25
  %27 = load %struct.rb_node**, %struct.rb_node*** %5, align 8
  %28 = load %struct.rb_node*, %struct.rb_node** %27, align 8
  %29 = icmp ne %struct.rb_node* %28, null
  br i1 %29, label %30, label %45

30:                                               ; preds = %26
  %31 = load %struct.rb_node**, %struct.rb_node*** %5, align 8
  %32 = load %struct.rb_node*, %struct.rb_node** %31, align 8
  store %struct.rb_node* %32, %struct.rb_node** %6, align 8
  %33 = load %struct.wc_entry*, %struct.wc_entry** %4, align 8
  %34 = getelementptr inbounds %struct.wc_entry, %struct.wc_entry* %33, i32 0, i32 1
  %35 = load %struct.rb_node**, %struct.rb_node*** %5, align 8
  %36 = load %struct.rb_node*, %struct.rb_node** %35, align 8
  %37 = icmp ult %struct.rb_node* %34, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %30
  %39 = load %struct.rb_node*, %struct.rb_node** %6, align 8
  %40 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %39, i32 0, i32 1
  store %struct.rb_node** %40, %struct.rb_node*** %5, align 8
  br label %44

41:                                               ; preds = %30
  %42 = load %struct.rb_node*, %struct.rb_node** %6, align 8
  %43 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %42, i32 0, i32 0
  store %struct.rb_node** %43, %struct.rb_node*** %5, align 8
  br label %44

44:                                               ; preds = %41, %38
  br label %26

45:                                               ; preds = %26
  %46 = load %struct.wc_entry*, %struct.wc_entry** %4, align 8
  %47 = getelementptr inbounds %struct.wc_entry, %struct.wc_entry* %46, i32 0, i32 1
  %48 = load %struct.rb_node*, %struct.rb_node** %6, align 8
  %49 = load %struct.rb_node**, %struct.rb_node*** %5, align 8
  %50 = call i32 @rb_link_node(%struct.rb_node* %47, %struct.rb_node* %48, %struct.rb_node** %49)
  %51 = load %struct.wc_entry*, %struct.wc_entry** %4, align 8
  %52 = getelementptr inbounds %struct.wc_entry, %struct.wc_entry* %51, i32 0, i32 1
  %53 = load %struct.dm_writecache*, %struct.dm_writecache** %3, align 8
  %54 = getelementptr inbounds %struct.dm_writecache, %struct.dm_writecache* %53, i32 0, i32 2
  %55 = call i32 @rb_insert_color(%struct.rb_node* %52, %struct.TYPE_2__* %54)
  br label %62

56:                                               ; preds = %2
  %57 = load %struct.wc_entry*, %struct.wc_entry** %4, align 8
  %58 = getelementptr inbounds %struct.wc_entry, %struct.wc_entry* %57, i32 0, i32 0
  %59 = load %struct.dm_writecache*, %struct.dm_writecache** %3, align 8
  %60 = getelementptr inbounds %struct.dm_writecache, %struct.dm_writecache* %59, i32 0, i32 1
  %61 = call i32 @list_add_tail(i32* %58, i32* %60)
  br label %62

62:                                               ; preds = %56, %45
  %63 = load %struct.dm_writecache*, %struct.dm_writecache** %3, align 8
  %64 = getelementptr inbounds %struct.dm_writecache, %struct.dm_writecache* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %64, align 8
  ret void
}

declare dso_local i64 @WC_MODE_SORT_FREELIST(%struct.dm_writecache*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @rb_link_node(%struct.rb_node*, %struct.rb_node*, %struct.rb_node**) #1

declare dso_local i32 @rb_insert_color(%struct.rb_node*, %struct.TYPE_2__*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
