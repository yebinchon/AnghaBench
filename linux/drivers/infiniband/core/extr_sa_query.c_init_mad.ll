; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_sa_query.c_init_mad.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_sa_query.c_init_mad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_sa_query = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.ib_sa_mad* }
%struct.ib_sa_mad = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.ib_mad_agent = type { i64 }

@IB_SA_QUERY_OPA = common dso_local global i32 0, align 4
@OPA_MGMT_BASE_VERSION = common dso_local global i32 0, align 4
@OPA_SA_CLASS_VERSION = common dso_local global i32 0, align 4
@IB_MGMT_BASE_VERSION = common dso_local global i32 0, align 4
@IB_SA_CLASS_VERSION = common dso_local global i32 0, align 4
@IB_MGMT_CLASS_SUBN_ADM = common dso_local global i32 0, align 4
@tid_lock = common dso_local global i32 0, align 4
@tid = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ib_sa_query*, %struct.ib_mad_agent*)* @init_mad to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_mad(%struct.ib_sa_query* %0, %struct.ib_mad_agent* %1) #0 {
  %3 = alloca %struct.ib_sa_query*, align 8
  %4 = alloca %struct.ib_mad_agent*, align 8
  %5 = alloca %struct.ib_sa_mad*, align 8
  %6 = alloca i64, align 8
  store %struct.ib_sa_query* %0, %struct.ib_sa_query** %3, align 8
  store %struct.ib_mad_agent* %1, %struct.ib_mad_agent** %4, align 8
  %7 = load %struct.ib_sa_query*, %struct.ib_sa_query** %3, align 8
  %8 = getelementptr inbounds %struct.ib_sa_query, %struct.ib_sa_query* %7, i32 0, i32 1
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load %struct.ib_sa_mad*, %struct.ib_sa_mad** %10, align 8
  store %struct.ib_sa_mad* %11, %struct.ib_sa_mad** %5, align 8
  %12 = load %struct.ib_sa_mad*, %struct.ib_sa_mad** %5, align 8
  %13 = call i32 @memset(%struct.ib_sa_mad* %12, i32 0, i32 16)
  %14 = load %struct.ib_sa_query*, %struct.ib_sa_query** %3, align 8
  %15 = getelementptr inbounds %struct.ib_sa_query, %struct.ib_sa_query* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @IB_SA_QUERY_OPA, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %2
  %21 = load i32, i32* @OPA_MGMT_BASE_VERSION, align 4
  %22 = load %struct.ib_sa_mad*, %struct.ib_sa_mad** %5, align 8
  %23 = getelementptr inbounds %struct.ib_sa_mad, %struct.ib_sa_mad* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 3
  store i32 %21, i32* %24, align 4
  %25 = load i32, i32* @OPA_SA_CLASS_VERSION, align 4
  %26 = load %struct.ib_sa_mad*, %struct.ib_sa_mad** %5, align 8
  %27 = getelementptr inbounds %struct.ib_sa_mad, %struct.ib_sa_mad* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 2
  store i32 %25, i32* %28, align 4
  br label %38

29:                                               ; preds = %2
  %30 = load i32, i32* @IB_MGMT_BASE_VERSION, align 4
  %31 = load %struct.ib_sa_mad*, %struct.ib_sa_mad** %5, align 8
  %32 = getelementptr inbounds %struct.ib_sa_mad, %struct.ib_sa_mad* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 3
  store i32 %30, i32* %33, align 4
  %34 = load i32, i32* @IB_SA_CLASS_VERSION, align 4
  %35 = load %struct.ib_sa_mad*, %struct.ib_sa_mad** %5, align 8
  %36 = getelementptr inbounds %struct.ib_sa_mad, %struct.ib_sa_mad* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 2
  store i32 %34, i32* %37, align 4
  br label %38

38:                                               ; preds = %29, %20
  %39 = load i32, i32* @IB_MGMT_CLASS_SUBN_ADM, align 4
  %40 = load %struct.ib_sa_mad*, %struct.ib_sa_mad** %5, align 8
  %41 = getelementptr inbounds %struct.ib_sa_mad, %struct.ib_sa_mad* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  store i32 %39, i32* %42, align 4
  %43 = load i64, i64* %6, align 8
  %44 = call i32 @spin_lock_irqsave(i32* @tid_lock, i64 %43)
  %45 = load %struct.ib_mad_agent*, %struct.ib_mad_agent** %4, align 8
  %46 = getelementptr inbounds %struct.ib_mad_agent, %struct.ib_mad_agent* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = trunc i64 %47 to i32
  %49 = shl i32 %48, 32
  %50 = load i32, i32* @tid, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* @tid, align 4
  %52 = or i32 %49, %50
  %53 = call i32 @cpu_to_be64(i32 %52)
  %54 = load %struct.ib_sa_mad*, %struct.ib_sa_mad** %5, align 8
  %55 = getelementptr inbounds %struct.ib_sa_mad, %struct.ib_sa_mad* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  store i32 %53, i32* %56, align 4
  %57 = load i64, i64* %6, align 8
  %58 = call i32 @spin_unlock_irqrestore(i32* @tid_lock, i64 %57)
  ret void
}

declare dso_local i32 @memset(%struct.ib_sa_mad*, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @cpu_to_be64(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
