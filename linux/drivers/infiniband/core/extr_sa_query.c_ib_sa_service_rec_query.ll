; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_sa_query.c_ib_sa_service_rec_query.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_sa_query.c_ib_sa_service_rec_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_sa_client = type { i32 }
%struct.ib_device = type { i32 }
%struct.ib_sa_service_rec = type { i32 }
%struct.ib_sa_query = type { %struct.ib_sa_client*, i32, i32*, %struct.TYPE_4__*, %struct.ib_sa_port* }
%struct.TYPE_4__ = type { %struct.ib_sa_mad* }
%struct.ib_sa_mad = type { i32, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i64, i32 }
%struct.ib_sa_port = type { %struct.ib_mad_agent* }
%struct.ib_mad_agent = type { i32 }
%struct.ib_sa_service_query = type { void (i32, %struct.ib_sa_service_rec*, i8*)*, %struct.ib_sa_query, i8* }
%struct.ib_sa_device = type { i64, %struct.ib_sa_port* }

@sa_client = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@IB_MGMT_METHOD_GET = common dso_local global i64 0, align 8
@IB_MGMT_METHOD_SET = common dso_local global i64 0, align 8
@IB_SA_METHOD_DELETE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ib_sa_service_rec_callback = common dso_local global i32* null, align 8
@ib_sa_service_rec_release = common dso_local global i32 0, align 4
@IB_SA_ATTR_SERVICE_REC = common dso_local global i32 0, align 4
@service_rec_table = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ib_sa_service_rec_query(%struct.ib_sa_client* %0, %struct.ib_device* %1, i64 %2, i64 %3, %struct.ib_sa_service_rec* %4, i32 %5, i64 %6, i32 %7, void (i32, %struct.ib_sa_service_rec*, i8*)* %8, i8* %9, %struct.ib_sa_query** %10) #0 {
  %12 = alloca i32, align 4
  %13 = alloca %struct.ib_sa_client*, align 8
  %14 = alloca %struct.ib_device*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.ib_sa_service_rec*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca void (i32, %struct.ib_sa_service_rec*, i8*)*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca %struct.ib_sa_query**, align 8
  %24 = alloca %struct.ib_sa_service_query*, align 8
  %25 = alloca %struct.ib_sa_device*, align 8
  %26 = alloca %struct.ib_sa_port*, align 8
  %27 = alloca %struct.ib_mad_agent*, align 8
  %28 = alloca %struct.ib_sa_mad*, align 8
  %29 = alloca i32, align 4
  store %struct.ib_sa_client* %0, %struct.ib_sa_client** %13, align 8
  store %struct.ib_device* %1, %struct.ib_device** %14, align 8
  store i64 %2, i64* %15, align 8
  store i64 %3, i64* %16, align 8
  store %struct.ib_sa_service_rec* %4, %struct.ib_sa_service_rec** %17, align 8
  store i32 %5, i32* %18, align 4
  store i64 %6, i64* %19, align 8
  store i32 %7, i32* %20, align 4
  store void (i32, %struct.ib_sa_service_rec*, i8*)* %8, void (i32, %struct.ib_sa_service_rec*, i8*)** %21, align 8
  store i8* %9, i8** %22, align 8
  store %struct.ib_sa_query** %10, %struct.ib_sa_query*** %23, align 8
  %30 = load %struct.ib_device*, %struct.ib_device** %14, align 8
  %31 = call %struct.ib_sa_device* @ib_get_client_data(%struct.ib_device* %30, i32* @sa_client)
  store %struct.ib_sa_device* %31, %struct.ib_sa_device** %25, align 8
  %32 = load %struct.ib_sa_device*, %struct.ib_sa_device** %25, align 8
  %33 = icmp ne %struct.ib_sa_device* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %11
  %35 = load i32, i32* @ENODEV, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %12, align 4
  br label %169

