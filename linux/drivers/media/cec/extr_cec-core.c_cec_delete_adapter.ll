; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/cec/extr_cec-core.c_cec_delete_adapter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/cec/extr_cec-core.c_cec_delete_adapter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cec_adapter = type { i32, %struct.TYPE_2__*, i64, i64 }
%struct.TYPE_2__ = type { i32 (%struct.cec_adapter*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cec_delete_adapter(%struct.cec_adapter* %0) #0 {
  %2 = alloca %struct.cec_adapter*, align 8
  store %struct.cec_adapter* %0, %struct.cec_adapter** %2, align 8
  %3 = load %struct.cec_adapter*, %struct.cec_adapter** %2, align 8
  %4 = call i64 @IS_ERR_OR_NULL(%struct.cec_adapter* %3)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  br label %39

7:                                                ; preds = %1
  %8 = load %struct.cec_adapter*, %struct.cec_adapter** %2, align 8
  %9 = getelementptr inbounds %struct.cec_adapter, %struct.cec_adapter* %8, i32 0, i32 3
  %10 = load i64, i64* %9, align 8
  %11 = call i32 @kthread_stop(i64 %10)
  %12 = load %struct.cec_adapter*, %struct.cec_adapter** %2, align 8
  %13 = getelementptr inbounds %struct.cec_adapter, %struct.cec_adapter* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %7
  %17 = load %struct.cec_adapter*, %struct.cec_adapter** %2, align 8
  %18 = getelementptr inbounds %struct.cec_adapter, %struct.cec_adapter* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @kthread_stop(i64 %19)
  br label %21

21:                                               ; preds = %16, %7
  %22 = load %struct.cec_adapter*, %struct.cec_adapter** %2, align 8
  %23 = getelementptr inbounds %struct.cec_adapter, %struct.cec_adapter* %22, i32 0, i32 1
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32 (%struct.cec_adapter*)*, i32 (%struct.cec_adapter*)** %25, align 8
  %27 = icmp ne i32 (%struct.cec_adapter*)* %26, null
  br i1 %27, label %28, label %36

28:                                               ; preds = %21
  %29 = load %struct.cec_adapter*, %struct.cec_adapter** %2, align 8
  %30 = getelementptr inbounds %struct.cec_adapter, %struct.cec_adapter* %29, i32 0, i32 1
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32 (%struct.cec_adapter*)*, i32 (%struct.cec_adapter*)** %32, align 8
  %34 = load %struct.cec_adapter*, %struct.cec_adapter** %2, align 8
  %35 = call i32 %33(%struct.cec_adapter* %34)
  br label %36

36:                                               ; preds = %28, %21
  %37 = load %struct.cec_adapter*, %struct.cec_adapter** %2, align 8
  %38 = call i32 @kfree(%struct.cec_adapter* %37)
  br label %39

39:                                               ; preds = %36, %6
  ret void
}

declare dso_local i64 @IS_ERR_OR_NULL(%struct.cec_adapter*) #1

declare dso_local i32 @kthread_stop(i64) #1

declare dso_local i32 @kfree(%struct.cec_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
