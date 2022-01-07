; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v2.c_hns_roce_v2_set_abs_fields.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v2.c_hns_roce_v2_set_abs_fields.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_qp = type { i32 }
%struct.ib_qp_attr = type { i32 }
%struct.hns_roce_v2_qp_context = type { i32 }
%struct.hns_roce_dev = type { i32 }

@IB_QPS_RESET = common dso_local global i32 0, align 4
@IB_QPS_INIT = common dso_local global i32 0, align 4
@IB_QPS_RTR = common dso_local global i32 0, align 4
@IB_QPS_RTS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Illegal state for QP!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_qp*, %struct.ib_qp_attr*, i32, i32, i32, %struct.hns_roce_v2_qp_context*, %struct.hns_roce_v2_qp_context*)* @hns_roce_v2_set_abs_fields to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hns_roce_v2_set_abs_fields(%struct.ib_qp* %0, %struct.ib_qp_attr* %1, i32 %2, i32 %3, i32 %4, %struct.hns_roce_v2_qp_context* %5, %struct.hns_roce_v2_qp_context* %6) #0 {
  %8 = alloca %struct.ib_qp*, align 8
  %9 = alloca %struct.ib_qp_attr*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.hns_roce_v2_qp_context*, align 8
  %14 = alloca %struct.hns_roce_v2_qp_context*, align 8
  %15 = alloca %struct.hns_roce_dev*, align 8
  %16 = alloca i32, align 4
  store %struct.ib_qp* %0, %struct.ib_qp** %8, align 8
  store %struct.ib_qp_attr* %1, %struct.ib_qp_attr** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.hns_roce_v2_qp_context* %5, %struct.hns_roce_v2_qp_context** %13, align 8
  store %struct.hns_roce_v2_qp_context* %6, %struct.hns_roce_v2_qp_context** %14, align 8
  %17 = load %struct.ib_qp*, %struct.ib_qp** %8, align 8
  %18 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.hns_roce_dev* @to_hr_dev(i32 %19)
  store %struct.hns_roce_dev* %20, %struct.hns_roce_dev** %15, align 8
  store i32 0, i32* %16, align 4
  %21 = load i32, i32* %11, align 4
  %22 = load i32, i32* @IB_QPS_RESET, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %37

24:                                               ; preds = %7
  %25 = load i32, i32* %12, align 4
  %26 = load i32, i32* @IB_QPS_INIT, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %37

28:                                               ; preds = %24
  %29 = load %struct.hns_roce_v2_qp_context*, %struct.hns_roce_v2_qp_context** %14, align 8
  %30 = call i32 @memset(%struct.hns_roce_v2_qp_context* %29, i32 0, i32 4)
  %31 = load %struct.ib_qp*, %struct.ib_qp** %8, align 8
  %32 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %9, align 8
  %33 = load i32, i32* %10, align 4
  %34 = load %struct.hns_roce_v2_qp_context*, %struct.hns_roce_v2_qp_context** %13, align 8
  %35 = load %struct.hns_roce_v2_qp_context*, %struct.hns_roce_v2_qp_context** %14, align 8
  %36 = call i32 @modify_qp_reset_to_init(%struct.ib_qp* %31, %struct.ib_qp_attr* %32, i32 %33, %struct.hns_roce_v2_qp_context* %34, %struct.hns_roce_v2_qp_context* %35)
  br label %107

37:                                               ; preds = %24, %7
  %38 = load i32, i32* %11, align 4
  %39 = load i32, i32* @IB_QPS_INIT, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %52

41:                                               ; preds = %37
  %42 = load i32, i32* %12, align 4
  %43 = load i32, i32* @IB_QPS_INIT, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %52

45:                                               ; preds = %41
  %46 = load %struct.ib_qp*, %struct.ib_qp** %8, align 8
  %47 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %9, align 8
  %48 = load i32, i32* %10, align 4
  %49 = load %struct.hns_roce_v2_qp_context*, %struct.hns_roce_v2_qp_context** %13, align 8
  %50 = load %struct.hns_roce_v2_qp_context*, %struct.hns_roce_v2_qp_context** %14, align 8
  %51 = call i32 @modify_qp_init_to_init(%struct.ib_qp* %46, %struct.ib_qp_attr* %47, i32 %48, %struct.hns_roce_v2_qp_context* %49, %struct.hns_roce_v2_qp_context* %50)
  br label %106

