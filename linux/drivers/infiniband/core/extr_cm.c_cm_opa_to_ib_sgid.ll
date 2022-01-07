; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cm.c_cm_opa_to_ib_sgid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cm.c_cm_opa_to_ib_sgid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cm_work = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.ib_device* }
%struct.ib_device = type { i32 }
%struct.sa_path_rec = type { %union.ib_gid }
%union.ib_gid = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"Error updating sgid in CM request\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cm_work*, %struct.sa_path_rec*)* @cm_opa_to_ib_sgid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cm_opa_to_ib_sgid(%struct.cm_work* %0, %struct.sa_path_rec* %1) #0 {
  %3 = alloca %struct.cm_work*, align 8
  %4 = alloca %struct.sa_path_rec*, align 8
  %5 = alloca %struct.ib_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %union.ib_gid, align 4
  store %struct.cm_work* %0, %struct.cm_work** %3, align 8
  store %struct.sa_path_rec* %1, %struct.sa_path_rec** %4, align 8
  %8 = load %struct.cm_work*, %struct.cm_work** %3, align 8
  %9 = getelementptr inbounds %struct.cm_work, %struct.cm_work* %8, i32 0, i32 0
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load %struct.ib_device*, %struct.ib_device** %13, align 8
  store %struct.ib_device* %14, %struct.ib_device** %5, align 8
  %15 = load %struct.cm_work*, %struct.cm_work** %3, align 8
  %16 = getelementptr inbounds %struct.cm_work, %struct.cm_work* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %6, align 4
  %20 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %21 = load i32, i32* %6, align 4
  %22 = call i64 @rdma_cap_opa_ah(%struct.ib_device* %20, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %43

24:                                               ; preds = %2
  %25 = load %struct.sa_path_rec*, %struct.sa_path_rec** %4, align 8
  %26 = getelementptr inbounds %struct.sa_path_rec, %struct.sa_path_rec* %25, i32 0, i32 0
  %27 = call i64 @ib_is_opa_gid(%union.ib_gid* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %43

29:                                               ; preds = %24
  %30 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %31 = load i32, i32* %6, align 4
  %32 = call i64 @rdma_query_gid(%struct.ib_device* %30, i32 %31, i32 0, %union.ib_gid* %7)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %29
  %35 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %36 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %35, i32 0, i32 0
  %37 = call i32 @dev_warn(i32* %36, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %43

38:                                               ; preds = %29
  %39 = load %struct.sa_path_rec*, %struct.sa_path_rec** %4, align 8
  %40 = getelementptr inbounds %struct.sa_path_rec, %struct.sa_path_rec* %39, i32 0, i32 0
  %41 = bitcast %union.ib_gid* %40 to i8*
  %42 = bitcast %union.ib_gid* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %41, i8* align 4 %42, i64 4, i1 false)
  br label %43

43:                                               ; preds = %34, %38, %24, %2
  ret void
}

declare dso_local i64 @rdma_cap_opa_ah(%struct.ib_device*, i32) #1

declare dso_local i64 @ib_is_opa_gid(%union.ib_gid*) #1

declare dso_local i64 @rdma_query_gid(%struct.ib_device*, i32, i32, %union.ib_gid*) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
