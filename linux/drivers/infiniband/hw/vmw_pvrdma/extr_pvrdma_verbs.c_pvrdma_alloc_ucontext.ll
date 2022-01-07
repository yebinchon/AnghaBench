; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/vmw_pvrdma/extr_pvrdma_verbs.c_pvrdma_alloc_ucontext.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/vmw_pvrdma/extr_pvrdma_verbs.c_pvrdma_alloc_ucontext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_ucontext = type { %struct.ib_device* }
%struct.ib_device = type { i32 }
%struct.ib_udata = type { i32 }
%struct.pvrdma_dev = type { i64, %struct.TYPE_10__*, %struct.TYPE_8__*, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.pvrdma_ucontext = type { %struct.TYPE_11__, i32, i32, %struct.pvrdma_dev* }
%struct.TYPE_11__ = type { i32 }
%union.pvrdma_cmd_req = type { %struct.pvrdma_cmd_create_uc }
%struct.pvrdma_cmd_create_uc = type { %struct.TYPE_7__, i32, i32 }
%struct.TYPE_7__ = type { i32 }
%union.pvrdma_cmd_resp = type { %struct.pvrdma_cmd_create_uc_resp }
%struct.pvrdma_cmd_create_uc_resp = type { i32 }
%struct.pvrdma_alloc_ucontext_resp = type { i32 }

@EAGAIN = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PVRDMA_PPN64_VERSION = common dso_local global i64 0, align 8
@PVRDMA_CMD_CREATE_UC = common dso_local global i32 0, align 4
@PVRDMA_CMD_CREATE_UC_RESP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"could not create ucontext, error: %d\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pvrdma_alloc_ucontext(%struct.ib_ucontext* %0, %struct.ib_udata* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ib_ucontext*, align 8
  %5 = alloca %struct.ib_udata*, align 8
  %6 = alloca %struct.ib_device*, align 8
  %7 = alloca %struct.pvrdma_dev*, align 8
  %8 = alloca %struct.pvrdma_ucontext*, align 8
  %9 = alloca %union.pvrdma_cmd_req, align 4
  %10 = alloca %union.pvrdma_cmd_resp, align 4
  %11 = alloca %struct.pvrdma_cmd_create_uc*, align 8
  %12 = alloca %struct.pvrdma_cmd_create_uc_resp*, align 8
  %13 = alloca %struct.pvrdma_alloc_ucontext_resp, align 4
  %14 = alloca i32, align 4
  store %struct.ib_ucontext* %0, %struct.ib_ucontext** %4, align 8
  store %struct.ib_udata* %1, %struct.ib_udata** %5, align 8
  %15 = load %struct.ib_ucontext*, %struct.ib_ucontext** %4, align 8
  %16 = getelementptr inbounds %struct.ib_ucontext, %struct.ib_ucontext* %15, i32 0, i32 0
  %17 = load %struct.ib_device*, %struct.ib_device** %16, align 8
  store %struct.ib_device* %17, %struct.ib_device** %6, align 8
  %18 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %19 = call %struct.pvrdma_dev* @to_vdev(%struct.ib_device* %18)
  store %struct.pvrdma_dev* %19, %struct.pvrdma_dev** %7, align 8
  %20 = load %struct.ib_ucontext*, %struct.ib_ucontext** %4, align 8
  %21 = call %struct.pvrdma_ucontext* @to_vucontext(%struct.ib_ucontext* %20)
  store %struct.pvrdma_ucontext* %21, %struct.pvrdma_ucontext** %8, align 8
  %22 = bitcast %union.pvrdma_cmd_req* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %22, i8 0, i64 12, i1 false)
  %23 = bitcast %union.pvrdma_cmd_resp* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %23, i8 0, i64 4, i1 false)
  %24 = bitcast %union.pvrdma_cmd_req* %9 to %struct.pvrdma_cmd_create_uc*
  store %struct.pvrdma_cmd_create_uc* %24, %struct.pvrdma_cmd_create_uc** %11, align 8
  %25 = bitcast %union.pvrdma_cmd_resp* %10 to %struct.pvrdma_cmd_create_uc_resp*
  store %struct.pvrdma_cmd_create_uc_resp* %25, %struct.pvrdma_cmd_create_uc_resp** %12, align 8
  %26 = bitcast %struct.pvrdma_alloc_ucontext_resp* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %26, i8 0, i64 4, i1 false)
  %27 = load %struct.pvrdma_dev*, %struct.pvrdma_dev** %7, align 8
  %28 = getelementptr inbounds %struct.pvrdma_dev, %struct.pvrdma_dev* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %2
  %32 = load i32, i32* @EAGAIN, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %118