52:                                               ; preds = %41, %37
  %53 = load i32, i32* %11, align 4
  %54 = load i32, i32* @IB_QPS_INIT, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %71

56:                                               ; preds = %52
  %57 = load i32, i32* %12, align 4
  %58 = load i32, i32* @IB_QPS_RTR, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %71

60:                                               ; preds = %56
  %61 = load %struct.ib_qp*, %struct.ib_qp** %8, align 8
  %62 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %9, align 8
  %63 = load i32, i32* %10, align 4
  %64 = load %struct.hns_roce_v2_qp_context*, %struct.hns_roce_v2_qp_context** %13, align 8
  %65 = load %struct.hns_roce_v2_qp_context*, %struct.hns_roce_v2_qp_context** %14, align 8
  %66 = call i32 @modify_qp_init_to_rtr(%struct.ib_qp* %61, %struct.ib_qp_attr* %62, i32 %63, %struct.hns_roce_v2_qp_context* %64, %struct.hns_roce_v2_qp_context* %65)
  store i32 %66, i32* %16, align 4
  %67 = load i32, i32* %16, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %60
  br label %108

70:                                               ; preds = %60
  br label %105

71:                                               ; preds = %56, %52
  %72 = load i32, i32* %11, align 4
  %73 = load i32, i32* @IB_QPS_RTR, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %90

75:                                               ; preds = %71
  %76 = load i32, i32* %12, align 4
  %77 = load i32, i32* @IB_QPS_RTS, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %90

79:                                               ; preds = %75
  %80 = load %struct.ib_qp*, %struct.ib_qp** %8, align 8
  %81 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %9, align 8
  %82 = load i32, i32* %10, align 4
  %83 = load %struct.hns_roce_v2_qp_context*, %struct.hns_roce_v2_qp_context** %13, align 8
  %84 = load %struct.hns_roce_v2_qp_context*, %struct.hns_roce_v2_qp_context** %14, align 8
  %85 = call i32 @modify_qp_rtr_to_rts(%struct.ib_qp* %80, %struct.ib_qp_attr* %81, i32 %82, %struct.hns_roce_v2_qp_context* %83, %struct.hns_roce_v2_qp_context* %84)
  store i32 %85, i32* %16, align 4
  %86 = load i32, i32* %16, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %79
  br label %108

89:                                               ; preds = %79
  br label %104

90:                                               ; preds = %75, %71
  %91 = load i32, i32* %11, align 4
  %92 = load i32, i32* %12, align 4
  %93 = call i64 @hns_roce_v2_check_qp_stat(i32 %91, i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %90
  br label %103

96:                                               ; preds = %90
  %97 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %15, align 8
  %98 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @dev_err(i32 %99, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %101 = load i32, i32* @EINVAL, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %16, align 4
  br label %108

103:                                              ; preds = %95
  br label %104

104:                                              ; preds = %103, %89
  br label %105

105:                                              ; preds = %104, %70
  br label %106

106:                                              ; preds = %105, %45
  br label %107

107:                                              ; preds = %106, %28
  br label %108

108:                                              ; preds = %107, %96, %88, %69
  %109 = load i32, i32* %16, align 4
  ret i32 %109
}

declare dso_local %struct.hns_roce_dev* @to_hr_dev(i32) #1

declare dso_local i32 @memset(%struct.hns_roce_v2_qp_context*, i32, i32) #1

declare dso_local i32 @modify_qp_reset_to_init(%struct.ib_qp*, %struct.ib_qp_attr*, i32, %struct.hns_roce_v2_qp_context*, %struct.hns_roce_v2_qp_context*) #1

declare dso_local i32 @modify_qp_init_to_init(%struct.ib_qp*, %struct.ib_qp_attr*, i32, %struct.hns_roce_v2_qp_context*, %struct.hns_roce_v2_qp_context*) #1

declare dso_local i32 @modify_qp_init_to_rtr(%struct.ib_qp*, %struct.ib_qp_attr*, i32, %struct.hns_roce_v2_qp_context*, %struct.hns_roce_v2_qp_context*) #1

declare dso_local i32 @modify_qp_rtr_to_rts(%struct.ib_qp*, %struct.ib_qp_attr*, i32, %struct.hns_roce_v2_qp_context*, %struct.hns_roce_v2_qp_context*) #1

declare dso_local i64 @hns_roce_v2_check_qp_stat(i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
