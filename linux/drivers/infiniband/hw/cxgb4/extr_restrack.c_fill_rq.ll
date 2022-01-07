; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/cxgb4/extr_restrack.c_fill_rq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/cxgb4/extr_restrack.c_fill_rq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.t4_wq = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"rqid\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"memsize\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"cidx\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"pidx\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"wq_pidx\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"msn\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"rqt_hwaddr\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"rqt_size\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"in_use\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@EMSGSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.t4_wq*)* @fill_rq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fill_rq(%struct.sk_buff* %0, %struct.t4_wq* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.t4_wq*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.t4_wq* %1, %struct.t4_wq** %5, align 8
  %6 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %7 = load %struct.t4_wq*, %struct.t4_wq** %5, align 8
  %8 = getelementptr inbounds %struct.t4_wq, %struct.t4_wq* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 9
  %10 = load i32, i32* %9, align 4
  %11 = call i64 @rdma_nl_put_driver_u32(%struct.sk_buff* %6, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %96

14:                                               ; preds = %2
  %15 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %16 = load %struct.t4_wq*, %struct.t4_wq** %5, align 8
  %17 = getelementptr inbounds %struct.t4_wq, %struct.t4_wq* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 8
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @rdma_nl_put_driver_u32(%struct.sk_buff* %15, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %14
  br label %96

23:                                               ; preds = %14
  %24 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %25 = load %struct.t4_wq*, %struct.t4_wq** %5, align 8
  %26 = getelementptr inbounds %struct.t4_wq, %struct.t4_wq* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 7
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @rdma_nl_put_driver_u32(%struct.sk_buff* %24, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %23
  br label %96

32:                                               ; preds = %23
  %33 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %34 = load %struct.t4_wq*, %struct.t4_wq** %5, align 8
  %35 = getelementptr inbounds %struct.t4_wq, %struct.t4_wq* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 6
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @rdma_nl_put_driver_u32(%struct.sk_buff* %33, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %32
  br label %96

41:                                               ; preds = %32
  %42 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %43 = load %struct.t4_wq*, %struct.t4_wq** %5, align 8
  %44 = getelementptr inbounds %struct.t4_wq, %struct.t4_wq* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 5
  %46 = load i32, i32* %45, align 4
  %47 = call i64 @rdma_nl_put_driver_u32(%struct.sk_buff* %42, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %41
  br label %96

50:                                               ; preds = %41
  %51 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %52 = load %struct.t4_wq*, %struct.t4_wq** %5, align 8
  %53 = getelementptr inbounds %struct.t4_wq, %struct.t4_wq* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 4
  %56 = call i64 @rdma_nl_put_driver_u32(%struct.sk_buff* %51, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %50
  br label %96

59:                                               ; preds = %50
  %60 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %61 = load %struct.t4_wq*, %struct.t4_wq** %5, align 8
  %62 = getelementptr inbounds %struct.t4_wq, %struct.t4_wq* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = call i64 @rdma_nl_put_driver_u32_hex(%struct.sk_buff* %60, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %59
  br label %96

68:                                               ; preds = %59
  %69 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %70 = load %struct.t4_wq*, %struct.t4_wq** %5, align 8
  %71 = getelementptr inbounds %struct.t4_wq, %struct.t4_wq* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = call i64 @rdma_nl_put_driver_u32(%struct.sk_buff* %69, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %68
  br label %96

77:                                               ; preds = %68
  %78 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %79 = load %struct.t4_wq*, %struct.t4_wq** %5, align 8
  %80 = getelementptr inbounds %struct.t4_wq, %struct.t4_wq* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = call i64 @rdma_nl_put_driver_u32(%struct.sk_buff* %78, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %77
  br label %96

86:                                               ; preds = %77
  %87 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %88 = load %struct.t4_wq*, %struct.t4_wq** %5, align 8
  %89 = getelementptr inbounds %struct.t4_wq, %struct.t4_wq* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i64 @rdma_nl_put_driver_u32(%struct.sk_buff* %87, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i32 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %86
  br label %96

95:                                               ; preds = %86
  store i32 0, i32* %3, align 4
  br label %99

96:                                               ; preds = %94, %85, %76, %67, %58, %49, %40, %31, %22, %13
  %97 = load i32, i32* @EMSGSIZE, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %3, align 4
  br label %99

99:                                               ; preds = %96, %95
  %100 = load i32, i32* %3, align 4
  ret i32 %100
}

declare dso_local i64 @rdma_nl_put_driver_u32(%struct.sk_buff*, i8*, i32) #1

declare dso_local i64 @rdma_nl_put_driver_u32_hex(%struct.sk_buff*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