34:                                               ; preds = %2
  %35 = load %struct.pvrdma_dev*, %struct.pvrdma_dev** %7, align 8
  %36 = load %struct.pvrdma_ucontext*, %struct.pvrdma_ucontext** %8, align 8
  %37 = getelementptr inbounds %struct.pvrdma_ucontext, %struct.pvrdma_ucontext* %36, i32 0, i32 3
  store %struct.pvrdma_dev* %35, %struct.pvrdma_dev** %37, align 8
  %38 = load %struct.pvrdma_dev*, %struct.pvrdma_dev** %7, align 8
  %39 = load %struct.pvrdma_ucontext*, %struct.pvrdma_ucontext** %8, align 8
  %40 = getelementptr inbounds %struct.pvrdma_ucontext, %struct.pvrdma_ucontext* %39, i32 0, i32 0
  %41 = call i32 @pvrdma_uar_alloc(%struct.pvrdma_dev* %38, %struct.TYPE_11__* %40)
  store i32 %41, i32* %14, align 4
  %42 = load i32, i32* %14, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %34
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %3, align 4
  br label %118

47:                                               ; preds = %34
  %48 = load %struct.pvrdma_dev*, %struct.pvrdma_dev** %7, align 8
  %49 = getelementptr inbounds %struct.pvrdma_dev, %struct.pvrdma_dev* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @PVRDMA_PPN64_VERSION, align 8
  %52 = icmp slt i64 %50, %51
  br i1 %52, label %53, label %60

53:                                               ; preds = %47
  %54 = load %struct.pvrdma_ucontext*, %struct.pvrdma_ucontext** %8, align 8
  %55 = getelementptr inbounds %struct.pvrdma_ucontext, %struct.pvrdma_ucontext* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.pvrdma_cmd_create_uc*, %struct.pvrdma_cmd_create_uc** %11, align 8
  %59 = getelementptr inbounds %struct.pvrdma_cmd_create_uc, %struct.pvrdma_cmd_create_uc* %58, i32 0, i32 2
  store i32 %57, i32* %59, align 4
  br label %67

60:                                               ; preds = %47
  %61 = load %struct.pvrdma_ucontext*, %struct.pvrdma_ucontext** %8, align 8
  %62 = getelementptr inbounds %struct.pvrdma_ucontext, %struct.pvrdma_ucontext* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.pvrdma_cmd_create_uc*, %struct.pvrdma_cmd_create_uc** %11, align 8
  %66 = getelementptr inbounds %struct.pvrdma_cmd_create_uc, %struct.pvrdma_cmd_create_uc* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 4
  br label %67

67:                                               ; preds = %60, %53
  %68 = load i32, i32* @PVRDMA_CMD_CREATE_UC, align 4
  %69 = load %struct.pvrdma_cmd_create_uc*, %struct.pvrdma_cmd_create_uc** %11, align 8
  %70 = getelementptr inbounds %struct.pvrdma_cmd_create_uc, %struct.pvrdma_cmd_create_uc* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  store i32 %68, i32* %71, align 4
  %72 = load %struct.pvrdma_dev*, %struct.pvrdma_dev** %7, align 8
  %73 = load i32, i32* @PVRDMA_CMD_CREATE_UC_RESP, align 4
  %74 = call i32 @pvrdma_cmd_post(%struct.pvrdma_dev* %72, %union.pvrdma_cmd_req* %9, %union.pvrdma_cmd_resp* %10, i32 %73)
  store i32 %74, i32* %14, align 4
  %75 = load i32, i32* %14, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %84

77:                                               ; preds = %67
  %78 = load %struct.pvrdma_dev*, %struct.pvrdma_dev** %7, align 8
  %79 = getelementptr inbounds %struct.pvrdma_dev, %struct.pvrdma_dev* %78, i32 0, i32 2
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 0
  %82 = load i32, i32* %14, align 4
  %83 = call i32 @dev_warn(i32* %81, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %82)
  br label %112

