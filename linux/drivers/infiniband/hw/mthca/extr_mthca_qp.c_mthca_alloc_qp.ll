; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mthca/extr_mthca_qp.c_mthca_alloc_qp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mthca/extr_mthca_qp.c_mthca_alloc_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mthca_dev = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.mthca_pd = type { i32 }
%struct.mthca_cq = type { i32 }
%struct.ib_qp_cap = type { i32 }
%struct.mthca_qp = type { i32, i64, i32 }
%struct.ib_udata = type { i32 }

@RC = common dso_local global i32 0, align 4
@UC = common dso_local global i32 0, align 4
@UD = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mthca_alloc_qp(%struct.mthca_dev* %0, %struct.mthca_pd* %1, %struct.mthca_cq* %2, %struct.mthca_cq* %3, i32 %4, i32 %5, %struct.ib_qp_cap* %6, %struct.mthca_qp* %7, %struct.ib_udata* %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.mthca_dev*, align 8
  %12 = alloca %struct.mthca_pd*, align 8
  %13 = alloca %struct.mthca_cq*, align 8
  %14 = alloca %struct.mthca_cq*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.ib_qp_cap*, align 8
  %18 = alloca %struct.mthca_qp*, align 8
  %19 = alloca %struct.ib_udata*, align 8
  %20 = alloca i32, align 4
  store %struct.mthca_dev* %0, %struct.mthca_dev** %11, align 8
  store %struct.mthca_pd* %1, %struct.mthca_pd** %12, align 8
  store %struct.mthca_cq* %2, %struct.mthca_cq** %13, align 8
  store %struct.mthca_cq* %3, %struct.mthca_cq** %14, align 8
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store %struct.ib_qp_cap* %6, %struct.ib_qp_cap** %17, align 8
  store %struct.mthca_qp* %7, %struct.mthca_qp** %18, align 8
  store %struct.ib_udata* %8, %struct.ib_udata** %19, align 8
  %21 = load i32, i32* %15, align 4
  switch i32 %21, label %34 [
    i32 130, label %22
    i32 129, label %26
    i32 128, label %30
  ]

22:                                               ; preds = %9
  %23 = load i32, i32* @RC, align 4
  %24 = load %struct.mthca_qp*, %struct.mthca_qp** %18, align 8
  %25 = getelementptr inbounds %struct.mthca_qp, %struct.mthca_qp* %24, i32 0, i32 2
  store i32 %23, i32* %25, align 8
  br label %37

26:                                               ; preds = %9
  %27 = load i32, i32* @UC, align 4
  %28 = load %struct.mthca_qp*, %struct.mthca_qp** %18, align 8
  %29 = getelementptr inbounds %struct.mthca_qp, %struct.mthca_qp* %28, i32 0, i32 2
  store i32 %27, i32* %29, align 8
  br label %37

30:                                               ; preds = %9
  %31 = load i32, i32* @UD, align 4
  %32 = load %struct.mthca_qp*, %struct.mthca_qp** %18, align 8
  %33 = getelementptr inbounds %struct.mthca_qp, %struct.mthca_qp* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 8
  br label %37

34:                                               ; preds = %9
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %10, align 4
  br label %106

37:                                               ; preds = %30, %26, %22
  %38 = load %struct.mthca_dev*, %struct.mthca_dev** %11, align 8
  %39 = load %struct.ib_qp_cap*, %struct.ib_qp_cap** %17, align 8
  %40 = load %struct.mthca_pd*, %struct.mthca_pd** %12, align 8
  %41 = load %struct.mthca_qp*, %struct.mthca_qp** %18, align 8
  %42 = call i32 @mthca_set_qp_size(%struct.mthca_dev* %38, %struct.ib_qp_cap* %39, %struct.mthca_pd* %40, %struct.mthca_qp* %41)
  store i32 %42, i32* %20, align 4
  %43 = load i32, i32* %20, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %37
  %46 = load i32, i32* %20, align 4
  store i32 %46, i32* %10, align 4
  br label %106

47:                                               ; preds = %37
  %48 = load %struct.mthca_dev*, %struct.mthca_dev** %11, align 8
  %49 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 2
  %51 = call i32 @mthca_alloc(i32* %50)
  %52 = load %struct.mthca_qp*, %struct.mthca_qp** %18, align 8
  %53 = getelementptr inbounds %struct.mthca_qp, %struct.mthca_qp* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 8
  %54 = load %struct.mthca_qp*, %struct.mthca_qp** %18, align 8
  %55 = getelementptr inbounds %struct.mthca_qp, %struct.mthca_qp* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp eq i32 %56, -1
  br i1 %57, label %58, label %61

58:                                               ; preds = %47
  %59 = load i32, i32* @ENOMEM, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %10, align 4
  br label %106

61:                                               ; preds = %47
  %62 = load %struct.mthca_qp*, %struct.mthca_qp** %18, align 8
  %63 = getelementptr inbounds %struct.mthca_qp, %struct.mthca_qp* %62, i32 0, i32 1
  store i64 0, i64* %63, align 8
  %64 = load %struct.mthca_dev*, %struct.mthca_dev** %11, align 8
  %65 = load %struct.mthca_pd*, %struct.mthca_pd** %12, align 8
  %66 = load %struct.mthca_cq*, %struct.mthca_cq** %13, align 8
  %67 = load %struct.mthca_cq*, %struct.mthca_cq** %14, align 8
  %68 = load i32, i32* %16, align 4
  %69 = load %struct.mthca_qp*, %struct.mthca_qp** %18, align 8
  %70 = load %struct.ib_udata*, %struct.ib_udata** %19, align 8
  %71 = call i32 @mthca_alloc_qp_common(%struct.mthca_dev* %64, %struct.mthca_pd* %65, %struct.mthca_cq* %66, %struct.mthca_cq* %67, i32 %68, %struct.mthca_qp* %69, %struct.ib_udata* %70)
  store i32 %71, i32* %20, align 4
  %72 = load i32, i32* %20, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %83

74:                                               ; preds = %61
  %75 = load %struct.mthca_dev*, %struct.mthca_dev** %11, align 8
  %76 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 2
  %78 = load %struct.mthca_qp*, %struct.mthca_qp** %18, align 8
  %79 = getelementptr inbounds %struct.mthca_qp, %struct.mthca_qp* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @mthca_free(i32* %77, i32 %80)
  %82 = load i32, i32* %20, align 4
  store i32 %82, i32* %10, align 4
  br label %106

83:                                               ; preds = %61
  %84 = load %struct.mthca_dev*, %struct.mthca_dev** %11, align 8
  %85 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = call i32 @spin_lock_irq(i32* %86)
  %88 = load %struct.mthca_dev*, %struct.mthca_dev** %11, align 8
  %89 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 1
  %91 = load %struct.mthca_qp*, %struct.mthca_qp** %18, align 8
  %92 = getelementptr inbounds %struct.mthca_qp, %struct.mthca_qp* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.mthca_dev*, %struct.mthca_dev** %11, align 8
  %95 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = sub nsw i32 %97, 1
  %99 = and i32 %93, %98
  %100 = load %struct.mthca_qp*, %struct.mthca_qp** %18, align 8
  %101 = call i32 @mthca_array_set(i32* %90, i32 %99, %struct.mthca_qp* %100)
  %102 = load %struct.mthca_dev*, %struct.mthca_dev** %11, align 8
  %103 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 0
  %105 = call i32 @spin_unlock_irq(i32* %104)
  store i32 0, i32* %10, align 4
  br label %106

106:                                              ; preds = %83, %74, %58, %45, %34
  %107 = load i32, i32* %10, align 4
  ret i32 %107
}

declare dso_local i32 @mthca_set_qp_size(%struct.mthca_dev*, %struct.ib_qp_cap*, %struct.mthca_pd*, %struct.mthca_qp*) #1

declare dso_local i32 @mthca_alloc(i32*) #1

declare dso_local i32 @mthca_alloc_qp_common(%struct.mthca_dev*, %struct.mthca_pd*, %struct.mthca_cq*, %struct.mthca_cq*, i32, %struct.mthca_qp*, %struct.ib_udata*) #1

declare dso_local i32 @mthca_free(i32*, i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @mthca_array_set(i32*, i32, %struct.mthca_qp*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
