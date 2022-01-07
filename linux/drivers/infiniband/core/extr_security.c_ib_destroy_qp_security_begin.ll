; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_security.c_ib_destroy_qp_security_begin.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_security.c_ib_destroy_qp_security_begin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_qp_security = type { i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ib_destroy_qp_security_begin(%struct.ib_qp_security* %0) #0 {
  %2 = alloca %struct.ib_qp_security*, align 8
  store %struct.ib_qp_security* %0, %struct.ib_qp_security** %2, align 8
  %3 = load %struct.ib_qp_security*, %struct.ib_qp_security** %2, align 8
  %4 = icmp ne %struct.ib_qp_security* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %36

6:                                                ; preds = %1
  %7 = load %struct.ib_qp_security*, %struct.ib_qp_security** %2, align 8
  %8 = getelementptr inbounds %struct.ib_qp_security, %struct.ib_qp_security* %7, i32 0, i32 1
  %9 = call i32 @mutex_lock(i32* %8)
  %10 = load %struct.ib_qp_security*, %struct.ib_qp_security** %2, align 8
  %11 = getelementptr inbounds %struct.ib_qp_security, %struct.ib_qp_security* %10, i32 0, i32 4
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = icmp ne %struct.TYPE_2__* %12, null
  br i1 %13, label %14, label %25

14:                                               ; preds = %6
  %15 = load %struct.ib_qp_security*, %struct.ib_qp_security** %2, align 8
  %16 = getelementptr inbounds %struct.ib_qp_security, %struct.ib_qp_security* %15, i32 0, i32 4
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = call i32 @port_pkey_list_remove(i32* %18)
  %20 = load %struct.ib_qp_security*, %struct.ib_qp_security** %2, align 8
  %21 = getelementptr inbounds %struct.ib_qp_security, %struct.ib_qp_security* %20, i32 0, i32 4
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = call i32 @port_pkey_list_remove(i32* %23)
  br label %25

25:                                               ; preds = %14, %6
  %26 = load %struct.ib_qp_security*, %struct.ib_qp_security** %2, align 8
  %27 = getelementptr inbounds %struct.ib_qp_security, %struct.ib_qp_security* %26, i32 0, i32 0
  store i32 1, i32* %27, align 8
  %28 = load %struct.ib_qp_security*, %struct.ib_qp_security** %2, align 8
  %29 = getelementptr inbounds %struct.ib_qp_security, %struct.ib_qp_security* %28, i32 0, i32 2
  %30 = call i32 @atomic_read(i32* %29)
  %31 = load %struct.ib_qp_security*, %struct.ib_qp_security** %2, align 8
  %32 = getelementptr inbounds %struct.ib_qp_security, %struct.ib_qp_security* %31, i32 0, i32 3
  store i32 %30, i32* %32, align 4
  %33 = load %struct.ib_qp_security*, %struct.ib_qp_security** %2, align 8
  %34 = getelementptr inbounds %struct.ib_qp_security, %struct.ib_qp_security* %33, i32 0, i32 1
  %35 = call i32 @mutex_unlock(i32* %34)
  br label %36

36:                                               ; preds = %25, %5
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @port_pkey_list_remove(i32*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
