; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/usnic/extr_usnic_uiom_interval_tree.c_find_intervals_intersection_sorted.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/usnic/extr_usnic_uiom_interval_tree.c_find_intervals_intersection_sorted.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rb_root_cached = type { i32 }
%struct.list_head = type { i32 }
%struct.usnic_uiom_interval_node = type { i32 }

@interval_cmp = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rb_root_cached*, i64, i64, %struct.list_head*)* @find_intervals_intersection_sorted to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @find_intervals_intersection_sorted(%struct.rb_root_cached* %0, i64 %1, i64 %2, %struct.list_head* %3) #0 {
  %5 = alloca %struct.rb_root_cached*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.list_head*, align 8
  %9 = alloca %struct.usnic_uiom_interval_node*, align 8
  store %struct.rb_root_cached* %0, %struct.rb_root_cached** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store %struct.list_head* %3, %struct.list_head** %8, align 8
  %10 = load %struct.list_head*, %struct.list_head** %8, align 8
  %11 = call i32 @INIT_LIST_HEAD(%struct.list_head* %10)
  %12 = load %struct.rb_root_cached*, %struct.rb_root_cached** %5, align 8
  %13 = load i64, i64* %6, align 8
  %14 = load i64, i64* %7, align 8
  %15 = call %struct.usnic_uiom_interval_node* @usnic_uiom_interval_tree_iter_first(%struct.rb_root_cached* %12, i64 %13, i64 %14)
  store %struct.usnic_uiom_interval_node* %15, %struct.usnic_uiom_interval_node** %9, align 8
  br label %16

16:                                               ; preds = %24, %4
  %17 = load %struct.usnic_uiom_interval_node*, %struct.usnic_uiom_interval_node** %9, align 8
  %18 = icmp ne %struct.usnic_uiom_interval_node* %17, null
  br i1 %18, label %19, label %29

19:                                               ; preds = %16
  %20 = load %struct.usnic_uiom_interval_node*, %struct.usnic_uiom_interval_node** %9, align 8
  %21 = getelementptr inbounds %struct.usnic_uiom_interval_node, %struct.usnic_uiom_interval_node* %20, i32 0, i32 0
  %22 = load %struct.list_head*, %struct.list_head** %8, align 8
  %23 = call i32 @list_add_tail(i32* %21, %struct.list_head* %22)
  br label %24

24:                                               ; preds = %19
  %25 = load %struct.usnic_uiom_interval_node*, %struct.usnic_uiom_interval_node** %9, align 8
  %26 = load i64, i64* %6, align 8
  %27 = load i64, i64* %7, align 8
  %28 = call %struct.usnic_uiom_interval_node* @usnic_uiom_interval_tree_iter_next(%struct.usnic_uiom_interval_node* %25, i64 %26, i64 %27)
  store %struct.usnic_uiom_interval_node* %28, %struct.usnic_uiom_interval_node** %9, align 8
  br label %16

29:                                               ; preds = %16
  %30 = load %struct.list_head*, %struct.list_head** %8, align 8
  %31 = load i32, i32* @interval_cmp, align 4
  %32 = call i32 @list_sort(i32* null, %struct.list_head* %30, i32 %31)
  ret void
}

declare dso_local i32 @INIT_LIST_HEAD(%struct.list_head*) #1

declare dso_local %struct.usnic_uiom_interval_node* @usnic_uiom_interval_tree_iter_first(%struct.rb_root_cached*, i64, i64) #1

declare dso_local i32 @list_add_tail(i32*, %struct.list_head*) #1

declare dso_local %struct.usnic_uiom_interval_node* @usnic_uiom_interval_tree_iter_next(%struct.usnic_uiom_interval_node*, i64, i64) #1

declare dso_local i32 @list_sort(i32*, %struct.list_head*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
