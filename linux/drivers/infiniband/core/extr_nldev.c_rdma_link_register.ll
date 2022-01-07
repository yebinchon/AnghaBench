; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_nldev.c_rdma_link_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_nldev.c_rdma_link_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdma_link_ops = type { i32, i32 }

@link_ops_rwsem = common dso_local global i32 0, align 4
@link_ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rdma_link_register(%struct.rdma_link_ops* %0) #0 {
  %2 = alloca %struct.rdma_link_ops*, align 8
  store %struct.rdma_link_ops* %0, %struct.rdma_link_ops** %2, align 8
  %3 = call i32 @down_write(i32* @link_ops_rwsem)
  %4 = load %struct.rdma_link_ops*, %struct.rdma_link_ops** %2, align 8
  %5 = getelementptr inbounds %struct.rdma_link_ops, %struct.rdma_link_ops* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 4
  %7 = call i32 @link_ops_get(i32 %6)
  %8 = call i64 @WARN_ON_ONCE(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %15

11:                                               ; preds = %1
  %12 = load %struct.rdma_link_ops*, %struct.rdma_link_ops** %2, align 8
  %13 = getelementptr inbounds %struct.rdma_link_ops, %struct.rdma_link_ops* %12, i32 0, i32 0
  %14 = call i32 @list_add(i32* %13, i32* @link_ops)
  br label %15

15:                                               ; preds = %11, %10
  %16 = call i32 @up_write(i32* @link_ops_rwsem)
  ret void
}

declare dso_local i32 @down_write(i32*) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @link_ops_get(i32) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @up_write(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
