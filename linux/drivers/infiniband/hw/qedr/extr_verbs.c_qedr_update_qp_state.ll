; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qedr/extr_verbs.c_qedr_update_qp_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qedr/extr_verbs.c_qedr_update_qp_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qedr_dev = type { i32 }
%struct.qedr_qp = type { %struct.TYPE_4__, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [79 x i8] c"Error->Reset with rq/sq not empty rq.prod=%x rq.cons=%x sq.prod=%x sq.cons=%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qedr_dev*, %struct.qedr_qp*, i32, i32)* @qedr_update_qp_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qedr_update_qp_state(%struct.qedr_dev* %0, %struct.qedr_qp* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.qedr_dev*, align 8
  %7 = alloca %struct.qedr_qp*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.qedr_dev* %0, %struct.qedr_dev** %6, align 8
  store %struct.qedr_qp* %1, %struct.qedr_qp** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %11 = load i32, i32* %9, align 4
  %12 = load i32, i32* %8, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %132

15:                                               ; preds = %4
  %16 = load i32, i32* %8, align 4
  switch i32 %16, label %127 [
    i32 131, label %17
    i32 132, label %32
    i32 130, label %56
    i32 129, label %64
    i32 128, label %72
    i32 133, label %79
  ]

17:                                               ; preds = %15
  %18 = load i32, i32* %9, align 4
  switch i32 %18, label %28 [
    i32 132, label %19
  ]

19:                                               ; preds = %17
  %20 = load %struct.qedr_qp*, %struct.qedr_qp** %7, align 8
  %21 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %20, i32 0, i32 2
  store i32 0, i32* %21, align 4
  %22 = load %struct.qedr_qp*, %struct.qedr_qp** %7, align 8
  %23 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %22, i32 0, i32 0
  %24 = call i32 @qedr_reset_qp_hwq_info(%struct.TYPE_4__* %23)
  %25 = load %struct.qedr_qp*, %struct.qedr_qp** %7, align 8
  %26 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %25, i32 0, i32 1
  %27 = call i32 @qedr_reset_qp_hwq_info(%struct.TYPE_4__* %26)
  br label %31

28:                                               ; preds = %17
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %10, align 4
  br label %31

31:                                               ; preds = %28, %19
  br label %130

32:                                               ; preds = %15
  %33 = load i32, i32* %9, align 4
  switch i32 %33, label %52 [
    i32 130, label %34
    i32 133, label %51
  ]

34:                                               ; preds = %32
  %35 = load %struct.qedr_dev*, %struct.qedr_dev** %6, align 8
  %36 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %35, i32 0, i32 0
  %37 = call i32 @rdma_protocol_roce(i32* %36, i32 1)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %50

39:                                               ; preds = %34
  %40 = load %struct.qedr_qp*, %struct.qedr_qp** %7, align 8
  %41 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 3
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.qedr_qp*, %struct.qedr_qp** %7, align 8
  %46 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @writel(i32 %44, i32 %48)
  br label %50

50:                                               ; preds = %39, %34
  br label %55

51:                                               ; preds = %32
  br label %55

52:                                               ; preds = %32
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %10, align 4
  br label %55

55:                                               ; preds = %52, %51, %50
  br label %130

56:                                               ; preds = %15
  %57 = load i32, i32* %9, align 4
  switch i32 %57, label %60 [
    i32 129, label %58
    i32 133, label %59
  ]

58:                                               ; preds = %56
  br label %63

59:                                               ; preds = %56
  br label %63

60:                                               ; preds = %56
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %10, align 4
  br label %63

63:                                               ; preds = %60, %59, %58
  br label %130

64:                                               ; preds = %15
  %65 = load i32, i32* %9, align 4
  switch i32 %65, label %68 [
    i32 128, label %66
    i32 133, label %67
  ]

66:                                               ; preds = %64
  br label %71

67:                                               ; preds = %64
  br label %71

68:                                               ; preds = %64
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %10, align 4
  br label %71

71:                                               ; preds = %68, %67, %66
  br label %130

72:                                               ; preds = %15
  %73 = load i32, i32* %9, align 4
  switch i32 %73, label %75 [
    i32 129, label %74
    i32 133, label %74
  ]

74:                                               ; preds = %72, %72
  br label %78

75:                                               ; preds = %72
  %76 = load i32, i32* @EINVAL, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %10, align 4
  br label %78

78:                                               ; preds = %75, %74
  br label %130

79:                                               ; preds = %15
  %80 = load i32, i32* %9, align 4
  switch i32 %80, label %123 [
    i32 131, label %81
  ]

81:                                               ; preds = %79
  %82 = load %struct.qedr_qp*, %struct.qedr_qp** %7, align 8
  %83 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.qedr_qp*, %struct.qedr_qp** %7, align 8
  %87 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = icmp ne i32 %85, %89
  br i1 %90, label %101, label %91

91:                                               ; preds = %81
  %92 = load %struct.qedr_qp*, %struct.qedr_qp** %7, align 8
  %93 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.qedr_qp*, %struct.qedr_qp** %7, align 8
  %97 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = icmp ne i32 %95, %99
  br i1 %100, label %101, label %122

101:                                              ; preds = %91, %81
  %102 = load %struct.qedr_dev*, %struct.qedr_dev** %6, align 8
  %103 = load %struct.qedr_qp*, %struct.qedr_qp** %7, align 8
  %104 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.qedr_qp*, %struct.qedr_qp** %7, align 8
  %108 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.qedr_qp*, %struct.qedr_qp** %7, align 8
  %112 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.qedr_qp*, %struct.qedr_qp** %7, align 8
  %116 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @DP_NOTICE(%struct.qedr_dev* %102, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str, i64 0, i64 0), i32 %106, i32 %110, i32 %114, i32 %118)
  %120 = load i32, i32* @EINVAL, align 4
  %121 = sub nsw i32 0, %120
  store i32 %121, i32* %10, align 4
  br label %122

122:                                              ; preds = %101, %91
  br label %126

123:                                              ; preds = %79
  %124 = load i32, i32* @EINVAL, align 4
  %125 = sub nsw i32 0, %124
  store i32 %125, i32* %10, align 4
  br label %126

126:                                              ; preds = %123, %122
  br label %130

127:                                              ; preds = %15
  %128 = load i32, i32* @EINVAL, align 4
  %129 = sub nsw i32 0, %128
  store i32 %129, i32* %10, align 4
  br label %130

130:                                              ; preds = %127, %126, %78, %71, %63, %55, %31
  %131 = load i32, i32* %10, align 4
  store i32 %131, i32* %5, align 4
  br label %132

132:                                              ; preds = %130, %14
  %133 = load i32, i32* %5, align 4
  ret i32 %133
}

declare dso_local i32 @qedr_reset_qp_hwq_info(%struct.TYPE_4__*) #1

declare dso_local i32 @rdma_protocol_roce(i32*, i32) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @DP_NOTICE(%struct.qedr_dev*, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
