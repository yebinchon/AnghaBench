; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/ipoib/extr_ipoib_verbs.c_ipoib_init_qp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/ipoib/extr_ipoib_verbs.c_ipoib_init_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ipoib_dev_priv = type { i32, i32, i32, i32 }
%struct.ib_qp_attr = type { i32, i64, i32, i32, i64 }

@IPOIB_PKEY_ASSIGNED = common dso_local global i32 0, align 4
@IB_QPS_INIT = common dso_local global i32 0, align 4
@IB_QP_QKEY = common dso_local global i32 0, align 4
@IB_QP_PORT = common dso_local global i32 0, align 4
@IB_QP_PKEY_INDEX = common dso_local global i32 0, align 4
@IB_QP_STATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"failed to modify QP to init, ret = %d\0A\00", align 1
@IB_QPS_RTR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"failed to modify QP to RTR, ret = %d\0A\00", align 1
@IB_QPS_RTS = common dso_local global i32 0, align 4
@IB_QP_SQ_PSN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"failed to modify QP to RTS, ret = %d\0A\00", align 1
@IB_QPS_RESET = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"Failed to modify QP to RESET state\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipoib_init_qp(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ipoib_dev_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ib_qp_attr, align 8
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call %struct.ipoib_dev_priv* @ipoib_priv(%struct.net_device* %8)
  store %struct.ipoib_dev_priv* %9, %struct.ipoib_dev_priv** %4, align 8
  %10 = load i32, i32* @IPOIB_PKEY_ASSIGNED, align 4
  %11 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %4, align 8
  %12 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %11, i32 0, i32 3
  %13 = call i32 @test_bit(i32 %10, i32* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %101

16:                                               ; preds = %1
  %17 = load i32, i32* @IB_QPS_INIT, align 4
  %18 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %6, i32 0, i32 0
  store i32 %17, i32* %18, align 8
  %19 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %6, i32 0, i32 4
  store i64 0, i64* %19, align 8
  %20 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %4, align 8
  %21 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %6, i32 0, i32 3
  store i32 %22, i32* %23, align 4
  %24 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %4, align 8
  %25 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %6, i32 0, i32 2
  store i32 %26, i32* %27, align 8
  %28 = load i32, i32* @IB_QP_QKEY, align 4
  %29 = load i32, i32* @IB_QP_PORT, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @IB_QP_PKEY_INDEX, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @IB_QP_STATE, align 4
  %34 = or i32 %32, %33
  store i32 %34, i32* %7, align 4
  %35 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %4, align 8
  %36 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @ib_modify_qp(i32 %37, %struct.ib_qp_attr* %6, i32 %38)
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* %5, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %16
  %43 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %4, align 8
  %44 = load i32, i32* %5, align 4
  %45 = call i32 (%struct.ipoib_dev_priv*, i8*, ...) @ipoib_warn(%struct.ipoib_dev_priv* %43, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %44)
  br label %87

46:                                               ; preds = %16
  %47 = load i32, i32* @IB_QPS_RTR, align 4
  %48 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %6, i32 0, i32 0
  store i32 %47, i32* %48, align 8
  %49 = load i32, i32* @IB_QP_PORT, align 4
  %50 = xor i32 %49, -1
  %51 = load i32, i32* %7, align 4
  %52 = and i32 %51, %50
  store i32 %52, i32* %7, align 4
  %53 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %4, align 8
  %54 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @ib_modify_qp(i32 %55, %struct.ib_qp_attr* %6, i32 %56)
  store i32 %57, i32* %5, align 4
  %58 = load i32, i32* %5, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %46
  %61 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %4, align 8
  %62 = load i32, i32* %5, align 4
  %63 = call i32 (%struct.ipoib_dev_priv*, i8*, ...) @ipoib_warn(%struct.ipoib_dev_priv* %61, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %62)
  br label %87

64:                                               ; preds = %46
  %65 = load i32, i32* @IB_QPS_RTS, align 4
  %66 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %6, i32 0, i32 0
  store i32 %65, i32* %66, align 8
  %67 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %6, i32 0, i32 1
  store i64 0, i64* %67, align 8
  %68 = load i32, i32* @IB_QP_SQ_PSN, align 4
  %69 = load i32, i32* %7, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %7, align 4
  %71 = load i32, i32* @IB_QP_PKEY_INDEX, align 4
  %72 = xor i32 %71, -1
  %73 = load i32, i32* %7, align 4
  %74 = and i32 %73, %72
  store i32 %74, i32* %7, align 4
  %75 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %4, align 8
  %76 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %7, align 4
  %79 = call i32 @ib_modify_qp(i32 %77, %struct.ib_qp_attr* %6, i32 %78)
  store i32 %79, i32* %5, align 4
  %80 = load i32, i32* %5, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %64
  %83 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %4, align 8
  %84 = load i32, i32* %5, align 4
  %85 = call i32 (%struct.ipoib_dev_priv*, i8*, ...) @ipoib_warn(%struct.ipoib_dev_priv* %83, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %84)
  br label %87

86:                                               ; preds = %64
  store i32 0, i32* %2, align 4
  br label %101

87:                                               ; preds = %82, %60, %42
  %88 = load i32, i32* @IB_QPS_RESET, align 4
  %89 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %6, i32 0, i32 0
  store i32 %88, i32* %89, align 8
  %90 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %4, align 8
  %91 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @IB_QP_STATE, align 4
  %94 = call i32 @ib_modify_qp(i32 %92, %struct.ib_qp_attr* %6, i32 %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %87
  %97 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %4, align 8
  %98 = call i32 (%struct.ipoib_dev_priv*, i8*, ...) @ipoib_warn(%struct.ipoib_dev_priv* %97, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  br label %99

99:                                               ; preds = %96, %87
  %100 = load i32, i32* %5, align 4
  store i32 %100, i32* %2, align 4
  br label %101

101:                                              ; preds = %99, %86, %15
  %102 = load i32, i32* %2, align 4
  ret i32 %102
}

declare dso_local %struct.ipoib_dev_priv* @ipoib_priv(%struct.net_device*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @ib_modify_qp(i32, %struct.ib_qp_attr*, i32) #1

declare dso_local i32 @ipoib_warn(%struct.ipoib_dev_priv*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
