; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/efa/extr_efa_verbs.c_efa_query_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/efa/extr_efa_verbs.c_efa_query_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%struct.ib_device_attr = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ib_udata = type { i64, i64 }
%struct.efa_com_get_device_attr_result = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.efa_ibv_ex_query_device_resp = type { i32, i32, i32, i32 }
%struct.efa_dev = type { %struct.TYPE_2__*, %struct.efa_com_get_device_attr_result }
%struct.TYPE_2__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [44 x i8] c"Incompatible ABI params, udata not cleared\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@u32 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"Failed to copy udata for query_device\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @efa_query_device(%struct.ib_device* %0, %struct.ib_device_attr* %1, %struct.ib_udata* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ib_device*, align 8
  %6 = alloca %struct.ib_device_attr*, align 8
  %7 = alloca %struct.ib_udata*, align 8
  %8 = alloca %struct.efa_com_get_device_attr_result*, align 8
  %9 = alloca %struct.efa_ibv_ex_query_device_resp, align 4
  %10 = alloca %struct.efa_dev*, align 8
  %11 = alloca i32, align 4
  store %struct.ib_device* %0, %struct.ib_device** %5, align 8
  store %struct.ib_device_attr* %1, %struct.ib_device_attr** %6, align 8
  store %struct.ib_udata* %2, %struct.ib_udata** %7, align 8
  %12 = bitcast %struct.efa_ibv_ex_query_device_resp* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %12, i8 0, i64 16, i1 false)
  %13 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %14 = call %struct.efa_dev* @to_edev(%struct.ib_device* %13)
  store %struct.efa_dev* %14, %struct.efa_dev** %10, align 8
  %15 = load %struct.ib_udata*, %struct.ib_udata** %7, align 8
  %16 = icmp ne %struct.ib_udata* %15, null
  br i1 %16, label %17, label %34

17:                                               ; preds = %3
  %18 = load %struct.ib_udata*, %struct.ib_udata** %7, align 8
  %19 = getelementptr inbounds %struct.ib_udata, %struct.ib_udata* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %34

