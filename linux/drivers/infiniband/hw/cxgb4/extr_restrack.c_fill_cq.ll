; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/cxgb4/extr_restrack.c_fill_cq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/cxgb4/extr_restrack.c_fill_cq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.t4_cq = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"cqid\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"memsize\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"cidx\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"cidx_inc\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"sw_cidx\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"sw_pidx\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"sw_in_use\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"vector\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"gen\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"bits_type_ts\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"flags\00", align 1
@EMSGSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.t4_cq*)* @fill_cq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fill_cq(%struct.sk_buff* %0, %struct.t4_cq* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.t4_cq*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.t4_cq* %1, %struct.t4_cq** %5, align 8
  %6 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %7 = load %struct.t4_cq*, %struct.t4_cq** %5, align 8
  %8 = getelementptr inbounds %struct.t4_cq, %struct.t4_cq* %7, i32 0, i32 12
  %9 = load i32, i32* %8, align 4
  %10 = call i64 @rdma_nl_put_driver_u32(%struct.sk_buff* %6, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %111

13:                                               ; preds = %2
  %14 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %15 = load %struct.t4_cq*, %struct.t4_cq** %5, align 8
  %16 = getelementptr inbounds %struct.t4_cq, %struct.t4_cq* %15, i32 0, i32 11
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @rdma_nl_put_driver_u32(%struct.sk_buff* %14, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %13
  br label %111

21:                                               ; preds = %13
  %22 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %23 = load %struct.t4_cq*, %struct.t4_cq** %5, align 8
  %24 = getelementptr inbounds %struct.t4_cq, %struct.t4_cq* %23, i32 0, i32 10
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @rdma_nl_put_driver_u32(%struct.sk_buff* %22, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %21
  br label %111

29:                                               ; preds = %21
  %30 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %31 = load %struct.t4_cq*, %struct.t4_cq** %5, align 8
  %32 = getelementptr inbounds %struct.t4_cq, %struct.t4_cq* %31, i32 0, i32 9
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @rdma_nl_put_driver_u32(%struct.sk_buff* %30, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %29
  br label %111

37:                                               ; preds = %29
  %38 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %39 = load %struct.t4_cq*, %struct.t4_cq** %5, align 8
  %40 = getelementptr inbounds %struct.t4_cq, %struct.t4_cq* %39, i32 0, i32 8
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @rdma_nl_put_driver_u32(%struct.sk_buff* %38, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %37
  br label %111

45:                                               ; preds = %37
  %46 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %47 = load %struct.t4_cq*, %struct.t4_cq** %5, align 8
  %48 = getelementptr inbounds %struct.t4_cq, %struct.t4_cq* %47, i32 0, i32 7
  %49 = load i32, i32* %48, align 4
  %50 = call i64 @rdma_nl_put_driver_u32(%struct.sk_buff* %46, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %45
  br label %111

53:                                               ; preds = %45
  %54 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %55 = load %struct.t4_cq*, %struct.t4_cq** %5, align 8
  %56 = getelementptr inbounds %struct.t4_cq, %struct.t4_cq* %55, i32 0, i32 6
  %57 = load i32, i32* %56, align 4
  %58 = call i64 @rdma_nl_put_driver_u32(%struct.sk_buff* %54, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %53
  br label %111

61:                                               ; preds = %53
  %62 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %63 = load %struct.t4_cq*, %struct.t4_cq** %5, align 8
  %64 = getelementptr inbounds %struct.t4_cq, %struct.t4_cq* %63, i32 0, i32 5
  %65 = load i32, i32* %64, align 4
  %66 = call i64 @rdma_nl_put_driver_u32(%struct.sk_buff* %62, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %61
  br label %111

69:                                               ; preds = %61
  %70 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %71 = load %struct.t4_cq*, %struct.t4_cq** %5, align 8
  %72 = getelementptr inbounds %struct.t4_cq, %struct.t4_cq* %71, i32 0, i32 4
  %73 = load i32, i32* %72, align 4
  %74 = call i64 @rdma_nl_put_driver_u32(%struct.sk_buff* %70, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %69
  br label %111

77:                                               ; preds = %69
  %78 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %79 = load %struct.t4_cq*, %struct.t4_cq** %5, align 8
  %80 = getelementptr inbounds %struct.t4_cq, %struct.t4_cq* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = call i64 @rdma_nl_put_driver_u32(%struct.sk_buff* %78, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %77
  br label %111

85:                                               ; preds = %77
  %86 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %87 = load %struct.t4_cq*, %struct.t4_cq** %5, align 8
  %88 = getelementptr inbounds %struct.t4_cq, %struct.t4_cq* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = call i64 @rdma_nl_put_driver_u32(%struct.sk_buff* %86, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %85
  br label %111

93:                                               ; preds = %85
  %94 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %95 = load %struct.t4_cq*, %struct.t4_cq** %5, align 8
  %96 = getelementptr inbounds %struct.t4_cq, %struct.t4_cq* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @be64_to_cpu(i32 %97)
  %99 = call i64 @rdma_nl_put_driver_u64_hex(%struct.sk_buff* %94, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0), i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %93
  br label %111

102:                                              ; preds = %93
  %103 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %104 = load %struct.t4_cq*, %struct.t4_cq** %5, align 8
  %105 = getelementptr inbounds %struct.t4_cq, %struct.t4_cq* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = call i64 @rdma_nl_put_driver_u64_hex(%struct.sk_buff* %103, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), i32 %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %102
  br label %111

110:                                              ; preds = %102
  store i32 0, i32* %3, align 4
  br label %114

111:                                              ; preds = %109, %101, %92, %84, %76, %68, %60, %52, %44, %36, %28, %20, %12
  %112 = load i32, i32* @EMSGSIZE, align 4
  %113 = sub nsw i32 0, %112
  store i32 %113, i32* %3, align 4
  br label %114

114:                                              ; preds = %111, %110
  %115 = load i32, i32* %3, align 4
  ret i32 %115
}

declare dso_local i64 @rdma_nl_put_driver_u32(%struct.sk_buff*, i8*, i32) #1

declare dso_local i64 @rdma_nl_put_driver_u64_hex(%struct.sk_buff*, i8*, i32) #1

declare dso_local i32 @be64_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
