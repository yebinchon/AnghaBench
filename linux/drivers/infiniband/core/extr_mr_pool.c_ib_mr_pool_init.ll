; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_mr_pool.c_ib_mr_pool_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_mr_pool.c_ib_mr_pool_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_qp = type { i32, i32 }
%struct.list_head = type { i32 }
%struct.ib_mr = type { i32 }

@IB_MR_TYPE_INTEGRITY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ib_mr_pool_init(%struct.ib_qp* %0, %struct.list_head* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.ib_qp*, align 8
  %9 = alloca %struct.list_head*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.ib_mr*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.ib_qp* %0, %struct.ib_qp** %8, align 8
  store %struct.list_head* %1, %struct.list_head** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 0, i32* %17, align 4
  br label %18

18:                                               ; preds = %60, %6
  %19 = load i32, i32* %17, align 4
  %20 = load i32, i32* %10, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %63

22:                                               ; preds = %18
  %23 = load i32, i32* %11, align 4
  %24 = load i32, i32* @IB_MR_TYPE_INTEGRITY, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %33

26:                                               ; preds = %22
  %27 = load %struct.ib_qp*, %struct.ib_qp** %8, align 8
  %28 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %12, align 4
  %31 = load i32, i32* %13, align 4
  %32 = call %struct.ib_mr* @ib_alloc_mr_integrity(i32 %29, i32 %30, i32 %31)
  store %struct.ib_mr* %32, %struct.ib_mr** %14, align 8
  br label %40

33:                                               ; preds = %22
  %34 = load %struct.ib_qp*, %struct.ib_qp** %8, align 8
  %35 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %11, align 4
  %38 = load i32, i32* %12, align 4
  %39 = call %struct.ib_mr* @ib_alloc_mr(i32 %36, i32 %37, i32 %38)
  store %struct.ib_mr* %39, %struct.ib_mr** %14, align 8
  br label %40

40:                                               ; preds = %33, %26
  %41 = load %struct.ib_mr*, %struct.ib_mr** %14, align 8
  %42 = call i64 @IS_ERR(%struct.ib_mr* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %40
  %45 = load %struct.ib_mr*, %struct.ib_mr** %14, align 8
  %46 = call i32 @PTR_ERR(%struct.ib_mr* %45)
  store i32 %46, i32* %16, align 4
  br label %64

47:                                               ; preds = %40
  %48 = load %struct.ib_qp*, %struct.ib_qp** %8, align 8
  %49 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %48, i32 0, i32 0
  %50 = load i64, i64* %15, align 8
  %51 = call i32 @spin_lock_irqsave(i32* %49, i64 %50)
  %52 = load %struct.ib_mr*, %struct.ib_mr** %14, align 8
  %53 = getelementptr inbounds %struct.ib_mr, %struct.ib_mr* %52, i32 0, i32 0
  %54 = load %struct.list_head*, %struct.list_head** %9, align 8
  %55 = call i32 @list_add_tail(i32* %53, %struct.list_head* %54)
  %56 = load %struct.ib_qp*, %struct.ib_qp** %8, align 8
  %57 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %56, i32 0, i32 0
  %58 = load i64, i64* %15, align 8
  %59 = call i32 @spin_unlock_irqrestore(i32* %57, i64 %58)
  br label %60

60:                                               ; preds = %47
  %61 = load i32, i32* %17, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %17, align 4
  br label %18

63:                                               ; preds = %18
  store i32 0, i32* %7, align 4
  br label %69

64:                                               ; preds = %44
  %65 = load %struct.ib_qp*, %struct.ib_qp** %8, align 8
  %66 = load %struct.list_head*, %struct.list_head** %9, align 8
  %67 = call i32 @ib_mr_pool_destroy(%struct.ib_qp* %65, %struct.list_head* %66)
  %68 = load i32, i32* %16, align 4
  store i32 %68, i32* %7, align 4
  br label %69

69:                                               ; preds = %64, %63
  %70 = load i32, i32* %7, align 4
  ret i32 %70
}

declare dso_local %struct.ib_mr* @ib_alloc_mr_integrity(i32, i32, i32) #1

declare dso_local %struct.ib_mr* @ib_alloc_mr(i32, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.ib_mr*) #1

declare dso_local i32 @PTR_ERR(%struct.ib_mr*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add_tail(i32*, %struct.list_head*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @ib_mr_pool_destroy(%struct.ib_qp*, %struct.list_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
