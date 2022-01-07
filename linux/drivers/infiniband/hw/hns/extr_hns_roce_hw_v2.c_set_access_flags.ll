; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v2.c_set_access_flags.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v2.c_set_access_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_roce_qp = type { i32, i32 }
%struct.hns_roce_v2_qp_context = type { i32 }
%struct.ib_qp_attr = type { i32, i32 }

@IB_QP_MAX_DEST_RD_ATOMIC = common dso_local global i32 0, align 4
@IB_QP_ACCESS_FLAGS = common dso_local global i32 0, align 4
@IB_ACCESS_REMOTE_WRITE = common dso_local global i32 0, align 4
@V2_QPC_BYTE_76_RRE_S = common dso_local global i32 0, align 4
@IB_ACCESS_REMOTE_READ = common dso_local global i32 0, align 4
@V2_QPC_BYTE_76_RWE_S = common dso_local global i32 0, align 4
@V2_QPC_BYTE_76_ATE_S = common dso_local global i32 0, align 4
@IB_ACCESS_REMOTE_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hns_roce_qp*, %struct.hns_roce_v2_qp_context*, %struct.hns_roce_v2_qp_context*, %struct.ib_qp_attr*, i32)* @set_access_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_access_flags(%struct.hns_roce_qp* %0, %struct.hns_roce_v2_qp_context* %1, %struct.hns_roce_v2_qp_context* %2, %struct.ib_qp_attr* %3, i32 %4) #0 {
  %6 = alloca %struct.hns_roce_qp*, align 8
  %7 = alloca %struct.hns_roce_v2_qp_context*, align 8
  %8 = alloca %struct.hns_roce_v2_qp_context*, align 8
  %9 = alloca %struct.ib_qp_attr*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.hns_roce_qp* %0, %struct.hns_roce_qp** %6, align 8
  store %struct.hns_roce_v2_qp_context* %1, %struct.hns_roce_v2_qp_context** %7, align 8
  store %struct.hns_roce_v2_qp_context* %2, %struct.hns_roce_v2_qp_context** %8, align 8
  store %struct.ib_qp_attr* %3, %struct.ib_qp_attr** %9, align 8
  store i32 %4, i32* %10, align 4
  %13 = load i32, i32* %10, align 4
  %14 = load i32, i32* @IB_QP_MAX_DEST_RD_ATOMIC, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %5
  %18 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %9, align 8
  %19 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  br label %25

21:                                               ; preds = %5
  %22 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %6, align 8
  %23 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  br label %25

25:                                               ; preds = %21, %17
  %26 = phi i32 [ %20, %17 ], [ %24, %21 ]
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* @IB_QP_ACCESS_FLAGS, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %25
  %32 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %9, align 8
  %33 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  br label %39

35:                                               ; preds = %25
  %36 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %6, align 8
  %37 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  br label %39

39:                                               ; preds = %35, %31
  %40 = phi i32 [ %34, %31 ], [ %38, %35 ]
  store i32 %40, i32* %12, align 4
  %41 = load i32, i32* %11, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %39
  %44 = load i32, i32* @IB_ACCESS_REMOTE_WRITE, align 4
  %45 = load i32, i32* %12, align 4
  %46 = and i32 %45, %44
  store i32 %46, i32* %12, align 4
  br label %47

47:                                               ; preds = %43, %39
  %48 = load %struct.hns_roce_v2_qp_context*, %struct.hns_roce_v2_qp_context** %7, align 8
  %49 = getelementptr inbounds %struct.hns_roce_v2_qp_context, %struct.hns_roce_v2_qp_context* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @V2_QPC_BYTE_76_RRE_S, align 4
  %52 = load i32, i32* %12, align 4
  %53 = load i32, i32* @IB_ACCESS_REMOTE_READ, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  %56 = xor i1 %55, true
  %57 = xor i1 %56, true
  %58 = zext i1 %57 to i32
  %59 = call i32 @roce_set_bit(i32 %50, i32 %51, i32 %58)
  %60 = load %struct.hns_roce_v2_qp_context*, %struct.hns_roce_v2_qp_context** %8, align 8
  %61 = getelementptr inbounds %struct.hns_roce_v2_qp_context, %struct.hns_roce_v2_qp_context* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @V2_QPC_BYTE_76_RRE_S, align 4
  %64 = call i32 @roce_set_bit(i32 %62, i32 %63, i32 0)
  %65 = load %struct.hns_roce_v2_qp_context*, %struct.hns_roce_v2_qp_context** %7, align 8
  %66 = getelementptr inbounds %struct.hns_roce_v2_qp_context, %struct.hns_roce_v2_qp_context* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @V2_QPC_BYTE_76_RWE_S, align 4
  %69 = load i32, i32* %12, align 4
  %70 = load i32, i32* @IB_ACCESS_REMOTE_WRITE, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  %73 = xor i1 %72, true
  %74 = xor i1 %73, true
  %75 = zext i1 %74 to i32
  %76 = call i32 @roce_set_bit(i32 %67, i32 %68, i32 %75)
  %77 = load %struct.hns_roce_v2_qp_context*, %struct.hns_roce_v2_qp_context** %8, align 8
  %78 = getelementptr inbounds %struct.hns_roce_v2_qp_context, %struct.hns_roce_v2_qp_context* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @V2_QPC_BYTE_76_RWE_S, align 4
  %81 = call i32 @roce_set_bit(i32 %79, i32 %80, i32 0)
  %82 = load %struct.hns_roce_v2_qp_context*, %struct.hns_roce_v2_qp_context** %7, align 8
  %83 = getelementptr inbounds %struct.hns_roce_v2_qp_context, %struct.hns_roce_v2_qp_context* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @V2_QPC_BYTE_76_ATE_S, align 4
  %86 = load i32, i32* %12, align 4
  %87 = load i32, i32* @IB_ACCESS_REMOTE_ATOMIC, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  %90 = xor i1 %89, true
  %91 = xor i1 %90, true
  %92 = zext i1 %91 to i32
  %93 = call i32 @roce_set_bit(i32 %84, i32 %85, i32 %92)
  %94 = load %struct.hns_roce_v2_qp_context*, %struct.hns_roce_v2_qp_context** %8, align 8
  %95 = getelementptr inbounds %struct.hns_roce_v2_qp_context, %struct.hns_roce_v2_qp_context* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @V2_QPC_BYTE_76_ATE_S, align 4
  %98 = call i32 @roce_set_bit(i32 %96, i32 %97, i32 0)
  ret void
}

declare dso_local i32 @roce_set_bit(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
