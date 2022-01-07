; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/rdmavt/extr_rc.c_rvt_get_credit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/rdmavt/extr_rc.c_rvt_get_credit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvt_qp = type { i32, i64, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.rvt_dev_info = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 (%struct.rvt_qp*)* }

@IB_AETH_CREDIT_SHIFT = common dso_local global i64 0, align 8
@IB_AETH_CREDIT_MASK = common dso_local global i64 0, align 8
@IB_AETH_CREDIT_INVAL = common dso_local global i64 0, align 8
@RVT_S_UNLIMITED_CREDIT = common dso_local global i32 0, align 4
@RVT_S_WAIT_SSN_CREDIT = common dso_local global i32 0, align 4
@credit_table = common dso_local global i64* null, align 8
@IB_MSN_MASK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rvt_get_credit(%struct.rvt_qp* %0, i64 %1) #0 {
  %3 = alloca %struct.rvt_qp*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.rvt_dev_info*, align 8
  %6 = alloca i64, align 8
  store %struct.rvt_qp* %0, %struct.rvt_qp** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %8 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %7, i32 0, i32 3
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.rvt_dev_info* @ib_to_rvt(i32 %10)
  store %struct.rvt_dev_info* %11, %struct.rvt_dev_info** %5, align 8
  %12 = load i64, i64* %4, align 8
  %13 = load i64, i64* @IB_AETH_CREDIT_SHIFT, align 8
  %14 = lshr i64 %12, %13
  %15 = load i64, i64* @IB_AETH_CREDIT_MASK, align 8
  %16 = and i64 %14, %15
  store i64 %16, i64* %6, align 8
  %17 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %18 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %17, i32 0, i32 2
  %19 = call i32 @lockdep_assert_held(i32* %18)
  %20 = load i64, i64* %6, align 8
  %21 = load i64, i64* @IB_AETH_CREDIT_INVAL, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %57

23:                                               ; preds = %2
  %24 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %25 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @RVT_S_UNLIMITED_CREDIT, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %56, label %30

30:                                               ; preds = %23
  %31 = load i32, i32* @RVT_S_UNLIMITED_CREDIT, align 4
  %32 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %33 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = or i32 %34, %31
  store i32 %35, i32* %33, align 8
  %36 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %37 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @RVT_S_WAIT_SSN_CREDIT, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %55

42:                                               ; preds = %30
  %43 = load i32, i32* @RVT_S_WAIT_SSN_CREDIT, align 4
  %44 = xor i32 %43, -1
  %45 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %46 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = and i32 %47, %44
  store i32 %48, i32* %46, align 8
  %49 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %5, align 8
  %50 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32 (%struct.rvt_qp*)*, i32 (%struct.rvt_qp*)** %51, align 8
  %53 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %54 = call i32 %52(%struct.rvt_qp* %53)
  br label %55

55:                                               ; preds = %42, %30
  br label %56

56:                                               ; preds = %55, %23
  br label %105

57:                                               ; preds = %2
  %58 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %59 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @RVT_S_UNLIMITED_CREDIT, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %104, label %64

64:                                               ; preds = %57
  %65 = load i64, i64* %4, align 8
  %66 = load i64*, i64** @credit_table, align 8
  %67 = load i64, i64* %6, align 8
  %68 = getelementptr inbounds i64, i64* %66, i64 %67
  %69 = load i64, i64* %68, align 8
  %70 = add i64 %65, %69
  %71 = load i64, i64* @IB_MSN_MASK, align 8
  %72 = and i64 %70, %71
  store i64 %72, i64* %6, align 8
  %73 = load i64, i64* %6, align 8
  %74 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %75 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = call i64 @rvt_cmp_msn(i64 %73, i64 %76)
  %78 = icmp sgt i64 %77, 0
  br i1 %78, label %79, label %103

79:                                               ; preds = %64
  %80 = load i64, i64* %6, align 8
  %81 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %82 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %81, i32 0, i32 1
  store i64 %80, i64* %82, align 8
  %83 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %84 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @RVT_S_WAIT_SSN_CREDIT, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %102

89:                                               ; preds = %79
  %90 = load i32, i32* @RVT_S_WAIT_SSN_CREDIT, align 4
  %91 = xor i32 %90, -1
  %92 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %93 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = and i32 %94, %91
  store i32 %95, i32* %93, align 8
  %96 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %5, align 8
  %97 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  %99 = load i32 (%struct.rvt_qp*)*, i32 (%struct.rvt_qp*)** %98, align 8
  %100 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %101 = call i32 %99(%struct.rvt_qp* %100)
  br label %102

102:                                              ; preds = %89, %79
  br label %103

103:                                              ; preds = %102, %64
  br label %104

104:                                              ; preds = %103, %57
  br label %105

105:                                              ; preds = %104, %56
  ret void
}

declare dso_local %struct.rvt_dev_info* @ib_to_rvt(i32) #1

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i64 @rvt_cmp_msn(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
