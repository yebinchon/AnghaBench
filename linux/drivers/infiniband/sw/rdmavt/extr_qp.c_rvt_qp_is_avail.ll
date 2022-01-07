; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/rdmavt/extr_qp.c_rvt_qp_is_avail.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/rdmavt/extr_qp.c_rvt_qp_is_avail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvt_qp = type { i32, i64, i32, i32, i32, i32, i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.rvt_dev_info = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [113 x i8] c"More avail entries than QP RB size.\0AQP: %u, size: %u, avail: %u\0Ahead: %u, tail: %u, cur: %u, acked: %u, last: %u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rvt_qp*, %struct.rvt_dev_info*, i32)* @rvt_qp_is_avail to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rvt_qp_is_avail(%struct.rvt_qp* %0, %struct.rvt_dev_info* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rvt_qp*, align 8
  %6 = alloca %struct.rvt_dev_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.rvt_qp* %0, %struct.rvt_qp** %5, align 8
  store %struct.rvt_dev_info* %1, %struct.rvt_dev_info** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = call i32 (...) @smp_mb__before_atomic()
  %12 = load i32, i32* %7, align 4
  %13 = call i64 @unlikely(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %29

15:                                               ; preds = %3
  %16 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %17 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %16, i32 0, i32 8
  %18 = call i64 @atomic_read(i32* %17)
  store i64 %18, i64* %10, align 8
  %19 = load i64, i64* %10, align 8
  %20 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %6, align 8
  %21 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp sge i64 %19, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %15
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %132

28:                                               ; preds = %15
  store i32 0, i32* %4, align 4
  br label %132

29:                                               ; preds = %3
  %30 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %31 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i64 @likely(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  store i32 0, i32* %4, align 4
  br label %132

36:                                               ; preds = %29
  %37 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %38 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %37, i32 0, i32 3
  %39 = call i64 @smp_load_acquire(i32* %38)
  store i64 %39, i64* %8, align 8
  %40 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %41 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* %8, align 8
  %44 = icmp sge i64 %42, %43
  br i1 %44, label %45, label %56

45:                                               ; preds = %36
  %46 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %47 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = sext i32 %48 to i64
  %50 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %51 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* %8, align 8
  %54 = sub nsw i64 %52, %53
  %55 = sub nsw i64 %49, %54
  store i64 %55, i64* %9, align 8
  br label %62

56:                                               ; preds = %36
  %57 = load i64, i64* %8, align 8
  %58 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %59 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = sub nsw i64 %57, %60
  store i64 %61, i64* %9, align 8
  br label %62

62:                                               ; preds = %56, %45
  %63 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %64 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %63, i32 0, i32 8
  %65 = call i64 @atomic_read(i32* %64)
  store i64 %65, i64* %10, align 8
  %66 = load i64, i64* %9, align 8
  %67 = sub nsw i64 %66, 1
  %68 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %6, align 8
  %69 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* %10, align 8
  %73 = sub nsw i64 %71, %72
  %74 = sub nsw i64 %67, %73
  store i64 %74, i64* %9, align 8
  %75 = load i64, i64* %9, align 8
  %76 = icmp sle i64 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %62
  %78 = load i32, i32* @ENOMEM, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %4, align 4
  br label %132

80:                                               ; preds = %62
  %81 = load i64, i64* %9, align 8
  %82 = trunc i64 %81 to i32
  %83 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %84 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 8
  %85 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %86 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = sext i32 %87 to i64
  %89 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %90 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = sub nsw i32 %91, 1
  %93 = sext i32 %92 to i64
  %94 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %6, align 8
  %95 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = sub nsw i64 %93, %97
  %99 = icmp sgt i64 %88, %98
  %100 = zext i1 %99 to i32
  %101 = call i64 @WARN_ON(i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %131

103:                                              ; preds = %80
  %104 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %6, align 8
  %105 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %106 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %105, i32 0, i32 7
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %110 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %113 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %116 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %119 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %118, i32 0, i32 6
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %122 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %121, i32 0, i32 5
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %125 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %124, i32 0, i32 4
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %128 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %127, i32 0, i32 3
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @rvt_pr_err(%struct.rvt_dev_info* %104, i8* getelementptr inbounds ([113 x i8], [113 x i8]* @.str, i64 0, i64 0), i32 %108, i32 %111, i32 %114, i64 %117, i32 %120, i32 %123, i32 %126, i32 %129)
  br label %131

131:                                              ; preds = %103, %80
  store i32 0, i32* %4, align 4
  br label %132

132:                                              ; preds = %131, %77, %35, %28, %25
  %133 = load i32, i32* %4, align 4
  ret i32 %133
}

declare dso_local i32 @smp_mb__before_atomic(...) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i64 @smp_load_acquire(i32*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @rvt_pr_err(%struct.rvt_dev_info*, i8*, i32, i32, i32, i64, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
