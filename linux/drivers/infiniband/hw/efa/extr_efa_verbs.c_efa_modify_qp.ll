; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/efa/extr_efa_verbs.c_efa_modify_qp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/efa/extr_efa_verbs.c_efa_modify_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_qp = type { i32 }
%struct.ib_qp_attr = type { i32, i32, i32, i32, i32 }
%struct.ib_udata = type { i64 }
%struct.efa_dev = type { i32, i32 }
%struct.efa_com_modify_qp_params = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.efa_qp = type { i32, i32 }

@.str = private unnamed_addr constant [44 x i8] c"Incompatible ABI params, udata not cleared\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@IB_QP_CUR_STATE = common dso_local global i32 0, align 4
@IB_QP_STATE = common dso_local global i32 0, align 4
@EFA_ADMIN_QP_STATE_BIT = common dso_local global i32 0, align 4
@EFA_ADMIN_CUR_QP_STATE_BIT = common dso_local global i32 0, align 4
@IB_QP_EN_SQD_ASYNC_NOTIFY = common dso_local global i32 0, align 4
@EFA_ADMIN_SQ_DRAINED_ASYNC_NOTIFY_BIT = common dso_local global i32 0, align 4
@IB_QP_QKEY = common dso_local global i32 0, align 4
@EFA_ADMIN_QKEY_BIT = common dso_local global i32 0, align 4
@IB_QP_SQ_PSN = common dso_local global i32 0, align 4
@EFA_ADMIN_SQ_PSN_BIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @efa_modify_qp(%struct.ib_qp* %0, %struct.ib_qp_attr* %1, i32 %2, %struct.ib_udata* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ib_qp*, align 8
  %7 = alloca %struct.ib_qp_attr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ib_udata*, align 8
  %10 = alloca %struct.efa_dev*, align 8
  %11 = alloca %struct.efa_com_modify_qp_params, align 4
  %12 = alloca %struct.efa_qp*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.ib_qp* %0, %struct.ib_qp** %6, align 8
  store %struct.ib_qp_attr* %1, %struct.ib_qp_attr** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.ib_udata* %3, %struct.ib_udata** %9, align 8
  %16 = load %struct.ib_qp*, %struct.ib_qp** %6, align 8
  %17 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.efa_dev* @to_edev(i32 %18)
  store %struct.efa_dev* %19, %struct.efa_dev** %10, align 8
  %20 = bitcast %struct.efa_com_modify_qp_params* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %20, i8 0, i64 28, i1 false)
  %21 = load %struct.ib_qp*, %struct.ib_qp** %6, align 8
  %22 = call %struct.efa_qp* @to_eqp(%struct.ib_qp* %21)
  store %struct.efa_qp* %22, %struct.efa_qp** %12, align 8
  %23 = load %struct.ib_udata*, %struct.ib_udata** %9, align 8
  %24 = getelementptr inbounds %struct.ib_udata, %struct.ib_udata* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %40

