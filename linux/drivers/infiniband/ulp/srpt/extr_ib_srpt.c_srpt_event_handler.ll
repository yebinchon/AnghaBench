; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/srpt/extr_ib_srpt.c_srpt_event_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/srpt/extr_ib_srpt.c_srpt_event_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_event_handler = type { i32 }
%struct.ib_event = type { i32, %struct.TYPE_3__, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i64, i32 }
%struct.srpt_device = type { %struct.TYPE_4__*, %struct.srpt_port* }
%struct.srpt_port = type { i32, i32, i32 }

@srpt_client = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"ASYNC event= %d on device= %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"event %d: port_num %d out of range 1..%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"received unrecognized IB event %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ib_event_handler*, %struct.ib_event*)* @srpt_event_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @srpt_event_handler(%struct.ib_event_handler* %0, %struct.ib_event* %1) #0 {
  %3 = alloca %struct.ib_event_handler*, align 8
  %4 = alloca %struct.ib_event*, align 8
  %5 = alloca %struct.srpt_device*, align 8
  %6 = alloca %struct.srpt_port*, align 8
  %7 = alloca i64, align 8
  store %struct.ib_event_handler* %0, %struct.ib_event_handler** %3, align 8
  store %struct.ib_event* %1, %struct.ib_event** %4, align 8
  %8 = load %struct.ib_event*, %struct.ib_event** %4, align 8
  %9 = getelementptr inbounds %struct.ib_event, %struct.ib_event* %8, i32 0, i32 2
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = call %struct.srpt_device* @ib_get_client_data(%struct.TYPE_4__* %10, i32* @srpt_client)
  store %struct.srpt_device* %11, %struct.srpt_device** %5, align 8
  %12 = load %struct.srpt_device*, %struct.srpt_device** %5, align 8
  %13 = icmp ne %struct.srpt_device* %12, null
  br i1 %13, label %14, label %22

14:                                               ; preds = %2
  %15 = load %struct.srpt_device*, %struct.srpt_device** %5, align 8
  %16 = getelementptr inbounds %struct.srpt_device, %struct.srpt_device* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = load %struct.ib_event*, %struct.ib_event** %4, align 8
  %19 = getelementptr inbounds %struct.ib_event, %struct.ib_event* %18, i32 0, i32 2
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = icmp ne %struct.TYPE_4__* %17, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %14, %2
  br label %127

23:                                               ; preds = %14
  %24 = load %struct.ib_event*, %struct.ib_event** %4, align 8
  %25 = getelementptr inbounds %struct.ib_event, %struct.ib_event* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.srpt_device*, %struct.srpt_device** %5, align 8
  %28 = getelementptr inbounds %struct.srpt_device, %struct.srpt_device* %27, i32 0, i32 0
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = call i32 @dev_name(i32* %30)
  %32 = call i32 @pr_debug(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %26, i32 %31)
  %33 = load %struct.ib_event*, %struct.ib_event** %4, align 8
  %34 = getelementptr inbounds %struct.ib_event, %struct.ib_event* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  switch i32 %35, label %122 [
    i32 129, label %36
    i32 130, label %74
    i32 132, label %74
    i32 131, label %74
    i32 128, label %74
    i32 134, label %74
    i32 133, label %74
  ]

36:                                               ; preds = %23
  %37 = load %struct.ib_event*, %struct.ib_event** %4, align 8
  %38 = getelementptr inbounds %struct.ib_event, %struct.ib_event* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = sub nsw i32 %40, 1
  %42 = sext i32 %41 to i64
  store i64 %42, i64* %7, align 8
  %43 = load i64, i64* %7, align 8
  %44 = load %struct.srpt_device*, %struct.srpt_device** %5, align 8
  %45 = getelementptr inbounds %struct.srpt_device, %struct.srpt_device* %44, i32 0, i32 0
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ult i64 %43, %48
  br i1 %49, label %50, label %60

50:                                               ; preds = %36
  %51 = load %struct.srpt_device*, %struct.srpt_device** %5, align 8
  %52 = getelementptr inbounds %struct.srpt_device, %struct.srpt_device* %51, i32 0, i32 1
  %53 = load %struct.srpt_port*, %struct.srpt_port** %52, align 8
  %54 = load i64, i64* %7, align 8
  %55 = getelementptr inbounds %struct.srpt_port, %struct.srpt_port* %53, i64 %54
  store %struct.srpt_port* %55, %struct.srpt_port** %6, align 8
  %56 = load %struct.srpt_port*, %struct.srpt_port** %6, align 8
  %57 = getelementptr inbounds %struct.srpt_port, %struct.srpt_port* %56, i32 0, i32 2
  store i32 0, i32* %57, align 4
  %58 = load %struct.srpt_port*, %struct.srpt_port** %6, align 8
  %59 = getelementptr inbounds %struct.srpt_port, %struct.srpt_port* %58, i32 0, i32 1
  store i32 0, i32* %59, align 4
  br label %73

