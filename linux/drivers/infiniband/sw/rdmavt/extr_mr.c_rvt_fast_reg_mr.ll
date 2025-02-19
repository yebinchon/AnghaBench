; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/rdmavt/extr_mr.c_rvt_fast_reg_mr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/rdmavt/extr_mr.c_rvt_fast_reg_mr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvt_qp = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.ib_mr = type { i32, i32, i32 }
%struct.rvt_mr = type { %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { i64, i32, i32, i32, i32 }

@EACCES = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rvt_fast_reg_mr(%struct.rvt_qp* %0, %struct.ib_mr* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.rvt_qp*, align 8
  %7 = alloca %struct.ib_mr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.rvt_mr*, align 8
  store %struct.rvt_qp* %0, %struct.rvt_qp** %6, align 8
  store %struct.ib_mr* %1, %struct.ib_mr** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load %struct.ib_mr*, %struct.ib_mr** %7, align 8
  %12 = call %struct.rvt_mr* @to_imr(%struct.ib_mr* %11)
  store %struct.rvt_mr* %12, %struct.rvt_mr** %10, align 8
  %13 = load %struct.rvt_qp*, %struct.rvt_qp** %6, align 8
  %14 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.rvt_mr*, %struct.rvt_mr** %10, align 8
  %18 = getelementptr inbounds %struct.rvt_mr, %struct.rvt_mr* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %16, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %4
  %23 = load i32, i32* @EACCES, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %5, align 4
  br label %76

25:                                               ; preds = %4
  %26 = load %struct.rvt_mr*, %struct.rvt_mr** %10, align 8
  %27 = getelementptr inbounds %struct.rvt_mr, %struct.rvt_mr* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %25
  %32 = load %struct.rvt_mr*, %struct.rvt_mr** %10, align 8
  %33 = getelementptr inbounds %struct.rvt_mr, %struct.rvt_mr* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %31, %25
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %5, align 4
  br label %76

39:                                               ; preds = %31
  %40 = load i32, i32* %8, align 4
  %41 = and i32 %40, -256
  %42 = load %struct.rvt_mr*, %struct.rvt_mr** %10, align 8
  %43 = getelementptr inbounds %struct.rvt_mr, %struct.rvt_mr* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = and i32 %45, -256
  %47 = icmp ne i32 %41, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %39
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %5, align 4
  br label %76

51:                                               ; preds = %39
  %52 = load i32, i32* %8, align 4
  %53 = load %struct.ib_mr*, %struct.ib_mr** %7, align 8
  %54 = getelementptr inbounds %struct.ib_mr, %struct.ib_mr* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 4
  %55 = load i32, i32* %8, align 4
  %56 = load %struct.ib_mr*, %struct.ib_mr** %7, align 8
  %57 = getelementptr inbounds %struct.ib_mr, %struct.ib_mr* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 4
  %58 = load i32, i32* %8, align 4
  %59 = load %struct.rvt_mr*, %struct.rvt_mr** %10, align 8
  %60 = getelementptr inbounds %struct.rvt_mr, %struct.rvt_mr* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  store i32 %58, i32* %61, align 8
  %62 = load i32, i32* %9, align 4
  %63 = load %struct.rvt_mr*, %struct.rvt_mr** %10, align 8
  %64 = getelementptr inbounds %struct.rvt_mr, %struct.rvt_mr* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 2
  store i32 %62, i32* %65, align 4
  %66 = load %struct.ib_mr*, %struct.ib_mr** %7, align 8
  %67 = getelementptr inbounds %struct.ib_mr, %struct.ib_mr* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.rvt_mr*, %struct.rvt_mr** %10, align 8
  %70 = getelementptr inbounds %struct.rvt_mr, %struct.rvt_mr* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 4
  store i32 %68, i32* %71, align 4
  %72 = load %struct.rvt_mr*, %struct.rvt_mr** %10, align 8
  %73 = getelementptr inbounds %struct.rvt_mr, %struct.rvt_mr* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 3
  %75 = call i32 @atomic_set(i32* %74, i32 0)
  store i32 0, i32* %5, align 4
  br label %76

76:                                               ; preds = %51, %48, %36, %22
  %77 = load i32, i32* %5, align 4
  ret i32 %77
}

declare dso_local %struct.rvt_mr* @to_imr(%struct.ib_mr*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
