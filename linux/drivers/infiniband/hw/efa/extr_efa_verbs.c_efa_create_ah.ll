; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/efa/extr_efa_verbs.c_efa_create_ah.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/efa/extr_efa_verbs.c_efa_create_ah.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_ah = type { i32, i32 }
%struct.rdma_ah_attr = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.ib_udata = type { i64, i64 }
%struct.efa_dev = type { %struct.TYPE_9__, i32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.efa_com_create_ah_params = type { i32, i32 }
%struct.efa_ibv_create_ah_resp = type { i32 }
%struct.efa_com_create_ah_result = type { i32 }
%struct.efa_ah = type { i32, i32 }
%struct.TYPE_10__ = type { i32 }

@RDMA_CREATE_AH_SLEEPABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"Create address handle is not supported in atomic context\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Incompatible ABI params\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [45 x i8] c"Failed to copy udata for create_ah response\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"Created ah[%d]\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @efa_create_ah(%struct.ib_ah* %0, %struct.rdma_ah_attr* %1, i32 %2, %struct.ib_udata* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ib_ah*, align 8
  %7 = alloca %struct.rdma_ah_attr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ib_udata*, align 8
  %10 = alloca %struct.efa_dev*, align 8
  %11 = alloca %struct.efa_com_create_ah_params, align 4
  %12 = alloca %struct.efa_ibv_create_ah_resp, align 4
  %13 = alloca %struct.efa_com_create_ah_result, align 4
  %14 = alloca %struct.efa_ah*, align 8
  %15 = alloca i32, align 4
  store %struct.ib_ah* %0, %struct.ib_ah** %6, align 8
  store %struct.rdma_ah_attr* %1, %struct.rdma_ah_attr** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.ib_udata* %3, %struct.ib_udata** %9, align 8
  %16 = load %struct.ib_ah*, %struct.ib_ah** %6, align 8
  %17 = getelementptr inbounds %struct.ib_ah, %struct.ib_ah* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.efa_dev* @to_edev(i32 %18)
  store %struct.efa_dev* %19, %struct.efa_dev** %10, align 8
  %20 = bitcast %struct.efa_com_create_ah_params* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %20, i8 0, i64 8, i1 false)
  %21 = bitcast %struct.efa_ibv_create_ah_resp* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %21, i8 0, i64 4, i1 false)
  %22 = load %struct.ib_ah*, %struct.ib_ah** %6, align 8
  %23 = call %struct.efa_ah* @to_eah(%struct.ib_ah* %22)
  store %struct.efa_ah* %23, %struct.efa_ah** %14, align 8
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* @RDMA_CREATE_AH_SLEEPABLE, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %34, label %28