60:                                               ; preds = %36
  %61 = load %struct.ib_event*, %struct.ib_event** %4, align 8
  %62 = getelementptr inbounds %struct.ib_event, %struct.ib_event* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i64, i64* %7, align 8
  %65 = add i64 %64, 1
  %66 = trunc i64 %65 to i32
  %67 = load %struct.srpt_device*, %struct.srpt_device** %5, align 8
  %68 = getelementptr inbounds %struct.srpt_device, %struct.srpt_device* %67, i32 0, i32 0
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %63, i32 %66, i64 %71)
  br label %73

73:                                               ; preds = %60, %50
  br label %127

74:                                               ; preds = %23, %23, %23, %23, %23, %23
  %75 = load %struct.ib_event*, %struct.ib_event** %4, align 8
  %76 = getelementptr inbounds %struct.ib_event, %struct.ib_event* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = sub nsw i32 %78, 1
  %80 = sext i32 %79 to i64
  store i64 %80, i64* %7, align 8
  %81 = load i64, i64* %7, align 8
  %82 = load %struct.srpt_device*, %struct.srpt_device** %5, align 8
  %83 = getelementptr inbounds %struct.srpt_device, %struct.srpt_device* %82, i32 0, i32 0
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = icmp ult i64 %81, %86
  br i1 %87, label %88, label %108

88:                                               ; preds = %74
  %89 = load %struct.srpt_device*, %struct.srpt_device** %5, align 8
  %90 = getelementptr inbounds %struct.srpt_device, %struct.srpt_device* %89, i32 0, i32 1
  %91 = load %struct.srpt_port*, %struct.srpt_port** %90, align 8
  %92 = load i64, i64* %7, align 8
  %93 = getelementptr inbounds %struct.srpt_port, %struct.srpt_port* %91, i64 %92
  store %struct.srpt_port* %93, %struct.srpt_port** %6, align 8
  %94 = load %struct.srpt_port*, %struct.srpt_port** %6, align 8
  %95 = getelementptr inbounds %struct.srpt_port, %struct.srpt_port* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %107, label %98

98:                                               ; preds = %88
  %99 = load %struct.srpt_port*, %struct.srpt_port** %6, align 8
  %100 = getelementptr inbounds %struct.srpt_port, %struct.srpt_port* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %107, label %103

103:                                              ; preds = %98
  %104 = load %struct.srpt_port*, %struct.srpt_port** %6, align 8
  %105 = getelementptr inbounds %struct.srpt_port, %struct.srpt_port* %104, i32 0, i32 0
  %106 = call i32 @schedule_work(i32* %105)
  br label %107

107:                                              ; preds = %103, %98, %88
  br label %121

108:                                              ; preds = %74
  %109 = load %struct.ib_event*, %struct.ib_event** %4, align 8
  %110 = getelementptr inbounds %struct.ib_event, %struct.ib_event* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load i64, i64* %7, align 8
  %113 = add i64 %112, 1
  %114 = trunc i64 %113 to i32
  %115 = load %struct.srpt_device*, %struct.srpt_device** %5, align 8
  %116 = getelementptr inbounds %struct.srpt_device, %struct.srpt_device* %115, i32 0, i32 0
  %117 = load %struct.TYPE_4__*, %struct.TYPE_4__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %111, i32 %114, i64 %119)
  br label %121

121:                                              ; preds = %108, %107
  br label %127

122:                                              ; preds = %23
  %123 = load %struct.ib_event*, %struct.ib_event** %4, align 8
  %124 = getelementptr inbounds %struct.ib_event, %struct.ib_event* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @pr_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %125)
  br label %127

127:                                              ; preds = %22, %122, %121, %73
  ret void
}

declare dso_local %struct.srpt_device* @ib_get_client_data(%struct.TYPE_4__*, i32*) #1

declare dso_local i32 @pr_debug(i8*, i32, i32) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i32 @WARN(i32, i8*, i32, i32, i64) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
