; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/vmw_pvrdma/extr_pvrdma_verbs.c_pvrdma_dealloc_pd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/vmw_pvrdma/extr_pvrdma_verbs.c_pvrdma_dealloc_pd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_pd = type { i32 }
%struct.ib_udata = type { i32 }
%struct.pvrdma_dev = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%union.pvrdma_cmd_req = type { %struct.pvrdma_cmd_destroy_pd }
%struct.pvrdma_cmd_destroy_pd = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@PVRDMA_CMD_DESTROY_PD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"could not dealloc protection domain, error: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pvrdma_dealloc_pd(%struct.ib_pd* %0, %struct.ib_udata* %1) #0 {
  %3 = alloca %struct.ib_pd*, align 8
  %4 = alloca %struct.ib_udata*, align 8
  %5 = alloca %struct.pvrdma_dev*, align 8
  %6 = alloca %union.pvrdma_cmd_req, align 4
  %7 = alloca %struct.pvrdma_cmd_destroy_pd*, align 8
  %8 = alloca i32, align 4
  store %struct.ib_pd* %0, %struct.ib_pd** %3, align 8
  store %struct.ib_udata* %1, %struct.ib_udata** %4, align 8
  %9 = load %struct.ib_pd*, %struct.ib_pd** %3, align 8
  %10 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.pvrdma_dev* @to_vdev(i32 %11)
  store %struct.pvrdma_dev* %12, %struct.pvrdma_dev** %5, align 8
  %13 = bitcast %union.pvrdma_cmd_req* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %13, i8 0, i64 8, i1 false)
  %14 = bitcast %union.pvrdma_cmd_req* %6 to %struct.pvrdma_cmd_destroy_pd*
  store %struct.pvrdma_cmd_destroy_pd* %14, %struct.pvrdma_cmd_destroy_pd** %7, align 8
  %15 = load i32, i32* @PVRDMA_CMD_DESTROY_PD, align 4
  %16 = load %struct.pvrdma_cmd_destroy_pd*, %struct.pvrdma_cmd_destroy_pd** %7, align 8
  %17 = getelementptr inbounds %struct.pvrdma_cmd_destroy_pd, %struct.pvrdma_cmd_destroy_pd* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  store i32 %15, i32* %18, align 4
  %19 = load %struct.ib_pd*, %struct.ib_pd** %3, align 8
  %20 = call %struct.TYPE_6__* @to_vpd(%struct.ib_pd* %19)
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.pvrdma_cmd_destroy_pd*, %struct.pvrdma_cmd_destroy_pd** %7, align 8
  %24 = getelementptr inbounds %struct.pvrdma_cmd_destroy_pd, %struct.pvrdma_cmd_destroy_pd* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  %25 = load %struct.pvrdma_dev*, %struct.pvrdma_dev** %5, align 8
  %26 = call i32 @pvrdma_cmd_post(%struct.pvrdma_dev* %25, %union.pvrdma_cmd_req* %6, i32* null, i32 0)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %2
  %30 = load %struct.pvrdma_dev*, %struct.pvrdma_dev** %5, align 8
  %31 = getelementptr inbounds %struct.pvrdma_dev, %struct.pvrdma_dev* %30, i32 0, i32 1
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @dev_warn(i32* %33, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %34)
  br label %36

36:                                               ; preds = %29, %2
  %37 = load %struct.pvrdma_dev*, %struct.pvrdma_dev** %5, align 8
  %38 = getelementptr inbounds %struct.pvrdma_dev, %struct.pvrdma_dev* %37, i32 0, i32 0
  %39 = call i32 @atomic_dec(i32* %38)
  ret void
}

declare dso_local %struct.pvrdma_dev* @to_vdev(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local %struct.TYPE_6__* @to_vpd(%struct.ib_pd*) #1

declare dso_local i32 @pvrdma_cmd_post(%struct.pvrdma_dev*, %union.pvrdma_cmd_req*, i32*, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

declare dso_local i32 @atomic_dec(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