28:                                               ; preds = %4
  %29 = load %struct.efa_dev*, %struct.efa_dev** %10, align 8
  %30 = getelementptr inbounds %struct.efa_dev, %struct.efa_dev* %29, i32 0, i32 1
  %31 = call i32 (i32*, i8*, ...) @ibdev_dbg(i32* %30, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* @EOPNOTSUPP, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %15, align 4
  br label %120

34:                                               ; preds = %4
  %35 = load %struct.ib_udata*, %struct.ib_udata** %9, align 8
  %36 = getelementptr inbounds %struct.ib_udata, %struct.ib_udata* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %52

39:                                               ; preds = %34
  %40 = load %struct.ib_udata*, %struct.ib_udata** %9, align 8
  %41 = load %struct.ib_udata*, %struct.ib_udata** %9, align 8
  %42 = getelementptr inbounds %struct.ib_udata, %struct.ib_udata* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = call i32 @ib_is_udata_cleared(%struct.ib_udata* %40, i32 0, i64 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %52, label %46

46:                                               ; preds = %39
  %47 = load %struct.efa_dev*, %struct.efa_dev** %10, align 8
  %48 = getelementptr inbounds %struct.efa_dev, %struct.efa_dev* %47, i32 0, i32 1
  %49 = call i32 (i32*, i8*, ...) @ibdev_dbg(i32* %48, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %15, align 4
  br label %120

52:                                               ; preds = %39, %34
  %53 = getelementptr inbounds %struct.efa_com_create_ah_params, %struct.efa_com_create_ah_params* %11, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %7, align 8
  %56 = getelementptr inbounds %struct.rdma_ah_attr, %struct.rdma_ah_attr* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @memcpy(i32 %54, i32 %59, i32 4)
  %61 = load %struct.ib_ah*, %struct.ib_ah** %6, align 8
  %62 = getelementptr inbounds %struct.ib_ah, %struct.ib_ah* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call %struct.TYPE_10__* @to_epd(i32 %63)
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = getelementptr inbounds %struct.efa_com_create_ah_params, %struct.efa_com_create_ah_params* %11, i32 0, i32 0
  store i32 %66, i32* %67, align 4
  %68 = load %struct.efa_dev*, %struct.efa_dev** %10, align 8
  %69 = getelementptr inbounds %struct.efa_dev, %struct.efa_dev* %68, i32 0, i32 2
  %70 = call i32 @efa_com_create_ah(i32* %69, %struct.efa_com_create_ah_params* %11, %struct.efa_com_create_ah_result* %13)
  store i32 %70, i32* %15, align 4
  %71 = load i32, i32* %15, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %52
  br label %120

74:                                               ; preds = %52
  %75 = load %struct.efa_ah*, %struct.efa_ah** %14, align 8
  %76 = getelementptr inbounds %struct.efa_ah, %struct.efa_ah* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %7, align 8
  %79 = getelementptr inbounds %struct.rdma_ah_attr, %struct.rdma_ah_attr* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @memcpy(i32 %77, i32 %82, i32 4)
  %84 = getelementptr inbounds %struct.efa_com_create_ah_result, %struct.efa_com_create_ah_result* %13, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.efa_ah*, %struct.efa_ah** %14, align 8
  %87 = getelementptr inbounds %struct.efa_ah, %struct.efa_ah* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 4
  %88 = getelementptr inbounds %struct.efa_com_create_ah_result, %struct.efa_com_create_ah_result* %13, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = getelementptr inbounds %struct.efa_ibv_create_ah_resp, %struct.efa_ibv_create_ah_resp* %12, i32 0, i32 0
  store i32 %89, i32* %90, align 4
  %91 = load %struct.ib_udata*, %struct.ib_udata** %9, align 8
  %92 = getelementptr inbounds %struct.ib_udata, %struct.ib_udata* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %109

95:                                               ; preds = %74
  %96 = load %struct.ib_udata*, %struct.ib_udata** %9, align 8
  %97 = load %struct.ib_udata*, %struct.ib_udata** %9, align 8
  %98 = getelementptr inbounds %struct.ib_udata, %struct.ib_udata* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = call i32 @min(i32 4, i64 %99)
  %101 = call i32 @ib_copy_to_udata(%struct.ib_udata* %96, %struct.efa_ibv_create_ah_resp* %12, i32 %100)
  store i32 %101, i32* %15, align 4
  %102 = load i32, i32* %15, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %108

104:                                              ; preds = %95
  %105 = load %struct.efa_dev*, %struct.efa_dev** %10, align 8
  %106 = getelementptr inbounds %struct.efa_dev, %struct.efa_dev* %105, i32 0, i32 1
  %107 = call i32 (i32*, i8*, ...) @ibdev_dbg(i32* %106, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0))
  br label %116

108:                                              ; preds = %95
  br label %109

109:                                              ; preds = %108, %74
  %110 = load %struct.efa_dev*, %struct.efa_dev** %10, align 8
  %111 = getelementptr inbounds %struct.efa_dev, %struct.efa_dev* %110, i32 0, i32 1
  %112 = load %struct.efa_ah*, %struct.efa_ah** %14, align 8
  %113 = getelementptr inbounds %struct.efa_ah, %struct.efa_ah* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = call i32 (i32*, i8*, ...) @ibdev_dbg(i32* %111, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %114)
  store i32 0, i32* %5, align 4
  br label %127

116:                                              ; preds = %104
  %117 = load %struct.efa_dev*, %struct.efa_dev** %10, align 8
  %118 = load %struct.efa_ah*, %struct.efa_ah** %14, align 8
  %119 = call i32 @efa_ah_destroy(%struct.efa_dev* %117, %struct.efa_ah* %118)
  br label %120

120:                                              ; preds = %116, %73, %46, %28
  %121 = load %struct.efa_dev*, %struct.efa_dev** %10, align 8
  %122 = getelementptr inbounds %struct.efa_dev, %struct.efa_dev* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 0
  %125 = call i32 @atomic64_inc(i32* %124)
  %126 = load i32, i32* %15, align 4
  store i32 %126, i32* %5, align 4
  br label %127

127:                                              ; preds = %120, %109
  %128 = load i32, i32* %5, align 4
  ret i32 %128
}

declare dso_local %struct.efa_dev* @to_edev(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local %struct.efa_ah* @to_eah(%struct.ib_ah*) #1

declare dso_local i32 @ibdev_dbg(i32*, i8*, ...) #1

declare dso_local i32 @ib_is_udata_cleared(%struct.ib_udata*, i32, i64) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local %struct.TYPE_10__* @to_epd(i32) #1

declare dso_local i32 @efa_com_create_ah(i32*, %struct.efa_com_create_ah_params*, %struct.efa_com_create_ah_result*) #1

declare dso_local i32 @ib_copy_to_udata(%struct.ib_udata*, %struct.efa_ibv_create_ah_resp*, i32) #1

declare dso_local i32 @min(i32, i64) #1

declare dso_local i32 @efa_ah_destroy(%struct.efa_dev*, %struct.efa_ah*) #1

declare dso_local i32 @atomic64_inc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
