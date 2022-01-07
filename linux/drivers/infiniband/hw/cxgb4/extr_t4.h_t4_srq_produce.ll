; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/cxgb4/extr_t4.h_t4_srq_produce.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/cxgb4/extr_t4.h_t4_srq_produce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.t4_srq = type { i32, i32, i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@T4_EQ_ENTRY_SIZE = common dso_local global i32 0, align 4
@T4_RQ_NUM_SLOTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.t4_srq*, i32)* @t4_srq_produce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @t4_srq_produce(%struct.t4_srq* %0, i32 %1) #0 {
  %3 = alloca %struct.t4_srq*, align 8
  %4 = alloca i32, align 4
  store %struct.t4_srq* %0, %struct.t4_srq** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.t4_srq*, %struct.t4_srq** %3, align 8
  %6 = getelementptr inbounds %struct.t4_srq, %struct.t4_srq* %5, i32 0, i32 4
  %7 = load i32, i32* %6, align 8
  %8 = add nsw i32 %7, 1
  store i32 %8, i32* %6, align 8
  %9 = load %struct.t4_srq*, %struct.t4_srq** %3, align 8
  %10 = getelementptr inbounds %struct.t4_srq, %struct.t4_srq* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = add nsw i32 %11, 1
  store i32 %12, i32* %10, align 8
  %13 = load %struct.t4_srq*, %struct.t4_srq** %3, align 8
  %14 = getelementptr inbounds %struct.t4_srq, %struct.t4_srq* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = icmp eq i32 %12, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load %struct.t4_srq*, %struct.t4_srq** %3, align 8
  %19 = getelementptr inbounds %struct.t4_srq, %struct.t4_srq* %18, i32 0, i32 0
  store i32 0, i32* %19, align 8
  br label %20

20:                                               ; preds = %17, %2
  %21 = load i32, i32* %4, align 4
  %22 = mul nsw i32 %21, 16
  %23 = load i32, i32* @T4_EQ_ENTRY_SIZE, align 4
  %24 = call i64 @DIV_ROUND_UP(i32 %22, i32 %23)
  %25 = load %struct.t4_srq*, %struct.t4_srq** %3, align 8
  %26 = getelementptr inbounds %struct.t4_srq, %struct.t4_srq* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = sext i32 %27 to i64
  %29 = add nsw i64 %28, %24
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %26, align 8
  %31 = load %struct.t4_srq*, %struct.t4_srq** %3, align 8
  %32 = getelementptr inbounds %struct.t4_srq, %struct.t4_srq* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.t4_srq*, %struct.t4_srq** %3, align 8
  %35 = getelementptr inbounds %struct.t4_srq, %struct.t4_srq* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @T4_RQ_NUM_SLOTS, align 4
  %38 = mul nsw i32 %36, %37
  %39 = icmp sge i32 %33, %38
  br i1 %39, label %40, label %50

40:                                               ; preds = %20
  %41 = load %struct.t4_srq*, %struct.t4_srq** %3, align 8
  %42 = getelementptr inbounds %struct.t4_srq, %struct.t4_srq* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @T4_RQ_NUM_SLOTS, align 4
  %45 = mul nsw i32 %43, %44
  %46 = load %struct.t4_srq*, %struct.t4_srq** %3, align 8
  %47 = getelementptr inbounds %struct.t4_srq, %struct.t4_srq* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = srem i32 %48, %45
  store i32 %49, i32* %47, align 8
  br label %50

50:                                               ; preds = %40, %20
  %51 = load %struct.t4_srq*, %struct.t4_srq** %3, align 8
  %52 = getelementptr inbounds %struct.t4_srq, %struct.t4_srq* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.t4_srq*, %struct.t4_srq** %3, align 8
  %55 = getelementptr inbounds %struct.t4_srq, %struct.t4_srq* %54, i32 0, i32 3
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = load %struct.t4_srq*, %struct.t4_srq** %3, align 8
  %58 = getelementptr inbounds %struct.t4_srq, %struct.t4_srq* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  store i32 %53, i32* %63, align 4
  ret void
}

declare dso_local i64 @DIV_ROUND_UP(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
