; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_verbs.c_init_ibport.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_verbs.c_init_ibport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_pportdata = type { %struct.hfi1_ibport }
%struct.hfi1_ibport = type { i32*, i32*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32*, i32*, i32, i64, i32, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@RVT_MAX_TRAP_LISTS = common dso_local global i32 0, align 4
@hfi1_handle_trap_timer = common dso_local global i32 0, align 4
@IB_DEFAULT_GID_PREFIX = common dso_local global i32 0, align 4
@IB_PORT_AUTO_MIGR_SUP = common dso_local global i32 0, align 4
@IB_PORT_CAP_MASK_NOTICE_SUP = common dso_local global i32 0, align 4
@OPA_CAP_MASK3_IsSharedSpaceSupported = common dso_local global i32 0, align 4
@IB_PMA_PORT_XMIT_DATA = common dso_local global i32 0, align 4
@IB_PMA_PORT_RCV_DATA = common dso_local global i32 0, align 4
@IB_PMA_PORT_XMIT_PKTS = common dso_local global i32 0, align 4
@IB_PMA_PORT_RCV_PKTS = common dso_local global i32 0, align 4
@IB_PMA_PORT_XMIT_WAIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hfi1_pportdata*)* @init_ibport to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_ibport(%struct.hfi1_pportdata* %0) #0 {
  %2 = alloca %struct.hfi1_pportdata*, align 8
  %3 = alloca %struct.hfi1_ibport*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.hfi1_pportdata* %0, %struct.hfi1_pportdata** %2, align 8
  %6 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %2, align 8
  %7 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %6, i32 0, i32 0
  store %struct.hfi1_ibport* %7, %struct.hfi1_ibport** %3, align 8
  %8 = load %struct.hfi1_ibport*, %struct.hfi1_ibport** %3, align 8
  %9 = getelementptr inbounds %struct.hfi1_ibport, %struct.hfi1_ibport* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = call i64 @ARRAY_SIZE(i32* %10)
  store i64 %11, i64* %4, align 8
  store i32 0, i32* %5, align 4
  br label %12

12:                                               ; preds = %32, %1
  %13 = load i32, i32* %5, align 4
  %14 = sext i32 %13 to i64
  %15 = load i64, i64* %4, align 8
  %16 = icmp ult i64 %14, %15
  br i1 %16, label %17, label %35

17:                                               ; preds = %12
  %18 = load i32, i32* %5, align 4
  %19 = load %struct.hfi1_ibport*, %struct.hfi1_ibport** %3, align 8
  %20 = getelementptr inbounds %struct.hfi1_ibport, %struct.hfi1_ibport* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  store i32 %18, i32* %24, align 4
  %25 = load i32, i32* %5, align 4
  %26 = load %struct.hfi1_ibport*, %struct.hfi1_ibport** %3, align 8
  %27 = getelementptr inbounds %struct.hfi1_ibport, %struct.hfi1_ibport* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  store i32 %25, i32* %31, align 4
  br label %32

32:                                               ; preds = %17
  %33 = load i32, i32* %5, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %5, align 4
  br label %12

35:                                               ; preds = %12
  store i32 0, i32* %5, align 4
  br label %36

36:                                               ; preds = %50, %35
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* @RVT_MAX_TRAP_LISTS, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %53

40:                                               ; preds = %36
  %41 = load %struct.hfi1_ibport*, %struct.hfi1_ibport** %3, align 8
  %42 = getelementptr inbounds %struct.hfi1_ibport, %struct.hfi1_ibport* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 8
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = load i32, i32* %5, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = call i32 @INIT_LIST_HEAD(i32* %48)
  br label %50

50:                                               ; preds = %40
  %51 = load i32, i32* %5, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %5, align 4
  br label %36

