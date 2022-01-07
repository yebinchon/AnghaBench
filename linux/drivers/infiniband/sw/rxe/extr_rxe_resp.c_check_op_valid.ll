; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_resp.c_check_op_valid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_resp.c_check_op_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxe_qp = type { %struct.TYPE_3__, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.rxe_pkt_info = type { i32 }

@RXE_READ_MASK = common dso_local global i32 0, align 4
@IB_ACCESS_REMOTE_READ = common dso_local global i32 0, align 4
@RXE_WRITE_MASK = common dso_local global i32 0, align 4
@IB_ACCESS_REMOTE_WRITE = common dso_local global i32 0, align 4
@RXE_ATOMIC_MASK = common dso_local global i32 0, align 4
@IB_ACCESS_REMOTE_ATOMIC = common dso_local global i32 0, align 4
@RESPST_ERR_UNSUPPORTED_OPCODE = common dso_local global i32 0, align 4
@RESPST_CLEANUP = common dso_local global i32 0, align 4
@RESPST_CHK_RESOURCE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rxe_qp*, %struct.rxe_pkt_info*)* @check_op_valid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_op_valid(%struct.rxe_qp* %0, %struct.rxe_pkt_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rxe_qp*, align 8
  %5 = alloca %struct.rxe_pkt_info*, align 8
  store %struct.rxe_qp* %0, %struct.rxe_qp** %4, align 8
  store %struct.rxe_pkt_info* %1, %struct.rxe_pkt_info** %5, align 8
  %6 = load %struct.rxe_qp*, %struct.rxe_qp** %4, align 8
  %7 = call i32 @qp_type(%struct.rxe_qp* %6)
  switch i32 %7, label %78 [
    i32 131, label %8
    i32 129, label %56
    i32 128, label %77
    i32 130, label %77
    i32 132, label %77
  ]

8:                                                ; preds = %2
  %9 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %5, align 8
  %10 = getelementptr inbounds %struct.rxe_pkt_info, %struct.rxe_pkt_info* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @RXE_READ_MASK, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %8
  %16 = load %struct.rxe_qp*, %struct.rxe_qp** %4, align 8
  %17 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @IB_ACCESS_REMOTE_READ, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %53

23:                                               ; preds = %15, %8
  %24 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %5, align 8
  %25 = getelementptr inbounds %struct.rxe_pkt_info, %struct.rxe_pkt_info* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @RXE_WRITE_MASK, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %23
  %31 = load %struct.rxe_qp*, %struct.rxe_qp** %4, align 8
  %32 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @IB_ACCESS_REMOTE_WRITE, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %53

38:                                               ; preds = %30, %23
  %39 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %5, align 8
  %40 = getelementptr inbounds %struct.rxe_pkt_info, %struct.rxe_pkt_info* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @RXE_ATOMIC_MASK, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %55

45:                                               ; preds = %38
  %46 = load %struct.rxe_qp*, %struct.rxe_qp** %4, align 8
  %47 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @IB_ACCESS_REMOTE_ATOMIC, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %55, label %53

53:                                               ; preds = %45, %30, %15
  %54 = load i32, i32* @RESPST_ERR_UNSUPPORTED_OPCODE, align 4
  store i32 %54, i32* %3, align 4
  br label %82

55:                                               ; preds = %45, %38
  br label %80

56:                                               ; preds = %2
  %57 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %5, align 8
  %58 = getelementptr inbounds %struct.rxe_pkt_info, %struct.rxe_pkt_info* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @RXE_WRITE_MASK, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %76

63:                                               ; preds = %56
  %64 = load %struct.rxe_qp*, %struct.rxe_qp** %4, align 8
  %65 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @IB_ACCESS_REMOTE_WRITE, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %76, label %71

71:                                               ; preds = %63
  %72 = load %struct.rxe_qp*, %struct.rxe_qp** %4, align 8
  %73 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  store i32 1, i32* %74, align 4
  %75 = load i32, i32* @RESPST_CLEANUP, align 4
  store i32 %75, i32* %3, align 4
  br label %82

76:                                               ; preds = %63, %56
  br label %80

77:                                               ; preds = %2, %2, %2
  br label %80

78:                                               ; preds = %2
  %79 = call i32 @WARN_ON_ONCE(i32 1)
  br label %80

80:                                               ; preds = %78, %77, %76, %55
  %81 = load i32, i32* @RESPST_CHK_RESOURCE, align 4
  store i32 %81, i32* %3, align 4
  br label %82

82:                                               ; preds = %80, %71, %53
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local i32 @qp_type(%struct.rxe_qp*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
