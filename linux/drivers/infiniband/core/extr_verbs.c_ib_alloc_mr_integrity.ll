; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_verbs.c_ib_alloc_mr_integrity.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_verbs.c_ib_alloc_mr_integrity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_mr = type { i32, %struct.ib_sig_attrs*, i32, %struct.TYPE_6__, i32*, i32*, %struct.ib_pd*, %struct.TYPE_5__* }
%struct.ib_sig_attrs = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { {}*, i32 }
%struct.ib_pd = type { i32, %struct.TYPE_5__* }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@RDMA_RESTRACK_MR = common dso_local global i32 0, align 4
@IB_MR_TYPE_INTEGRITY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ib_mr* @ib_alloc_mr_integrity(%struct.ib_pd* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ib_mr*, align 8
  %5 = alloca %struct.ib_pd*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ib_mr*, align 8
  %9 = alloca %struct.ib_sig_attrs*, align 8
  store %struct.ib_pd* %0, %struct.ib_pd** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.ib_pd*, %struct.ib_pd** %5, align 8
  %11 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %10, i32 0, i32 1
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = bitcast {}** %14 to %struct.ib_mr* (%struct.ib_pd*, i32, i32)**
  %16 = load %struct.ib_mr* (%struct.ib_pd*, i32, i32)*, %struct.ib_mr* (%struct.ib_pd*, i32, i32)** %15, align 8
  %17 = icmp ne %struct.ib_mr* (%struct.ib_pd*, i32, i32)* %16, null
  br i1 %17, label %18, label %26

18:                                               ; preds = %3
  %19 = load %struct.ib_pd*, %struct.ib_pd** %5, align 8
  %20 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %19, i32 0, i32 1
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %18, %3
  %27 = load i32, i32* @EOPNOTSUPP, align 4
  %28 = sub nsw i32 0, %27
  %29 = call %struct.ib_mr* @ERR_PTR(i32 %28)
  store %struct.ib_mr* %29, %struct.ib_mr** %4, align 8
  br label %97

30:                                               ; preds = %18
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %30
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  %36 = call %struct.ib_mr* @ERR_PTR(i32 %35)
  store %struct.ib_mr* %36, %struct.ib_mr** %4, align 8
  br label %97

37:                                               ; preds = %30
  %38 = load i32, i32* @GFP_KERNEL, align 4
  %39 = call %struct.ib_sig_attrs* @kzalloc(i32 4, i32 %38)
  store %struct.ib_sig_attrs* %39, %struct.ib_sig_attrs** %9, align 8
  %40 = load %struct.ib_sig_attrs*, %struct.ib_sig_attrs** %9, align 8
  %41 = icmp ne %struct.ib_sig_attrs* %40, null
  br i1 %41, label %46, label %42

42:                                               ; preds = %37
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = sub nsw i32 0, %43
  %45 = call %struct.ib_mr* @ERR_PTR(i32 %44)
  store %struct.ib_mr* %45, %struct.ib_mr** %4, align 8
  br label %97

46:                                               ; preds = %37
  %47 = load %struct.ib_pd*, %struct.ib_pd** %5, align 8
  %48 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %47, i32 0, i32 1
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = bitcast {}** %51 to %struct.ib_mr* (%struct.ib_pd*, i32, i32)**
  %53 = load %struct.ib_mr* (%struct.ib_pd*, i32, i32)*, %struct.ib_mr* (%struct.ib_pd*, i32, i32)** %52, align 8
  %54 = load %struct.ib_pd*, %struct.ib_pd** %5, align 8
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* %7, align 4
  %57 = call %struct.ib_mr* %53(%struct.ib_pd* %54, i32 %55, i32 %56)
  store %struct.ib_mr* %57, %struct.ib_mr** %8, align 8
  %58 = load %struct.ib_mr*, %struct.ib_mr** %8, align 8
  %59 = call i64 @IS_ERR(%struct.ib_mr* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %46
  %62 = load %struct.ib_sig_attrs*, %struct.ib_sig_attrs** %9, align 8
  %63 = call i32 @kfree(%struct.ib_sig_attrs* %62)
  %64 = load %struct.ib_mr*, %struct.ib_mr** %8, align 8
  store %struct.ib_mr* %64, %struct.ib_mr** %4, align 8
  br label %97

65:                                               ; preds = %46
  %66 = load %struct.ib_pd*, %struct.ib_pd** %5, align 8
  %67 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %66, i32 0, i32 1
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %67, align 8
  %69 = load %struct.ib_mr*, %struct.ib_mr** %8, align 8
  %70 = getelementptr inbounds %struct.ib_mr, %struct.ib_mr* %69, i32 0, i32 7
  store %struct.TYPE_5__* %68, %struct.TYPE_5__** %70, align 8
  %71 = load %struct.ib_pd*, %struct.ib_pd** %5, align 8
  %72 = load %struct.ib_mr*, %struct.ib_mr** %8, align 8
  %73 = getelementptr inbounds %struct.ib_mr, %struct.ib_mr* %72, i32 0, i32 6
  store %struct.ib_pd* %71, %struct.ib_pd** %73, align 8
  %74 = load %struct.ib_mr*, %struct.ib_mr** %8, align 8
  %75 = getelementptr inbounds %struct.ib_mr, %struct.ib_mr* %74, i32 0, i32 5
  store i32* null, i32** %75, align 8
  %76 = load %struct.ib_mr*, %struct.ib_mr** %8, align 8
  %77 = getelementptr inbounds %struct.ib_mr, %struct.ib_mr* %76, i32 0, i32 4
  store i32* null, i32** %77, align 8
  %78 = load %struct.ib_pd*, %struct.ib_pd** %5, align 8
  %79 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %78, i32 0, i32 0
  %80 = call i32 @atomic_inc(i32* %79)
  %81 = load %struct.ib_mr*, %struct.ib_mr** %8, align 8
  %82 = getelementptr inbounds %struct.ib_mr, %struct.ib_mr* %81, i32 0, i32 0
  store i32 0, i32* %82, align 8
  %83 = load i32, i32* @RDMA_RESTRACK_MR, align 4
  %84 = load %struct.ib_mr*, %struct.ib_mr** %8, align 8
  %85 = getelementptr inbounds %struct.ib_mr, %struct.ib_mr* %84, i32 0, i32 3
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  store i32 %83, i32* %86, align 4
  %87 = load %struct.ib_mr*, %struct.ib_mr** %8, align 8
  %88 = getelementptr inbounds %struct.ib_mr, %struct.ib_mr* %87, i32 0, i32 3
  %89 = call i32 @rdma_restrack_kadd(%struct.TYPE_6__* %88)
  %90 = load i32, i32* @IB_MR_TYPE_INTEGRITY, align 4
  %91 = load %struct.ib_mr*, %struct.ib_mr** %8, align 8
  %92 = getelementptr inbounds %struct.ib_mr, %struct.ib_mr* %91, i32 0, i32 2
  store i32 %90, i32* %92, align 8
  %93 = load %struct.ib_sig_attrs*, %struct.ib_sig_attrs** %9, align 8
  %94 = load %struct.ib_mr*, %struct.ib_mr** %8, align 8
  %95 = getelementptr inbounds %struct.ib_mr, %struct.ib_mr* %94, i32 0, i32 1
  store %struct.ib_sig_attrs* %93, %struct.ib_sig_attrs** %95, align 8
  %96 = load %struct.ib_mr*, %struct.ib_mr** %8, align 8
  store %struct.ib_mr* %96, %struct.ib_mr** %4, align 8
  br label %97

97:                                               ; preds = %65, %61, %42, %33, %26
  %98 = load %struct.ib_mr*, %struct.ib_mr** %4, align 8
  ret %struct.ib_mr* %98
}

declare dso_local %struct.ib_mr* @ERR_PTR(i32) #1

declare dso_local %struct.ib_sig_attrs* @kzalloc(i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.ib_mr*) #1

declare dso_local i32 @kfree(%struct.ib_sig_attrs*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @rdma_restrack_kadd(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
