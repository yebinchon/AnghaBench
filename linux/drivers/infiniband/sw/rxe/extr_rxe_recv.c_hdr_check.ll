; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_recv.c_hdr_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_recv.c_hdr_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxe_pkt_info = type { i32, %struct.rxe_qp*, %struct.rxe_dev* }
%struct.rxe_qp = type { i32 }
%struct.rxe_dev = type { i32, %struct.rxe_port }
%struct.rxe_port = type { i32 }

@BTH_TVER = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"bad tver\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"QP 0 not supported\00", align 1
@IB_MULTICAST_QPN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"no qp matches qpn 0x%x\0A\00", align 1
@RXE_GRH_MASK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"no grh for mcast qpn\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rxe_pkt_info*)* @hdr_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdr_check(%struct.rxe_pkt_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rxe_pkt_info*, align 8
  %4 = alloca %struct.rxe_dev*, align 8
  %5 = alloca %struct.rxe_port*, align 8
  %6 = alloca %struct.rxe_qp*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.rxe_pkt_info* %0, %struct.rxe_pkt_info** %3, align 8
  %10 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %3, align 8
  %11 = getelementptr inbounds %struct.rxe_pkt_info, %struct.rxe_pkt_info* %10, i32 0, i32 2
  %12 = load %struct.rxe_dev*, %struct.rxe_dev** %11, align 8
  store %struct.rxe_dev* %12, %struct.rxe_dev** %4, align 8
  %13 = load %struct.rxe_dev*, %struct.rxe_dev** %4, align 8
  %14 = getelementptr inbounds %struct.rxe_dev, %struct.rxe_dev* %13, i32 0, i32 1
  store %struct.rxe_port* %14, %struct.rxe_port** %5, align 8
  store %struct.rxe_qp* null, %struct.rxe_qp** %6, align 8
  %15 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %3, align 8
  %16 = call i32 @bth_qpn(%struct.rxe_pkt_info* %15)
  store i32 %16, i32* %7, align 4
  %17 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %3, align 8
  %18 = call i64 @bth_tver(%struct.rxe_pkt_info* %17)
  %19 = load i64, i64* @BTH_TVER, align 8
  %20 = icmp ne i64 %18, %19
  %21 = zext i1 %20 to i32
  %22 = call i64 @unlikely(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %1
  %25 = call i32 (i8*, ...) @pr_warn_ratelimited(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  br label %111

26:                                               ; preds = %1
  %27 = load i32, i32* %7, align 4
  %28 = icmp eq i32 %27, 0
  %29 = zext i1 %28 to i32
  %30 = call i64 @unlikely(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = call i32 @pr_warn_once(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  br label %111

34:                                               ; preds = %26
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* @IB_MULTICAST_QPN, align 4
  %37 = icmp ne i32 %35, %36
  br i1 %37, label %38, label %91

38:                                               ; preds = %34
  %39 = load i32, i32* %7, align 4
  %40 = icmp eq i32 %39, 1
  br i1 %40, label %41, label %45

41:                                               ; preds = %38
  %42 = load %struct.rxe_port*, %struct.rxe_port** %5, align 8
  %43 = getelementptr inbounds %struct.rxe_port, %struct.rxe_port* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  br label %47

45:                                               ; preds = %38
  %46 = load i32, i32* %7, align 4
  br label %47

47:                                               ; preds = %45, %41
  %48 = phi i32 [ %44, %41 ], [ %46, %45 ]
  store i32 %48, i32* %8, align 4
  %49 = load %struct.rxe_dev*, %struct.rxe_dev** %4, align 8
  %50 = getelementptr inbounds %struct.rxe_dev, %struct.rxe_dev* %49, i32 0, i32 0
  %51 = load i32, i32* %8, align 4
  %52 = call %struct.rxe_qp* @rxe_pool_get_index(i32* %50, i32 %51)
  store %struct.rxe_qp* %52, %struct.rxe_qp** %6, align 8
  %53 = load %struct.rxe_qp*, %struct.rxe_qp** %6, align 8
  %54 = icmp ne %struct.rxe_qp* %53, null
  %55 = xor i1 %54, true
  %56 = zext i1 %55 to i32
  %57 = call i64 @unlikely(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %47
  %60 = load i32, i32* %7, align 4
  %61 = call i32 (i8*, ...) @pr_warn_ratelimited(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %60)
  br label %111

62:                                               ; preds = %47
  %63 = load %struct.rxe_dev*, %struct.rxe_dev** %4, align 8
  %64 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %3, align 8
  %65 = load %struct.rxe_qp*, %struct.rxe_qp** %6, align 8
  %66 = call i32 @check_type_state(%struct.rxe_dev* %63, %struct.rxe_pkt_info* %64, %struct.rxe_qp* %65)
  store i32 %66, i32* %9, align 4
  %67 = load i32, i32* %9, align 4
  %68 = call i64 @unlikely(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %62
  br label %108

71:                                               ; preds = %62
  %72 = load %struct.rxe_dev*, %struct.rxe_dev** %4, align 8
  %73 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %3, align 8
  %74 = load %struct.rxe_qp*, %struct.rxe_qp** %6, align 8
  %75 = call i32 @check_addr(%struct.rxe_dev* %72, %struct.rxe_pkt_info* %73, %struct.rxe_qp* %74)
  store i32 %75, i32* %9, align 4
  %76 = load i32, i32* %9, align 4
  %77 = call i64 @unlikely(i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %71
  br label %108

80:                                               ; preds = %71
  %81 = load %struct.rxe_dev*, %struct.rxe_dev** %4, align 8
  %82 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %3, align 8
  %83 = load i32, i32* %7, align 4
  %84 = load %struct.rxe_qp*, %struct.rxe_qp** %6, align 8
  %85 = call i32 @check_keys(%struct.rxe_dev* %81, %struct.rxe_pkt_info* %82, i32 %83, %struct.rxe_qp* %84)
  store i32 %85, i32* %9, align 4
  %86 = load i32, i32* %9, align 4
  %87 = call i64 @unlikely(i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %80
  br label %108

90:                                               ; preds = %80
  br label %104

91:                                               ; preds = %34
  %92 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %3, align 8
  %93 = getelementptr inbounds %struct.rxe_pkt_info, %struct.rxe_pkt_info* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @RXE_GRH_MASK, align 4
  %96 = and i32 %94, %95
  %97 = icmp eq i32 %96, 0
  %98 = zext i1 %97 to i32
  %99 = call i64 @unlikely(i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %91
  %102 = call i32 (i8*, ...) @pr_warn_ratelimited(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  br label %111

103:                                              ; preds = %91
  br label %104

104:                                              ; preds = %103, %90
  %105 = load %struct.rxe_qp*, %struct.rxe_qp** %6, align 8
  %106 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %3, align 8
  %107 = getelementptr inbounds %struct.rxe_pkt_info, %struct.rxe_pkt_info* %106, i32 0, i32 1
  store %struct.rxe_qp* %105, %struct.rxe_qp** %107, align 8
  store i32 0, i32* %2, align 4
  br label %114

108:                                              ; preds = %89, %79, %70
  %109 = load %struct.rxe_qp*, %struct.rxe_qp** %6, align 8
  %110 = call i32 @rxe_drop_ref(%struct.rxe_qp* %109)
  br label %111

111:                                              ; preds = %108, %101, %59, %32, %24
  %112 = load i32, i32* @EINVAL, align 4
  %113 = sub nsw i32 0, %112
  store i32 %113, i32* %2, align 4
  br label %114

114:                                              ; preds = %111, %104
  %115 = load i32, i32* %2, align 4
  ret i32 %115
}

declare dso_local i32 @bth_qpn(%struct.rxe_pkt_info*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @bth_tver(%struct.rxe_pkt_info*) #1

declare dso_local i32 @pr_warn_ratelimited(i8*, ...) #1

declare dso_local i32 @pr_warn_once(i8*) #1

declare dso_local %struct.rxe_qp* @rxe_pool_get_index(i32*, i32) #1

declare dso_local i32 @check_type_state(%struct.rxe_dev*, %struct.rxe_pkt_info*, %struct.rxe_qp*) #1

declare dso_local i32 @check_addr(%struct.rxe_dev*, %struct.rxe_pkt_info*, %struct.rxe_qp*) #1

declare dso_local i32 @check_keys(%struct.rxe_dev*, %struct.rxe_pkt_info*, i32, %struct.rxe_qp*) #1

declare dso_local i32 @rxe_drop_ref(%struct.rxe_qp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
