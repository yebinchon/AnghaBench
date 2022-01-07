; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_iwcm.c_iw_cm_map.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_iwcm.c_iw_cm_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iw_cm_id = type { i32, i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8*, i32, i32 }
%struct.iwpm_dev_data = type { i32, i32 }
%struct.iwpm_sa_data = type { i32, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@RDMA_NL_IWCM = common dso_local global i32 0, align 4
@IW_F_NO_PORT_MAP = common dso_local global i32 0, align 4
@IWPM_FLAGS_NO_PORT_MAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iw_cm_id*, i32)* @iw_cm_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iw_cm_map(%struct.iw_cm_id* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iw_cm_id*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.iwpm_dev_data, align 4
  %9 = alloca %struct.iwpm_sa_data, align 4
  %10 = alloca i32, align 4
  store %struct.iw_cm_id* %0, %struct.iw_cm_id** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.iw_cm_id*, %struct.iw_cm_id** %4, align 8
  %12 = getelementptr inbounds %struct.iw_cm_id, %struct.iw_cm_id* %11, i32 0, i32 5
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 2
  %15 = call i8* @dev_name(i32* %14)
  store i8* %15, i8** %6, align 8
  %16 = load %struct.iw_cm_id*, %struct.iw_cm_id** %4, align 8
  %17 = getelementptr inbounds %struct.iw_cm_id, %struct.iw_cm_id* %16, i32 0, i32 5
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  store i8* %20, i8** %7, align 8
  %21 = bitcast %struct.iwpm_dev_data* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %21, i8 0, i64 8, i1 false)
  %22 = load i8*, i8** %6, align 8
  %23 = call i32 @strlen(i8* %22)
  %24 = sext i32 %23 to i64
  %25 = icmp uge i64 %24, 4
  br i1 %25, label %31, label %26

26:                                               ; preds = %2
  %27 = load i8*, i8** %7, align 8
  %28 = call i32 @strlen(i8* %27)
  %29 = sext i32 %28 to i64
  %30 = icmp uge i64 %29, 4
  br i1 %30, label %31, label %34

31:                                               ; preds = %26, %2
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %124

