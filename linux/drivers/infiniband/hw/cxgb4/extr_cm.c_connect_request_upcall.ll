; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/cxgb4/extr_cm.c_connect_request_upcall.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/cxgb4/extr_cm.c_connect_request_upcall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.c4iw_ep = type { %struct.TYPE_5__*, %struct.TYPE_7__, i64, i64, i8*, i8*, i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__*, i32, i32, i32 }
%struct.TYPE_6__ = type { i32 (%struct.TYPE_6__*, %struct.iw_cm_event*)* }
%struct.iw_cm_event = type { i64, i64, i8*, i8*, %struct.c4iw_ep*, i32, i32, i32 }

@.str = private unnamed_addr constant [14 x i8] c"ep %p tid %u\0A\00", align 1
@IW_CM_EVENT_CONNECT_REQUEST = common dso_local global i32 0, align 4
@CONNREQ_UPCALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.c4iw_ep*)* @connect_request_upcall to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @connect_request_upcall(%struct.c4iw_ep* %0) #0 {
  %2 = alloca %struct.c4iw_ep*, align 8
  %3 = alloca %struct.iw_cm_event, align 8
  %4 = alloca i32, align 4
  store %struct.c4iw_ep* %0, %struct.c4iw_ep** %2, align 8
  %5 = load %struct.c4iw_ep*, %struct.c4iw_ep** %2, align 8
  %6 = load %struct.c4iw_ep*, %struct.c4iw_ep** %2, align 8
  %7 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %6, i32 0, i32 7
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @pr_debug(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), %struct.c4iw_ep* %5, i32 %8)
  %10 = call i32 @memset(%struct.iw_cm_event* %3, i32 0, i32 56)
  %11 = load i32, i32* @IW_CM_EVENT_CONNECT_REQUEST, align 4
  %12 = getelementptr inbounds %struct.iw_cm_event, %struct.iw_cm_event* %3, i32 0, i32 7
  store i32 %11, i32* %12, align 8
  %13 = getelementptr inbounds %struct.iw_cm_event, %struct.iw_cm_event* %3, i32 0, i32 6
  %14 = load %struct.c4iw_ep*, %struct.c4iw_ep** %2, align 8
  %15 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 4
  %17 = call i32 @memcpy(i32* %13, i32* %16, i32 4)
  %18 = getelementptr inbounds %struct.iw_cm_event, %struct.iw_cm_event* %3, i32 0, i32 5
  %19 = load %struct.c4iw_ep*, %struct.c4iw_ep** %2, align 8
  %20 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 3
  %22 = call i32 @memcpy(i32* %18, i32* %21, i32 4)
  %23 = load %struct.c4iw_ep*, %struct.c4iw_ep** %2, align 8
  %24 = getelementptr inbounds %struct.iw_cm_event, %struct.iw_cm_event* %3, i32 0, i32 4
  store %struct.c4iw_ep* %23, %struct.c4iw_ep** %24, align 8
  %25 = load %struct.c4iw_ep*, %struct.c4iw_ep** %2, align 8
  %26 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %25, i32 0, i32 6
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %49, label %29

29:                                               ; preds = %1
  %30 = load %struct.c4iw_ep*, %struct.c4iw_ep** %2, align 8
  %31 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %30, i32 0, i32 5
  %32 = load i8*, i8** %31, align 8
  %33 = getelementptr inbounds %struct.iw_cm_event, %struct.iw_cm_event* %3, i32 0, i32 3
  store i8* %32, i8** %33, align 8
  %34 = load %struct.c4iw_ep*, %struct.c4iw_ep** %2, align 8
  %35 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %34, i32 0, i32 4
  %36 = load i8*, i8** %35, align 8
  %37 = getelementptr inbounds %struct.iw_cm_event, %struct.iw_cm_event* %3, i32 0, i32 2
  store i8* %36, i8** %37, align 8
  %38 = load %struct.c4iw_ep*, %struct.c4iw_ep** %2, align 8
  %39 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %38, i32 0, i32 3
  %40 = load i64, i64* %39, align 8
  %41 = sub i64 %40, 4
  %42 = getelementptr inbounds %struct.iw_cm_event, %struct.iw_cm_event* %3, i32 0, i32 1
  store i64 %41, i64* %42, align 8
  %43 = load %struct.c4iw_ep*, %struct.c4iw_ep** %2, align 8
  %44 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = add i64 %45, 4
  %47 = add i64 %46, 4
  %48 = getelementptr inbounds %struct.iw_cm_event, %struct.iw_cm_event* %3, i32 0, i32 0
  store i64 %47, i64* %48, align 8
  br label %71

