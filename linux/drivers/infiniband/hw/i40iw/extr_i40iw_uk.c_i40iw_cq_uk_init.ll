; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_uk.c_i40iw_cq_uk_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_uk.c_i40iw_cq_uk_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_cq_uk = type { i64, i32, i32, i32, i32, i32, i32, i32, %struct.i40iw_cqe* }
%struct.i40iw_cqe = type { i32 }
%struct.i40iw_cq_uk_init_info = type { i64, i32, i32, i32, i32, i64 }

@I40IW_MIN_CQ_SIZE = common dso_local global i64 0, align 8
@I40IW_MAX_CQ_SIZE = common dso_local global i64 0, align 8
@I40IW_ERR_INVALID_SIZE = common dso_local global i32 0, align 4
@iw_cq_ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i40iw_cq_uk_init(%struct.i40iw_cq_uk* %0, %struct.i40iw_cq_uk_init_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i40iw_cq_uk*, align 8
  %5 = alloca %struct.i40iw_cq_uk_init_info*, align 8
  store %struct.i40iw_cq_uk* %0, %struct.i40iw_cq_uk** %4, align 8
  store %struct.i40iw_cq_uk_init_info* %1, %struct.i40iw_cq_uk_init_info** %5, align 8
  %6 = load %struct.i40iw_cq_uk_init_info*, %struct.i40iw_cq_uk_init_info** %5, align 8
  %7 = getelementptr inbounds %struct.i40iw_cq_uk_init_info, %struct.i40iw_cq_uk_init_info* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @I40IW_MIN_CQ_SIZE, align 8
  %10 = icmp slt i64 %8, %9
  br i1 %10, label %17, label %11

11:                                               ; preds = %2
  %12 = load %struct.i40iw_cq_uk_init_info*, %struct.i40iw_cq_uk_init_info** %5, align 8
  %13 = getelementptr inbounds %struct.i40iw_cq_uk_init_info, %struct.i40iw_cq_uk_init_info* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @I40IW_MAX_CQ_SIZE, align 8
  %16 = icmp sgt i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %11, %2
  %18 = load i32, i32* @I40IW_ERR_INVALID_SIZE, align 4
  store i32 %18, i32* %3, align 4
  br label %63

19:                                               ; preds = %11
  %20 = load %struct.i40iw_cq_uk_init_info*, %struct.i40iw_cq_uk_init_info** %5, align 8
  %21 = getelementptr inbounds %struct.i40iw_cq_uk_init_info, %struct.i40iw_cq_uk_init_info* %20, i32 0, i32 5
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to %struct.i40iw_cqe*
  %24 = load %struct.i40iw_cq_uk*, %struct.i40iw_cq_uk** %4, align 8
  %25 = getelementptr inbounds %struct.i40iw_cq_uk, %struct.i40iw_cq_uk* %24, i32 0, i32 8
  store %struct.i40iw_cqe* %23, %struct.i40iw_cqe** %25, align 8
  %26 = load %struct.i40iw_cq_uk_init_info*, %struct.i40iw_cq_uk_init_info** %5, align 8
  %27 = getelementptr inbounds %struct.i40iw_cq_uk_init_info, %struct.i40iw_cq_uk_init_info* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.i40iw_cq_uk*, %struct.i40iw_cq_uk** %4, align 8
  %30 = getelementptr inbounds %struct.i40iw_cq_uk, %struct.i40iw_cq_uk* %29, i32 0, i32 7
  store i32 %28, i32* %30, align 8
  %31 = load %struct.i40iw_cq_uk_init_info*, %struct.i40iw_cq_uk_init_info** %5, align 8
  %32 = getelementptr inbounds %struct.i40iw_cq_uk_init_info, %struct.i40iw_cq_uk_init_info* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.i40iw_cq_uk*, %struct.i40iw_cq_uk** %4, align 8
  %35 = getelementptr inbounds %struct.i40iw_cq_uk, %struct.i40iw_cq_uk* %34, i32 0, i32 0
  store i64 %33, i64* %35, align 8
  %36 = load %struct.i40iw_cq_uk_init_info*, %struct.i40iw_cq_uk_init_info** %5, align 8
  %37 = getelementptr inbounds %struct.i40iw_cq_uk_init_info, %struct.i40iw_cq_uk_init_info* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.i40iw_cq_uk*, %struct.i40iw_cq_uk** %4, align 8
  %40 = getelementptr inbounds %struct.i40iw_cq_uk, %struct.i40iw_cq_uk* %39, i32 0, i32 6
  store i32 %38, i32* %40, align 4
  %41 = load %struct.i40iw_cq_uk_init_info*, %struct.i40iw_cq_uk_init_info** %5, align 8
  %42 = getelementptr inbounds %struct.i40iw_cq_uk_init_info, %struct.i40iw_cq_uk_init_info* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.i40iw_cq_uk*, %struct.i40iw_cq_uk** %4, align 8
  %45 = getelementptr inbounds %struct.i40iw_cq_uk, %struct.i40iw_cq_uk* %44, i32 0, i32 5
  store i32 %43, i32* %45, align 8
  %46 = load %struct.i40iw_cq_uk_init_info*, %struct.i40iw_cq_uk_init_info** %5, align 8
  %47 = getelementptr inbounds %struct.i40iw_cq_uk_init_info, %struct.i40iw_cq_uk_init_info* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.i40iw_cq_uk*, %struct.i40iw_cq_uk** %4, align 8
  %50 = getelementptr inbounds %struct.i40iw_cq_uk, %struct.i40iw_cq_uk* %49, i32 0, i32 4
  store i32 %48, i32* %50, align 4
  %51 = load %struct.i40iw_cq_uk*, %struct.i40iw_cq_uk** %4, align 8
  %52 = getelementptr inbounds %struct.i40iw_cq_uk, %struct.i40iw_cq_uk* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.i40iw_cq_uk*, %struct.i40iw_cq_uk** %4, align 8
  %55 = getelementptr inbounds %struct.i40iw_cq_uk, %struct.i40iw_cq_uk* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = call i32 @I40IW_RING_INIT(i32 %53, i64 %56)
  %58 = load %struct.i40iw_cq_uk*, %struct.i40iw_cq_uk** %4, align 8
  %59 = getelementptr inbounds %struct.i40iw_cq_uk, %struct.i40iw_cq_uk* %58, i32 0, i32 1
  store i32 1, i32* %59, align 8
  %60 = load i32, i32* @iw_cq_ops, align 4
  %61 = load %struct.i40iw_cq_uk*, %struct.i40iw_cq_uk** %4, align 8
  %62 = getelementptr inbounds %struct.i40iw_cq_uk, %struct.i40iw_cq_uk* %61, i32 0, i32 2
  store i32 %60, i32* %62, align 4
  store i32 0, i32* %3, align 4
  br label %63

63:                                               ; preds = %19, %17
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i32 @I40IW_RING_INIT(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
