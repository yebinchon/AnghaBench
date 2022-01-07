; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/rdmavt/extr_mr.c_rvt_sge_adjacent.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/rdmavt/extr_mr.c_rvt_sge_adjacent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvt_sge = type { i64, i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64, i64 }
%struct.ib_sge = type { i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rvt_sge*, %struct.ib_sge*)* @rvt_sge_adjacent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rvt_sge_adjacent(%struct.rvt_sge* %0, %struct.ib_sge* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rvt_sge*, align 8
  %5 = alloca %struct.ib_sge*, align 8
  store %struct.rvt_sge* %0, %struct.rvt_sge** %4, align 8
  store %struct.ib_sge* %1, %struct.ib_sge** %5, align 8
  %6 = load %struct.rvt_sge*, %struct.rvt_sge** %4, align 8
  %7 = icmp ne %struct.rvt_sge* %6, null
  br i1 %7, label %8, label %81

8:                                                ; preds = %2
  %9 = load %struct.ib_sge*, %struct.ib_sge** %5, align 8
  %10 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.rvt_sge*, %struct.rvt_sge** %4, align 8
  %13 = getelementptr inbounds %struct.rvt_sge, %struct.rvt_sge* %12, i32 0, i32 3
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %11, %16
  br i1 %17, label %18, label %81

18:                                               ; preds = %8
  %19 = load %struct.rvt_sge*, %struct.rvt_sge** %4, align 8
  %20 = getelementptr inbounds %struct.rvt_sge, %struct.rvt_sge* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.rvt_sge*, %struct.rvt_sge** %4, align 8
  %23 = getelementptr inbounds %struct.rvt_sge, %struct.rvt_sge* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = add nsw i64 %21, %24
  %26 = load %struct.ib_sge*, %struct.ib_sge** %5, align 8
  %27 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %25, %28
  br i1 %29, label %30, label %81

30:                                               ; preds = %18
  %31 = load %struct.ib_sge*, %struct.ib_sge** %5, align 8
  %32 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %60

35:                                               ; preds = %30
  %36 = load %struct.ib_sge*, %struct.ib_sge** %5, align 8
  %37 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.rvt_sge*, %struct.rvt_sge** %4, align 8
  %40 = getelementptr inbounds %struct.rvt_sge, %struct.rvt_sge* %39, i32 0, i32 3
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = sub nsw i64 %38, %43
  %45 = load %struct.ib_sge*, %struct.ib_sge** %5, align 8
  %46 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = add nsw i64 %44, %47
  %49 = load %struct.rvt_sge*, %struct.rvt_sge** %4, align 8
  %50 = getelementptr inbounds %struct.rvt_sge, %struct.rvt_sge* %49, i32 0, i32 3
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = icmp sgt i64 %48, %53
  %55 = zext i1 %54 to i32
  %56 = call i64 @unlikely(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %35
  store i32 0, i32* %3, align 4
  br label %82

59:                                               ; preds = %35
  br label %68

60:                                               ; preds = %30
  %61 = load %struct.ib_sge*, %struct.ib_sge** %5, align 8
  %62 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.rvt_sge*, %struct.rvt_sge** %4, align 8
  %65 = getelementptr inbounds %struct.rvt_sge, %struct.rvt_sge* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = add nsw i64 %66, %63
  store i64 %67, i64* %65, align 8
  br label %68

68:                                               ; preds = %60, %59
  %69 = load %struct.ib_sge*, %struct.ib_sge** %5, align 8
  %70 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.rvt_sge*, %struct.rvt_sge** %4, align 8
  %73 = getelementptr inbounds %struct.rvt_sge, %struct.rvt_sge* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = sext i32 %74 to i64
  %76 = add nsw i64 %75, %71
  %77 = trunc i64 %76 to i32
  store i32 %77, i32* %73, align 8
  %78 = load %struct.rvt_sge*, %struct.rvt_sge** %4, align 8
  %79 = load %struct.ib_sge*, %struct.ib_sge** %5, align 8
  %80 = call i32 @trace_rvt_sge_adjacent(%struct.rvt_sge* %78, %struct.ib_sge* %79)
  store i32 1, i32* %3, align 4
  br label %82

81:                                               ; preds = %18, %8, %2
  store i32 0, i32* %3, align 4
  br label %82

82:                                               ; preds = %81, %68, %58
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @trace_rvt_sge_adjacent(%struct.rvt_sge*, %struct.ib_sge*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
