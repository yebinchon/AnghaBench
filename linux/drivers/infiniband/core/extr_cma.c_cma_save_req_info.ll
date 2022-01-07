; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cma.c_cma_save_req_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cma.c_cma_save_req_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_cm_event = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.ib_cm_sidr_req_event_param, %struct.ib_cm_req_event_param }
%struct.ib_cm_sidr_req_event_param = type { i32, i32, i32, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.ib_cm_req_event_param = type { i32, %struct.TYPE_7__*, i32, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.cma_req_info = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [137 x i8] c"RDMA CMA: got different BTH P_Key (0x%x) and primary path P_Key (0x%x)\0ARDMA CMA: in the future this may cause the request to be dropped\0A\00", align 1
@.str.1 = private unnamed_addr constant [145 x i8] c"RDMA CMA: got different BTH P_Key (0x%x) and SIDR request payload P_Key (0x%x)\0ARDMA CMA: in the future this may cause the request to be dropped\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_cm_event*, %struct.cma_req_info*)* @cma_save_req_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cma_save_req_info(%struct.ib_cm_event* %0, %struct.cma_req_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ib_cm_event*, align 8
  %5 = alloca %struct.cma_req_info*, align 8
  %6 = alloca %struct.ib_cm_req_event_param*, align 8
  %7 = alloca %struct.ib_cm_sidr_req_event_param*, align 8
  store %struct.ib_cm_event* %0, %struct.ib_cm_event** %4, align 8
  store %struct.cma_req_info* %1, %struct.cma_req_info** %5, align 8
  %8 = load %struct.ib_cm_event*, %struct.ib_cm_event** %4, align 8
  %9 = getelementptr inbounds %struct.ib_cm_event, %struct.ib_cm_event* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 1
  store %struct.ib_cm_req_event_param* %10, %struct.ib_cm_req_event_param** %6, align 8
  %11 = load %struct.ib_cm_event*, %struct.ib_cm_event** %4, align 8
  %12 = getelementptr inbounds %struct.ib_cm_event, %struct.ib_cm_event* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  store %struct.ib_cm_sidr_req_event_param* %13, %struct.ib_cm_sidr_req_event_param** %7, align 8
  %14 = load %struct.ib_cm_event*, %struct.ib_cm_event** %4, align 8
  %15 = getelementptr inbounds %struct.ib_cm_event, %struct.ib_cm_event* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  switch i32 %16, label %111 [
    i32 129, label %17
    i32 128, label %70
  ]

17:                                               ; preds = %2
  %18 = load %struct.ib_cm_req_event_param*, %struct.ib_cm_req_event_param** %6, align 8
  %19 = getelementptr inbounds %struct.ib_cm_req_event_param, %struct.ib_cm_req_event_param* %18, i32 0, i32 3
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.cma_req_info*, %struct.cma_req_info** %5, align 8
  %24 = getelementptr inbounds %struct.cma_req_info, %struct.cma_req_info* %23, i32 0, i32 4
  store i32 %22, i32* %24, align 4
  %25 = load %struct.ib_cm_req_event_param*, %struct.ib_cm_req_event_param** %6, align 8
  %26 = getelementptr inbounds %struct.ib_cm_req_event_param, %struct.ib_cm_req_event_param* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.cma_req_info*, %struct.cma_req_info** %5, align 8
  %29 = getelementptr inbounds %struct.cma_req_info, %struct.cma_req_info* %28, i32 0, i32 3
  store i32 %27, i32* %29, align 4
  %30 = load %struct.cma_req_info*, %struct.cma_req_info** %5, align 8
  %31 = getelementptr inbounds %struct.cma_req_info, %struct.cma_req_info* %30, i32 0, i32 5
  %32 = load %struct.ib_cm_req_event_param*, %struct.ib_cm_req_event_param** %6, align 8
  %33 = getelementptr inbounds %struct.ib_cm_req_event_param, %struct.ib_cm_req_event_param* %32, i32 0, i32 1
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 2
  %36 = call i32 @memcpy(i32* %31, i32* %35, i32 4)
  %37 = load %struct.cma_req_info*, %struct.cma_req_info** %5, align 8
  %38 = getelementptr inbounds %struct.cma_req_info, %struct.cma_req_info* %37, i32 0, i32 0
  store i32 1, i32* %38, align 4
  %39 = load %struct.ib_cm_req_event_param*, %struct.ib_cm_req_event_param** %6, align 8
  %40 = getelementptr inbounds %struct.ib_cm_req_event_param, %struct.ib_cm_req_event_param* %39, i32 0, i32 1
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.cma_req_info*, %struct.cma_req_info** %5, align 8
  %45 = getelementptr inbounds %struct.cma_req_info, %struct.cma_req_info* %44, i32 0, i32 2
  store i32 %43, i32* %45, align 4
  %46 = load %struct.ib_cm_req_event_param*, %struct.ib_cm_req_event_param** %6, align 8
  %47 = getelementptr inbounds %struct.ib_cm_req_event_param, %struct.ib_cm_req_event_param* %46, i32 0, i32 1
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @be16_to_cpu(i32 %50)
  %52 = load %struct.cma_req_info*, %struct.cma_req_info** %5, align 8
  %53 = getelementptr inbounds %struct.cma_req_info, %struct.cma_req_info* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  %54 = load %struct.cma_req_info*, %struct.cma_req_info** %5, align 8
  %55 = getelementptr inbounds %struct.cma_req_info, %struct.cma_req_info* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.ib_cm_req_event_param*, %struct.ib_cm_req_event_param** %6, align 8
  %58 = getelementptr inbounds %struct.ib_cm_req_event_param, %struct.ib_cm_req_event_param* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp ne i32 %56, %59
  br i1 %60, label %61, label %69

61:                                               ; preds = %17
  %62 = load %struct.ib_cm_req_event_param*, %struct.ib_cm_req_event_param** %6, align 8
  %63 = getelementptr inbounds %struct.ib_cm_req_event_param, %struct.ib_cm_req_event_param* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.cma_req_info*, %struct.cma_req_info** %5, align 8
  %66 = getelementptr inbounds %struct.cma_req_info, %struct.cma_req_info* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @pr_warn_ratelimited(i8* getelementptr inbounds ([137 x i8], [137 x i8]* @.str, i64 0, i64 0), i32 %64, i32 %67)
  br label %69

69:                                               ; preds = %61, %17
  br label %114

70:                                               ; preds = %2
  %71 = load %struct.ib_cm_sidr_req_event_param*, %struct.ib_cm_sidr_req_event_param** %7, align 8
  %72 = getelementptr inbounds %struct.ib_cm_sidr_req_event_param, %struct.ib_cm_sidr_req_event_param* %71, i32 0, i32 4
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.cma_req_info*, %struct.cma_req_info** %5, align 8
  %77 = getelementptr inbounds %struct.cma_req_info, %struct.cma_req_info* %76, i32 0, i32 4
  store i32 %75, i32* %77, align 4
  %78 = load %struct.ib_cm_sidr_req_event_param*, %struct.ib_cm_sidr_req_event_param** %7, align 8
  %79 = getelementptr inbounds %struct.ib_cm_sidr_req_event_param, %struct.ib_cm_sidr_req_event_param* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.cma_req_info*, %struct.cma_req_info** %5, align 8
  %82 = getelementptr inbounds %struct.cma_req_info, %struct.cma_req_info* %81, i32 0, i32 3
  store i32 %80, i32* %82, align 4
  %83 = load %struct.cma_req_info*, %struct.cma_req_info** %5, align 8
  %84 = getelementptr inbounds %struct.cma_req_info, %struct.cma_req_info* %83, i32 0, i32 0
  store i32 0, i32* %84, align 4
  %85 = load %struct.ib_cm_sidr_req_event_param*, %struct.ib_cm_sidr_req_event_param** %7, align 8
  %86 = getelementptr inbounds %struct.ib_cm_sidr_req_event_param, %struct.ib_cm_sidr_req_event_param* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.cma_req_info*, %struct.cma_req_info** %5, align 8
  %89 = getelementptr inbounds %struct.cma_req_info, %struct.cma_req_info* %88, i32 0, i32 2
  store i32 %87, i32* %89, align 4
  %90 = load %struct.ib_cm_sidr_req_event_param*, %struct.ib_cm_sidr_req_event_param** %7, align 8
  %91 = getelementptr inbounds %struct.ib_cm_sidr_req_event_param, %struct.ib_cm_sidr_req_event_param* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.cma_req_info*, %struct.cma_req_info** %5, align 8
  %94 = getelementptr inbounds %struct.cma_req_info, %struct.cma_req_info* %93, i32 0, i32 1
  store i32 %92, i32* %94, align 4
  %95 = load %struct.cma_req_info*, %struct.cma_req_info** %5, align 8
  %96 = getelementptr inbounds %struct.cma_req_info, %struct.cma_req_info* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.ib_cm_sidr_req_event_param*, %struct.ib_cm_sidr_req_event_param** %7, align 8
  %99 = getelementptr inbounds %struct.ib_cm_sidr_req_event_param, %struct.ib_cm_sidr_req_event_param* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = icmp ne i32 %97, %100
  br i1 %101, label %102, label %110

102:                                              ; preds = %70
  %103 = load %struct.ib_cm_sidr_req_event_param*, %struct.ib_cm_sidr_req_event_param** %7, align 8
  %104 = getelementptr inbounds %struct.ib_cm_sidr_req_event_param, %struct.ib_cm_sidr_req_event_param* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.cma_req_info*, %struct.cma_req_info** %5, align 8
  %107 = getelementptr inbounds %struct.cma_req_info, %struct.cma_req_info* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @pr_warn_ratelimited(i8* getelementptr inbounds ([145 x i8], [145 x i8]* @.str.1, i64 0, i64 0), i32 %105, i32 %108)
  br label %110

110:                                              ; preds = %102, %70
  br label %114

111:                                              ; preds = %2
  %112 = load i32, i32* @EINVAL, align 4
  %113 = sub nsw i32 0, %112
  store i32 %113, i32* %3, align 4
  br label %115

114:                                              ; preds = %110, %69
  store i32 0, i32* %3, align 4
  br label %115

115:                                              ; preds = %114, %111
  %116 = load i32, i32* %3, align 4
  ret i32 %116
}

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @pr_warn_ratelimited(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