27:                                               ; preds = %4
  %28 = load %struct.ib_udata*, %struct.ib_udata** %9, align 8
  %29 = load %struct.ib_udata*, %struct.ib_udata** %9, align 8
  %30 = getelementptr inbounds %struct.ib_udata, %struct.ib_udata* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @ib_is_udata_cleared(%struct.ib_udata* %28, i32 0, i64 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %40, label %34

34:                                               ; preds = %27
  %35 = load %struct.efa_dev*, %struct.efa_dev** %10, align 8
  %36 = getelementptr inbounds %struct.efa_dev, %struct.efa_dev* %35, i32 0, i32 1
  %37 = call i32 @ibdev_dbg(i32* %36, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %5, align 4
  br label %161

40:                                               ; preds = %27, %4
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* @IB_QP_CUR_STATE, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %40
  %46 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %47 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  br label %53

49:                                               ; preds = %40
  %50 = load %struct.efa_qp*, %struct.efa_qp** %12, align 8
  %51 = getelementptr inbounds %struct.efa_qp, %struct.efa_qp* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  br label %53

53:                                               ; preds = %49, %45
  %54 = phi i32 [ %48, %45 ], [ %52, %49 ]
  store i32 %54, i32* %13, align 4
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* @IB_QP_STATE, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %53
  %60 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %61 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  br label %65

63:                                               ; preds = %53
  %64 = load i32, i32* %13, align 4
  br label %65

65:                                               ; preds = %63, %59
  %66 = phi i32 [ %62, %59 ], [ %64, %63 ]
  store i32 %66, i32* %14, align 4
  %67 = load %struct.efa_dev*, %struct.efa_dev** %10, align 8
  %68 = load %struct.efa_qp*, %struct.efa_qp** %12, align 8
  %69 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* %13, align 4
  %72 = load i32, i32* %14, align 4
  %73 = call i32 @efa_modify_qp_validate(%struct.efa_dev* %67, %struct.efa_qp* %68, %struct.ib_qp_attr* %69, i32 %70, i32 %71, i32 %72)
  store i32 %73, i32* %15, align 4
  %74 = load i32, i32* %15, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %65
  %77 = load i32, i32* %15, align 4
  store i32 %77, i32* %5, align 4
  br label %161

78:                                               ; preds = %65
  %79 = load %struct.efa_qp*, %struct.efa_qp** %12, align 8
  %80 = getelementptr inbounds %struct.efa_qp, %struct.efa_qp* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = getelementptr inbounds %struct.efa_com_modify_qp_params, %struct.efa_com_modify_qp_params* %11, i32 0, i32 6
  store i32 %81, i32* %82, align 4
  %83 = load i32, i32* %8, align 4
  %84 = load i32, i32* @IB_QP_STATE, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %104

87:                                               ; preds = %78
  %88 = load i32, i32* @EFA_ADMIN_QP_STATE_BIT, align 4
  %89 = call i32 @BIT(i32 %88)
  %90 = load i32, i32* @EFA_ADMIN_CUR_QP_STATE_BIT, align 4
  %91 = call i32 @BIT(i32 %90)
  %92 = or i32 %89, %91
  %93 = getelementptr inbounds %struct.efa_com_modify_qp_params, %struct.efa_com_modify_qp_params* %11, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = or i32 %94, %92
  store i32 %95, i32* %93, align 4
  %96 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %97 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = getelementptr inbounds %struct.efa_com_modify_qp_params, %struct.efa_com_modify_qp_params* %11, i32 0, i32 1
  store i32 %98, i32* %99, align 4
  %100 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %101 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = getelementptr inbounds %struct.efa_com_modify_qp_params, %struct.efa_com_modify_qp_params* %11, i32 0, i32 2
  store i32 %102, i32* %103, align 4
  br label %104

104:                                              ; preds = %87, %78
  %105 = load i32, i32* %8, align 4
  %106 = load i32, i32* @IB_QP_EN_SQD_ASYNC_NOTIFY, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %119

109:                                              ; preds = %104
  %110 = load i32, i32* @EFA_ADMIN_SQ_DRAINED_ASYNC_NOTIFY_BIT, align 4
  %111 = call i32 @BIT(i32 %110)
  %112 = getelementptr inbounds %struct.efa_com_modify_qp_params, %struct.efa_com_modify_qp_params* %11, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = or i32 %113, %111
  store i32 %114, i32* %112, align 4
  %115 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %116 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %115, i32 0, i32 4
  %117 = load i32, i32* %116, align 4
  %118 = getelementptr inbounds %struct.efa_com_modify_qp_params, %struct.efa_com_modify_qp_params* %11, i32 0, i32 5
  store i32 %117, i32* %118, align 4
  br label %119

119:                                              ; preds = %109, %104
  %120 = load i32, i32* %8, align 4
  %121 = load i32, i32* @IB_QP_QKEY, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %134

124:                                              ; preds = %119
  %125 = load i32, i32* @EFA_ADMIN_QKEY_BIT, align 4
  %126 = call i32 @BIT(i32 %125)
  %127 = getelementptr inbounds %struct.efa_com_modify_qp_params, %struct.efa_com_modify_qp_params* %11, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = or i32 %128, %126
  store i32 %129, i32* %127, align 4
  %130 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %131 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %130, i32 0, i32 3
  %132 = load i32, i32* %131, align 4
  %133 = getelementptr inbounds %struct.efa_com_modify_qp_params, %struct.efa_com_modify_qp_params* %11, i32 0, i32 4
  store i32 %132, i32* %133, align 4
  br label %134

134:                                              ; preds = %124, %119
  %135 = load i32, i32* %8, align 4
  %136 = load i32, i32* @IB_QP_SQ_PSN, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %149

139:                                              ; preds = %134
  %140 = load i32, i32* @EFA_ADMIN_SQ_PSN_BIT, align 4
  %141 = call i32 @BIT(i32 %140)
  %142 = getelementptr inbounds %struct.efa_com_modify_qp_params, %struct.efa_com_modify_qp_params* %11, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = or i32 %143, %141
  store i32 %144, i32* %142, align 4
  %145 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %146 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 4
  %148 = getelementptr inbounds %struct.efa_com_modify_qp_params, %struct.efa_com_modify_qp_params* %11, i32 0, i32 3
  store i32 %147, i32* %148, align 4
  br label %149

149:                                              ; preds = %139, %134
  %150 = load %struct.efa_dev*, %struct.efa_dev** %10, align 8
  %151 = getelementptr inbounds %struct.efa_dev, %struct.efa_dev* %150, i32 0, i32 0
  %152 = call i32 @efa_com_modify_qp(i32* %151, %struct.efa_com_modify_qp_params* %11)
  store i32 %152, i32* %15, align 4
  %153 = load i32, i32* %15, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %157

155:                                              ; preds = %149
  %156 = load i32, i32* %15, align 4
  store i32 %156, i32* %5, align 4
  br label %161

157:                                              ; preds = %149
  %158 = load i32, i32* %14, align 4
  %159 = load %struct.efa_qp*, %struct.efa_qp** %12, align 8
  %160 = getelementptr inbounds %struct.efa_qp, %struct.efa_qp* %159, i32 0, i32 0
  store i32 %158, i32* %160, align 4
  store i32 0, i32* %5, align 4
  br label %161

161:                                              ; preds = %157, %155, %76, %34
  %162 = load i32, i32* %5, align 4
  ret i32 %162
}

declare dso_local %struct.efa_dev* @to_edev(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local %struct.efa_qp* @to_eqp(%struct.ib_qp*) #1

declare dso_local i32 @ib_is_udata_cleared(%struct.ib_udata*, i32, i64) #1

declare dso_local i32 @ibdev_dbg(i32*, i8*) #1

declare dso_local i32 @efa_modify_qp_validate(%struct.efa_dev*, %struct.efa_qp*, %struct.ib_qp_attr*, i32, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @efa_com_modify_qp(i32*, %struct.efa_com_modify_qp_params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
