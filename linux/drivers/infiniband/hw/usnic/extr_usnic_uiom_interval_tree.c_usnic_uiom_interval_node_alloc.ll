; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/usnic/extr_usnic_uiom_interval_tree.c_usnic_uiom_interval_node_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/usnic/extr_usnic_uiom_interval_tree.c_usnic_uiom_interval_node_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usnic_uiom_interval_node = type { i64, i64, i32, i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.usnic_uiom_interval_node* (i64, i64, i32, i32)* @usnic_uiom_interval_node_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.usnic_uiom_interval_node* @usnic_uiom_interval_node_alloc(i64 %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.usnic_uiom_interval_node*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.usnic_uiom_interval_node*, align 8
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load i32, i32* @GFP_ATOMIC, align 4
  %12 = call %struct.usnic_uiom_interval_node* @kzalloc(i32 24, i32 %11)
  store %struct.usnic_uiom_interval_node* %12, %struct.usnic_uiom_interval_node** %10, align 8
  %13 = load %struct.usnic_uiom_interval_node*, %struct.usnic_uiom_interval_node** %10, align 8
  %14 = icmp ne %struct.usnic_uiom_interval_node* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %4
  store %struct.usnic_uiom_interval_node* null, %struct.usnic_uiom_interval_node** %5, align 8
  br label %30

16:                                               ; preds = %4
  %17 = load i64, i64* %6, align 8
  %18 = load %struct.usnic_uiom_interval_node*, %struct.usnic_uiom_interval_node** %10, align 8
  %19 = getelementptr inbounds %struct.usnic_uiom_interval_node, %struct.usnic_uiom_interval_node* %18, i32 0, i32 0
  store i64 %17, i64* %19, align 8
  %20 = load i64, i64* %7, align 8
  %21 = load %struct.usnic_uiom_interval_node*, %struct.usnic_uiom_interval_node** %10, align 8
  %22 = getelementptr inbounds %struct.usnic_uiom_interval_node, %struct.usnic_uiom_interval_node* %21, i32 0, i32 1
  store i64 %20, i64* %22, align 8
  %23 = load i32, i32* %9, align 4
  %24 = load %struct.usnic_uiom_interval_node*, %struct.usnic_uiom_interval_node** %10, align 8
  %25 = getelementptr inbounds %struct.usnic_uiom_interval_node, %struct.usnic_uiom_interval_node* %24, i32 0, i32 2
  store i32 %23, i32* %25, align 8
  %26 = load i32, i32* %8, align 4
  %27 = load %struct.usnic_uiom_interval_node*, %struct.usnic_uiom_interval_node** %10, align 8
  %28 = getelementptr inbounds %struct.usnic_uiom_interval_node, %struct.usnic_uiom_interval_node* %27, i32 0, i32 3
  store i32 %26, i32* %28, align 4
  %29 = load %struct.usnic_uiom_interval_node*, %struct.usnic_uiom_interval_node** %10, align 8
  store %struct.usnic_uiom_interval_node* %29, %struct.usnic_uiom_interval_node** %5, align 8
  br label %30

30:                                               ; preds = %16, %15
  %31 = load %struct.usnic_uiom_interval_node*, %struct.usnic_uiom_interval_node** %5, align 8
  ret %struct.usnic_uiom_interval_node* %31
}

declare dso_local %struct.usnic_uiom_interval_node* @kzalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