34:                                               ; preds = %26
  %35 = load %struct.iw_cm_id*, %struct.iw_cm_id** %4, align 8
  %36 = getelementptr inbounds %struct.iw_cm_id, %struct.iw_cm_id* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.iw_cm_id*, %struct.iw_cm_id** %4, align 8
  %39 = getelementptr inbounds %struct.iw_cm_id, %struct.iw_cm_id* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  %40 = load %struct.iw_cm_id*, %struct.iw_cm_id** %4, align 8
  %41 = getelementptr inbounds %struct.iw_cm_id, %struct.iw_cm_id* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.iw_cm_id*, %struct.iw_cm_id** %4, align 8
  %44 = getelementptr inbounds %struct.iw_cm_id, %struct.iw_cm_id* %43, i32 0, i32 3
  store i32 %42, i32* %44, align 4
  %45 = getelementptr inbounds %struct.iwpm_dev_data, %struct.iwpm_dev_data* %8, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i8*, i8** %6, align 8
  %48 = call i32 @strcpy(i32 %46, i8* %47)
  %49 = getelementptr inbounds %struct.iwpm_dev_data, %struct.iwpm_dev_data* %8, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i8*, i8** %7, align 8
  %52 = call i32 @strcpy(i32 %50, i8* %51)
  %53 = load i32, i32* @RDMA_NL_IWCM, align 4
  %54 = call i64 @iwpm_register_pid(%struct.iwpm_dev_data* %8, i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %34
  %57 = call i32 (...) @iwpm_valid_pid()
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %56, %34
  store i32 0, i32* %3, align 4
  br label %124

60:                                               ; preds = %56
  %61 = load %struct.iw_cm_id*, %struct.iw_cm_id** %4, align 8
  %62 = getelementptr inbounds %struct.iw_cm_id, %struct.iw_cm_id* %61, i32 0, i32 0
  store i32 1, i32* %62, align 8
  %63 = load %struct.iw_cm_id*, %struct.iw_cm_id** %4, align 8
  %64 = getelementptr inbounds %struct.iw_cm_id, %struct.iw_cm_id* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = getelementptr inbounds %struct.iwpm_sa_data, %struct.iwpm_sa_data* %9, i32 0, i32 4
  store i32 %65, i32* %66, align 4
  %67 = load %struct.iw_cm_id*, %struct.iw_cm_id** %4, align 8
  %68 = getelementptr inbounds %struct.iw_cm_id, %struct.iw_cm_id* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 8
  %70 = getelementptr inbounds %struct.iwpm_sa_data, %struct.iwpm_sa_data* %9, i32 0, i32 3
  store i32 %69, i32* %70, align 4
  %71 = load %struct.iw_cm_id*, %struct.iw_cm_id** %4, align 8
  %72 = getelementptr inbounds %struct.iw_cm_id, %struct.iw_cm_id* %71, i32 0, i32 5
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @IW_F_NO_PORT_MAP, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %60
  %80 = load i32, i32* @IWPM_FLAGS_NO_PORT_MAP, align 4
  br label %82

81:                                               ; preds = %60
  br label %82

82:                                               ; preds = %81, %79
  %83 = phi i32 [ %80, %79 ], [ 0, %81 ]
  %84 = getelementptr inbounds %struct.iwpm_sa_data, %struct.iwpm_sa_data* %9, i32 0, i32 0
  store i32 %83, i32* %84, align 4
  %85 = load i32, i32* %5, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %82
  %88 = load i32, i32* @RDMA_NL_IWCM, align 4
  %89 = call i32 @iwpm_add_and_query_mapping(%struct.iwpm_sa_data* %9, i32 %88)
  store i32 %89, i32* %10, align 4
  br label %93

90:                                               ; preds = %82
  %91 = load i32, i32* @RDMA_NL_IWCM, align 4
  %92 = call i32 @iwpm_add_mapping(%struct.iwpm_sa_data* %9, i32 %91)
  store i32 %92, i32* %10, align 4
  br label %93

93:                                               ; preds = %90, %87
  %94 = load i32, i32* %10, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %115, label %96

96:                                               ; preds = %93
  %97 = getelementptr inbounds %struct.iwpm_sa_data, %struct.iwpm_sa_data* %9, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.iw_cm_id*, %struct.iw_cm_id** %4, align 8
  %100 = getelementptr inbounds %struct.iw_cm_id, %struct.iw_cm_id* %99, i32 0, i32 1
  store i32 %98, i32* %100, align 4
  %101 = load i32, i32* %5, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %114

103:                                              ; preds = %96
  %104 = getelementptr inbounds %struct.iwpm_sa_data, %struct.iwpm_sa_data* %9, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.iw_cm_id*, %struct.iw_cm_id** %4, align 8
  %107 = getelementptr inbounds %struct.iw_cm_id, %struct.iw_cm_id* %106, i32 0, i32 3
  store i32 %105, i32* %107, align 4
  %108 = getelementptr inbounds %struct.iwpm_sa_data, %struct.iwpm_sa_data* %9, i32 0, i32 1
  %109 = load %struct.iw_cm_id*, %struct.iw_cm_id** %4, align 8
  %110 = getelementptr inbounds %struct.iw_cm_id, %struct.iw_cm_id* %109, i32 0, i32 4
  %111 = load %struct.iw_cm_id*, %struct.iw_cm_id** %4, align 8
  %112 = getelementptr inbounds %struct.iw_cm_id, %struct.iw_cm_id* %111, i32 0, i32 3
  %113 = call i32 @iw_cm_check_wildcard(i32* %108, i32* %110, i32* %112)
  br label %114

114:                                              ; preds = %103, %96
  br label %115

115:                                              ; preds = %114, %93
  %116 = load %struct.iw_cm_id*, %struct.iw_cm_id** %4, align 8
  %117 = getelementptr inbounds %struct.iw_cm_id, %struct.iw_cm_id* %116, i32 0, i32 2
  %118 = load %struct.iw_cm_id*, %struct.iw_cm_id** %4, align 8
  %119 = getelementptr inbounds %struct.iw_cm_id, %struct.iw_cm_id* %118, i32 0, i32 1
  %120 = load i32, i32* @RDMA_NL_IWCM, align 4
  %121 = getelementptr inbounds %struct.iwpm_sa_data, %struct.iwpm_sa_data* %9, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @iwpm_create_mapinfo(i32* %117, i32* %119, i32 %120, i32 %122)
  store i32 %123, i32* %3, align 4
  br label %124

124:                                              ; preds = %115, %59, %31
  %125 = load i32, i32* %3, align 4
  ret i32 %125
}

declare dso_local i8* @dev_name(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i64 @iwpm_register_pid(%struct.iwpm_dev_data*, i32) #1

declare dso_local i32 @iwpm_valid_pid(...) #1

declare dso_local i32 @iwpm_add_and_query_mapping(%struct.iwpm_sa_data*, i32) #1

declare dso_local i32 @iwpm_add_mapping(%struct.iwpm_sa_data*, i32) #1

declare dso_local i32 @iw_cm_check_wildcard(i32*, i32*, i32*) #1

declare dso_local i32 @iwpm_create_mapinfo(i32*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
