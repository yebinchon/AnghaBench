; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/siw/extr_siw_qp.c_siw_qp_modify_nonstate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/siw/extr_siw_qp.c_siw_qp_modify_nonstate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.siw_qp = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.siw_qp_attrs = type { i32 }

@SIW_QP_ATTR_ACCESS_FLAGS = common dso_local global i32 0, align 4
@SIW_RDMA_BIND_ENABLED = common dso_local global i32 0, align 4
@SIW_RDMA_WRITE_ENABLED = common dso_local global i32 0, align 4
@SIW_RDMA_READ_ENABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.siw_qp*, %struct.siw_qp_attrs*, i32)* @siw_qp_modify_nonstate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @siw_qp_modify_nonstate(%struct.siw_qp* %0, %struct.siw_qp_attrs* %1, i32 %2) #0 {
  %4 = alloca %struct.siw_qp*, align 8
  %5 = alloca %struct.siw_qp_attrs*, align 8
  %6 = alloca i32, align 4
  store %struct.siw_qp* %0, %struct.siw_qp** %4, align 8
  store %struct.siw_qp_attrs* %1, %struct.siw_qp_attrs** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @SIW_QP_ATTR_ACCESS_FLAGS, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %78

11:                                               ; preds = %3
  %12 = load %struct.siw_qp_attrs*, %struct.siw_qp_attrs** %5, align 8
  %13 = getelementptr inbounds %struct.siw_qp_attrs, %struct.siw_qp_attrs* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @SIW_RDMA_BIND_ENABLED, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %11
  %19 = load i32, i32* @SIW_RDMA_BIND_ENABLED, align 4
  %20 = load %struct.siw_qp*, %struct.siw_qp** %4, align 8
  %21 = getelementptr inbounds %struct.siw_qp, %struct.siw_qp* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = or i32 %23, %19
  store i32 %24, i32* %22, align 4
  br label %33

25:                                               ; preds = %11
  %26 = load i32, i32* @SIW_RDMA_BIND_ENABLED, align 4
  %27 = xor i32 %26, -1
  %28 = load %struct.siw_qp*, %struct.siw_qp** %4, align 8
  %29 = getelementptr inbounds %struct.siw_qp, %struct.siw_qp* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = and i32 %31, %27
  store i32 %32, i32* %30, align 4
  br label %33

33:                                               ; preds = %25, %18
  %34 = load %struct.siw_qp_attrs*, %struct.siw_qp_attrs** %5, align 8
  %35 = getelementptr inbounds %struct.siw_qp_attrs, %struct.siw_qp_attrs* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @SIW_RDMA_WRITE_ENABLED, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %33
  %41 = load i32, i32* @SIW_RDMA_WRITE_ENABLED, align 4
  %42 = load %struct.siw_qp*, %struct.siw_qp** %4, align 8
  %43 = getelementptr inbounds %struct.siw_qp, %struct.siw_qp* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = or i32 %45, %41
  store i32 %46, i32* %44, align 4
  br label %55

47:                                               ; preds = %33
  %48 = load i32, i32* @SIW_RDMA_WRITE_ENABLED, align 4
  %49 = xor i32 %48, -1
  %50 = load %struct.siw_qp*, %struct.siw_qp** %4, align 8
  %51 = getelementptr inbounds %struct.siw_qp, %struct.siw_qp* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = and i32 %53, %49
  store i32 %54, i32* %52, align 4
  br label %55

55:                                               ; preds = %47, %40
  %56 = load %struct.siw_qp_attrs*, %struct.siw_qp_attrs** %5, align 8
  %57 = getelementptr inbounds %struct.siw_qp_attrs, %struct.siw_qp_attrs* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @SIW_RDMA_READ_ENABLED, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %55
  %63 = load i32, i32* @SIW_RDMA_READ_ENABLED, align 4
  %64 = load %struct.siw_qp*, %struct.siw_qp** %4, align 8
  %65 = getelementptr inbounds %struct.siw_qp, %struct.siw_qp* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = or i32 %67, %63
  store i32 %68, i32* %66, align 4
  br label %77

69:                                               ; preds = %55
  %70 = load i32, i32* @SIW_RDMA_READ_ENABLED, align 4
  %71 = xor i32 %70, -1
  %72 = load %struct.siw_qp*, %struct.siw_qp** %4, align 8
  %73 = getelementptr inbounds %struct.siw_qp, %struct.siw_qp* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = and i32 %75, %71
  store i32 %76, i32* %74, align 4
  br label %77

77:                                               ; preds = %69, %62
  br label %78

78:                                               ; preds = %77, %3
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
