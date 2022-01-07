; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_sa_query.c_ib_sa_classport_info_rec_query.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_sa_query.c_ib_sa_classport_info_rec_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_sa_port = type { i32, %struct.ib_mad_agent* }
%struct.ib_mad_agent = type { i32 }
%struct.ib_sa_query = type { i32, i32, %struct.TYPE_4__*, i32, %struct.ib_sa_port* }
%struct.TYPE_4__ = type { %struct.ib_sa_mad* }
%struct.ib_sa_mad = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.ib_sa_classport_info_query = type { void (i8*)*, %struct.ib_sa_query, i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IB_SA_QUERY_OPA = common dso_local global i32 0, align 4
@ib_sa_classport_info_rec_callback = common dso_local global i32 0, align 4
@ib_sa_classport_info_rec_release = common dso_local global i32 0, align 4
@IB_MGMT_METHOD_GET = common dso_local global i32 0, align 4
@IB_SA_ATTR_CLASS_PORTINFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_sa_port*, i64, void (i8*)*, i8*, %struct.ib_sa_query**)* @ib_sa_classport_info_rec_query to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ib_sa_classport_info_rec_query(%struct.ib_sa_port* %0, i64 %1, void (i8*)* %2, i8* %3, %struct.ib_sa_query** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ib_sa_port*, align 8
  %8 = alloca i64, align 8
  %9 = alloca void (i8*)*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.ib_sa_query**, align 8
  %12 = alloca %struct.ib_mad_agent*, align 8
  %13 = alloca %struct.ib_sa_classport_info_query*, align 8
  %14 = alloca %struct.ib_sa_mad*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.ib_sa_port* %0, %struct.ib_sa_port** %7, align 8
  store i64 %1, i64* %8, align 8
  store void (i8*)* %2, void (i8*)** %9, align 8
  store i8* %3, i8** %10, align 8
  store %struct.ib_sa_query** %4, %struct.ib_sa_query*** %11, align 8
  %17 = load i32, i32* @GFP_KERNEL, align 4
  store i32 %17, i32* %15, align 4
  %18 = load %struct.ib_sa_port*, %struct.ib_sa_port** %7, align 8
  %19 = getelementptr inbounds %struct.ib_sa_port, %struct.ib_sa_port* %18, i32 0, i32 1
  %20 = load %struct.ib_mad_agent*, %struct.ib_mad_agent** %19, align 8
  store %struct.ib_mad_agent* %20, %struct.ib_mad_agent** %12, align 8
  %21 = load i32, i32* %15, align 4
  %22 = call %struct.ib_sa_classport_info_query* @kzalloc(i32 48, i32 %21)
  store %struct.ib_sa_classport_info_query* %22, %struct.ib_sa_classport_info_query** %13, align 8
  %23 = load %struct.ib_sa_classport_info_query*, %struct.ib_sa_classport_info_query** %13, align 8
  %24 = icmp ne %struct.ib_sa_classport_info_query* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %5
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %6, align 4
  br label %119

28:                                               ; preds = %5
  %29 = load %struct.ib_sa_port*, %struct.ib_sa_port** %7, align 8
  %30 = load %struct.ib_sa_classport_info_query*, %struct.ib_sa_classport_info_query** %13, align 8
  %31 = getelementptr inbounds %struct.ib_sa_classport_info_query, %struct.ib_sa_classport_info_query* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.ib_sa_query, %struct.ib_sa_query* %31, i32 0, i32 4
  store %struct.ib_sa_port* %29, %struct.ib_sa_port** %32, align 8
  %33 = load %struct.ib_sa_port*, %struct.ib_sa_port** %7, align 8
  %34 = getelementptr inbounds %struct.ib_sa_port, %struct.ib_sa_port* %33, i32 0, i32 1
  %35 = load %struct.ib_mad_agent*, %struct.ib_mad_agent** %34, align 8
  %36 = getelementptr inbounds %struct.ib_mad_agent, %struct.ib_mad_agent* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.ib_sa_port*, %struct.ib_sa_port** %7, align 8
  %39 = getelementptr inbounds %struct.ib_sa_port, %struct.ib_sa_port* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i64 @rdma_cap_opa_ah(i32 %37, i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %28
  %44 = load i32, i32* @IB_SA_QUERY_OPA, align 4
  br label %46

45:                                               ; preds = %28
  br label %46

46:                                               ; preds = %45, %43
  %47 = phi i32 [ %44, %43 ], [ 0, %45 ]
  %48 = load %struct.ib_sa_classport_info_query*, %struct.ib_sa_classport_info_query** %13, align 8
  %49 = getelementptr inbounds %struct.ib_sa_classport_info_query, %struct.ib_sa_classport_info_query* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.ib_sa_query, %struct.ib_sa_query* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 8
  %52 = or i32 %51, %47
  store i32 %52, i32* %50, align 8
  %53 = load %struct.ib_sa_classport_info_query*, %struct.ib_sa_classport_info_query** %13, align 8
  %54 = getelementptr inbounds %struct.ib_sa_classport_info_query, %struct.ib_sa_classport_info_query* %53, i32 0, i32 1
  %55 = load i32, i32* %15, align 4
  %56 = call i32 @alloc_mad(%struct.ib_sa_query* %54, i32 %55)
  store i32 %56, i32* %16, align 4
  %57 = load i32, i32* %16, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %46
  br label %115

60:                                               ; preds = %46
  %61 = load void (i8*)*, void (i8*)** %9, align 8
  %62 = load %struct.ib_sa_classport_info_query*, %struct.ib_sa_classport_info_query** %13, align 8
  %63 = getelementptr inbounds %struct.ib_sa_classport_info_query, %struct.ib_sa_classport_info_query* %62, i32 0, i32 0
  store void (i8*)* %61, void (i8*)** %63, align 8
  %64 = load i8*, i8** %10, align 8
  %65 = load %struct.ib_sa_classport_info_query*, %struct.ib_sa_classport_info_query** %13, align 8
  %66 = getelementptr inbounds %struct.ib_sa_classport_info_query, %struct.ib_sa_classport_info_query* %65, i32 0, i32 2
  store i8* %64, i8** %66, align 8
  %67 = load %struct.ib_sa_classport_info_query*, %struct.ib_sa_classport_info_query** %13, align 8
  %68 = getelementptr inbounds %struct.ib_sa_classport_info_query, %struct.ib_sa_classport_info_query* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.ib_sa_query, %struct.ib_sa_query* %68, i32 0, i32 2
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load %struct.ib_sa_mad*, %struct.ib_sa_mad** %71, align 8
  store %struct.ib_sa_mad* %72, %struct.ib_sa_mad** %14, align 8
  %73 = load %struct.ib_sa_classport_info_query*, %struct.ib_sa_classport_info_query** %13, align 8
  %74 = getelementptr inbounds %struct.ib_sa_classport_info_query, %struct.ib_sa_classport_info_query* %73, i32 0, i32 1
  %75 = load %struct.ib_mad_agent*, %struct.ib_mad_agent** %12, align 8
  %76 = call i32 @init_mad(%struct.ib_sa_query* %74, %struct.ib_mad_agent* %75)
  %77 = load i32, i32* @ib_sa_classport_info_rec_callback, align 4
  %78 = load %struct.ib_sa_classport_info_query*, %struct.ib_sa_classport_info_query** %13, align 8
  %79 = getelementptr inbounds %struct.ib_sa_classport_info_query, %struct.ib_sa_classport_info_query* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.ib_sa_query, %struct.ib_sa_query* %79, i32 0, i32 1
  store i32 %77, i32* %80, align 4
  %81 = load i32, i32* @ib_sa_classport_info_rec_release, align 4
  %82 = load %struct.ib_sa_classport_info_query*, %struct.ib_sa_classport_info_query** %13, align 8
  %83 = getelementptr inbounds %struct.ib_sa_classport_info_query, %struct.ib_sa_classport_info_query* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.ib_sa_query, %struct.ib_sa_query* %83, i32 0, i32 0
  store i32 %81, i32* %84, align 8
  %85 = load i32, i32* @IB_MGMT_METHOD_GET, align 4
  %86 = load %struct.ib_sa_mad*, %struct.ib_sa_mad** %14, align 8
  %87 = getelementptr inbounds %struct.ib_sa_mad, %struct.ib_sa_mad* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 1
  store i32 %85, i32* %88, align 4
  %89 = load i32, i32* @IB_SA_ATTR_CLASS_PORTINFO, align 4
  %90 = call i32 @cpu_to_be16(i32 %89)
  %91 = load %struct.ib_sa_mad*, %struct.ib_sa_mad** %14, align 8
  %92 = getelementptr inbounds %struct.ib_sa_mad, %struct.ib_sa_mad* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 0
  store i32 %90, i32* %93, align 8
  %94 = load %struct.ib_sa_mad*, %struct.ib_sa_mad** %14, align 8
  %95 = getelementptr inbounds %struct.ib_sa_mad, %struct.ib_sa_mad* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  store i64 0, i64* %96, align 8
  %97 = load %struct.ib_sa_classport_info_query*, %struct.ib_sa_classport_info_query** %13, align 8
  %98 = getelementptr inbounds %struct.ib_sa_classport_info_query, %struct.ib_sa_classport_info_query* %97, i32 0, i32 1
  %99 = load %struct.ib_sa_query**, %struct.ib_sa_query*** %11, align 8
  store %struct.ib_sa_query* %98, %struct.ib_sa_query** %99, align 8
  %100 = load %struct.ib_sa_classport_info_query*, %struct.ib_sa_classport_info_query** %13, align 8
  %101 = getelementptr inbounds %struct.ib_sa_classport_info_query, %struct.ib_sa_classport_info_query* %100, i32 0, i32 1
  %102 = load i64, i64* %8, align 8
  %103 = load i32, i32* %15, align 4
  %104 = call i32 @send_mad(%struct.ib_sa_query* %101, i64 %102, i32 %103)
  store i32 %104, i32* %16, align 4
  %105 = load i32, i32* %16, align 4
  %106 = icmp slt i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %60
  br label %110

108:                                              ; preds = %60
  %109 = load i32, i32* %16, align 4
  store i32 %109, i32* %6, align 4
  br label %119

110:                                              ; preds = %107
  %111 = load %struct.ib_sa_query**, %struct.ib_sa_query*** %11, align 8
  store %struct.ib_sa_query* null, %struct.ib_sa_query** %111, align 8
  %112 = load %struct.ib_sa_classport_info_query*, %struct.ib_sa_classport_info_query** %13, align 8
  %113 = getelementptr inbounds %struct.ib_sa_classport_info_query, %struct.ib_sa_classport_info_query* %112, i32 0, i32 1
  %114 = call i32 @free_mad(%struct.ib_sa_query* %113)
  br label %115

115:                                              ; preds = %110, %59
  %116 = load %struct.ib_sa_classport_info_query*, %struct.ib_sa_classport_info_query** %13, align 8
  %117 = call i32 @kfree(%struct.ib_sa_classport_info_query* %116)
  %118 = load i32, i32* %16, align 4
  store i32 %118, i32* %6, align 4
  br label %119

119:                                              ; preds = %115, %108, %25
  %120 = load i32, i32* %6, align 4
  ret i32 %120
}

declare dso_local %struct.ib_sa_classport_info_query* @kzalloc(i32, i32) #1

declare dso_local i64 @rdma_cap_opa_ah(i32, i32) #1

declare dso_local i32 @alloc_mad(%struct.ib_sa_query*, i32) #1

declare dso_local i32 @init_mad(%struct.ib_sa_query*, %struct.ib_mad_agent*) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @send_mad(%struct.ib_sa_query*, i64, i32) #1

declare dso_local i32 @free_mad(%struct.ib_sa_query*) #1

declare dso_local i32 @kfree(%struct.ib_sa_classport_info_query*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
