; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/siw/extr_siw_verbs.c_siw_modify_srq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/siw/extr_siw_verbs.c_siw_modify_srq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_srq = type { i32 }
%struct.ib_srq_attr = type { i64 }
%struct.ib_udata = type { i32 }
%struct.siw_srq = type { i64, i32, i64, i32 }

@IB_SRQ_MAX_WR = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@IB_SRQ_LIMIT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @siw_modify_srq(%struct.ib_srq* %0, %struct.ib_srq_attr* %1, i32 %2, %struct.ib_udata* %3) #0 {
  %5 = alloca %struct.ib_srq*, align 8
  %6 = alloca %struct.ib_srq_attr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ib_udata*, align 8
  %9 = alloca %struct.siw_srq*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.ib_srq* %0, %struct.ib_srq** %5, align 8
  store %struct.ib_srq_attr* %1, %struct.ib_srq_attr** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.ib_udata* %3, %struct.ib_udata** %8, align 8
  %12 = load %struct.ib_srq*, %struct.ib_srq** %5, align 8
  %13 = call %struct.siw_srq* @to_siw_srq(%struct.ib_srq* %12)
  store %struct.siw_srq* %13, %struct.siw_srq** %9, align 8
  store i32 0, i32* %11, align 4
  %14 = load %struct.siw_srq*, %struct.siw_srq** %9, align 8
  %15 = getelementptr inbounds %struct.siw_srq, %struct.siw_srq* %14, i32 0, i32 3
  %16 = load i64, i64* %10, align 8
  %17 = call i32 @spin_lock_irqsave(i32* %15, i64 %16)
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @IB_SRQ_MAX_WR, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %4
  %23 = load i32, i32* @EOPNOTSUPP, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %11, align 4
  br label %62

25:                                               ; preds = %4
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @IB_SRQ_LIMIT, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %61

30:                                               ; preds = %25
  %31 = load %struct.ib_srq_attr*, %struct.ib_srq_attr** %6, align 8
  %32 = getelementptr inbounds %struct.ib_srq_attr, %struct.ib_srq_attr* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %52

35:                                               ; preds = %30
  %36 = load %struct.ib_srq_attr*, %struct.ib_srq_attr** %6, align 8
  %37 = getelementptr inbounds %struct.ib_srq_attr, %struct.ib_srq_attr* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.siw_srq*, %struct.siw_srq** %9, align 8
  %40 = getelementptr inbounds %struct.siw_srq, %struct.siw_srq* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp sgt i64 %38, %41
  %43 = zext i1 %42 to i32
  %44 = call i64 @unlikely(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %35
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %11, align 4
  br label %62

49:                                               ; preds = %35
  %50 = load %struct.siw_srq*, %struct.siw_srq** %9, align 8
  %51 = getelementptr inbounds %struct.siw_srq, %struct.siw_srq* %50, i32 0, i32 1
  store i32 1, i32* %51, align 8
  br label %55

52:                                               ; preds = %30
  %53 = load %struct.siw_srq*, %struct.siw_srq** %9, align 8
  %54 = getelementptr inbounds %struct.siw_srq, %struct.siw_srq* %53, i32 0, i32 1
  store i32 0, i32* %54, align 8
  br label %55

55:                                               ; preds = %52, %49
  %56 = load %struct.ib_srq_attr*, %struct.ib_srq_attr** %6, align 8
  %57 = getelementptr inbounds %struct.ib_srq_attr, %struct.ib_srq_attr* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.siw_srq*, %struct.siw_srq** %9, align 8
  %60 = getelementptr inbounds %struct.siw_srq, %struct.siw_srq* %59, i32 0, i32 2
  store i64 %58, i64* %60, align 8
  br label %61

61:                                               ; preds = %55, %25
  br label %62

62:                                               ; preds = %61, %46, %22
  %63 = load %struct.siw_srq*, %struct.siw_srq** %9, align 8
  %64 = getelementptr inbounds %struct.siw_srq, %struct.siw_srq* %63, i32 0, i32 3
  %65 = load i64, i64* %10, align 8
  %66 = call i32 @spin_unlock_irqrestore(i32* %64, i64 %65)
  %67 = load i32, i32* %11, align 4
  ret i32 %67
}

declare dso_local %struct.siw_srq* @to_siw_srq(%struct.ib_srq*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
