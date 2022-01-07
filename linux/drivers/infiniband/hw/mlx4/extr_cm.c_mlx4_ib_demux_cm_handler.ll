; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx4/extr_cm.c_mlx4_ib_demux_cm_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx4/extr_cm.c_mlx4_ib_demux_cm_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%struct.ib_mad = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.id_map_entry = type { i32, i32 }
%union.ib_gid = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@CM_REQ_ATTR_ID = common dso_local global i64 0, align 8
@CM_SIDR_REQ_ATTR_ID = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [42 x i8] c"failed matching slave_id by gid (0x%llx)\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"Couldn't find an entry for pv_cm_id 0x%x\0A\00", align 1
@CM_DREQ_ATTR_ID = common dso_local global i64 0, align 8
@CM_REJ_ATTR_ID = common dso_local global i64 0, align 8
@CM_DREP_ATTR_ID = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_ib_demux_cm_handler(%struct.ib_device* %0, i32 %1, i32* %2, %struct.ib_mad* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ib_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.ib_mad*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.id_map_entry*, align 8
  %12 = alloca %union.ib_gid, align 4
  %13 = alloca %union.ib_gid, align 4
  store %struct.ib_device* %0, %struct.ib_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store %struct.ib_mad* %3, %struct.ib_mad** %9, align 8
  %14 = load %struct.ib_mad*, %struct.ib_mad** %9, align 8
  %15 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @CM_REQ_ATTR_ID, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %27, label %20

20:                                               ; preds = %4
  %21 = load %struct.ib_mad*, %struct.ib_mad** %9, align 8
  %22 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @CM_SIDR_REQ_ATTR_ID, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %59

27:                                               ; preds = %20, %4
  %28 = load i32*, i32** %8, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %27
  store i32 0, i32* %5, align 4
  br label %117

31:                                               ; preds = %27
  %32 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %33 = load %struct.ib_mad*, %struct.ib_mad** %9, align 8
  %34 = call i32 @gid_from_req_msg(%struct.ib_device* %32, %struct.ib_mad* %33)
  %35 = getelementptr inbounds %union.ib_gid, %union.ib_gid* %13, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  %37 = bitcast %union.ib_gid* %12 to i8*
  %38 = bitcast %union.ib_gid* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %37, i8* align 4 %38, i64 4, i1 false)
  %39 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %40 = load i32, i32* %7, align 4
  %41 = bitcast %union.ib_gid* %12 to %struct.TYPE_3__*
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @mlx4_ib_find_real_gid(%struct.ib_device* %39, i32 %40, i32 %43)
  %45 = load i32*, i32** %8, align 8
  store i32 %44, i32* %45, align 4
  %46 = load i32*, i32** %8, align 8
  %47 = load i32, i32* %46, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %58

49:                                               ; preds = %31
  %50 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %51 = bitcast %union.ib_gid* %12 to %struct.TYPE_3__*
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @be64_to_cpu(i32 %53)
  %55 = call i32 @mlx4_ib_warn(%struct.ib_device* %50, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %54)
  %56 = load i32, i32* @ENOENT, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %5, align 4
  br label %117

58:                                               ; preds = %31
  store i32 0, i32* %5, align 4
  br label %117

59:                                               ; preds = %20
  %60 = load %struct.ib_mad*, %struct.ib_mad** %9, align 8
  %61 = call i64 @get_remote_comm_id(%struct.ib_mad* %60)
  store i64 %61, i64* %10, align 8
  %62 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %63 = bitcast i64* %10 to i32*
  %64 = call %struct.id_map_entry* @id_map_get(%struct.ib_device* %62, i32* %63, i32 -1, i32 -1)
  store %struct.id_map_entry* %64, %struct.id_map_entry** %11, align 8
  %65 = load %struct.id_map_entry*, %struct.id_map_entry** %11, align 8
  %66 = icmp ne %struct.id_map_entry* %65, null
  br i1 %66, label %72, label %67

67:                                               ; preds = %59
  %68 = load i64, i64* %10, align 8
  %69 = call i32 @pr_debug(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i64 %68)
  %70 = load i32, i32* @ENOENT, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %5, align 4
  br label %117

72:                                               ; preds = %59
  %73 = load i32*, i32** %8, align 8
  %74 = icmp ne i32* %73, null
  br i1 %74, label %75, label %80

75:                                               ; preds = %72
  %76 = load %struct.id_map_entry*, %struct.id_map_entry** %11, align 8
  %77 = getelementptr inbounds %struct.id_map_entry, %struct.id_map_entry* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32*, i32** %8, align 8
  store i32 %78, i32* %79, align 4
  br label %80

80:                                               ; preds = %75, %72
  %81 = load %struct.ib_mad*, %struct.ib_mad** %9, align 8
  %82 = load %struct.id_map_entry*, %struct.id_map_entry** %11, align 8
  %83 = getelementptr inbounds %struct.id_map_entry, %struct.id_map_entry* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @set_remote_comm_id(%struct.ib_mad* %81, i32 %84)
  %86 = load %struct.ib_mad*, %struct.ib_mad** %9, align 8
  %87 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @CM_DREQ_ATTR_ID, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %96

92:                                               ; preds = %80
  %93 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %94 = load %struct.id_map_entry*, %struct.id_map_entry** %11, align 8
  %95 = call i32 @schedule_delayed(%struct.ib_device* %93, %struct.id_map_entry* %94)
  br label %116

96:                                               ; preds = %80
  %97 = load %struct.ib_mad*, %struct.ib_mad** %9, align 8
  %98 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @CM_REJ_ATTR_ID, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %110, label %103

103:                                              ; preds = %96
  %104 = load %struct.ib_mad*, %struct.ib_mad** %9, align 8
  %105 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @CM_DREP_ATTR_ID, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %115

110:                                              ; preds = %103, %96
  %111 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %112 = load i64, i64* %10, align 8
  %113 = trunc i64 %112 to i32
  %114 = call i32 @id_map_find_del(%struct.ib_device* %111, i32 %113)
  br label %115

115:                                              ; preds = %110, %103
  br label %116

116:                                              ; preds = %115, %92
  store i32 0, i32* %5, align 4
  br label %117

117:                                              ; preds = %116, %67, %58, %49, %30
  %118 = load i32, i32* %5, align 4
  ret i32 %118
}

declare dso_local i32 @gid_from_req_msg(%struct.ib_device*, %struct.ib_mad*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @mlx4_ib_find_real_gid(%struct.ib_device*, i32, i32) #1

declare dso_local i32 @mlx4_ib_warn(%struct.ib_device*, i8*, i32) #1

declare dso_local i32 @be64_to_cpu(i32) #1

declare dso_local i64 @get_remote_comm_id(%struct.ib_mad*) #1

declare dso_local %struct.id_map_entry* @id_map_get(%struct.ib_device*, i32*, i32, i32) #1

declare dso_local i32 @pr_debug(i8*, i64) #1

declare dso_local i32 @set_remote_comm_id(%struct.ib_mad*, i32) #1

declare dso_local i32 @schedule_delayed(%struct.ib_device*, %struct.id_map_entry*) #1

declare dso_local i32 @id_map_find_del(%struct.ib_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