37:                                               ; preds = %11
  %38 = load %struct.ib_sa_device*, %struct.ib_sa_device** %25, align 8
  %39 = getelementptr inbounds %struct.ib_sa_device, %struct.ib_sa_device* %38, i32 0, i32 1
  %40 = load %struct.ib_sa_port*, %struct.ib_sa_port** %39, align 8
  %41 = load i64, i64* %15, align 8
  %42 = load %struct.ib_sa_device*, %struct.ib_sa_device** %25, align 8
  %43 = getelementptr inbounds %struct.ib_sa_device, %struct.ib_sa_device* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = sub i64 %41, %44
  %46 = getelementptr inbounds %struct.ib_sa_port, %struct.ib_sa_port* %40, i64 %45
  store %struct.ib_sa_port* %46, %struct.ib_sa_port** %26, align 8
  %47 = load %struct.ib_sa_port*, %struct.ib_sa_port** %26, align 8
  %48 = getelementptr inbounds %struct.ib_sa_port, %struct.ib_sa_port* %47, i32 0, i32 0
  %49 = load %struct.ib_mad_agent*, %struct.ib_mad_agent** %48, align 8
  store %struct.ib_mad_agent* %49, %struct.ib_mad_agent** %27, align 8
  %50 = load i64, i64* %16, align 8
  %51 = load i64, i64* @IB_MGMT_METHOD_GET, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %64

53:                                               ; preds = %37
  %54 = load i64, i64* %16, align 8
  %55 = load i64, i64* @IB_MGMT_METHOD_SET, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %64

57:                                               ; preds = %53
  %58 = load i64, i64* %16, align 8
  %59 = load i64, i64* @IB_SA_METHOD_DELETE, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %57
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %12, align 4
  br label %169

64:                                               ; preds = %57, %53, %37
  %65 = load i32, i32* %20, align 4
  %66 = call %struct.ib_sa_service_query* @kzalloc(i32 56, i32 %65)
  store %struct.ib_sa_service_query* %66, %struct.ib_sa_service_query** %24, align 8
  %67 = load %struct.ib_sa_service_query*, %struct.ib_sa_service_query** %24, align 8
  %68 = icmp ne %struct.ib_sa_service_query* %67, null
  br i1 %68, label %72, label %69

69:                                               ; preds = %64
  %70 = load i32, i32* @ENOMEM, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %12, align 4
  br label %169

72:                                               ; preds = %64
  %73 = load %struct.ib_sa_port*, %struct.ib_sa_port** %26, align 8
  %74 = load %struct.ib_sa_service_query*, %struct.ib_sa_service_query** %24, align 8
  %75 = getelementptr inbounds %struct.ib_sa_service_query, %struct.ib_sa_service_query* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.ib_sa_query, %struct.ib_sa_query* %75, i32 0, i32 4
  store %struct.ib_sa_port* %73, %struct.ib_sa_port** %76, align 8
  %77 = load %struct.ib_sa_service_query*, %struct.ib_sa_service_query** %24, align 8
  %78 = getelementptr inbounds %struct.ib_sa_service_query, %struct.ib_sa_service_query* %77, i32 0, i32 1
  %79 = load i32, i32* %20, align 4
  %80 = call i32 @alloc_mad(%struct.ib_sa_query* %78, i32 %79)
  store i32 %80, i32* %29, align 4
  %81 = load i32, i32* %29, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %72
  br label %165

