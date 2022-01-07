; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/rdmavt/extr_mad.c_rvt_free_mad_agents.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/rdmavt/extr_mad.c_rvt_free_mad_agents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvt_dev_info = type { %struct.TYPE_5__, %struct.rvt_ibport**, %struct.TYPE_6__ }
%struct.TYPE_5__ = type { i32 (%struct.rvt_dev_info.0*, i32)* }
%struct.rvt_dev_info.0 = type opaque
%struct.rvt_ibport = type { %struct.TYPE_4__*, %struct.ib_mad_agent* }
%struct.TYPE_4__ = type { i32 }
%struct.ib_mad_agent = type { i32 }
%struct.TYPE_6__ = type { i32 }

@RDMA_DESTROY_AH_SLEEPABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rvt_free_mad_agents(%struct.rvt_dev_info* %0) #0 {
  %2 = alloca %struct.rvt_dev_info*, align 8
  %3 = alloca %struct.ib_mad_agent*, align 8
  %4 = alloca %struct.rvt_ibport*, align 8
  %5 = alloca i32, align 4
  store %struct.rvt_dev_info* %0, %struct.rvt_dev_info** %2, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %63, %1
  %7 = load i32, i32* %5, align 4
  %8 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %2, align 8
  %9 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp slt i32 %7, %11
  br i1 %12, label %13, label %66

13:                                               ; preds = %6
  %14 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %2, align 8
  %15 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %14, i32 0, i32 1
  %16 = load %struct.rvt_ibport**, %struct.rvt_ibport*** %15, align 8
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.rvt_ibport*, %struct.rvt_ibport** %16, i64 %18
  %20 = load %struct.rvt_ibport*, %struct.rvt_ibport** %19, align 8
  store %struct.rvt_ibport* %20, %struct.rvt_ibport** %4, align 8
  %21 = load %struct.rvt_ibport*, %struct.rvt_ibport** %4, align 8
  %22 = getelementptr inbounds %struct.rvt_ibport, %struct.rvt_ibport* %21, i32 0, i32 1
  %23 = load %struct.ib_mad_agent*, %struct.ib_mad_agent** %22, align 8
  %24 = icmp ne %struct.ib_mad_agent* %23, null
  br i1 %24, label %25, label %33

25:                                               ; preds = %13
  %26 = load %struct.rvt_ibport*, %struct.rvt_ibport** %4, align 8
  %27 = getelementptr inbounds %struct.rvt_ibport, %struct.rvt_ibport* %26, i32 0, i32 1
  %28 = load %struct.ib_mad_agent*, %struct.ib_mad_agent** %27, align 8
  store %struct.ib_mad_agent* %28, %struct.ib_mad_agent** %3, align 8
  %29 = load %struct.rvt_ibport*, %struct.rvt_ibport** %4, align 8
  %30 = getelementptr inbounds %struct.rvt_ibport, %struct.rvt_ibport* %29, i32 0, i32 1
  store %struct.ib_mad_agent* null, %struct.ib_mad_agent** %30, align 8
  %31 = load %struct.ib_mad_agent*, %struct.ib_mad_agent** %3, align 8
  %32 = call i32 @ib_unregister_mad_agent(%struct.ib_mad_agent* %31)
  br label %33

33:                                               ; preds = %25, %13
  %34 = load %struct.rvt_ibport*, %struct.rvt_ibport** %4, align 8
  %35 = getelementptr inbounds %struct.rvt_ibport, %struct.rvt_ibport* %34, i32 0, i32 0
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = icmp ne %struct.TYPE_4__* %36, null
  br i1 %37, label %38, label %47

38:                                               ; preds = %33
  %39 = load %struct.rvt_ibport*, %struct.rvt_ibport** %4, align 8
  %40 = getelementptr inbounds %struct.rvt_ibport, %struct.rvt_ibport* %39, i32 0, i32 0
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* @RDMA_DESTROY_AH_SLEEPABLE, align 4
  %44 = call i32 @rdma_destroy_ah(i32* %42, i32 %43)
  %45 = load %struct.rvt_ibport*, %struct.rvt_ibport** %4, align 8
  %46 = getelementptr inbounds %struct.rvt_ibport, %struct.rvt_ibport* %45, i32 0, i32 0
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %46, align 8
  br label %47

47:                                               ; preds = %38, %33
  %48 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %2, align 8
  %49 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i32 (%struct.rvt_dev_info.0*, i32)*, i32 (%struct.rvt_dev_info.0*, i32)** %50, align 8
  %52 = icmp ne i32 (%struct.rvt_dev_info.0*, i32)* %51, null
  br i1 %52, label %53, label %62

53:                                               ; preds = %47
  %54 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %2, align 8
  %55 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i32 (%struct.rvt_dev_info.0*, i32)*, i32 (%struct.rvt_dev_info.0*, i32)** %56, align 8
  %58 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %2, align 8
  %59 = bitcast %struct.rvt_dev_info* %58 to %struct.rvt_dev_info.0*
  %60 = load i32, i32* %5, align 4
  %61 = call i32 %57(%struct.rvt_dev_info.0* %59, i32 %60)
  br label %62

62:                                               ; preds = %53, %47
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %5, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %5, align 4
  br label %6

66:                                               ; preds = %6
  ret void
}

declare dso_local i32 @ib_unregister_mad_agent(%struct.ib_mad_agent*) #1

declare dso_local i32 @rdma_destroy_ah(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
