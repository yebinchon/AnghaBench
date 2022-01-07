; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qedr/extr_qedr_iw_cm.c_qedr_iw_mpa_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qedr/extr_qedr_iw_cm.c_qedr_iw_mpa_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_iwarp_cm_event_params = type { %struct.TYPE_5__*, i32, i32 }
%struct.TYPE_5__ = type { i64, i32, i32, i64, i64 }
%struct.qedr_iw_listener = type { %struct.TYPE_4__*, %struct.qedr_dev* }
%struct.TYPE_4__ = type { i32 (%struct.TYPE_4__*, %struct.iw_cm_event*)* }
%struct.iw_cm_event = type { i32, i32, i64, i8*, i8*, i32, i32 }
%struct.qedr_dev = type { i32 }
%struct.qedr_iw_ep = type { i32, %struct.qedr_dev* }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@IW_CM_EVENT_CONNECT_REQUEST = common dso_local global i32 0, align 4
@CONFIG_IPV6 = common dso_local global i32 0, align 4
@QED_TCP_IPV4 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.qed_iwarp_cm_event_params*)* @qedr_iw_mpa_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qedr_iw_mpa_request(i8* %0, %struct.qed_iwarp_cm_event_params* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.qed_iwarp_cm_event_params*, align 8
  %5 = alloca %struct.qedr_iw_listener*, align 8
  %6 = alloca %struct.qedr_dev*, align 8
  %7 = alloca %struct.iw_cm_event, align 8
  %8 = alloca %struct.qedr_iw_ep*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.qed_iwarp_cm_event_params* %1, %struct.qed_iwarp_cm_event_params** %4, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = bitcast i8* %9 to %struct.qedr_iw_listener*
  store %struct.qedr_iw_listener* %10, %struct.qedr_iw_listener** %5, align 8
  %11 = load %struct.qedr_iw_listener*, %struct.qedr_iw_listener** %5, align 8
  %12 = getelementptr inbounds %struct.qedr_iw_listener, %struct.qedr_iw_listener* %11, i32 0, i32 1
  %13 = load %struct.qedr_dev*, %struct.qedr_dev** %12, align 8
  store %struct.qedr_dev* %13, %struct.qedr_dev** %6, align 8
  %14 = load i32, i32* @GFP_ATOMIC, align 4
  %15 = call %struct.qedr_iw_ep* @kzalloc(i32 16, i32 %14)
  store %struct.qedr_iw_ep* %15, %struct.qedr_iw_ep** %8, align 8
  %16 = load %struct.qedr_iw_ep*, %struct.qedr_iw_ep** %8, align 8
  %17 = icmp ne %struct.qedr_iw_ep* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  br label %94

19:                                               ; preds = %2
  %20 = load %struct.qedr_dev*, %struct.qedr_dev** %6, align 8
  %21 = load %struct.qedr_iw_ep*, %struct.qedr_iw_ep** %8, align 8
  %22 = getelementptr inbounds %struct.qedr_iw_ep, %struct.qedr_iw_ep* %21, i32 0, i32 1
  store %struct.qedr_dev* %20, %struct.qedr_dev** %22, align 8
  %23 = load %struct.qed_iwarp_cm_event_params*, %struct.qed_iwarp_cm_event_params** %4, align 8
  %24 = getelementptr inbounds %struct.qed_iwarp_cm_event_params, %struct.qed_iwarp_cm_event_params* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.qedr_iw_ep*, %struct.qedr_iw_ep** %8, align 8
  %27 = getelementptr inbounds %struct.qedr_iw_ep, %struct.qedr_iw_ep* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = call i32 @memset(%struct.iw_cm_event* %7, i32 0, i32 40)
  %29 = load i32, i32* @IW_CM_EVENT_CONNECT_REQUEST, align 4
  %30 = getelementptr inbounds %struct.iw_cm_event, %struct.iw_cm_event* %7, i32 0, i32 6
  store i32 %29, i32* %30, align 4
  %31 = load %struct.qed_iwarp_cm_event_params*, %struct.qed_iwarp_cm_event_params** %4, align 8
  %32 = getelementptr inbounds %struct.qed_iwarp_cm_event_params, %struct.qed_iwarp_cm_event_params* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = getelementptr inbounds %struct.iw_cm_event, %struct.iw_cm_event* %7, i32 0, i32 5
  store i32 %33, i32* %34, align 8
  %35 = load i32, i32* @CONFIG_IPV6, align 4
  %36 = call i32 @IS_ENABLED(i32 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %19
  %39 = load %struct.qed_iwarp_cm_event_params*, %struct.qed_iwarp_cm_event_params** %4, align 8
  %40 = getelementptr inbounds %struct.qed_iwarp_cm_event_params, %struct.qed_iwarp_cm_event_params* %39, i32 0, i32 0
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @QED_TCP_IPV4, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %51

46:                                               ; preds = %38, %19
  %47 = load %struct.qed_iwarp_cm_event_params*, %struct.qed_iwarp_cm_event_params** %4, align 8
  %48 = getelementptr inbounds %struct.qed_iwarp_cm_event_params, %struct.qed_iwarp_cm_event_params* %47, i32 0, i32 0
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %48, align 8
  %50 = call i32 @qedr_fill_sockaddr4(%struct.TYPE_5__* %49, %struct.iw_cm_event* %7)
  br label %56

51:                                               ; preds = %38
  %52 = load %struct.qed_iwarp_cm_event_params*, %struct.qed_iwarp_cm_event_params** %4, align 8
  %53 = getelementptr inbounds %struct.qed_iwarp_cm_event_params, %struct.qed_iwarp_cm_event_params* %52, i32 0, i32 0
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %53, align 8
  %55 = call i32 @qedr_fill_sockaddr6(%struct.TYPE_5__* %54, %struct.iw_cm_event* %7)
  br label %56

56:                                               ; preds = %51, %46
  %57 = load %struct.qedr_iw_ep*, %struct.qedr_iw_ep** %8, align 8
  %58 = bitcast %struct.qedr_iw_ep* %57 to i8*
  %59 = getelementptr inbounds %struct.iw_cm_event, %struct.iw_cm_event* %7, i32 0, i32 4
  store i8* %58, i8** %59, align 8
  %60 = load %struct.qed_iwarp_cm_event_params*, %struct.qed_iwarp_cm_event_params** %4, align 8
  %61 = getelementptr inbounds %struct.qed_iwarp_cm_event_params, %struct.qed_iwarp_cm_event_params* %60, i32 0, i32 0
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 4
  %64 = load i64, i64* %63, align 8
  %65 = inttoptr i64 %64 to i8*
  %66 = getelementptr inbounds %struct.iw_cm_event, %struct.iw_cm_event* %7, i32 0, i32 3
  store i8* %65, i8** %66, align 8
  %67 = load %struct.qed_iwarp_cm_event_params*, %struct.qed_iwarp_cm_event_params** %4, align 8
  %68 = getelementptr inbounds %struct.qed_iwarp_cm_event_params, %struct.qed_iwarp_cm_event_params* %67, i32 0, i32 0
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 3
  %71 = load i64, i64* %70, align 8
  %72 = getelementptr inbounds %struct.iw_cm_event, %struct.iw_cm_event* %7, i32 0, i32 2
  store i64 %71, i64* %72, align 8
  %73 = load %struct.qed_iwarp_cm_event_params*, %struct.qed_iwarp_cm_event_params** %4, align 8
  %74 = getelementptr inbounds %struct.qed_iwarp_cm_event_params, %struct.qed_iwarp_cm_event_params* %73, i32 0, i32 0
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = getelementptr inbounds %struct.iw_cm_event, %struct.iw_cm_event* %7, i32 0, i32 1
  store i32 %77, i32* %78, align 4
  %79 = load %struct.qed_iwarp_cm_event_params*, %struct.qed_iwarp_cm_event_params** %4, align 8
  %80 = getelementptr inbounds %struct.qed_iwarp_cm_event_params, %struct.qed_iwarp_cm_event_params* %79, i32 0, i32 0
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = getelementptr inbounds %struct.iw_cm_event, %struct.iw_cm_event* %7, i32 0, i32 0
  store i32 %83, i32* %84, align 8
  %85 = load %struct.qedr_iw_listener*, %struct.qedr_iw_listener** %5, align 8
  %86 = getelementptr inbounds %struct.qedr_iw_listener, %struct.qedr_iw_listener* %85, i32 0, i32 0
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = load i32 (%struct.TYPE_4__*, %struct.iw_cm_event*)*, i32 (%struct.TYPE_4__*, %struct.iw_cm_event*)** %88, align 8
  %90 = load %struct.qedr_iw_listener*, %struct.qedr_iw_listener** %5, align 8
  %91 = getelementptr inbounds %struct.qedr_iw_listener, %struct.qedr_iw_listener* %90, i32 0, i32 0
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %91, align 8
  %93 = call i32 %89(%struct.TYPE_4__* %92, %struct.iw_cm_event* %7)
  br label %94

94:                                               ; preds = %56, %18
  ret void
}

declare dso_local %struct.qedr_iw_ep* @kzalloc(i32, i32) #1

declare dso_local i32 @memset(%struct.iw_cm_event*, i32, i32) #1

declare dso_local i32 @IS_ENABLED(i32) #1

declare dso_local i32 @qedr_fill_sockaddr4(%struct.TYPE_5__*, %struct.iw_cm_event*) #1

declare dso_local i32 @qedr_fill_sockaddr6(%struct.TYPE_5__*, %struct.iw_cm_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
