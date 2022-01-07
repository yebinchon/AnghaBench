; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/cxgb4/extr_cm.c_connect_reply_upcall.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/cxgb4/extr_cm.c_connect_reply_upcall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.c4iw_ep = type { %struct.TYPE_4__, i32, i64, i64, i8*, i8*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__*, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 (%struct.TYPE_3__*, %struct.iw_cm_event*)* }
%struct.iw_cm_event = type { i32, i64, i64, i8*, i8*, i32, i32, i32 }

@.str = private unnamed_addr constant [24 x i8] c"ep %p tid %u status %d\0A\00", align 1
@IW_CM_EVENT_CONNECT_REPLY = common dso_local global i32 0, align 4
@ECONNREFUSED = common dso_local global i32 0, align 4
@CONN_RPL_UPCALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.c4iw_ep*, i32)* @connect_reply_upcall to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @connect_reply_upcall(%struct.c4iw_ep* %0, i32 %1) #0 {
  %3 = alloca %struct.c4iw_ep*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.iw_cm_event, align 8
  store %struct.c4iw_ep* %0, %struct.c4iw_ep** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.c4iw_ep*, %struct.c4iw_ep** %3, align 8
  %7 = load %struct.c4iw_ep*, %struct.c4iw_ep** %3, align 8
  %8 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @pr_debug(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), %struct.c4iw_ep* %6, i32 %9, i32 %10)
  %12 = call i32 @memset(%struct.iw_cm_event* %5, i32 0, i32 56)
  %13 = load i32, i32* @IW_CM_EVENT_CONNECT_REPLY, align 4
  %14 = getelementptr inbounds %struct.iw_cm_event, %struct.iw_cm_event* %5, i32 0, i32 7
  store i32 %13, i32* %14, align 8
  %15 = load i32, i32* %4, align 4
  %16 = getelementptr inbounds %struct.iw_cm_event, %struct.iw_cm_event* %5, i32 0, i32 0
  store i32 %15, i32* %16, align 8
  %17 = getelementptr inbounds %struct.iw_cm_event, %struct.iw_cm_event* %5, i32 0, i32 6
  %18 = load %struct.c4iw_ep*, %struct.c4iw_ep** %3, align 8
  %19 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 4
  %21 = call i32 @memcpy(i32* %17, i32* %20, i32 4)
  %22 = getelementptr inbounds %struct.iw_cm_event, %struct.iw_cm_event* %5, i32 0, i32 5
  %23 = load %struct.c4iw_ep*, %struct.c4iw_ep** %3, align 8
  %24 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 3
  %26 = call i32 @memcpy(i32* %22, i32* %25, i32 4)
  %27 = load i32, i32* %4, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %2
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @ECONNREFUSED, align 4
  %32 = sub nsw i32 0, %31
  %33 = icmp eq i32 %30, %32
  br i1 %33, label %34, label %82

34:                                               ; preds = %29, %2
  %35 = load %struct.c4iw_ep*, %struct.c4iw_ep** %3, align 8
  %36 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %35, i32 0, i32 6
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %59, label %39

39:                                               ; preds = %34
  %40 = load %struct.c4iw_ep*, %struct.c4iw_ep** %3, align 8
  %41 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %40, i32 0, i32 5
  %42 = load i8*, i8** %41, align 8
  %43 = getelementptr inbounds %struct.iw_cm_event, %struct.iw_cm_event* %5, i32 0, i32 4
  store i8* %42, i8** %43, align 8
  %44 = load %struct.c4iw_ep*, %struct.c4iw_ep** %3, align 8
  %45 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %44, i32 0, i32 4
  %46 = load i8*, i8** %45, align 8
  %47 = getelementptr inbounds %struct.iw_cm_event, %struct.iw_cm_event* %5, i32 0, i32 3
  store i8* %46, i8** %47, align 8
  %48 = load %struct.c4iw_ep*, %struct.c4iw_ep** %3, align 8
  %49 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %48, i32 0, i32 3
  %50 = load i64, i64* %49, align 8
  %51 = sub i64 %50, 4
  %52 = getelementptr inbounds %struct.iw_cm_event, %struct.iw_cm_event* %5, i32 0, i32 2
  store i64 %51, i64* %52, align 8
  %53 = load %struct.c4iw_ep*, %struct.c4iw_ep** %3, align 8
  %54 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = add i64 %55, 4
  %57 = add i64 %56, 4
  %58 = getelementptr inbounds %struct.iw_cm_event, %struct.iw_cm_event* %5, i32 0, i32 1
  store i64 %57, i64* %58, align 8
  br label %81

