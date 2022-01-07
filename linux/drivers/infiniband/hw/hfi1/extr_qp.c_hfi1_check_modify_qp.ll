; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_qp.c_hfi1_check_modify_qp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_qp.c_hfi1_check_modify_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvt_qp = type { %struct.ib_qp }
%struct.ib_qp = type { i32 }
%struct.ib_qp_attr = type { i32, i32 }
%struct.ib_udata = type { i32 }
%struct.hfi1_ibdev = type { i32 }
%struct.hfi1_devdata = type { i32 }

@IB_QP_AV = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@HFI1_HAS_SEND_DMA = common dso_local global i32 0, align 4
@IB_QP_ALT_PATH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hfi1_check_modify_qp(%struct.rvt_qp* %0, %struct.ib_qp_attr* %1, i32 %2, %struct.ib_udata* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.rvt_qp*, align 8
  %7 = alloca %struct.ib_qp_attr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ib_udata*, align 8
  %10 = alloca %struct.ib_qp*, align 8
  %11 = alloca %struct.hfi1_ibdev*, align 8
  %12 = alloca %struct.hfi1_devdata*, align 8
  %13 = alloca i32, align 4
  store %struct.rvt_qp* %0, %struct.rvt_qp** %6, align 8
  store %struct.ib_qp_attr* %1, %struct.ib_qp_attr** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.ib_udata* %3, %struct.ib_udata** %9, align 8
  %14 = load %struct.rvt_qp*, %struct.rvt_qp** %6, align 8
  %15 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %14, i32 0, i32 0
  store %struct.ib_qp* %15, %struct.ib_qp** %10, align 8
  %16 = load %struct.ib_qp*, %struct.ib_qp** %10, align 8
  %17 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.hfi1_ibdev* @to_idev(i32 %18)
  store %struct.hfi1_ibdev* %19, %struct.hfi1_ibdev** %11, align 8
  %20 = load %struct.hfi1_ibdev*, %struct.hfi1_ibdev** %11, align 8
  %21 = call %struct.hfi1_devdata* @dd_from_dev(%struct.hfi1_ibdev* %20)
  store %struct.hfi1_devdata* %21, %struct.hfi1_devdata** %12, align 8
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* @IB_QP_AV, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %62

26:                                               ; preds = %4
  %27 = load %struct.ib_qp*, %struct.ib_qp** %10, align 8
  %28 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %31 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %30, i32 0, i32 1
  %32 = call i32 @ah_to_sc(i32 %29, i32* %31)
  store i32 %32, i32* %13, align 4
  %33 = load i32, i32* %13, align 4
  %34 = icmp eq i32 %33, 15
  br i1 %34, label %35, label %38

35:                                               ; preds = %26
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %5, align 4
  br label %104

38:                                               ; preds = %26
  %39 = load %struct.rvt_qp*, %struct.rvt_qp** %6, align 8
  %40 = load i32, i32* %13, align 4
  %41 = call i32 @qp_to_sdma_engine(%struct.rvt_qp* %39, i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %53, label %43

43:                                               ; preds = %38
  %44 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %12, align 8
  %45 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @HFI1_HAS_SEND_DMA, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %43
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %5, align 4
  br label %104

53:                                               ; preds = %43, %38
  %54 = load %struct.rvt_qp*, %struct.rvt_qp** %6, align 8
  %55 = load i32, i32* %13, align 4
  %56 = call i32 @qp_to_send_context(%struct.rvt_qp* %54, i32 %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %53
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %5, align 4
  br label %104

61:                                               ; preds = %53
  br label %62

62:                                               ; preds = %61, %4
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* @IB_QP_ALT_PATH, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %103

67:                                               ; preds = %62
  %68 = load %struct.ib_qp*, %struct.ib_qp** %10, align 8
  %69 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %72 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %71, i32 0, i32 0
  %73 = call i32 @ah_to_sc(i32 %70, i32* %72)
  store i32 %73, i32* %13, align 4
  %74 = load i32, i32* %13, align 4
  %75 = icmp eq i32 %74, 15
  br i1 %75, label %76, label %79

76:                                               ; preds = %67
  %77 = load i32, i32* @EINVAL, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %5, align 4
  br label %104

79:                                               ; preds = %67
  %80 = load %struct.rvt_qp*, %struct.rvt_qp** %6, align 8
  %81 = load i32, i32* %13, align 4
  %82 = call i32 @qp_to_sdma_engine(%struct.rvt_qp* %80, i32 %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %94, label %84

84:                                               ; preds = %79
  %85 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %12, align 8
  %86 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @HFI1_HAS_SEND_DMA, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %84
  %92 = load i32, i32* @EINVAL, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %5, align 4
  br label %104

94:                                               ; preds = %84, %79
  %95 = load %struct.rvt_qp*, %struct.rvt_qp** %6, align 8
  %96 = load i32, i32* %13, align 4
  %97 = call i32 @qp_to_send_context(%struct.rvt_qp* %95, i32 %96)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %102, label %99

99:                                               ; preds = %94
  %100 = load i32, i32* @EINVAL, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %5, align 4
  br label %104

102:                                              ; preds = %94
  br label %103

103:                                              ; preds = %102, %62
  store i32 0, i32* %5, align 4
  br label %104

104:                                              ; preds = %103, %99, %91, %76, %58, %50, %35
  %105 = load i32, i32* %5, align 4
  ret i32 %105
}

declare dso_local %struct.hfi1_ibdev* @to_idev(i32) #1

declare dso_local %struct.hfi1_devdata* @dd_from_dev(%struct.hfi1_ibdev*) #1

declare dso_local i32 @ah_to_sc(i32, i32*) #1

declare dso_local i32 @qp_to_sdma_engine(%struct.rvt_qp*, i32) #1

declare dso_local i32 @qp_to_send_context(%struct.rvt_qp*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
