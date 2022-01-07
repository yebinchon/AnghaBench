; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/rdmavt/extr_mcast.c_rvt_attach_mcast.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/rdmavt/extr_mcast.c_rvt_attach_mcast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_qp = type { i32, i32 }
%union.ib_gid = type { i32 }
%struct.rvt_qp = type { i32, i64 }
%struct.rvt_dev_info = type { %struct.rvt_ibport** }
%struct.rvt_ibport = type { i32 }
%struct.rvt_mcast = type { i32 }
%struct.rvt_mcast_qp = type { i32 }

@IB_QPS_RESET = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rvt_attach_mcast(%struct.ib_qp* %0, %union.ib_gid* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ib_qp*, align 8
  %6 = alloca %union.ib_gid*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.rvt_qp*, align 8
  %9 = alloca %struct.rvt_dev_info*, align 8
  %10 = alloca %struct.rvt_ibport*, align 8
  %11 = alloca %struct.rvt_mcast*, align 8
  %12 = alloca %struct.rvt_mcast_qp*, align 8
  %13 = alloca i32, align 4
  store %struct.ib_qp* %0, %struct.ib_qp** %5, align 8
  store %union.ib_gid* %1, %union.ib_gid** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %15 = call %struct.rvt_qp* @ibqp_to_rvtqp(%struct.ib_qp* %14)
  store %struct.rvt_qp* %15, %struct.rvt_qp** %8, align 8
  %16 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %17 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.rvt_dev_info* @ib_to_rvt(i32 %18)
  store %struct.rvt_dev_info* %19, %struct.rvt_dev_info** %9, align 8
  %20 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %9, align 8
  %21 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %20, i32 0, i32 0
  %22 = load %struct.rvt_ibport**, %struct.rvt_ibport*** %21, align 8
  %23 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %24 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = sub nsw i32 %25, 1
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.rvt_ibport*, %struct.rvt_ibport** %22, i64 %27
  %29 = load %struct.rvt_ibport*, %struct.rvt_ibport** %28, align 8
  store %struct.rvt_ibport* %29, %struct.rvt_ibport** %10, align 8
  store i32 -129, i32* %13, align 4
  %30 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %31 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp sle i32 %32, 1
  br i1 %33, label %40, label %34

34:                                               ; preds = %3
  %35 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %36 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @IB_QPS_RESET, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %34, %3
  store i32 -130, i32* %4, align 4
  br label %73

41:                                               ; preds = %34
  %42 = load %union.ib_gid*, %union.ib_gid** %6, align 8
  %43 = load i32, i32* %7, align 4
  %44 = call %struct.rvt_mcast* @rvt_mcast_alloc(%union.ib_gid* %42, i32 %43)
  store %struct.rvt_mcast* %44, %struct.rvt_mcast** %11, align 8
  %45 = load %struct.rvt_mcast*, %struct.rvt_mcast** %11, align 8
  %46 = icmp ne %struct.rvt_mcast* %45, null
  br i1 %46, label %48, label %47

47:                                               ; preds = %41
  store i32 -129, i32* %4, align 4
  br label %73

48:                                               ; preds = %41
  %49 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %50 = call %struct.rvt_mcast_qp* @rvt_mcast_qp_alloc(%struct.rvt_qp* %49)
  store %struct.rvt_mcast_qp* %50, %struct.rvt_mcast_qp** %12, align 8
  %51 = load %struct.rvt_mcast_qp*, %struct.rvt_mcast_qp** %12, align 8
  %52 = icmp ne %struct.rvt_mcast_qp* %51, null
  br i1 %52, label %54, label %53

53:                                               ; preds = %48
  br label %69

54:                                               ; preds = %48
  %55 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %9, align 8
  %56 = load %struct.rvt_ibport*, %struct.rvt_ibport** %10, align 8
  %57 = load %struct.rvt_mcast*, %struct.rvt_mcast** %11, align 8
  %58 = load %struct.rvt_mcast_qp*, %struct.rvt_mcast_qp** %12, align 8
  %59 = call i32 @rvt_mcast_add(%struct.rvt_dev_info* %55, %struct.rvt_ibport* %56, %struct.rvt_mcast* %57, %struct.rvt_mcast_qp* %58)
  switch i32 %59, label %64 [
    i32 128, label %60
    i32 131, label %61
    i32 129, label %62
    i32 130, label %63
  ]

60:                                               ; preds = %54
  store i32 0, i32* %13, align 4
  br label %66

61:                                               ; preds = %54
  store i32 0, i32* %13, align 4
  br label %69

62:                                               ; preds = %54
  store i32 -129, i32* %13, align 4
  br label %66

63:                                               ; preds = %54
  store i32 -130, i32* %13, align 4
  br label %66

64:                                               ; preds = %54
  br label %65

65:                                               ; preds = %64
  store i32 0, i32* %4, align 4
  br label %73

66:                                               ; preds = %63, %62, %60
  %67 = load %struct.rvt_mcast_qp*, %struct.rvt_mcast_qp** %12, align 8
  %68 = call i32 @rvt_mcast_qp_free(%struct.rvt_mcast_qp* %67)
  br label %69

69:                                               ; preds = %66, %61, %53
  %70 = load %struct.rvt_mcast*, %struct.rvt_mcast** %11, align 8
  %71 = call i32 @rvt_mcast_free(%struct.rvt_mcast* %70)
  %72 = load i32, i32* %13, align 4
  store i32 %72, i32* %4, align 4
  br label %73

73:                                               ; preds = %69, %65, %47, %40
  %74 = load i32, i32* %4, align 4
  ret i32 %74
}

declare dso_local %struct.rvt_qp* @ibqp_to_rvtqp(%struct.ib_qp*) #1

declare dso_local %struct.rvt_dev_info* @ib_to_rvt(i32) #1

declare dso_local %struct.rvt_mcast* @rvt_mcast_alloc(%union.ib_gid*, i32) #1

declare dso_local %struct.rvt_mcast_qp* @rvt_mcast_qp_alloc(%struct.rvt_qp*) #1

declare dso_local i32 @rvt_mcast_add(%struct.rvt_dev_info*, %struct.rvt_ibport*, %struct.rvt_mcast*, %struct.rvt_mcast_qp*) #1

declare dso_local i32 @rvt_mcast_qp_free(%struct.rvt_mcast_qp*) #1

declare dso_local i32 @rvt_mcast_free(%struct.rvt_mcast*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