84:                                               ; preds = %67
  %85 = load %struct.pvrdma_cmd_create_uc_resp*, %struct.pvrdma_cmd_create_uc_resp** %12, align 8
  %86 = getelementptr inbounds %struct.pvrdma_cmd_create_uc_resp, %struct.pvrdma_cmd_create_uc_resp* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.pvrdma_ucontext*, %struct.pvrdma_ucontext** %8, align 8
  %89 = getelementptr inbounds %struct.pvrdma_ucontext, %struct.pvrdma_ucontext* %88, i32 0, i32 2
  store i32 %87, i32* %89, align 8
  %90 = load %struct.pvrdma_dev*, %struct.pvrdma_dev** %7, align 8
  %91 = getelementptr inbounds %struct.pvrdma_dev, %struct.pvrdma_dev* %90, i32 0, i32 1
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = getelementptr inbounds %struct.pvrdma_alloc_ucontext_resp, %struct.pvrdma_alloc_ucontext_resp* %13, i32 0, i32 0
  store i32 %95, i32* %96, align 4
  %97 = load %struct.ib_udata*, %struct.ib_udata** %5, align 8
  %98 = call i32 @ib_copy_to_udata(%struct.ib_udata* %97, %struct.pvrdma_alloc_ucontext_resp* %13, i32 4)
  store i32 %98, i32* %14, align 4
  %99 = load i32, i32* %14, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %111

101:                                              ; preds = %84
  %102 = load %struct.pvrdma_dev*, %struct.pvrdma_dev** %7, align 8
  %103 = load %struct.pvrdma_ucontext*, %struct.pvrdma_ucontext** %8, align 8
  %104 = getelementptr inbounds %struct.pvrdma_ucontext, %struct.pvrdma_ucontext* %103, i32 0, i32 0
  %105 = call i32 @pvrdma_uar_free(%struct.pvrdma_dev* %102, %struct.TYPE_11__* %104)
  %106 = load %struct.pvrdma_ucontext*, %struct.pvrdma_ucontext** %8, align 8
  %107 = getelementptr inbounds %struct.pvrdma_ucontext, %struct.pvrdma_ucontext* %106, i32 0, i32 1
  %108 = call i32 @pvrdma_dealloc_ucontext(i32* %107)
  %109 = load i32, i32* @EFAULT, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %3, align 4
  br label %118

111:                                              ; preds = %84
  store i32 0, i32* %3, align 4
  br label %118

112:                                              ; preds = %77
  %113 = load %struct.pvrdma_dev*, %struct.pvrdma_dev** %7, align 8
  %114 = load %struct.pvrdma_ucontext*, %struct.pvrdma_ucontext** %8, align 8
  %115 = getelementptr inbounds %struct.pvrdma_ucontext, %struct.pvrdma_ucontext* %114, i32 0, i32 0
  %116 = call i32 @pvrdma_uar_free(%struct.pvrdma_dev* %113, %struct.TYPE_11__* %115)
  %117 = load i32, i32* %14, align 4
  store i32 %117, i32* %3, align 4
  br label %118

118:                                              ; preds = %112, %111, %101, %44, %31
  %119 = load i32, i32* %3, align 4
  ret i32 %119
}

declare dso_local %struct.pvrdma_dev* @to_vdev(%struct.ib_device*) #1

declare dso_local %struct.pvrdma_ucontext* @to_vucontext(%struct.ib_ucontext*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @pvrdma_uar_alloc(%struct.pvrdma_dev*, %struct.TYPE_11__*) #1

declare dso_local i32 @pvrdma_cmd_post(%struct.pvrdma_dev*, %union.pvrdma_cmd_req*, %union.pvrdma_cmd_resp*, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

declare dso_local i32 @ib_copy_to_udata(%struct.ib_udata*, %struct.pvrdma_alloc_ucontext_resp*, i32) #1

declare dso_local i32 @pvrdma_uar_free(%struct.pvrdma_dev*, %struct.TYPE_11__*) #1

declare dso_local i32 @pvrdma_dealloc_ucontext(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
