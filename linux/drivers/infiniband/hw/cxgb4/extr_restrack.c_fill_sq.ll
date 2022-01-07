; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/cxgb4/extr_restrack.c_fill_sq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/cxgb4/extr_restrack.c_fill_sq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.t4_wq = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"sqid\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"flushed\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"memsize\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"cidx\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"pidx\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"wq_pidx\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"flush_cidx\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"in_use\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"flags\00", align 1
@EMSGSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.t4_wq*)* @fill_sq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fill_sq(%struct.sk_buff* %0, %struct.t4_wq* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.t4_wq*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.t4_wq* %1, %struct.t4_wq** %5, align 8
  %6 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %7 = load %struct.t4_wq*, %struct.t4_wq** %5, align 8
  %8 = getelementptr inbounds %struct.t4_wq, %struct.t4_wq* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 8
  %10 = load i32, i32* %9, align 4
  %11 = call i64 @rdma_nl_put_driver_u32(%struct.sk_buff* %6, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %95

14:                                               ; preds = %2
  %15 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %16 = load %struct.t4_wq*, %struct.t4_wq** %5, align 8
  %17 = getelementptr inbounds %struct.t4_wq, %struct.t4_wq* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @rdma_nl_put_driver_u32(%struct.sk_buff* %15, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %14
  br label %95

22:                                               ; preds = %14
  %23 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %24 = load %struct.t4_wq*, %struct.t4_wq** %5, align 8
  %25 = getelementptr inbounds %struct.t4_wq, %struct.t4_wq* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 7
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @rdma_nl_put_driver_u32(%struct.sk_buff* %23, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %22
  br label %95

31:                                               ; preds = %22
  %32 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %33 = load %struct.t4_wq*, %struct.t4_wq** %5, align 8
  %34 = getelementptr inbounds %struct.t4_wq, %struct.t4_wq* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 6
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @rdma_nl_put_driver_u32(%struct.sk_buff* %32, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %31
  br label %95

40:                                               ; preds = %31
  %41 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %42 = load %struct.t4_wq*, %struct.t4_wq** %5, align 8
  %43 = getelementptr inbounds %struct.t4_wq, %struct.t4_wq* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 5
  %45 = load i32, i32* %44, align 4
  %46 = call i64 @rdma_nl_put_driver_u32(%struct.sk_buff* %41, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %40
  br label %95

49:                                               ; preds = %40
  %50 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %51 = load %struct.t4_wq*, %struct.t4_wq** %5, align 8
  %52 = getelementptr inbounds %struct.t4_wq, %struct.t4_wq* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 4
  %55 = call i64 @rdma_nl_put_driver_u32(%struct.sk_buff* %50, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %49
  br label %95

58:                                               ; preds = %49
  %59 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %60 = load %struct.t4_wq*, %struct.t4_wq** %5, align 8
  %61 = getelementptr inbounds %struct.t4_wq, %struct.t4_wq* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = call i64 @rdma_nl_put_driver_u32(%struct.sk_buff* %59, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %58
  br label %95

67:                                               ; preds = %58
  %68 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %69 = load %struct.t4_wq*, %struct.t4_wq** %5, align 8
  %70 = getelementptr inbounds %struct.t4_wq, %struct.t4_wq* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = call i64 @rdma_nl_put_driver_u32(%struct.sk_buff* %68, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %67
  br label %95

76:                                               ; preds = %67
  %77 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %78 = load %struct.t4_wq*, %struct.t4_wq** %5, align 8
  %79 = getelementptr inbounds %struct.t4_wq, %struct.t4_wq* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = call i64 @rdma_nl_put_driver_u32(%struct.sk_buff* %77, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %76
  br label %95

85:                                               ; preds = %76
  %86 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %87 = load %struct.t4_wq*, %struct.t4_wq** %5, align 8
  %88 = getelementptr inbounds %struct.t4_wq, %struct.t4_wq* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i64 @rdma_nl_put_driver_u32_hex(%struct.sk_buff* %86, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %85
  br label %95

94:                                               ; preds = %85
  store i32 0, i32* %3, align 4
  br label %98

95:                                               ; preds = %93, %84, %75, %66, %57, %48, %39, %30, %21, %13
  %96 = load i32, i32* @EMSGSIZE, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %3, align 4
  br label %98

98:                                               ; preds = %95, %94
  %99 = load i32, i32* %3, align 4
  ret i32 %99
}

declare dso_local i64 @rdma_nl_put_driver_u32(%struct.sk_buff*, i8*, i32) #1

declare dso_local i64 @rdma_nl_put_driver_u32_hex(%struct.sk_buff*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
