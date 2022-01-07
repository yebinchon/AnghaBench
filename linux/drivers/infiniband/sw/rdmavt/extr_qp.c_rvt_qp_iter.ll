; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/rdmavt/extr_qp.c_rvt_qp_iter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/rdmavt/extr_qp.c_rvt_qp_iter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvt_dev_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.rvt_qp = type opaque
%struct.rvt_qp_iter = type { i32, void (%struct.rvt_qp.0*, i32)*, %struct.rvt_qp*, i32, %struct.rvt_dev_info* }
%struct.rvt_qp.0 = type opaque

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rvt_qp_iter(%struct.rvt_dev_info* %0, i32 %1, void (%struct.rvt_qp*, i32)* %2) #0 {
  %4 = alloca %struct.rvt_dev_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca void (%struct.rvt_qp*, i32)*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.rvt_qp_iter, align 8
  store %struct.rvt_dev_info* %0, %struct.rvt_dev_info** %4, align 8
  store i32 %1, i32* %5, align 4
  store void (%struct.rvt_qp*, i32)* %2, void (%struct.rvt_qp*, i32)** %6, align 8
  %9 = getelementptr inbounds %struct.rvt_qp_iter, %struct.rvt_qp_iter* %8, i32 0, i32 0
  %10 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %4, align 8
  %11 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = mul nsw i32 %13, 2
  store i32 %14, i32* %9, align 8
  %15 = getelementptr inbounds %struct.rvt_qp_iter, %struct.rvt_qp_iter* %8, i32 0, i32 1
  %16 = load void (%struct.rvt_qp*, i32)*, void (%struct.rvt_qp*, i32)** %6, align 8
  %17 = bitcast void (%struct.rvt_qp*, i32)* %16 to void (%struct.rvt_qp.0*, i32)*
  store void (%struct.rvt_qp.0*, i32)* %17, void (%struct.rvt_qp.0*, i32)** %15, align 8
  %18 = getelementptr inbounds %struct.rvt_qp_iter, %struct.rvt_qp_iter* %8, i32 0, i32 2
  store %struct.rvt_qp* null, %struct.rvt_qp** %18, align 8
  %19 = getelementptr inbounds %struct.rvt_qp_iter, %struct.rvt_qp_iter* %8, i32 0, i32 3
  %20 = load i32, i32* %5, align 4
  store i32 %20, i32* %19, align 8
  %21 = getelementptr inbounds %struct.rvt_qp_iter, %struct.rvt_qp_iter* %8, i32 0, i32 4
  %22 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %4, align 8
  store %struct.rvt_dev_info* %22, %struct.rvt_dev_info** %21, align 8
  %23 = call i32 (...) @rcu_read_lock()
  br label %24

24:                                               ; preds = %45, %3
  %25 = call i32 @rvt_qp_iter_next(%struct.rvt_qp_iter* %8)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %44, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.rvt_qp_iter, %struct.rvt_qp_iter* %8, i32 0, i32 2
  %30 = load %struct.rvt_qp*, %struct.rvt_qp** %29, align 8
  %31 = call i32 @rvt_get_qp(%struct.rvt_qp* %30)
  %32 = call i32 (...) @rcu_read_unlock()
  %33 = getelementptr inbounds %struct.rvt_qp_iter, %struct.rvt_qp_iter* %8, i32 0, i32 1
  %34 = load void (%struct.rvt_qp.0*, i32)*, void (%struct.rvt_qp.0*, i32)** %33, align 8
  %35 = getelementptr inbounds %struct.rvt_qp_iter, %struct.rvt_qp_iter* %8, i32 0, i32 2
  %36 = load %struct.rvt_qp*, %struct.rvt_qp** %35, align 8
  %37 = bitcast %struct.rvt_qp* %36 to %struct.rvt_qp.0*
  %38 = getelementptr inbounds %struct.rvt_qp_iter, %struct.rvt_qp_iter* %8, i32 0, i32 3
  %39 = load i32, i32* %38, align 8
  call void %34(%struct.rvt_qp.0* %37, i32 %39)
  %40 = call i32 (...) @rcu_read_lock()
  %41 = getelementptr inbounds %struct.rvt_qp_iter, %struct.rvt_qp_iter* %8, i32 0, i32 2
  %42 = load %struct.rvt_qp*, %struct.rvt_qp** %41, align 8
  %43 = call i32 @rvt_put_qp(%struct.rvt_qp* %42)
  br label %44

44:                                               ; preds = %28, %24
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %7, align 4
  %47 = icmp ne i32 %46, 0
  %48 = xor i1 %47, true
  br i1 %48, label %24, label %49

49:                                               ; preds = %45
  %50 = call i32 (...) @rcu_read_unlock()
  ret void
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i32 @rvt_qp_iter_next(%struct.rvt_qp_iter*) #1

declare dso_local i32 @rvt_get_qp(%struct.rvt_qp*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @rvt_put_qp(%struct.rvt_qp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
