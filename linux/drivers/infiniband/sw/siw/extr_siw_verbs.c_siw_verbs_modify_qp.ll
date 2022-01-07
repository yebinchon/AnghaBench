; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/siw/extr_siw_verbs.c_siw_verbs_modify_qp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/siw/extr_siw_verbs.c_siw_verbs_modify_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_qp = type { i32 }
%struct.ib_qp_attr = type { i32, i64 }
%struct.ib_udata = type { i32 }
%struct.siw_qp_attrs = type { i64, i32 }
%struct.siw_qp = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@IB_QP_ACCESS_FLAGS = common dso_local global i32 0, align 4
@SIW_QP_ATTR_ACCESS_FLAGS = common dso_local global i32 0, align 4
@IB_ACCESS_REMOTE_READ = common dso_local global i32 0, align 4
@SIW_RDMA_READ_ENABLED = common dso_local global i32 0, align 4
@IB_ACCESS_REMOTE_WRITE = common dso_local global i32 0, align 4
@SIW_RDMA_WRITE_ENABLED = common dso_local global i32 0, align 4
@IB_ACCESS_MW_BIND = common dso_local global i32 0, align 4
@SIW_RDMA_BIND_ENABLED = common dso_local global i32 0, align 4
@IB_QP_STATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"desired IB QP state: %s\0A\00", align 1
@ib_qp_state_to_string = common dso_local global i32* null, align 8
@ib_qp_state_to_siw_qp_state = common dso_local global i64* null, align 8
@SIW_QP_STATE_RTS = common dso_local global i64 0, align 8
@SIW_QP_ATTR_STATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @siw_verbs_modify_qp(%struct.ib_qp* %0, %struct.ib_qp_attr* %1, i32 %2, %struct.ib_udata* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ib_qp*, align 8
  %7 = alloca %struct.ib_qp_attr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ib_udata*, align 8
  %10 = alloca %struct.siw_qp_attrs, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.siw_qp*, align 8
  %13 = alloca i32, align 4
  store %struct.ib_qp* %0, %struct.ib_qp** %6, align 8
  store %struct.ib_qp_attr* %1, %struct.ib_qp_attr** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.ib_udata* %3, %struct.ib_udata** %9, align 8
  store i32 0, i32* %11, align 4
  %14 = load %struct.ib_qp*, %struct.ib_qp** %6, align 8
  %15 = call %struct.siw_qp* @to_siw_qp(%struct.ib_qp* %14)
  store %struct.siw_qp* %15, %struct.siw_qp** %12, align 8
  store i32 0, i32* %13, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %112

19:                                               ; preds = %4
  %20 = call i32 @memset(%struct.siw_qp_attrs* %10, i32 0, i32 16)
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* @IB_QP_ACCESS_FLAGS, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %63

25:                                               ; preds = %19
  %26 = load i32, i32* @SIW_QP_ATTR_ACCESS_FLAGS, align 4
  store i32 %26, i32* %11, align 4
  %27 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %28 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @IB_ACCESS_REMOTE_READ, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %25
  %34 = load i32, i32* @SIW_RDMA_READ_ENABLED, align 4
  %35 = getelementptr inbounds %struct.siw_qp_attrs, %struct.siw_qp_attrs* %10, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = or i32 %36, %34
  store i32 %37, i32* %35, align 8
  br label %38

38:                                               ; preds = %33, %25
  %39 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %40 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @IB_ACCESS_REMOTE_WRITE, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %38
  %46 = load i32, i32* @SIW_RDMA_WRITE_ENABLED, align 4
  %47 = getelementptr inbounds %struct.siw_qp_attrs, %struct.siw_qp_attrs* %10, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = or i32 %48, %46
  store i32 %49, i32* %47, align 8
  br label %50

50:                                               ; preds = %45, %38
  %51 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %52 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @IB_ACCESS_MW_BIND, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %50
  %58 = load i32, i32* @SIW_RDMA_BIND_ENABLED, align 4
  %59 = getelementptr inbounds %struct.siw_qp_attrs, %struct.siw_qp_attrs* %10, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = or i32 %60, %58
  store i32 %61, i32* %59, align 8
  br label %62

62:                                               ; preds = %57, %50
  br label %63

63:                                               ; preds = %62, %19
  %64 = load i32, i32* %8, align 4
  %65 = load i32, i32* @IB_QP_STATE, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %96

68:                                               ; preds = %63
  %69 = load %struct.siw_qp*, %struct.siw_qp** %12, align 8
  %70 = load i32*, i32** @ib_qp_state_to_string, align 8
  %71 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %72 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = getelementptr inbounds i32, i32* %70, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @siw_dbg_qp(%struct.siw_qp* %69, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %75)
  %77 = load i64*, i64** @ib_qp_state_to_siw_qp_state, align 8
  %78 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %79 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = getelementptr inbounds i64, i64* %77, i64 %80
  %82 = load i64, i64* %81, align 8
  %83 = getelementptr inbounds %struct.siw_qp_attrs, %struct.siw_qp_attrs* %10, i32 0, i32 0
  store i64 %82, i64* %83, align 8
  %84 = getelementptr inbounds %struct.siw_qp_attrs, %struct.siw_qp_attrs* %10, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @SIW_QP_STATE_RTS, align 8
  %87 = icmp sgt i64 %85, %86
  br i1 %87, label %88, label %92

88:                                               ; preds = %68
  %89 = load %struct.siw_qp*, %struct.siw_qp** %12, align 8
  %90 = getelementptr inbounds %struct.siw_qp, %struct.siw_qp* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  store i32 1, i32* %91, align 4
  br label %92

92:                                               ; preds = %88, %68
  %93 = load i32, i32* @SIW_QP_ATTR_STATE, align 4
  %94 = load i32, i32* %11, align 4
  %95 = or i32 %94, %93
  store i32 %95, i32* %11, align 4
  br label %96

96:                                               ; preds = %92, %63
  %97 = load i32, i32* %11, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %100, label %99

99:                                               ; preds = %96
  br label %110

100:                                              ; preds = %96
  %101 = load %struct.siw_qp*, %struct.siw_qp** %12, align 8
  %102 = getelementptr inbounds %struct.siw_qp, %struct.siw_qp* %101, i32 0, i32 0
  %103 = call i32 @down_write(i32* %102)
  %104 = load %struct.siw_qp*, %struct.siw_qp** %12, align 8
  %105 = load i32, i32* %11, align 4
  %106 = call i32 @siw_qp_modify(%struct.siw_qp* %104, %struct.siw_qp_attrs* %10, i32 %105)
  store i32 %106, i32* %13, align 4
  %107 = load %struct.siw_qp*, %struct.siw_qp** %12, align 8
  %108 = getelementptr inbounds %struct.siw_qp, %struct.siw_qp* %107, i32 0, i32 0
  %109 = call i32 @up_write(i32* %108)
  br label %110

110:                                              ; preds = %100, %99
  %111 = load i32, i32* %13, align 4
  store i32 %111, i32* %5, align 4
  br label %112

112:                                              ; preds = %110, %18
  %113 = load i32, i32* %5, align 4
  ret i32 %113
}

declare dso_local %struct.siw_qp* @to_siw_qp(%struct.ib_qp*) #1

declare dso_local i32 @memset(%struct.siw_qp_attrs*, i32, i32) #1

declare dso_local i32 @siw_dbg_qp(%struct.siw_qp*, i8*, i32) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @siw_qp_modify(%struct.siw_qp*, %struct.siw_qp_attrs*, i32) #1

declare dso_local i32 @up_write(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