53:                                               ; preds = %36
  %54 = load %struct.hfi1_ibport*, %struct.hfi1_ibport** %3, align 8
  %55 = getelementptr inbounds %struct.hfi1_ibport, %struct.hfi1_ibport* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 7
  %57 = load i32, i32* @hfi1_handle_trap_timer, align 4
  %58 = call i32 @timer_setup(i32* %56, i32 %57, i32 0)
  %59 = load %struct.hfi1_ibport*, %struct.hfi1_ibport** %3, align 8
  %60 = getelementptr inbounds %struct.hfi1_ibport, %struct.hfi1_ibport* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 6
  %62 = call i32 @spin_lock_init(i32* %61)
  %63 = load i32, i32* @IB_DEFAULT_GID_PREFIX, align 4
  %64 = load %struct.hfi1_ibport*, %struct.hfi1_ibport** %3, align 8
  %65 = getelementptr inbounds %struct.hfi1_ibport, %struct.hfi1_ibport* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 5
  store i32 %63, i32* %66, align 8
  %67 = load %struct.hfi1_ibport*, %struct.hfi1_ibport** %3, align 8
  %68 = getelementptr inbounds %struct.hfi1_ibport, %struct.hfi1_ibport* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 4
  store i64 0, i64* %69, align 8
  %70 = load i32, i32* @IB_PORT_AUTO_MIGR_SUP, align 4
  %71 = load i32, i32* @IB_PORT_CAP_MASK_NOTICE_SUP, align 4
  %72 = or i32 %70, %71
  %73 = load %struct.hfi1_ibport*, %struct.hfi1_ibport** %3, align 8
  %74 = getelementptr inbounds %struct.hfi1_ibport, %struct.hfi1_ibport* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  store i32 %72, i32* %75, align 8
  %76 = load i32, i32* @OPA_CAP_MASK3_IsSharedSpaceSupported, align 4
  %77 = load %struct.hfi1_ibport*, %struct.hfi1_ibport** %3, align 8
  %78 = getelementptr inbounds %struct.hfi1_ibport, %struct.hfi1_ibport* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 3
  store i32 %76, i32* %79, align 8
  %80 = load i32, i32* @IB_PMA_PORT_XMIT_DATA, align 4
  %81 = load %struct.hfi1_ibport*, %struct.hfi1_ibport** %3, align 8
  %82 = getelementptr inbounds %struct.hfi1_ibport, %struct.hfi1_ibport* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 2
  %84 = load i32*, i32** %83, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 0
  store i32 %80, i32* %85, align 4
  %86 = load i32, i32* @IB_PMA_PORT_RCV_DATA, align 4
  %87 = load %struct.hfi1_ibport*, %struct.hfi1_ibport** %3, align 8
  %88 = getelementptr inbounds %struct.hfi1_ibport, %struct.hfi1_ibport* %87, i32 0, i32 2
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 2
  %90 = load i32*, i32** %89, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 1
  store i32 %86, i32* %91, align 4
  %92 = load i32, i32* @IB_PMA_PORT_XMIT_PKTS, align 4
  %93 = load %struct.hfi1_ibport*, %struct.hfi1_ibport** %3, align 8
  %94 = getelementptr inbounds %struct.hfi1_ibport, %struct.hfi1_ibport* %93, i32 0, i32 2
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 2
  %96 = load i32*, i32** %95, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 2
  store i32 %92, i32* %97, align 4
  %98 = load i32, i32* @IB_PMA_PORT_RCV_PKTS, align 4
  %99 = load %struct.hfi1_ibport*, %struct.hfi1_ibport** %3, align 8
  %100 = getelementptr inbounds %struct.hfi1_ibport, %struct.hfi1_ibport* %99, i32 0, i32 2
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 2
  %102 = load i32*, i32** %101, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 3
  store i32 %98, i32* %103, align 4
  %104 = load i32, i32* @IB_PMA_PORT_XMIT_WAIT, align 4
  %105 = load %struct.hfi1_ibport*, %struct.hfi1_ibport** %3, align 8
  %106 = getelementptr inbounds %struct.hfi1_ibport, %struct.hfi1_ibport* %105, i32 0, i32 2
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 2
  %108 = load i32*, i32** %107, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 4
  store i32 %104, i32* %109, align 4
  %110 = load %struct.hfi1_ibport*, %struct.hfi1_ibport** %3, align 8
  %111 = getelementptr inbounds %struct.hfi1_ibport, %struct.hfi1_ibport* %110, i32 0, i32 2
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 1
  %113 = load i32*, i32** %112, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 0
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @RCU_INIT_POINTER(i32 %115, i32* null)
  %117 = load %struct.hfi1_ibport*, %struct.hfi1_ibport** %3, align 8
  %118 = getelementptr inbounds %struct.hfi1_ibport, %struct.hfi1_ibport* %117, i32 0, i32 2
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 1
  %120 = load i32*, i32** %119, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 1
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @RCU_INIT_POINTER(i32 %122, i32* null)
  ret void
}

declare dso_local i64 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @RCU_INIT_POINTER(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
