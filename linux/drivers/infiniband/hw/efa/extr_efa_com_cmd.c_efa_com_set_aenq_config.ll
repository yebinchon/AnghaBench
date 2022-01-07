; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/efa/extr_efa_com_cmd.c_efa_com_set_aenq_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/efa/extr_efa_com_cmd.c_efa_com_set_aenq_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efa_com_dev = type { i32 }
%struct.efa_admin_get_feature_resp = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.efa_admin_set_feature_resp = type { i32 }
%struct.efa_admin_set_feature_cmd = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"Configuring aenq with groups[%#x]\0A\00", align 1
@EFA_ADMIN_AENQ_CONFIG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Failed to get aenq attributes: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"Get aenq groups: supported[%#x] enabled[%#x]\0A\00", align 1
@.str.3 = private unnamed_addr constant [59 x i8] c"Trying to set unsupported aenq groups[%#x] supported[%#x]\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [35 x i8] c"Failed to set aenq attributes: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @efa_com_set_aenq_config(%struct.efa_com_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.efa_com_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.efa_admin_get_feature_resp, align 4
  %7 = alloca %struct.efa_admin_set_feature_resp, align 4
  %8 = alloca %struct.efa_admin_set_feature_cmd, align 4
  %9 = alloca i32, align 4
  store %struct.efa_com_dev* %0, %struct.efa_com_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = bitcast %struct.efa_admin_set_feature_cmd* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %10, i8 0, i64 4, i1 false)
  %11 = load %struct.efa_com_dev*, %struct.efa_com_dev** %4, align 8
  %12 = getelementptr inbounds %struct.efa_com_dev, %struct.efa_com_dev* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* %5, align 4
  %15 = call i32 (i32, i8*, i32, ...) @ibdev_dbg(i32 %13, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load %struct.efa_com_dev*, %struct.efa_com_dev** %4, align 8
  %17 = load i32, i32* @EFA_ADMIN_AENQ_CONFIG, align 4
  %18 = call i32 @efa_com_get_feature(%struct.efa_com_dev* %16, %struct.efa_admin_get_feature_resp* %6, i32 %17)
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %2
  %22 = load %struct.efa_com_dev*, %struct.efa_com_dev** %4, align 8
  %23 = getelementptr inbounds %struct.efa_com_dev, %struct.efa_com_dev* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %9, align 4
  %26 = call i32 (i32, i8*, i32, ...) @ibdev_err_ratelimited(i32 %24, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* %9, align 4
  store i32 %27, i32* %3, align 4
  br label %79

28:                                               ; preds = %2
  %29 = load %struct.efa_com_dev*, %struct.efa_com_dev** %4, align 8
  %30 = getelementptr inbounds %struct.efa_com_dev, %struct.efa_com_dev* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = getelementptr inbounds %struct.efa_admin_get_feature_resp, %struct.efa_admin_get_feature_resp* %6, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = getelementptr inbounds %struct.efa_admin_get_feature_resp, %struct.efa_admin_get_feature_resp* %6, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 (i32, i8*, i32, ...) @ibdev_dbg(i32 %31, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 %35, i32 %39)
  %41 = getelementptr inbounds %struct.efa_admin_get_feature_resp, %struct.efa_admin_get_feature_resp* %6, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %5, align 4
  %46 = and i32 %44, %45
  %47 = load i32, i32* %5, align 4
  %48 = icmp ne i32 %46, %47
  br i1 %48, label %49, label %61

49:                                               ; preds = %28
  %50 = load %struct.efa_com_dev*, %struct.efa_com_dev** %4, align 8
  %51 = getelementptr inbounds %struct.efa_com_dev, %struct.efa_com_dev* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %5, align 4
  %54 = getelementptr inbounds %struct.efa_admin_get_feature_resp, %struct.efa_admin_get_feature_resp* %6, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 (i32, i8*, i32, ...) @ibdev_err_ratelimited(i32 %52, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.3, i64 0, i64 0), i32 %53, i32 %57)
  %59 = load i32, i32* @EOPNOTSUPP, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %3, align 4
  br label %79

61:                                               ; preds = %28
  %62 = load i32, i32* %5, align 4
  %63 = getelementptr inbounds %struct.efa_admin_set_feature_cmd, %struct.efa_admin_set_feature_cmd* %8, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  store i32 %62, i32* %65, align 4
  %66 = load %struct.efa_com_dev*, %struct.efa_com_dev** %4, align 8
  %67 = load i32, i32* @EFA_ADMIN_AENQ_CONFIG, align 4
  %68 = call i32 @efa_com_set_feature(%struct.efa_com_dev* %66, %struct.efa_admin_set_feature_resp* %7, %struct.efa_admin_set_feature_cmd* %8, i32 %67)
  store i32 %68, i32* %9, align 4
  %69 = load i32, i32* %9, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %78

71:                                               ; preds = %61
  %72 = load %struct.efa_com_dev*, %struct.efa_com_dev** %4, align 8
  %73 = getelementptr inbounds %struct.efa_com_dev, %struct.efa_com_dev* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %9, align 4
  %76 = call i32 (i32, i8*, i32, ...) @ibdev_err_ratelimited(i32 %74, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i32 %75)
  %77 = load i32, i32* %9, align 4
  store i32 %77, i32* %3, align 4
  br label %79

78:                                               ; preds = %61
  store i32 0, i32* %3, align 4
  br label %79

79:                                               ; preds = %78, %71, %49, %21
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @ibdev_dbg(i32, i8*, i32, ...) #2

declare dso_local i32 @efa_com_get_feature(%struct.efa_com_dev*, %struct.efa_admin_get_feature_resp*, i32) #2

declare dso_local i32 @ibdev_err_ratelimited(i32, i8*, i32, ...) #2

declare dso_local i32 @efa_com_set_feature(%struct.efa_com_dev*, %struct.efa_admin_set_feature_resp*, %struct.efa_admin_set_feature_cmd*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
