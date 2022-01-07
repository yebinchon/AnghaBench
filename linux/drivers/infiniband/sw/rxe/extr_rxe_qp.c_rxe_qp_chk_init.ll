; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_qp.c_rxe_qp_chk_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_qp.c_rxe_qp_chk_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxe_dev = type { %struct.rxe_port, i32 }
%struct.rxe_port = type { i64, i64 }
%struct.ib_qp_init_attr = type { i32, i64, i32, i32, i32, %struct.ib_qp_cap }
%struct.ib_qp_cap = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"missing cq\0A\00", align 1
@IB_QPT_SMI = common dso_local global i64 0, align 8
@IB_QPT_GSI = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [19 x i8] c"invalid port = %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"SMI QP exists for port %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"GSI QP exists for port %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rxe_qp_chk_init(%struct.rxe_dev* %0, %struct.ib_qp_init_attr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rxe_dev*, align 8
  %5 = alloca %struct.ib_qp_init_attr*, align 8
  %6 = alloca %struct.ib_qp_cap*, align 8
  %7 = alloca %struct.rxe_port*, align 8
  %8 = alloca i32, align 4
  store %struct.rxe_dev* %0, %struct.rxe_dev** %4, align 8
  store %struct.ib_qp_init_attr* %1, %struct.ib_qp_init_attr** %5, align 8
  %9 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %5, align 8
  %10 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %9, i32 0, i32 5
  store %struct.ib_qp_cap* %10, %struct.ib_qp_cap** %6, align 8
  %11 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %5, align 8
  %12 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %8, align 4
  %14 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %5, align 8
  %15 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %2
  %19 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %5, align 8
  %20 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %18, %2
  %24 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  br label %91

25:                                               ; preds = %18
  %26 = load %struct.rxe_dev*, %struct.rxe_dev** %4, align 8
  %27 = load %struct.ib_qp_cap*, %struct.ib_qp_cap** %6, align 8
  %28 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %5, align 8
  %29 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  %35 = call i64 @rxe_qp_chk_cap(%struct.rxe_dev* %26, %struct.ib_qp_cap* %27, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %25
  br label %91

38:                                               ; preds = %25
  %39 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %5, align 8
  %40 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @IB_QPT_SMI, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %50, label %44

44:                                               ; preds = %38
  %45 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %5, align 8
  %46 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @IB_QPT_GSI, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %90

50:                                               ; preds = %44, %38
  %51 = load %struct.rxe_dev*, %struct.rxe_dev** %4, align 8
  %52 = getelementptr inbounds %struct.rxe_dev, %struct.rxe_dev* %51, i32 0, i32 1
  %53 = load i32, i32* %8, align 4
  %54 = call i32 @rdma_is_port_valid(i32* %52, i32 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %50
  %57 = load i32, i32* %8, align 4
  %58 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %57)
  br label %91

59:                                               ; preds = %50
  %60 = load %struct.rxe_dev*, %struct.rxe_dev** %4, align 8
  %61 = getelementptr inbounds %struct.rxe_dev, %struct.rxe_dev* %60, i32 0, i32 0
  store %struct.rxe_port* %61, %struct.rxe_port** %7, align 8
  %62 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %5, align 8
  %63 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @IB_QPT_SMI, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %75

67:                                               ; preds = %59
  %68 = load %struct.rxe_port*, %struct.rxe_port** %7, align 8
  %69 = getelementptr inbounds %struct.rxe_port, %struct.rxe_port* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %67
  %73 = load i32, i32* %8, align 4
  %74 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %73)
  br label %91

75:                                               ; preds = %67, %59
  %76 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %5, align 8
  %77 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @IB_QPT_GSI, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %89

81:                                               ; preds = %75
  %82 = load %struct.rxe_port*, %struct.rxe_port** %7, align 8
  %83 = getelementptr inbounds %struct.rxe_port, %struct.rxe_port* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %81
  %87 = load i32, i32* %8, align 4
  %88 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %87)
  br label %91

89:                                               ; preds = %81, %75
  br label %90

90:                                               ; preds = %89, %44
  store i32 0, i32* %3, align 4
  br label %94

91:                                               ; preds = %86, %72, %56, %37, %23
  %92 = load i32, i32* @EINVAL, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %3, align 4
  br label %94

94:                                               ; preds = %91, %90
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

declare dso_local i32 @pr_warn(i8*, ...) #1

declare dso_local i64 @rxe_qp_chk_cap(%struct.rxe_dev*, %struct.ib_qp_cap*, i32) #1

declare dso_local i32 @rdma_is_port_valid(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
