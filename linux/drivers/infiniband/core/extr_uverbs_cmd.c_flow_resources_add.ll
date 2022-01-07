; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_uverbs_cmd.c_flow_resources_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_uverbs_cmd.c_flow_resources_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_uflow_resources = type { i64, i64, i32, %struct.ib_counters**, i32, %struct.ib_flow_action** }
%struct.ib_counters = type { i32 }
%struct.ib_flow_action = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @flow_resources_add(%struct.ib_uflow_resources* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.ib_uflow_resources*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store %struct.ib_uflow_resources* %0, %struct.ib_uflow_resources** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %7 = load %struct.ib_uflow_resources*, %struct.ib_uflow_resources** %4, align 8
  %8 = getelementptr inbounds %struct.ib_uflow_resources, %struct.ib_uflow_resources* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.ib_uflow_resources*, %struct.ib_uflow_resources** %4, align 8
  %11 = getelementptr inbounds %struct.ib_uflow_resources, %struct.ib_uflow_resources* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp sge i64 %9, %12
  %14 = zext i1 %13 to i32
  %15 = call i32 @WARN_ON(i32 %14)
  %16 = load i32, i32* %5, align 4
  switch i32 %16, label %49 [
    i32 128, label %17
    i32 129, label %33
  ]

17:                                               ; preds = %3
  %18 = load i8*, i8** %6, align 8
  %19 = bitcast i8* %18 to %struct.ib_flow_action*
  %20 = getelementptr inbounds %struct.ib_flow_action, %struct.ib_flow_action* %19, i32 0, i32 0
  %21 = call i32 @atomic_inc(i32* %20)
  %22 = load i8*, i8** %6, align 8
  %23 = bitcast i8* %22 to %struct.ib_flow_action*
  %24 = load %struct.ib_uflow_resources*, %struct.ib_uflow_resources** %4, align 8
  %25 = getelementptr inbounds %struct.ib_uflow_resources, %struct.ib_uflow_resources* %24, i32 0, i32 5
  %26 = load %struct.ib_flow_action**, %struct.ib_flow_action*** %25, align 8
  %27 = load %struct.ib_uflow_resources*, %struct.ib_uflow_resources** %4, align 8
  %28 = getelementptr inbounds %struct.ib_uflow_resources, %struct.ib_uflow_resources* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 8
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %28, align 8
  %31 = sext i32 %29 to i64
  %32 = getelementptr inbounds %struct.ib_flow_action*, %struct.ib_flow_action** %26, i64 %31
  store %struct.ib_flow_action* %23, %struct.ib_flow_action** %32, align 8
  br label %51

33:                                               ; preds = %3
  %34 = load i8*, i8** %6, align 8
  %35 = bitcast i8* %34 to %struct.ib_counters*
  %36 = getelementptr inbounds %struct.ib_counters, %struct.ib_counters* %35, i32 0, i32 0
  %37 = call i32 @atomic_inc(i32* %36)
  %38 = load i8*, i8** %6, align 8
  %39 = bitcast i8* %38 to %struct.ib_counters*
  %40 = load %struct.ib_uflow_resources*, %struct.ib_uflow_resources** %4, align 8
  %41 = getelementptr inbounds %struct.ib_uflow_resources, %struct.ib_uflow_resources* %40, i32 0, i32 3
  %42 = load %struct.ib_counters**, %struct.ib_counters*** %41, align 8
  %43 = load %struct.ib_uflow_resources*, %struct.ib_uflow_resources** %4, align 8
  %44 = getelementptr inbounds %struct.ib_uflow_resources, %struct.ib_uflow_resources* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %44, align 8
  %47 = sext i32 %45 to i64
  %48 = getelementptr inbounds %struct.ib_counters*, %struct.ib_counters** %42, i64 %47
  store %struct.ib_counters* %39, %struct.ib_counters** %48, align 8
  br label %51

49:                                               ; preds = %3
  %50 = call i32 @WARN_ON(i32 1)
  br label %51

51:                                               ; preds = %49, %33, %17
  %52 = load %struct.ib_uflow_resources*, %struct.ib_uflow_resources** %4, align 8
  %53 = getelementptr inbounds %struct.ib_uflow_resources, %struct.ib_uflow_resources* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = add nsw i64 %54, 1
  store i64 %55, i64* %53, align 8
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
