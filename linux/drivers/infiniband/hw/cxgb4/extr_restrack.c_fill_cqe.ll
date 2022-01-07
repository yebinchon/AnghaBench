; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/cxgb4/extr_restrack.c_fill_cqe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/cxgb4/extr_restrack.c_fill_cqe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.t4_cqe = type { i32, %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"header\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"len\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"wrid_hi\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"wrid_low\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"bits_type_ts\00", align 1
@EMSGSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.t4_cqe*, i32, i8*)* @fill_cqe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fill_cqe(%struct.sk_buff* %0, %struct.t4_cqe* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.t4_cqe*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %6, align 8
  store %struct.t4_cqe* %1, %struct.t4_cqe** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %11 = load i8*, i8** %9, align 8
  %12 = load i32, i32* %8, align 4
  %13 = call i64 @rdma_nl_put_driver_u32(%struct.sk_buff* %10, i8* %11, i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %4
  br label %66

16:                                               ; preds = %4
  %17 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %18 = load %struct.t4_cqe*, %struct.t4_cqe** %7, align 8
  %19 = getelementptr inbounds %struct.t4_cqe, %struct.t4_cqe* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @be32_to_cpu(i32 %20)
  %22 = call i64 @rdma_nl_put_driver_u32_hex(%struct.sk_buff* %17, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %16
  br label %66

25:                                               ; preds = %16
  %26 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %27 = load %struct.t4_cqe*, %struct.t4_cqe** %7, align 8
  %28 = getelementptr inbounds %struct.t4_cqe, %struct.t4_cqe* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @be32_to_cpu(i32 %29)
  %31 = call i64 @rdma_nl_put_driver_u32(%struct.sk_buff* %26, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %25
  br label %66

34:                                               ; preds = %25
  %35 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %36 = load %struct.t4_cqe*, %struct.t4_cqe** %7, align 8
  %37 = getelementptr inbounds %struct.t4_cqe, %struct.t4_cqe* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @be32_to_cpu(i32 %40)
  %42 = call i64 @rdma_nl_put_driver_u32_hex(%struct.sk_buff* %35, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %34
  br label %66

45:                                               ; preds = %34
  %46 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %47 = load %struct.t4_cqe*, %struct.t4_cqe** %7, align 8
  %48 = getelementptr inbounds %struct.t4_cqe, %struct.t4_cqe* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @be32_to_cpu(i32 %51)
  %53 = call i64 @rdma_nl_put_driver_u32_hex(%struct.sk_buff* %46, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %45
  br label %66

56:                                               ; preds = %45
  %57 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %58 = load %struct.t4_cqe*, %struct.t4_cqe** %7, align 8
  %59 = getelementptr inbounds %struct.t4_cqe, %struct.t4_cqe* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @be64_to_cpu(i32 %60)
  %62 = call i64 @rdma_nl_put_driver_u64_hex(%struct.sk_buff* %57, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %56
  br label %66

65:                                               ; preds = %56
  store i32 0, i32* %5, align 4
  br label %69

66:                                               ; preds = %64, %55, %44, %33, %24, %15
  %67 = load i32, i32* @EMSGSIZE, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %5, align 4
  br label %69

69:                                               ; preds = %66, %65
  %70 = load i32, i32* %5, align 4
  ret i32 %70
}

declare dso_local i64 @rdma_nl_put_driver_u32(%struct.sk_buff*, i8*, i32) #1

declare dso_local i64 @rdma_nl_put_driver_u32_hex(%struct.sk_buff*, i8*, i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i64 @rdma_nl_put_driver_u64_hex(%struct.sk_buff*, i8*, i32) #1

declare dso_local i32 @be64_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