84:                                               ; preds = %72
  %85 = load %struct.ib_sa_client*, %struct.ib_sa_client** %13, align 8
  %86 = call i32 @ib_sa_client_get(%struct.ib_sa_client* %85)
  %87 = load %struct.ib_sa_client*, %struct.ib_sa_client** %13, align 8
  %88 = load %struct.ib_sa_service_query*, %struct.ib_sa_service_query** %24, align 8
  %89 = getelementptr inbounds %struct.ib_sa_service_query, %struct.ib_sa_service_query* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.ib_sa_query, %struct.ib_sa_query* %89, i32 0, i32 0
  store %struct.ib_sa_client* %87, %struct.ib_sa_client** %90, align 8
  %91 = load void (i32, %struct.ib_sa_service_rec*, i8*)*, void (i32, %struct.ib_sa_service_rec*, i8*)** %21, align 8
  %92 = load %struct.ib_sa_service_query*, %struct.ib_sa_service_query** %24, align 8
  %93 = getelementptr inbounds %struct.ib_sa_service_query, %struct.ib_sa_service_query* %92, i32 0, i32 0
  store void (i32, %struct.ib_sa_service_rec*, i8*)* %91, void (i32, %struct.ib_sa_service_rec*, i8*)** %93, align 8
  %94 = load i8*, i8** %22, align 8
  %95 = load %struct.ib_sa_service_query*, %struct.ib_sa_service_query** %24, align 8
  %96 = getelementptr inbounds %struct.ib_sa_service_query, %struct.ib_sa_service_query* %95, i32 0, i32 2
  store i8* %94, i8** %96, align 8
  %97 = load %struct.ib_sa_service_query*, %struct.ib_sa_service_query** %24, align 8
  %98 = getelementptr inbounds %struct.ib_sa_service_query, %struct.ib_sa_service_query* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.ib_sa_query, %struct.ib_sa_query* %98, i32 0, i32 3
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  %102 = load %struct.ib_sa_mad*, %struct.ib_sa_mad** %101, align 8
  store %struct.ib_sa_mad* %102, %struct.ib_sa_mad** %28, align 8
  %103 = load %struct.ib_sa_service_query*, %struct.ib_sa_service_query** %24, align 8
  %104 = getelementptr inbounds %struct.ib_sa_service_query, %struct.ib_sa_service_query* %103, i32 0, i32 1
  %105 = load %struct.ib_mad_agent*, %struct.ib_mad_agent** %27, align 8
  %106 = call i32 @init_mad(%struct.ib_sa_query* %104, %struct.ib_mad_agent* %105)
  %107 = load void (i32, %struct.ib_sa_service_rec*, i8*)*, void (i32, %struct.ib_sa_service_rec*, i8*)** %21, align 8
  %108 = icmp ne void (i32, %struct.ib_sa_service_rec*, i8*)* %107, null
  br i1 %108, label %109, label %111

109:                                              ; preds = %84
  %110 = load i32*, i32** @ib_sa_service_rec_callback, align 8
  br label %112

111:                                              ; preds = %84
  br label %112

112:                                              ; preds = %111, %109
  %113 = phi i32* [ %110, %109 ], [ null, %111 ]
  %114 = load %struct.ib_sa_service_query*, %struct.ib_sa_service_query** %24, align 8
  %115 = getelementptr inbounds %struct.ib_sa_service_query, %struct.ib_sa_service_query* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.ib_sa_query, %struct.ib_sa_query* %115, i32 0, i32 2
  store i32* %113, i32** %116, align 8
  %117 = load i32, i32* @ib_sa_service_rec_release, align 4
  %118 = load %struct.ib_sa_service_query*, %struct.ib_sa_service_query** %24, align 8
  %119 = getelementptr inbounds %struct.ib_sa_service_query, %struct.ib_sa_service_query* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.ib_sa_query, %struct.ib_sa_query* %119, i32 0, i32 1
  store i32 %117, i32* %120, align 8
  %121 = load i64, i64* %16, align 8
  %122 = load %struct.ib_sa_mad*, %struct.ib_sa_mad** %28, align 8
  %123 = getelementptr inbounds %struct.ib_sa_mad, %struct.ib_sa_mad* %122, i32 0, i32 2
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 0
  store i64 %121, i64* %124, align 8
  %125 = load i32, i32* @IB_SA_ATTR_SERVICE_REC, align 4
  %126 = call i32 @cpu_to_be16(i32 %125)
  %127 = load %struct.ib_sa_mad*, %struct.ib_sa_mad** %28, align 8
  %128 = getelementptr inbounds %struct.ib_sa_mad, %struct.ib_sa_mad* %127, i32 0, i32 2
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 1
  store i32 %126, i32* %129, align 8
  %130 = load i32, i32* %18, align 4
  %131 = load %struct.ib_sa_mad*, %struct.ib_sa_mad** %28, align 8
  %132 = getelementptr inbounds %struct.ib_sa_mad, %struct.ib_sa_mad* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 0
  store i32 %130, i32* %133, align 4
  %134 = load i32, i32* @service_rec_table, align 4
  %135 = load i32, i32* @service_rec_table, align 4
  %136 = call i32 @ARRAY_SIZE(i32 %135)
  %137 = load %struct.ib_sa_service_rec*, %struct.ib_sa_service_rec** %17, align 8
  %138 = load %struct.ib_sa_mad*, %struct.ib_sa_mad** %28, align 8
  %139 = getelementptr inbounds %struct.ib_sa_mad, %struct.ib_sa_mad* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = call i32 @ib_pack(i32 %134, i32 %136, %struct.ib_sa_service_rec* %137, i32 %140)
  %142 = load %struct.ib_sa_service_query*, %struct.ib_sa_service_query** %24, align 8
  %143 = getelementptr inbounds %struct.ib_sa_service_query, %struct.ib_sa_service_query* %142, i32 0, i32 1
  %144 = load %struct.ib_sa_query**, %struct.ib_sa_query*** %23, align 8
  store %struct.ib_sa_query* %143, %struct.ib_sa_query** %144, align 8
  %145 = load %struct.ib_sa_service_query*, %struct.ib_sa_service_query** %24, align 8
  %146 = getelementptr inbounds %struct.ib_sa_service_query, %struct.ib_sa_service_query* %145, i32 0, i32 1
  %147 = load i64, i64* %19, align 8
  %148 = load i32, i32* %20, align 4
  %149 = call i32 @send_mad(%struct.ib_sa_query* %146, i64 %147, i32 %148)
  store i32 %149, i32* %29, align 4
  %150 = load i32, i32* %29, align 4
  %151 = icmp slt i32 %150, 0
  br i1 %151, label %152, label %153