22:                                               ; preds = %17
  %23 = load %struct.ib_udata*, %struct.ib_udata** %7, align 8
  %24 = load %struct.ib_udata*, %struct.ib_udata** %7, align 8
  %25 = getelementptr inbounds %struct.ib_udata, %struct.ib_udata* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @ib_is_udata_cleared(%struct.ib_udata* %23, i32 0, i64 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %22
  %30 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %31 = call i32 @ibdev_dbg(%struct.ib_device* %30, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %160

34:                                               ; preds = %22, %17, %3
  %35 = load %struct.efa_dev*, %struct.efa_dev** %10, align 8
  %36 = getelementptr inbounds %struct.efa_dev, %struct.efa_dev* %35, i32 0, i32 1
  store %struct.efa_com_get_device_attr_result* %36, %struct.efa_com_get_device_attr_result** %8, align 8
  %37 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %38 = call i32 @memset(%struct.ib_device_attr* %37, i32 0, i32 56)
  %39 = load %struct.efa_com_get_device_attr_result*, %struct.efa_com_get_device_attr_result** %8, align 8
  %40 = getelementptr inbounds %struct.efa_com_get_device_attr_result, %struct.efa_com_get_device_attr_result* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @PAGE_SIZE, align 4
  %43 = mul nsw i32 %41, %42
  %44 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %45 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 4
  %46 = load %struct.efa_com_get_device_attr_result*, %struct.efa_com_get_device_attr_result** %8, align 8
  %47 = getelementptr inbounds %struct.efa_com_get_device_attr_result, %struct.efa_com_get_device_attr_result* %46, i32 0, i32 11
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %50 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %49, i32 0, i32 13
  store i32 %48, i32* %50, align 4
  %51 = load %struct.efa_dev*, %struct.efa_dev** %10, align 8
  %52 = getelementptr inbounds %struct.efa_dev, %struct.efa_dev* %51, i32 0, i32 0
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %57 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %56, i32 0, i32 12
  store i32 %55, i32* %57, align 4
  %58 = load %struct.efa_dev*, %struct.efa_dev** %10, align 8
  %59 = getelementptr inbounds %struct.efa_dev, %struct.efa_dev* %58, i32 0, i32 0
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %64 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %63, i32 0, i32 11
  store i32 %62, i32* %64, align 4
  %65 = load %struct.efa_dev*, %struct.efa_dev** %10, align 8
  %66 = getelementptr inbounds %struct.efa_dev, %struct.efa_dev* %65, i32 0, i32 0
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %71 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %70, i32 0, i32 10
  store i32 %69, i32* %71, align 4
  %72 = load %struct.efa_com_get_device_attr_result*, %struct.efa_com_get_device_attr_result** %8, align 8
  %73 = getelementptr inbounds %struct.efa_com_get_device_attr_result, %struct.efa_com_get_device_attr_result* %72, i32 0, i32 10
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %76 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %75, i32 0, i32 9
  store i32 %74, i32* %76, align 4
  %77 = load %struct.efa_com_get_device_attr_result*, %struct.efa_com_get_device_attr_result** %8, align 8
  %78 = getelementptr inbounds %struct.efa_com_get_device_attr_result, %struct.efa_com_get_device_attr_result* %77, i32 0, i32 9
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %81 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %80, i32 0, i32 8
  store i32 %79, i32* %81, align 4
  %82 = load %struct.efa_com_get_device_attr_result*, %struct.efa_com_get_device_attr_result** %8, align 8
  %83 = getelementptr inbounds %struct.efa_com_get_device_attr_result, %struct.efa_com_get_device_attr_result* %82, i32 0, i32 8
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %86 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %85, i32 0, i32 7
  store i32 %84, i32* %86, align 4
  %87 = load %struct.efa_com_get_device_attr_result*, %struct.efa_com_get_device_attr_result** %8, align 8
  %88 = getelementptr inbounds %struct.efa_com_get_device_attr_result, %struct.efa_com_get_device_attr_result* %87, i32 0, i32 7
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %91 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %90, i32 0, i32 6
  store i32 %89, i32* %91, align 4
  %92 = load %struct.efa_com_get_device_attr_result*, %struct.efa_com_get_device_attr_result** %8, align 8
  %93 = getelementptr inbounds %struct.efa_com_get_device_attr_result, %struct.efa_com_get_device_attr_result* %92, i32 0, i32 6
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %96 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %95, i32 0, i32 5
  store i32 %94, i32* %96, align 4
  %97 = load %struct.efa_com_get_device_attr_result*, %struct.efa_com_get_device_attr_result** %8, align 8
  %98 = getelementptr inbounds %struct.efa_com_get_device_attr_result, %struct.efa_com_get_device_attr_result* %97, i32 0, i32 5
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %101 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %100, i32 0, i32 4
  store i32 %99, i32* %101, align 4
  %102 = load i32, i32* @u32, align 4
  %103 = load %struct.efa_com_get_device_attr_result*, %struct.efa_com_get_device_attr_result** %8, align 8
  %104 = getelementptr inbounds %struct.efa_com_get_device_attr_result, %struct.efa_com_get_device_attr_result* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.efa_com_get_device_attr_result*, %struct.efa_com_get_device_attr_result** %8, align 8
  %107 = getelementptr inbounds %struct.efa_com_get_device_attr_result, %struct.efa_com_get_device_attr_result* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @min_t(i32 %102, i32 %105, i32 %108)
  %110 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %111 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %110, i32 0, i32 3
  store i32 %109, i32* %111, align 4
  %112 = load %struct.efa_com_get_device_attr_result*, %struct.efa_com_get_device_attr_result** %8, align 8
  %113 = getelementptr inbounds %struct.efa_com_get_device_attr_result, %struct.efa_com_get_device_attr_result* %112, i32 0, i32 4
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %116 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %115, i32 0, i32 2
  store i32 %114, i32* %116, align 4
  %117 = load %struct.efa_com_get_device_attr_result*, %struct.efa_com_get_device_attr_result** %8, align 8
  %118 = getelementptr inbounds %struct.efa_com_get_device_attr_result, %struct.efa_com_get_device_attr_result* %117, i32 0, i32 3
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %121 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %120, i32 0, i32 1
  store i32 %119, i32* %121, align 4
  %122 = load %struct.ib_udata*, %struct.ib_udata** %7, align 8
  %123 = icmp ne %struct.ib_udata* %122, null
  br i1 %123, label %124, label %159

124:                                              ; preds = %34
  %125 = load %struct.ib_udata*, %struct.ib_udata** %7, align 8
  %126 = getelementptr inbounds %struct.ib_udata, %struct.ib_udata* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %159

129:                                              ; preds = %124
  %130 = load %struct.efa_com_get_device_attr_result*, %struct.efa_com_get_device_attr_result** %8, align 8
  %131 = getelementptr inbounds %struct.efa_com_get_device_attr_result, %struct.efa_com_get_device_attr_result* %130, i32 0, i32 4
  %132 = load i32, i32* %131, align 4
  %133 = getelementptr inbounds %struct.efa_ibv_ex_query_device_resp, %struct.efa_ibv_ex_query_device_resp* %9, i32 0, i32 3
  store i32 %132, i32* %133, align 4
  %134 = load %struct.efa_com_get_device_attr_result*, %struct.efa_com_get_device_attr_result** %8, align 8
  %135 = getelementptr inbounds %struct.efa_com_get_device_attr_result, %struct.efa_com_get_device_attr_result* %134, i32 0, i32 3
  %136 = load i32, i32* %135, align 4
  %137 = getelementptr inbounds %struct.efa_ibv_ex_query_device_resp, %struct.efa_ibv_ex_query_device_resp* %9, i32 0, i32 2
  store i32 %136, i32* %137, align 4
  %138 = load %struct.efa_com_get_device_attr_result*, %struct.efa_com_get_device_attr_result** %8, align 8
  %139 = getelementptr inbounds %struct.efa_com_get_device_attr_result, %struct.efa_com_get_device_attr_result* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 4
  %141 = getelementptr inbounds %struct.efa_ibv_ex_query_device_resp, %struct.efa_ibv_ex_query_device_resp* %9, i32 0, i32 1
  store i32 %140, i32* %141, align 4
  %142 = load %struct.efa_com_get_device_attr_result*, %struct.efa_com_get_device_attr_result** %8, align 8
  %143 = getelementptr inbounds %struct.efa_com_get_device_attr_result, %struct.efa_com_get_device_attr_result* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = getelementptr inbounds %struct.efa_ibv_ex_query_device_resp, %struct.efa_ibv_ex_query_device_resp* %9, i32 0, i32 0
  store i32 %144, i32* %145, align 4
  %146 = load %struct.ib_udata*, %struct.ib_udata** %7, align 8
  %147 = load %struct.ib_udata*, %struct.ib_udata** %7, align 8
  %148 = getelementptr inbounds %struct.ib_udata, %struct.ib_udata* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = call i32 @min(i32 16, i64 %149)
  %151 = call i32 @ib_copy_to_udata(%struct.ib_udata* %146, %struct.efa_ibv_ex_query_device_resp* %9, i32 %150)
  store i32 %151, i32* %11, align 4
  %152 = load i32, i32* %11, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %158

154:                                              ; preds = %129
  %155 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %156 = call i32 @ibdev_dbg(%struct.ib_device* %155, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %157 = load i32, i32* %11, align 4
  store i32 %157, i32* %4, align 4
  br label %160

158:                                              ; preds = %129
  br label %159

159:                                              ; preds = %158, %124, %34
  store i32 0, i32* %4, align 4
  br label %160

160:                                              ; preds = %159, %154, %29
  %161 = load i32, i32* %4, align 4
  ret i32 %161
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.efa_dev* @to_edev(%struct.ib_device*) #2

declare dso_local i32 @ib_is_udata_cleared(%struct.ib_udata*, i32, i64) #2

declare dso_local i32 @ibdev_dbg(%struct.ib_device*, i8*) #2

declare dso_local i32 @memset(%struct.ib_device_attr*, i32, i32) #2

declare dso_local i32 @min_t(i32, i32, i32) #2

declare dso_local i32 @ib_copy_to_udata(%struct.ib_udata*, %struct.efa_ibv_ex_query_device_resp*, i32) #2

declare dso_local i32 @min(i32, i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
