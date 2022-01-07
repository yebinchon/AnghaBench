; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_verbs.c_ib_alloc_mr_user.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_verbs.c_ib_alloc_mr_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_mr = type { i32, i32, i32*, %struct.TYPE_6__, i32*, i32*, %struct.ib_pd*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.ib_mr* (%struct.ib_pd*, i32, i32, %struct.ib_udata*)* }
%struct.ib_pd = type { i32, %struct.TYPE_5__* }
%struct.ib_udata = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@IB_MR_TYPE_INTEGRITY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@RDMA_RESTRACK_MR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ib_mr* @ib_alloc_mr_user(%struct.ib_pd* %0, i32 %1, i32 %2, %struct.ib_udata* %3) #0 {
  %5 = alloca %struct.ib_mr*, align 8
  %6 = alloca %struct.ib_pd*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ib_udata*, align 8
  %10 = alloca %struct.ib_mr*, align 8
  store %struct.ib_pd* %0, %struct.ib_pd** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.ib_udata* %3, %struct.ib_udata** %9, align 8
  %11 = load %struct.ib_pd*, %struct.ib_pd** %6, align 8
  %12 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %11, i32 0, i32 1
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load %struct.ib_mr* (%struct.ib_pd*, i32, i32, %struct.ib_udata*)*, %struct.ib_mr* (%struct.ib_pd*, i32, i32, %struct.ib_udata*)** %15, align 8
  %17 = icmp ne %struct.ib_mr* (%struct.ib_pd*, i32, i32, %struct.ib_udata*)* %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %4
  %19 = load i32, i32* @EOPNOTSUPP, align 4
  %20 = sub nsw i32 0, %19
  %21 = call %struct.ib_mr* @ERR_PTR(i32 %20)
  store %struct.ib_mr* %21, %struct.ib_mr** %5, align 8
  br label %80

22:                                               ; preds = %4
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @IB_MR_TYPE_INTEGRITY, align 4
  %25 = icmp eq i32 %23, %24
  %26 = zext i1 %25 to i32
  %27 = call i64 @WARN_ON_ONCE(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %22
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  %32 = call %struct.ib_mr* @ERR_PTR(i32 %31)
  store %struct.ib_mr* %32, %struct.ib_mr** %5, align 8
  br label %80

33:                                               ; preds = %22
  %34 = load %struct.ib_pd*, %struct.ib_pd** %6, align 8
  %35 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %34, i32 0, i32 1
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load %struct.ib_mr* (%struct.ib_pd*, i32, i32, %struct.ib_udata*)*, %struct.ib_mr* (%struct.ib_pd*, i32, i32, %struct.ib_udata*)** %38, align 8
  %40 = load %struct.ib_pd*, %struct.ib_pd** %6, align 8
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* %8, align 4
  %43 = load %struct.ib_udata*, %struct.ib_udata** %9, align 8
  %44 = call %struct.ib_mr* %39(%struct.ib_pd* %40, i32 %41, i32 %42, %struct.ib_udata* %43)
  store %struct.ib_mr* %44, %struct.ib_mr** %10, align 8
  %45 = load %struct.ib_mr*, %struct.ib_mr** %10, align 8
  %46 = call i32 @IS_ERR(%struct.ib_mr* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %78, label %48

48:                                               ; preds = %33
  %49 = load %struct.ib_pd*, %struct.ib_pd** %6, align 8
  %50 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %49, i32 0, i32 1
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %50, align 8
  %52 = load %struct.ib_mr*, %struct.ib_mr** %10, align 8
  %53 = getelementptr inbounds %struct.ib_mr, %struct.ib_mr* %52, i32 0, i32 7
  store %struct.TYPE_5__* %51, %struct.TYPE_5__** %53, align 8
  %54 = load %struct.ib_pd*, %struct.ib_pd** %6, align 8
  %55 = load %struct.ib_mr*, %struct.ib_mr** %10, align 8
  %56 = getelementptr inbounds %struct.ib_mr, %struct.ib_mr* %55, i32 0, i32 6
  store %struct.ib_pd* %54, %struct.ib_pd** %56, align 8
  %57 = load %struct.ib_mr*, %struct.ib_mr** %10, align 8
  %58 = getelementptr inbounds %struct.ib_mr, %struct.ib_mr* %57, i32 0, i32 5
  store i32* null, i32** %58, align 8
  %59 = load %struct.ib_mr*, %struct.ib_mr** %10, align 8
  %60 = getelementptr inbounds %struct.ib_mr, %struct.ib_mr* %59, i32 0, i32 4
  store i32* null, i32** %60, align 8
  %61 = load %struct.ib_pd*, %struct.ib_pd** %6, align 8
  %62 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %61, i32 0, i32 0
  %63 = call i32 @atomic_inc(i32* %62)
  %64 = load %struct.ib_mr*, %struct.ib_mr** %10, align 8
  %65 = getelementptr inbounds %struct.ib_mr, %struct.ib_mr* %64, i32 0, i32 0
  store i32 0, i32* %65, align 8
  %66 = load i32, i32* @RDMA_RESTRACK_MR, align 4
  %67 = load %struct.ib_mr*, %struct.ib_mr** %10, align 8
  %68 = getelementptr inbounds %struct.ib_mr, %struct.ib_mr* %67, i32 0, i32 3
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  store i32 %66, i32* %69, align 8
  %70 = load %struct.ib_mr*, %struct.ib_mr** %10, align 8
  %71 = getelementptr inbounds %struct.ib_mr, %struct.ib_mr* %70, i32 0, i32 3
  %72 = call i32 @rdma_restrack_kadd(%struct.TYPE_6__* %71)
  %73 = load i32, i32* %7, align 4
  %74 = load %struct.ib_mr*, %struct.ib_mr** %10, align 8
  %75 = getelementptr inbounds %struct.ib_mr, %struct.ib_mr* %74, i32 0, i32 1
  store i32 %73, i32* %75, align 4
  %76 = load %struct.ib_mr*, %struct.ib_mr** %10, align 8
  %77 = getelementptr inbounds %struct.ib_mr, %struct.ib_mr* %76, i32 0, i32 2
  store i32* null, i32** %77, align 8
  br label %78

78:                                               ; preds = %48, %33
  %79 = load %struct.ib_mr*, %struct.ib_mr** %10, align 8
  store %struct.ib_mr* %79, %struct.ib_mr** %5, align 8
  br label %80

80:                                               ; preds = %78, %29, %18
  %81 = load %struct.ib_mr*, %struct.ib_mr** %5, align 8
  ret %struct.ib_mr* %81
}

declare dso_local %struct.ib_mr* @ERR_PTR(i32) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @IS_ERR(%struct.ib_mr*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @rdma_restrack_kadd(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