152:                                              ; preds = %112
  br label %155

153:                                              ; preds = %112
  %154 = load i32, i32* %29, align 4
  store i32 %154, i32* %12, align 4
  br label %169

155:                                              ; preds = %152
  %156 = load %struct.ib_sa_query**, %struct.ib_sa_query*** %23, align 8
  store %struct.ib_sa_query* null, %struct.ib_sa_query** %156, align 8
  %157 = load %struct.ib_sa_service_query*, %struct.ib_sa_service_query** %24, align 8
  %158 = getelementptr inbounds %struct.ib_sa_service_query, %struct.ib_sa_service_query* %157, i32 0, i32 1
  %159 = getelementptr inbounds %struct.ib_sa_query, %struct.ib_sa_query* %158, i32 0, i32 0
  %160 = load %struct.ib_sa_client*, %struct.ib_sa_client** %159, align 8
  %161 = call i32 @ib_sa_client_put(%struct.ib_sa_client* %160)
  %162 = load %struct.ib_sa_service_query*, %struct.ib_sa_service_query** %24, align 8
  %163 = getelementptr inbounds %struct.ib_sa_service_query, %struct.ib_sa_service_query* %162, i32 0, i32 1
  %164 = call i32 @free_mad(%struct.ib_sa_query* %163)
  br label %165

165:                                              ; preds = %155, %83
  %166 = load %struct.ib_sa_service_query*, %struct.ib_sa_service_query** %24, align 8
  %167 = call i32 @kfree(%struct.ib_sa_service_query* %166)
  %168 = load i32, i32* %29, align 4
  store i32 %168, i32* %12, align 4
  br label %169

169:                                              ; preds = %165, %153, %69, %61, %34
  %170 = load i32, i32* %12, align 4
  ret i32 %170
}

declare dso_local %struct.ib_sa_device* @ib_get_client_data(%struct.ib_device*, i32*) #1

declare dso_local %struct.ib_sa_service_query* @kzalloc(i32, i32) #1

declare dso_local i32 @alloc_mad(%struct.ib_sa_query*, i32) #1

declare dso_local i32 @ib_sa_client_get(%struct.ib_sa_client*) #1

declare dso_local i32 @init_mad(%struct.ib_sa_query*, %struct.ib_mad_agent*) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @ib_pack(i32, i32, %struct.ib_sa_service_rec*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @send_mad(%struct.ib_sa_query*, i64, i32) #1

declare dso_local i32 @ib_sa_client_put(%struct.ib_sa_client*) #1

declare dso_local i32 @free_mad(%struct.ib_sa_query*) #1

declare dso_local i32 @kfree(%struct.ib_sa_service_query*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
