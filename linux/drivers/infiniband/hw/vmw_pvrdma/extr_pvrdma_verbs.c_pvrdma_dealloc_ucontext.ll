; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/vmw_pvrdma/extr_pvrdma_verbs.c_pvrdma_dealloc_ucontext.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/vmw_pvrdma/extr_pvrdma_verbs.c_pvrdma_dealloc_ucontext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_ucontext = type { i32 }
%struct.pvrdma_ucontext = type { i32, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%union.pvrdma_cmd_req = type { %struct.pvrdma_cmd_destroy_uc }
%struct.pvrdma_cmd_destroy_uc = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@PVRDMA_CMD_DESTROY_UC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"destroy ucontext failed, error: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pvrdma_dealloc_ucontext(%struct.ib_ucontext* %0) #0 {
  %2 = alloca %struct.ib_ucontext*, align 8
  %3 = alloca %struct.pvrdma_ucontext*, align 8
  %4 = alloca %union.pvrdma_cmd_req, align 4
  %5 = alloca %struct.pvrdma_cmd_destroy_uc*, align 8
  %6 = alloca i32, align 4
  store %struct.ib_ucontext* %0, %struct.ib_ucontext** %2, align 8
  %7 = load %struct.ib_ucontext*, %struct.ib_ucontext** %2, align 8
  %8 = call %struct.pvrdma_ucontext* @to_vucontext(%struct.ib_ucontext* %7)
  store %struct.pvrdma_ucontext* %8, %struct.pvrdma_ucontext** %3, align 8
  %9 = bitcast %union.pvrdma_cmd_req* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %9, i8 0, i64 8, i1 false)
  %10 = bitcast %union.pvrdma_cmd_req* %4 to %struct.pvrdma_cmd_destroy_uc*
  store %struct.pvrdma_cmd_destroy_uc* %10, %struct.pvrdma_cmd_destroy_uc** %5, align 8
  %11 = load i32, i32* @PVRDMA_CMD_DESTROY_UC, align 4
  %12 = load %struct.pvrdma_cmd_destroy_uc*, %struct.pvrdma_cmd_destroy_uc** %5, align 8
  %13 = getelementptr inbounds %struct.pvrdma_cmd_destroy_uc, %struct.pvrdma_cmd_destroy_uc* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  store i32 %11, i32* %14, align 4
  %15 = load %struct.pvrdma_ucontext*, %struct.pvrdma_ucontext** %3, align 8
  %16 = getelementptr inbounds %struct.pvrdma_ucontext, %struct.pvrdma_ucontext* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.pvrdma_cmd_destroy_uc*, %struct.pvrdma_cmd_destroy_uc** %5, align 8
  %19 = getelementptr inbounds %struct.pvrdma_cmd_destroy_uc, %struct.pvrdma_cmd_destroy_uc* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 4
  %20 = load %struct.pvrdma_ucontext*, %struct.pvrdma_ucontext** %3, align 8
  %21 = getelementptr inbounds %struct.pvrdma_ucontext, %struct.pvrdma_ucontext* %20, i32 0, i32 1
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = call i32 @pvrdma_cmd_post(%struct.TYPE_6__* %22, %union.pvrdma_cmd_req* %4, i32* null, i32 0)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %1
  %27 = load %struct.pvrdma_ucontext*, %struct.pvrdma_ucontext** %3, align 8
  %28 = getelementptr inbounds %struct.pvrdma_ucontext, %struct.pvrdma_ucontext* %27, i32 0, i32 1
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @dev_warn(i32* %32, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %33)
  br label %35

35:                                               ; preds = %26, %1
  %36 = load %struct.ib_ucontext*, %struct.ib_ucontext** %2, align 8
  %37 = getelementptr inbounds %struct.ib_ucontext, %struct.ib_ucontext* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @to_vdev(i32 %38)
  %40 = load %struct.pvrdma_ucontext*, %struct.pvrdma_ucontext** %3, align 8
  %41 = getelementptr inbounds %struct.pvrdma_ucontext, %struct.pvrdma_ucontext* %40, i32 0, i32 0
  %42 = call i32 @pvrdma_uar_free(i32 %39, i32* %41)
  ret void
}

declare dso_local %struct.pvrdma_ucontext* @to_vucontext(%struct.ib_ucontext*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @pvrdma_cmd_post(%struct.TYPE_6__*, %union.pvrdma_cmd_req*, i32*, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

declare dso_local i32 @pvrdma_uar_free(i32, i32*) #1

declare dso_local i32 @to_vdev(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
