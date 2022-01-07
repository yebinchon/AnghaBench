; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_uverbs_cmd.c_ib_uverbs_ex_query_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_uverbs_cmd.c_ib_uverbs_ex_query_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uverbs_attr_bundle = type { i32 }
%struct.ib_uverbs_ex_query_device_resp = type { i32, i32, %struct.TYPE_12__, %struct.TYPE_21__, i32, i32, %struct.TYPE_19__, i32, i32, i32, i32, %struct.TYPE_16__, i32 }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_21__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_19__ = type { i32, i32, i32 }
%struct.TYPE_16__ = type { %struct.TYPE_15__, i32 }
%struct.TYPE_15__ = type { i32, i32, i32 }
%struct.ib_uverbs_ex_query_device = type { i64, i64 }
%struct.ib_device_attr = type { i32, %struct.TYPE_13__, %struct.TYPE_22__, i32, i32, %struct.TYPE_20__, i32, i32, i32, %struct.TYPE_18__, i32 }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_22__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_20__ = type { i32, i32, i32 }
%struct.TYPE_18__ = type { %struct.TYPE_17__, i32 }
%struct.TYPE_17__ = type { i32, i32, i32, i32 }
%struct.ib_ucontext = type { %struct.ib_device* }
%struct.ib_device = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32 (%struct.ib_device*, %struct.ib_device_attr*, i32*)* }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uverbs_attr_bundle*)* @ib_uverbs_ex_query_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ib_uverbs_ex_query_device(%struct.uverbs_attr_bundle* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.uverbs_attr_bundle*, align 8
  %4 = alloca %struct.ib_uverbs_ex_query_device_resp, align 4
  %5 = alloca %struct.ib_uverbs_ex_query_device, align 8
  %6 = alloca %struct.ib_device_attr, align 4
  %7 = alloca %struct.ib_ucontext*, align 8
  %8 = alloca %struct.ib_device*, align 8
  %9 = alloca i32, align 4
  store %struct.uverbs_attr_bundle* %0, %struct.uverbs_attr_bundle** %3, align 8
  %10 = bitcast %struct.ib_uverbs_ex_query_device_resp* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %10, i8 0, i64 92, i1 false)
  %11 = bitcast %struct.ib_device_attr* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %11, i8 0, i64 88, i1 false)
  %12 = load %struct.uverbs_attr_bundle*, %struct.uverbs_attr_bundle** %3, align 8
  %13 = call %struct.ib_ucontext* @ib_uverbs_get_ucontext(%struct.uverbs_attr_bundle* %12)
  store %struct.ib_ucontext* %13, %struct.ib_ucontext** %7, align 8
  %14 = load %struct.ib_ucontext*, %struct.ib_ucontext** %7, align 8
  %15 = call i64 @IS_ERR(%struct.ib_ucontext* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load %struct.ib_ucontext*, %struct.ib_ucontext** %7, align 8
  %19 = call i32 @PTR_ERR(%struct.ib_ucontext* %18)
  store i32 %19, i32* %2, align 4
  br label %165

20:                                               ; preds = %1
  %21 = load %struct.ib_ucontext*, %struct.ib_ucontext** %7, align 8
  %22 = getelementptr inbounds %struct.ib_ucontext, %struct.ib_ucontext* %21, i32 0, i32 0
  %23 = load %struct.ib_device*, %struct.ib_device** %22, align 8
  store %struct.ib_device* %23, %struct.ib_device** %8, align 8
  %24 = load %struct.uverbs_attr_bundle*, %struct.uverbs_attr_bundle** %3, align 8
  %25 = call i32 @uverbs_request(%struct.uverbs_attr_bundle* %24, %struct.ib_uverbs_ex_query_device* %5, i32 16)
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %20
  %29 = load i32, i32* %9, align 4
  store i32 %29, i32* %2, align 4
  br label %165

30:                                               ; preds = %20
  %31 = getelementptr inbounds %struct.ib_uverbs_ex_query_device, %struct.ib_uverbs_ex_query_device* %5, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %165

37:                                               ; preds = %30
  %38 = getelementptr inbounds %struct.ib_uverbs_ex_query_device, %struct.ib_uverbs_ex_query_device* %5, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %2, align 4
  br label %165

44:                                               ; preds = %37
  %45 = load %struct.ib_device*, %struct.ib_device** %8, align 8
  %46 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 0
  %48 = load i32 (%struct.ib_device*, %struct.ib_device_attr*, i32*)*, i32 (%struct.ib_device*, %struct.ib_device_attr*, i32*)** %47, align 8
  %49 = load %struct.ib_device*, %struct.ib_device** %8, align 8
  %50 = load %struct.uverbs_attr_bundle*, %struct.uverbs_attr_bundle** %3, align 8
  %51 = getelementptr inbounds %struct.uverbs_attr_bundle, %struct.uverbs_attr_bundle* %50, i32 0, i32 0
  %52 = call i32 %48(%struct.ib_device* %49, %struct.ib_device_attr* %6, i32* %51)
  store i32 %52, i32* %9, align 4
  %53 = load i32, i32* %9, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %44
  %56 = load i32, i32* %9, align 4
  store i32 %56, i32* %2, align 4
  br label %165

57:                                               ; preds = %44
  %58 = load %struct.ib_ucontext*, %struct.ib_ucontext** %7, align 8
  %59 = getelementptr inbounds %struct.ib_uverbs_ex_query_device_resp, %struct.ib_uverbs_ex_query_device_resp* %4, i32 0, i32 12
  %60 = call i32 @copy_query_dev_fields(%struct.ib_ucontext* %58, i32* %59, %struct.ib_device_attr* %6)
  %61 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %6, i32 0, i32 9
  %62 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = getelementptr inbounds %struct.ib_uverbs_ex_query_device_resp, %struct.ib_uverbs_ex_query_device_resp* %4, i32 0, i32 11
  %65 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 4
  %66 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %6, i32 0, i32 9
  %67 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = getelementptr inbounds %struct.ib_uverbs_ex_query_device_resp, %struct.ib_uverbs_ex_query_device_resp* %4, i32 0, i32 11
  %71 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %71, i32 0, i32 2
  store i32 %69, i32* %72, align 4
  %73 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %6, i32 0, i32 9
  %74 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = getelementptr inbounds %struct.ib_uverbs_ex_query_device_resp, %struct.ib_uverbs_ex_query_device_resp* %4, i32 0, i32 11
  %78 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %78, i32 0, i32 1
  store i32 %76, i32* %79, align 4
  %80 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %6, i32 0, i32 9
  %81 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = getelementptr inbounds %struct.ib_uverbs_ex_query_device_resp, %struct.ib_uverbs_ex_query_device_resp* %4, i32 0, i32 11
  %85 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %85, i32 0, i32 0
  store i32 %83, i32* %86, align 4
  %87 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %6, i32 0, i32 9
  %88 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = getelementptr inbounds %struct.ib_uverbs_ex_query_device_resp, %struct.ib_uverbs_ex_query_device_resp* %4, i32 0, i32 10
  store i32 %90, i32* %91, align 4
  %92 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %6, i32 0, i32 8
  %93 = load i32, i32* %92, align 4
  %94 = getelementptr inbounds %struct.ib_uverbs_ex_query_device_resp, %struct.ib_uverbs_ex_query_device_resp* %4, i32 0, i32 9
  store i32 %93, i32* %94, align 4
  %95 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %6, i32 0, i32 7
  %96 = load i32, i32* %95, align 4
  %97 = getelementptr inbounds %struct.ib_uverbs_ex_query_device_resp, %struct.ib_uverbs_ex_query_device_resp* %4, i32 0, i32 8
  store i32 %96, i32* %97, align 4
  %98 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %6, i32 0, i32 6
  %99 = load i32, i32* %98, align 4
  %100 = getelementptr inbounds %struct.ib_uverbs_ex_query_device_resp, %struct.ib_uverbs_ex_query_device_resp* %4, i32 0, i32 7
  store i32 %99, i32* %100, align 4
  %101 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %6, i32 0, i32 5
  %102 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = getelementptr inbounds %struct.ib_uverbs_ex_query_device_resp, %struct.ib_uverbs_ex_query_device_resp* %4, i32 0, i32 6
  %105 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %104, i32 0, i32 2
  store i32 %103, i32* %105, align 4
  %106 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %6, i32 0, i32 5
  %107 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = getelementptr inbounds %struct.ib_uverbs_ex_query_device_resp, %struct.ib_uverbs_ex_query_device_resp* %4, i32 0, i32 6
  %110 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %109, i32 0, i32 1
  store i32 %108, i32* %110, align 4
  %111 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %6, i32 0, i32 5
  %112 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = getelementptr inbounds %struct.ib_uverbs_ex_query_device_resp, %struct.ib_uverbs_ex_query_device_resp* %4, i32 0, i32 6
  %115 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %114, i32 0, i32 0
  store i32 %113, i32* %115, align 4
  %116 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %6, i32 0, i32 4
  %117 = load i32, i32* %116, align 4
  %118 = getelementptr inbounds %struct.ib_uverbs_ex_query_device_resp, %struct.ib_uverbs_ex_query_device_resp* %4, i32 0, i32 5
  store i32 %117, i32* %118, align 4
  %119 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %6, i32 0, i32 3
  %120 = load i32, i32* %119, align 4
  %121 = getelementptr inbounds %struct.ib_uverbs_ex_query_device_resp, %struct.ib_uverbs_ex_query_device_resp* %4, i32 0, i32 4
  store i32 %120, i32* %121, align 4
  %122 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %6, i32 0, i32 2
  %123 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %122, i32 0, i32 4
  %124 = load i32, i32* %123, align 4
  %125 = getelementptr inbounds %struct.ib_uverbs_ex_query_device_resp, %struct.ib_uverbs_ex_query_device_resp* %4, i32 0, i32 3
  %126 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %125, i32 0, i32 4
  store i32 %124, i32* %126, align 4
  %127 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %6, i32 0, i32 2
  %128 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %127, i32 0, i32 3
  %129 = load i32, i32* %128, align 4
  %130 = getelementptr inbounds %struct.ib_uverbs_ex_query_device_resp, %struct.ib_uverbs_ex_query_device_resp* %4, i32 0, i32 3
  %131 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %130, i32 0, i32 3
  store i32 %129, i32* %131, align 4
  %132 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %6, i32 0, i32 2
  %133 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 4
  %135 = getelementptr inbounds %struct.ib_uverbs_ex_query_device_resp, %struct.ib_uverbs_ex_query_device_resp* %4, i32 0, i32 3
  %136 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %135, i32 0, i32 2
  store i32 %134, i32* %136, align 4
  %137 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %6, i32 0, i32 2
  %138 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = getelementptr inbounds %struct.ib_uverbs_ex_query_device_resp, %struct.ib_uverbs_ex_query_device_resp* %4, i32 0, i32 3
  %141 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %140, i32 0, i32 1
  store i32 %139, i32* %141, align 4
  %142 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %6, i32 0, i32 2
  %143 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = getelementptr inbounds %struct.ib_uverbs_ex_query_device_resp, %struct.ib_uverbs_ex_query_device_resp* %4, i32 0, i32 3
  %146 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %145, i32 0, i32 0
  store i32 %144, i32* %146, align 4
  %147 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %6, i32 0, i32 1
  %148 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = getelementptr inbounds %struct.ib_uverbs_ex_query_device_resp, %struct.ib_uverbs_ex_query_device_resp* %4, i32 0, i32 2
  %151 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %150, i32 0, i32 1
  store i32 %149, i32* %151, align 4
  %152 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %6, i32 0, i32 1
  %153 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = getelementptr inbounds %struct.ib_uverbs_ex_query_device_resp, %struct.ib_uverbs_ex_query_device_resp* %4, i32 0, i32 2
  %156 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %155, i32 0, i32 0
  store i32 %154, i32* %156, align 4
  %157 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %6, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = getelementptr inbounds %struct.ib_uverbs_ex_query_device_resp, %struct.ib_uverbs_ex_query_device_resp* %4, i32 0, i32 1
  store i32 %158, i32* %159, align 4
  %160 = load %struct.uverbs_attr_bundle*, %struct.uverbs_attr_bundle** %3, align 8
  %161 = call i32 @uverbs_response_length(%struct.uverbs_attr_bundle* %160, i32 92)
  %162 = getelementptr inbounds %struct.ib_uverbs_ex_query_device_resp, %struct.ib_uverbs_ex_query_device_resp* %4, i32 0, i32 0
  store i32 %161, i32* %162, align 4
  %163 = load %struct.uverbs_attr_bundle*, %struct.uverbs_attr_bundle** %3, align 8
  %164 = call i32 @uverbs_response(%struct.uverbs_attr_bundle* %163, %struct.ib_uverbs_ex_query_device_resp* %4, i32 92)
  store i32 %164, i32* %2, align 4
  br label %165

165:                                              ; preds = %57, %55, %41, %34, %28, %17
  %166 = load i32, i32* %2, align 4
  ret i32 %166
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.ib_ucontext* @ib_uverbs_get_ucontext(%struct.uverbs_attr_bundle*) #2

declare dso_local i64 @IS_ERR(%struct.ib_ucontext*) #2

declare dso_local i32 @PTR_ERR(%struct.ib_ucontext*) #2

declare dso_local i32 @uverbs_request(%struct.uverbs_attr_bundle*, %struct.ib_uverbs_ex_query_device*, i32) #2

declare dso_local i32 @copy_query_dev_fields(%struct.ib_ucontext*, i32*, %struct.ib_device_attr*) #2

declare dso_local i32 @uverbs_response_length(%struct.uverbs_attr_bundle*, i32) #2

declare dso_local i32 @uverbs_response(%struct.uverbs_attr_bundle*, %struct.ib_uverbs_ex_query_device_resp*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
