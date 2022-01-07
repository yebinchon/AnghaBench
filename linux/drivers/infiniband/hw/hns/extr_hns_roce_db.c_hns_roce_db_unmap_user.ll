; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_db.c_hns_roce_db_unmap_user.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_db.c_hns_roce_db_unmap_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_roce_ucontext = type { i32 }
%struct.hns_roce_db = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hns_roce_db_unmap_user(%struct.hns_roce_ucontext* %0, %struct.hns_roce_db* %1) #0 {
  %3 = alloca %struct.hns_roce_ucontext*, align 8
  %4 = alloca %struct.hns_roce_db*, align 8
  store %struct.hns_roce_ucontext* %0, %struct.hns_roce_ucontext** %3, align 8
  store %struct.hns_roce_db* %1, %struct.hns_roce_db** %4, align 8
  %5 = load %struct.hns_roce_ucontext*, %struct.hns_roce_ucontext** %3, align 8
  %6 = getelementptr inbounds %struct.hns_roce_ucontext, %struct.hns_roce_ucontext* %5, i32 0, i32 0
  %7 = call i32 @mutex_lock(i32* %6)
  %8 = load %struct.hns_roce_db*, %struct.hns_roce_db** %4, align 8
  %9 = getelementptr inbounds %struct.hns_roce_db, %struct.hns_roce_db* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 2
  %13 = call i32 @refcount_dec(i32* %12)
  %14 = load %struct.hns_roce_db*, %struct.hns_roce_db** %4, align 8
  %15 = getelementptr inbounds %struct.hns_roce_db, %struct.hns_roce_db* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 2
  %19 = call i64 @refcount_dec_if_one(i32* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %40

21:                                               ; preds = %2
  %22 = load %struct.hns_roce_db*, %struct.hns_roce_db** %4, align 8
  %23 = getelementptr inbounds %struct.hns_roce_db, %struct.hns_roce_db* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = call i32 @list_del(i32* %26)
  %28 = load %struct.hns_roce_db*, %struct.hns_roce_db** %4, align 8
  %29 = getelementptr inbounds %struct.hns_roce_db, %struct.hns_roce_db* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @ib_umem_release(i32 %33)
  %35 = load %struct.hns_roce_db*, %struct.hns_roce_db** %4, align 8
  %36 = getelementptr inbounds %struct.hns_roce_db, %struct.hns_roce_db* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = call i32 @kfree(%struct.TYPE_4__* %38)
  br label %40

40:                                               ; preds = %21, %2
  %41 = load %struct.hns_roce_ucontext*, %struct.hns_roce_ucontext** %3, align 8
  %42 = getelementptr inbounds %struct.hns_roce_ucontext, %struct.hns_roce_ucontext* %41, i32 0, i32 0
  %43 = call i32 @mutex_unlock(i32* %42)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @refcount_dec(i32*) #1

declare dso_local i64 @refcount_dec_if_one(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @ib_umem_release(i32) #1

declare dso_local i32 @kfree(%struct.TYPE_4__*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