59:                                               ; preds = %34
  %60 = load %struct.c4iw_ep*, %struct.c4iw_ep** %3, align 8
  %61 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = call i8* @cur_max_read_depth(i32 %63)
  %65 = getelementptr inbounds %struct.iw_cm_event, %struct.iw_cm_event* %5, i32 0, i32 4
  store i8* %64, i8** %65, align 8
  %66 = load %struct.c4iw_ep*, %struct.c4iw_ep** %3, align 8
  %67 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = call i8* @cur_max_read_depth(i32 %69)
  %71 = getelementptr inbounds %struct.iw_cm_event, %struct.iw_cm_event* %5, i32 0, i32 3
  store i8* %70, i8** %71, align 8
  %72 = load %struct.c4iw_ep*, %struct.c4iw_ep** %3, align 8
  %73 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %72, i32 0, i32 3
  %74 = load i64, i64* %73, align 8
  %75 = getelementptr inbounds %struct.iw_cm_event, %struct.iw_cm_event* %5, i32 0, i32 2
  store i64 %74, i64* %75, align 8
  %76 = load %struct.c4iw_ep*, %struct.c4iw_ep** %3, align 8
  %77 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = add i64 %78, 4
  %80 = getelementptr inbounds %struct.iw_cm_event, %struct.iw_cm_event* %5, i32 0, i32 1
  store i64 %79, i64* %80, align 8
  br label %81

81:                                               ; preds = %59, %39
  br label %82

82:                                               ; preds = %81, %29
  %83 = load %struct.c4iw_ep*, %struct.c4iw_ep** %3, align 8
  %84 = load %struct.c4iw_ep*, %struct.c4iw_ep** %3, align 8
  %85 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* %4, align 4
  %88 = call i32 @pr_debug(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), %struct.c4iw_ep* %83, i32 %86, i32 %87)
  %89 = load i32, i32* @CONN_RPL_UPCALL, align 4
  %90 = load %struct.c4iw_ep*, %struct.c4iw_ep** %3, align 8
  %91 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 1
  %93 = call i32 @set_bit(i32 %89, i32* %92)
  %94 = load %struct.c4iw_ep*, %struct.c4iw_ep** %3, align 8
  %95 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 0
  %99 = load i32 (%struct.TYPE_3__*, %struct.iw_cm_event*)*, i32 (%struct.TYPE_3__*, %struct.iw_cm_event*)** %98, align 8
  %100 = load %struct.c4iw_ep*, %struct.c4iw_ep** %3, align 8
  %101 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** %102, align 8
  %104 = call i32 %99(%struct.TYPE_3__* %103, %struct.iw_cm_event* %5)
  %105 = load i32, i32* %4, align 4
  %106 = icmp slt i32 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %82
  %108 = load %struct.c4iw_ep*, %struct.c4iw_ep** %3, align 8
  %109 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %108, i32 0, i32 0
  %110 = call i32 @deref_cm_id(%struct.TYPE_4__* %109)
  br label %111

111:                                              ; preds = %107, %82
  ret void
}

declare dso_local i32 @pr_debug(i8*, %struct.c4iw_ep*, i32, i32) #1

declare dso_local i32 @memset(%struct.iw_cm_event*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i8* @cur_max_read_depth(i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @deref_cm_id(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
