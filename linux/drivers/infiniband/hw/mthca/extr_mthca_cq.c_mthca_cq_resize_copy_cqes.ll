; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mthca/extr_mthca_cq.c_mthca_cq_resize_copy_cqes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mthca/extr_mthca_cq.c_mthca_cq_resize_copy_cqes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mthca_cq = type { i32, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@MTHCA_CQ_ENTRY_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mthca_cq_resize_copy_cqes(%struct.mthca_cq* %0) #0 {
  %2 = alloca %struct.mthca_cq*, align 8
  %3 = alloca i32, align 4
  store %struct.mthca_cq* %0, %struct.mthca_cq** %2, align 8
  %4 = load %struct.mthca_cq*, %struct.mthca_cq** %2, align 8
  %5 = getelementptr inbounds %struct.mthca_cq, %struct.mthca_cq* %4, i32 0, i32 1
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @to_mdev(i32 %7)
  %9 = call i32 @mthca_is_memfree(i32 %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %50, label %11

11:                                               ; preds = %1
  %12 = load %struct.mthca_cq*, %struct.mthca_cq** %2, align 8
  %13 = getelementptr inbounds %struct.mthca_cq, %struct.mthca_cq* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.mthca_cq*, %struct.mthca_cq** %2, align 8
  %17 = getelementptr inbounds %struct.mthca_cq, %struct.mthca_cq* %16, i32 0, i32 2
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp slt i32 %15, %20
  br i1 %21, label %22, label %50

22:                                               ; preds = %11
  %23 = load %struct.mthca_cq*, %struct.mthca_cq** %2, align 8
  %24 = getelementptr inbounds %struct.mthca_cq, %struct.mthca_cq* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.mthca_cq*, %struct.mthca_cq** %2, align 8
  %28 = getelementptr inbounds %struct.mthca_cq, %struct.mthca_cq* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = and i32 %29, %26
  store i32 %30, i32* %28, align 8
  %31 = load %struct.mthca_cq*, %struct.mthca_cq** %2, align 8
  %32 = load %struct.mthca_cq*, %struct.mthca_cq** %2, align 8
  %33 = getelementptr inbounds %struct.mthca_cq, %struct.mthca_cq* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @get_cqe(%struct.mthca_cq* %31, i32 %35)
  %37 = call i64 @cqe_sw(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %49

39:                                               ; preds = %22
  %40 = load %struct.mthca_cq*, %struct.mthca_cq** %2, align 8
  %41 = getelementptr inbounds %struct.mthca_cq, %struct.mthca_cq* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = add nsw i32 %43, 1
  %45 = load %struct.mthca_cq*, %struct.mthca_cq** %2, align 8
  %46 = getelementptr inbounds %struct.mthca_cq, %struct.mthca_cq* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = sub nsw i32 %47, %44
  store i32 %48, i32* %46, align 8
  br label %49

49:                                               ; preds = %39, %22
  br label %50

50:                                               ; preds = %49, %11, %1
  %51 = load %struct.mthca_cq*, %struct.mthca_cq** %2, align 8
  %52 = getelementptr inbounds %struct.mthca_cq, %struct.mthca_cq* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  store i32 %53, i32* %3, align 4
  br label %54

54:                                               ; preds = %88, %50
  %55 = load %struct.mthca_cq*, %struct.mthca_cq** %2, align 8
  %56 = load i32, i32* %3, align 4
  %57 = load %struct.mthca_cq*, %struct.mthca_cq** %2, align 8
  %58 = getelementptr inbounds %struct.mthca_cq, %struct.mthca_cq* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = and i32 %56, %60
  %62 = call i32 @get_cqe(%struct.mthca_cq* %55, i32 %61)
  %63 = call i64 @cqe_sw(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %91

65:                                               ; preds = %54
  %66 = load %struct.mthca_cq*, %struct.mthca_cq** %2, align 8
  %67 = getelementptr inbounds %struct.mthca_cq, %struct.mthca_cq* %66, i32 0, i32 2
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 1
  %70 = load i32, i32* %3, align 4
  %71 = load %struct.mthca_cq*, %struct.mthca_cq** %2, align 8
  %72 = getelementptr inbounds %struct.mthca_cq, %struct.mthca_cq* %71, i32 0, i32 2
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = and i32 %70, %75
  %77 = call i32 @get_cqe_from_buf(i32* %69, i32 %76)
  %78 = load %struct.mthca_cq*, %struct.mthca_cq** %2, align 8
  %79 = load i32, i32* %3, align 4
  %80 = load %struct.mthca_cq*, %struct.mthca_cq** %2, align 8
  %81 = getelementptr inbounds %struct.mthca_cq, %struct.mthca_cq* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = and i32 %79, %83
  %85 = call i32 @get_cqe(%struct.mthca_cq* %78, i32 %84)
  %86 = load i32, i32* @MTHCA_CQ_ENTRY_SIZE, align 4
  %87 = call i32 @memcpy(i32 %77, i32 %85, i32 %86)
  br label %88

88:                                               ; preds = %65
  %89 = load i32, i32* %3, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %3, align 4
  br label %54

91:                                               ; preds = %54
  ret void
}

declare dso_local i32 @mthca_is_memfree(i32) #1

declare dso_local i32 @to_mdev(i32) #1

declare dso_local i64 @cqe_sw(i32) #1

declare dso_local i32 @get_cqe(%struct.mthca_cq*, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @get_cqe_from_buf(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
