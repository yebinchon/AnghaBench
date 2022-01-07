; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cq.c___ib_process_cq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cq.c___ib_process_cq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_cq = type { i32 }
%struct.ib_wc = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.ib_cq*, %struct.ib_wc*)* }

@u32 = common dso_local global i32 0, align 4
@IB_WC_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_cq*, i32, %struct.ib_wc*, i32)* @__ib_process_cq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__ib_process_cq(%struct.ib_cq* %0, i32 %1, %struct.ib_wc* %2, i32 %3) #0 {
  %5 = alloca %struct.ib_cq*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ib_wc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.ib_wc*, align 8
  store %struct.ib_cq* %0, %struct.ib_cq** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.ib_wc* %2, %struct.ib_wc** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %11, align 4
  br label %13

13:                                               ; preds = %74, %4
  %14 = load %struct.ib_cq*, %struct.ib_cq** %5, align 8
  %15 = load i32, i32* @u32, align 4
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* %11, align 4
  %19 = sub nsw i32 %17, %18
  %20 = call i32 @min_t(i32 %15, i32 %16, i32 %19)
  %21 = load %struct.ib_wc*, %struct.ib_wc** %7, align 8
  %22 = call i32 @ib_poll_cq(%struct.ib_cq* %14, i32 %20, %struct.ib_wc* %21)
  store i32 %22, i32* %10, align 4
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %24, label %75

24:                                               ; preds = %13
  store i32 0, i32* %9, align 4
  br label %25

25:                                               ; preds = %56, %24
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* %10, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %59

29:                                               ; preds = %25
  %30 = load %struct.ib_wc*, %struct.ib_wc** %7, align 8
  %31 = load i32, i32* %9, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %30, i64 %32
  store %struct.ib_wc* %33, %struct.ib_wc** %12, align 8
  %34 = load %struct.ib_wc*, %struct.ib_wc** %12, align 8
  %35 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %34, i32 0, i32 1
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = icmp ne %struct.TYPE_2__* %36, null
  br i1 %37, label %38, label %47

38:                                               ; preds = %29
  %39 = load %struct.ib_wc*, %struct.ib_wc** %12, align 8
  %40 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %39, i32 0, i32 1
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32 (%struct.ib_cq*, %struct.ib_wc*)*, i32 (%struct.ib_cq*, %struct.ib_wc*)** %42, align 8
  %44 = load %struct.ib_cq*, %struct.ib_cq** %5, align 8
  %45 = load %struct.ib_wc*, %struct.ib_wc** %12, align 8
  %46 = call i32 %43(%struct.ib_cq* %44, %struct.ib_wc* %45)
  br label %55

47:                                               ; preds = %29
  %48 = load %struct.ib_wc*, %struct.ib_wc** %12, align 8
  %49 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @IB_WC_SUCCESS, align 8
  %52 = icmp eq i64 %50, %51
  %53 = zext i1 %52 to i32
  %54 = call i32 @WARN_ON_ONCE(i32 %53)
  br label %55

55:                                               ; preds = %47, %38
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %9, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %9, align 4
  br label %25

59:                                               ; preds = %25
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* %11, align 4
  %62 = add nsw i32 %61, %60
  store i32 %62, i32* %11, align 4
  %63 = load i32, i32* %10, align 4
  %64 = load i32, i32* %8, align 4
  %65 = icmp ne i32 %63, %64
  br i1 %65, label %73, label %66

66:                                               ; preds = %59
  %67 = load i32, i32* %6, align 4
  %68 = icmp ne i32 %67, -1
  br i1 %68, label %69, label %74

69:                                               ; preds = %66
  %70 = load i32, i32* %11, align 4
  %71 = load i32, i32* %6, align 4
  %72 = icmp sge i32 %70, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %69, %59
  br label %75

74:                                               ; preds = %69, %66
  br label %13

75:                                               ; preds = %73, %13
  %76 = load i32, i32* %11, align 4
  ret i32 %76
}

declare dso_local i32 @ib_poll_cq(%struct.ib_cq*, i32, %struct.ib_wc*) #1

declare dso_local i32 @min_t(i32, i32, i32) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
