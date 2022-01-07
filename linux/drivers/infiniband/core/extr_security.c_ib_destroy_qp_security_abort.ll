; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_security.c_ib_destroy_qp_security_abort.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_security.c_ib_destroy_qp_security_abort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_qp_security = type { i32, i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ib_destroy_qp_security_abort(%struct.ib_qp_security* %0) #0 {
  %2 = alloca %struct.ib_qp_security*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.ib_qp_security* %0, %struct.ib_qp_security** %2, align 8
  %5 = load %struct.ib_qp_security*, %struct.ib_qp_security** %2, align 8
  %6 = icmp ne %struct.ib_qp_security* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %58

8:                                                ; preds = %1
  store i32 0, i32* %4, align 4
  br label %9

9:                                                ; preds = %19, %8
  %10 = load i32, i32* %4, align 4
  %11 = load %struct.ib_qp_security*, %struct.ib_qp_security** %2, align 8
  %12 = getelementptr inbounds %struct.ib_qp_security, %struct.ib_qp_security* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %22

15:                                               ; preds = %9
  %16 = load %struct.ib_qp_security*, %struct.ib_qp_security** %2, align 8
  %17 = getelementptr inbounds %struct.ib_qp_security, %struct.ib_qp_security* %16, i32 0, i32 4
  %18 = call i32 @wait_for_completion(i32* %17)
  br label %19

19:                                               ; preds = %15
  %20 = load i32, i32* %4, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %4, align 4
  br label %9

22:                                               ; preds = %9
  %23 = load %struct.ib_qp_security*, %struct.ib_qp_security** %2, align 8
  %24 = getelementptr inbounds %struct.ib_qp_security, %struct.ib_qp_security* %23, i32 0, i32 2
  %25 = call i32 @mutex_lock(i32* %24)
  %26 = load %struct.ib_qp_security*, %struct.ib_qp_security** %2, align 8
  %27 = getelementptr inbounds %struct.ib_qp_security, %struct.ib_qp_security* %26, i32 0, i32 1
  store i32 0, i32* %27, align 4
  %28 = load %struct.ib_qp_security*, %struct.ib_qp_security** %2, align 8
  %29 = getelementptr inbounds %struct.ib_qp_security, %struct.ib_qp_security* %28, i32 0, i32 3
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = icmp ne %struct.TYPE_2__* %30, null
  br i1 %31, label %32, label %43

32:                                               ; preds = %22
  %33 = load %struct.ib_qp_security*, %struct.ib_qp_security** %2, align 8
  %34 = getelementptr inbounds %struct.ib_qp_security, %struct.ib_qp_security* %33, i32 0, i32 3
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = call i32 @port_pkey_list_insert(i32* %36)
  %38 = load %struct.ib_qp_security*, %struct.ib_qp_security** %2, align 8
  %39 = getelementptr inbounds %struct.ib_qp_security, %struct.ib_qp_security* %38, i32 0, i32 3
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = call i32 @port_pkey_list_insert(i32* %41)
  br label %43

43:                                               ; preds = %32, %22
  %44 = load %struct.ib_qp_security*, %struct.ib_qp_security** %2, align 8
  %45 = getelementptr inbounds %struct.ib_qp_security, %struct.ib_qp_security* %44, i32 0, i32 3
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = load %struct.ib_qp_security*, %struct.ib_qp_security** %2, align 8
  %48 = call i32 @check_qp_port_pkey_settings(%struct.TYPE_2__* %46, %struct.ib_qp_security* %47)
  store i32 %48, i32* %3, align 4
  %49 = load i32, i32* %3, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %43
  %52 = load %struct.ib_qp_security*, %struct.ib_qp_security** %2, align 8
  %53 = call i32 @qp_to_error(%struct.ib_qp_security* %52)
  br label %54

54:                                               ; preds = %51, %43
  %55 = load %struct.ib_qp_security*, %struct.ib_qp_security** %2, align 8
  %56 = getelementptr inbounds %struct.ib_qp_security, %struct.ib_qp_security* %55, i32 0, i32 2
  %57 = call i32 @mutex_unlock(i32* %56)
  br label %58

58:                                               ; preds = %54, %7
  ret void
}

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @port_pkey_list_insert(i32*) #1

declare dso_local i32 @check_qp_port_pkey_settings(%struct.TYPE_2__*, %struct.ib_qp_security*) #1

declare dso_local i32 @qp_to_error(%struct.ib_qp_security*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
