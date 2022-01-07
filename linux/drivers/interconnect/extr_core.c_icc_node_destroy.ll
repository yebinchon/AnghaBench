; ModuleID = '/home/carl/AnghaBench/linux/drivers/interconnect/extr_core.c_icc_node_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/interconnect/extr_core.c_icc_node_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.icc_node = type { i32, i32 }

@icc_lock = common dso_local global i32 0, align 4
@icc_idr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @icc_node_destroy(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.icc_node*, align 8
  store i32 %0, i32* %2, align 4
  %4 = call i32 @mutex_lock(i32* @icc_lock)
  %5 = load i32, i32* %2, align 4
  %6 = call %struct.icc_node* @node_find(i32 %5)
  store %struct.icc_node* %6, %struct.icc_node** %3, align 8
  %7 = load %struct.icc_node*, %struct.icc_node** %3, align 8
  %8 = icmp ne %struct.icc_node* %7, null
  br i1 %8, label %9, label %21

9:                                                ; preds = %1
  %10 = load %struct.icc_node*, %struct.icc_node** %3, align 8
  %11 = getelementptr inbounds %struct.icc_node, %struct.icc_node* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @idr_remove(i32* @icc_idr, i32 %12)
  %14 = load %struct.icc_node*, %struct.icc_node** %3, align 8
  %15 = getelementptr inbounds %struct.icc_node, %struct.icc_node* %14, i32 0, i32 0
  %16 = call i32 @hlist_empty(i32* %15)
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = call i32 @WARN_ON(i32 %19)
  br label %21

21:                                               ; preds = %9, %1
  %22 = call i32 @mutex_unlock(i32* @icc_lock)
  %23 = load %struct.icc_node*, %struct.icc_node** %3, align 8
  %24 = call i32 @kfree(%struct.icc_node* %23)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.icc_node* @node_find(i32) #1

declare dso_local i32 @idr_remove(i32*, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @hlist_empty(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kfree(%struct.icc_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