49:                                               ; preds = %1
  %50 = load %struct.c4iw_ep*, %struct.c4iw_ep** %2, align 8
  %51 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = call i8* @cur_max_read_depth(i32 %53)
  %55 = getelementptr inbounds %struct.iw_cm_event, %struct.iw_cm_event* %3, i32 0, i32 3
  store i8* %54, i8** %55, align 8
  %56 = load %struct.c4iw_ep*, %struct.c4iw_ep** %2, align 8
  %57 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = call i8* @cur_max_read_depth(i32 %59)
  %61 = getelementptr inbounds %struct.iw_cm_event, %struct.iw_cm_event* %3, i32 0, i32 2
  store i8* %60, i8** %61, align 8
  %62 = load %struct.c4iw_ep*, %struct.c4iw_ep** %2, align 8
  %63 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %62, i32 0, i32 3
  %64 = load i64, i64* %63, align 8
  %65 = getelementptr inbounds %struct.iw_cm_event, %struct.iw_cm_event* %3, i32 0, i32 1
  store i64 %64, i64* %65, align 8
  %66 = load %struct.c4iw_ep*, %struct.c4iw_ep** %2, align 8
  %67 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = add i64 %68, 4
  %70 = getelementptr inbounds %struct.iw_cm_event, %struct.iw_cm_event* %3, i32 0, i32 0
  store i64 %69, i64* %70, align 8
  br label %71

71:                                               ; preds = %49, %29
  %72 = load %struct.c4iw_ep*, %struct.c4iw_ep** %2, align 8
  %73 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %72, i32 0, i32 1
  %74 = call i32 @c4iw_get_ep(%struct.TYPE_7__* %73)
  %75 = load %struct.c4iw_ep*, %struct.c4iw_ep** %2, align 8
  %76 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %75, i32 0, i32 0
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 1
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = load i32 (%struct.TYPE_6__*, %struct.iw_cm_event*)*, i32 (%struct.TYPE_6__*, %struct.iw_cm_event*)** %81, align 8
  %83 = load %struct.c4iw_ep*, %struct.c4iw_ep** %2, align 8
  %84 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %83, i32 0, i32 0
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 1
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %87, align 8
  %89 = call i32 %82(%struct.TYPE_6__* %88, %struct.iw_cm_event* %3)
  store i32 %89, i32* %4, align 4
  %90 = load i32, i32* %4, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %71
  %93 = load %struct.c4iw_ep*, %struct.c4iw_ep** %2, align 8
  %94 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %93, i32 0, i32 1
  %95 = call i32 @c4iw_put_ep(%struct.TYPE_7__* %94)
  br label %96

96:                                               ; preds = %92, %71
  %97 = load i32, i32* @CONNREQ_UPCALL, align 4
  %98 = load %struct.c4iw_ep*, %struct.c4iw_ep** %2, align 8
  %99 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 0
  %101 = call i32 @set_bit(i32 %97, i32* %100)
  %102 = load %struct.c4iw_ep*, %struct.c4iw_ep** %2, align 8
  %103 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %102, i32 0, i32 0
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 0
  %106 = call i32 @c4iw_put_ep(%struct.TYPE_7__* %105)
  %107 = load i32, i32* %4, align 4
  ret i32 %107
}

declare dso_local i32 @pr_debug(i8*, %struct.c4iw_ep*, i32) #1

declare dso_local i32 @memset(%struct.iw_cm_event*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i8* @cur_max_read_depth(i32) #1

declare dso_local i32 @c4iw_get_ep(%struct.TYPE_7__*) #1

declare dso_local i32 @c4iw_put_ep(%struct.TYPE_7__*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
