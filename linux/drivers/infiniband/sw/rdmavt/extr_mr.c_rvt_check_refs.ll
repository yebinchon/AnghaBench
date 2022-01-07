; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/rdmavt/extr_mr.c_rvt_check_refs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/rdmavt/extr_mr.c_rvt_check_refs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvt_mregion = type { %struct.TYPE_3__, i64, %struct.TYPE_4__*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.rvt_dev_info = type { i32 }

@HZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"%s timeout mr %p pd %p lkey %x refcount %ld\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rvt_mregion*, i8*)* @rvt_check_refs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rvt_check_refs(%struct.rvt_mregion* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rvt_mregion*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.rvt_dev_info*, align 8
  store %struct.rvt_mregion* %0, %struct.rvt_mregion** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.rvt_mregion*, %struct.rvt_mregion** %4, align 8
  %9 = getelementptr inbounds %struct.rvt_mregion, %struct.rvt_mregion* %8, i32 0, i32 2
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.rvt_dev_info* @ib_to_rvt(i32 %12)
  store %struct.rvt_dev_info* %13, %struct.rvt_dev_info** %7, align 8
  %14 = load %struct.rvt_mregion*, %struct.rvt_mregion** %4, align 8
  %15 = getelementptr inbounds %struct.rvt_mregion, %struct.rvt_mregion* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %2
  %19 = load %struct.rvt_mregion*, %struct.rvt_mregion** %4, align 8
  %20 = call i32 @rvt_dereg_clean_qps(%struct.rvt_mregion* %19)
  %21 = call i32 (...) @synchronize_rcu()
  br label %22

22:                                               ; preds = %18, %2
  %23 = load %struct.rvt_mregion*, %struct.rvt_mregion** %4, align 8
  %24 = getelementptr inbounds %struct.rvt_mregion, %struct.rvt_mregion* %23, i32 0, i32 3
  %25 = load i32, i32* @HZ, align 4
  %26 = mul nsw i32 5, %25
  %27 = call i64 @wait_for_completion_timeout(i32* %24, i32 %26)
  store i64 %27, i64* %6, align 8
  %28 = load i64, i64* %6, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %49, label %30

30:                                               ; preds = %22
  %31 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %7, align 8
  %32 = load i8*, i8** %5, align 8
  %33 = load %struct.rvt_mregion*, %struct.rvt_mregion** %4, align 8
  %34 = load %struct.rvt_mregion*, %struct.rvt_mregion** %4, align 8
  %35 = getelementptr inbounds %struct.rvt_mregion, %struct.rvt_mregion* %34, i32 0, i32 2
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = load %struct.rvt_mregion*, %struct.rvt_mregion** %4, align 8
  %38 = getelementptr inbounds %struct.rvt_mregion, %struct.rvt_mregion* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.rvt_mregion*, %struct.rvt_mregion** %4, align 8
  %41 = getelementptr inbounds %struct.rvt_mregion, %struct.rvt_mregion* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = call i32 @atomic_long_read(i32* %42)
  %44 = call i32 @rvt_pr_err(%struct.rvt_dev_info* %31, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i8* %32, %struct.rvt_mregion* %33, %struct.TYPE_4__* %36, i64 %39, i32 %43)
  %45 = load %struct.rvt_mregion*, %struct.rvt_mregion** %4, align 8
  %46 = call i32 @rvt_get_mr(%struct.rvt_mregion* %45)
  %47 = load i32, i32* @EBUSY, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %3, align 4
  br label %50

49:                                               ; preds = %22
  store i32 0, i32* %3, align 4
  br label %50

50:                                               ; preds = %49, %30
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local %struct.rvt_dev_info* @ib_to_rvt(i32) #1

declare dso_local i32 @rvt_dereg_clean_qps(%struct.rvt_mregion*) #1

declare dso_local i32 @synchronize_rcu(...) #1

declare dso_local i64 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @rvt_pr_err(%struct.rvt_dev_info*, i8*, i8*, %struct.rvt_mregion*, %struct.TYPE_4__*, i64, i32) #1

declare dso_local i32 @atomic_long_read(i32*) #1

declare dso_local i32 @rvt_get_mr(%struct.rvt_mregion*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
