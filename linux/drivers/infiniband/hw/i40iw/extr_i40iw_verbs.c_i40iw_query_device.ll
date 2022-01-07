; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_verbs.c_i40iw_query_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_verbs.c_i40iw_query_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%struct.ib_device_attr = type { i32, i32, i32, i32, i32, i32, i64, i64, i32, i64, i8*, i8*, i32, i64, i32, i64, i32, i32, i32, i32, i32 }
%struct.ib_udata = type { i64, i64 }
%struct.i40iw_device = type { i64, i64, i64, i64, i32, i64, i64, i64, i64, %struct.TYPE_8__, %struct.TYPE_7__*, i32, %struct.TYPE_5__* }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@I40IW_FW_VERSION = common dso_local global i32 0, align 4
@I40IW_MAX_OUTBOUND_MESSAGE_SIZE = common dso_local global i32 0, align 4
@I40IW_MAX_QP_WRS = common dso_local global i32 0, align 4
@I40IW_MAX_WQ_FRAGMENT_COUNT = common dso_local global i8* null, align 8
@I40IW_MAX_SGE_RD = common dso_local global i32 0, align 4
@I40IW_MAX_IRD_SIZE = common dso_local global i32 0, align 4
@IB_ATOMIC_NONE = common dso_local global i32 0, align 4
@I40IW_MAX_PAGES_PER_FMR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_device*, %struct.ib_device_attr*, %struct.ib_udata*)* @i40iw_query_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40iw_query_device(%struct.ib_device* %0, %struct.ib_device_attr* %1, %struct.ib_udata* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ib_device*, align 8
  %6 = alloca %struct.ib_device_attr*, align 8
  %7 = alloca %struct.ib_udata*, align 8
  %8 = alloca %struct.i40iw_device*, align 8
  store %struct.ib_device* %0, %struct.ib_device** %5, align 8
  store %struct.ib_device_attr* %1, %struct.ib_device_attr** %6, align 8
  store %struct.ib_udata* %2, %struct.ib_udata** %7, align 8
  %9 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %10 = call %struct.i40iw_device* @to_iwdev(%struct.ib_device* %9)
  store %struct.i40iw_device* %10, %struct.i40iw_device** %8, align 8
  %11 = load %struct.ib_udata*, %struct.ib_udata** %7, align 8
  %12 = getelementptr inbounds %struct.ib_udata, %struct.ib_udata* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %3
  %16 = load %struct.ib_udata*, %struct.ib_udata** %7, align 8
  %17 = getelementptr inbounds %struct.ib_udata, %struct.ib_udata* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %15, %3
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %138

23:                                               ; preds = %15
  %24 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %25 = call i32 @memset(%struct.ib_device_attr* %24, i32 0, i32 128)
  %26 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %27 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %26, i32 0, i32 20
  %28 = load %struct.i40iw_device*, %struct.i40iw_device** %8, align 8
  %29 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %28, i32 0, i32 12
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @ether_addr_copy(i32* %27, i32 %32)
  %34 = load i32, i32* @I40IW_FW_VERSION, align 4
  %35 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %36 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %35, i32 0, i32 19
  store i32 %34, i32* %36, align 4
  %37 = load %struct.i40iw_device*, %struct.i40iw_device** %8, align 8
  %38 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %37, i32 0, i32 11
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %41 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %40, i32 0, i32 18
  store i32 %39, i32* %41, align 8
  %42 = load %struct.i40iw_device*, %struct.i40iw_device** %8, align 8
  %43 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %42, i32 0, i32 10
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %50 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %49, i32 0, i32 17
  store i32 %48, i32* %50, align 4
  %51 = load %struct.i40iw_device*, %struct.i40iw_device** %8, align 8
  %52 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %51, i32 0, i32 10
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %59 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %58, i32 0, i32 16
  store i32 %57, i32* %59, align 8
  %60 = load %struct.i40iw_device*, %struct.i40iw_device** %8, align 8
  %61 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %60, i32 0, i32 9
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %65 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %64, i32 0, i32 15
  store i64 %63, i64* %65, align 8
  %66 = load i32, i32* @I40IW_MAX_OUTBOUND_MESSAGE_SIZE, align 4
  %67 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %68 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %67, i32 0, i32 14
  store i32 %66, i32* %68, align 8
  %69 = load %struct.i40iw_device*, %struct.i40iw_device** %8, align 8
  %70 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %69, i32 0, i32 8
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.i40iw_device*, %struct.i40iw_device** %8, align 8
  %73 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %72, i32 0, i32 7
  %74 = load i64, i64* %73, align 8
  %75 = sub nsw i64 %71, %74
  %76 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %77 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %76, i32 0, i32 13
  store i64 %75, i64* %77, align 8
  %78 = load i32, i32* @I40IW_MAX_QP_WRS, align 4
  %79 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %80 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %79, i32 0, i32 12
  store i32 %78, i32* %80, align 8
  %81 = load i8*, i8** @I40IW_MAX_WQ_FRAGMENT_COUNT, align 8
  %82 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %83 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %82, i32 0, i32 11
  store i8* %81, i8** %83, align 8
  %84 = load i8*, i8** @I40IW_MAX_WQ_FRAGMENT_COUNT, align 8
  %85 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %86 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %85, i32 0, i32 10
  store i8* %84, i8** %86, align 8
  %87 = load %struct.i40iw_device*, %struct.i40iw_device** %8, align 8
  %88 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %87, i32 0, i32 6
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.i40iw_device*, %struct.i40iw_device** %8, align 8
  %91 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %90, i32 0, i32 5
  %92 = load i64, i64* %91, align 8
  %93 = sub nsw i64 %89, %92
  %94 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %95 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %94, i32 0, i32 9
  store i64 %93, i64* %95, align 8
  %96 = load %struct.i40iw_device*, %struct.i40iw_device** %8, align 8
  %97 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %96, i32 0, i32 4
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %100 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %99, i32 0, i32 8
  store i32 %98, i32* %100, align 8
  %101 = load %struct.i40iw_device*, %struct.i40iw_device** %8, align 8
  %102 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %101, i32 0, i32 3
  %103 = load i64, i64* %102, align 8
  %104 = load %struct.i40iw_device*, %struct.i40iw_device** %8, align 8
  %105 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %104, i32 0, i32 2
  %106 = load i64, i64* %105, align 8
  %107 = sub nsw i64 %103, %106
  %108 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %109 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %108, i32 0, i32 7
  store i64 %107, i64* %109, align 8
  %110 = load %struct.i40iw_device*, %struct.i40iw_device** %8, align 8
  %111 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = load %struct.i40iw_device*, %struct.i40iw_device** %8, align 8
  %114 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = sub nsw i64 %112, %115
  %117 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %118 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %117, i32 0, i32 6
  store i64 %116, i64* %118, align 8
  %119 = load i32, i32* @I40IW_MAX_SGE_RD, align 4
  %120 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %121 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %120, i32 0, i32 5
  store i32 %119, i32* %121, align 4
  %122 = load i32, i32* @I40IW_MAX_IRD_SIZE, align 4
  %123 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %124 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %123, i32 0, i32 3
  store i32 %122, i32* %124, align 4
  %125 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %126 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %129 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %128, i32 0, i32 4
  store i32 %127, i32* %129, align 8
  %130 = load i32, i32* @IB_ATOMIC_NONE, align 4
  %131 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %132 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %131, i32 0, i32 2
  store i32 %130, i32* %132, align 8
  %133 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %134 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %133, i32 0, i32 0
  store i32 1, i32* %134, align 8
  %135 = load i32, i32* @I40IW_MAX_PAGES_PER_FMR, align 4
  %136 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %137 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %136, i32 0, i32 1
  store i32 %135, i32* %137, align 4
  store i32 0, i32* %4, align 4
  br label %138

138:                                              ; preds = %23, %20
  %139 = load i32, i32* %4, align 4
  ret i32 %139
}

declare dso_local %struct.i40iw_device* @to_iwdev(%struct.ib_device*) #1

declare dso_local i32 @memset(%struct.ib_device_attr*, i32, i32) #1

declare dso_local i32 @ether_addr_copy(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
