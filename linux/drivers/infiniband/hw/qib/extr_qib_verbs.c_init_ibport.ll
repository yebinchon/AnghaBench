; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_verbs.c_init_ibport.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_verbs.c_init_ibport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_pportdata = type { %struct.TYPE_3__*, %struct.qib_ibport }
%struct.TYPE_3__ = type { i32 }
%struct.qib_ibport = type { %struct.TYPE_4__, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32*, i32*, i32, i32, i32 }
%struct.qib_verbs_counters = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@IB_DEFAULT_GID_PREFIX = common dso_local global i32 0, align 4
@IB_LID_PERMISSIVE = common dso_local global i32 0, align 4
@IB_PORT_SYS_IMAGE_GUID_SUP = common dso_local global i32 0, align 4
@IB_PORT_CLIENT_REG_SUP = common dso_local global i32 0, align 4
@IB_PORT_SL_MAP_SUP = common dso_local global i32 0, align 4
@IB_PORT_TRAP_SUP = common dso_local global i32 0, align 4
@IB_PORT_AUTO_MIGR_SUP = common dso_local global i32 0, align 4
@IB_PORT_DR_NOTICE_SUP = common dso_local global i32 0, align 4
@IB_PORT_CAP_MASK_NOTICE_SUP = common dso_local global i32 0, align 4
@IB_PORT_OTHER_LOCAL_CHANGES_SUP = common dso_local global i32 0, align 4
@QIB_HAS_LINK_LATENCY = common dso_local global i32 0, align 4
@IB_PORT_LINK_LATENCY_SUP = common dso_local global i32 0, align 4
@IB_PMA_PORT_XMIT_DATA = common dso_local global i32 0, align 4
@IB_PMA_PORT_RCV_DATA = common dso_local global i32 0, align 4
@IB_PMA_PORT_XMIT_PKTS = common dso_local global i32 0, align 4
@IB_PMA_PORT_RCV_PKTS = common dso_local global i32 0, align 4
@IB_PMA_PORT_XMIT_WAIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qib_pportdata*)* @init_ibport to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_ibport(%struct.qib_pportdata* %0) #0 {
  %2 = alloca %struct.qib_pportdata*, align 8
  %3 = alloca %struct.qib_verbs_counters, align 4
  %4 = alloca %struct.qib_ibport*, align 8
  store %struct.qib_pportdata* %0, %struct.qib_pportdata** %2, align 8
  %5 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %6 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %5, i32 0, i32 1
  store %struct.qib_ibport* %6, %struct.qib_ibport** %4, align 8
  %7 = load %struct.qib_ibport*, %struct.qib_ibport** %4, align 8
  %8 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 5
  %10 = call i32 @spin_lock_init(i32* %9)
  %11 = load i32, i32* @IB_DEFAULT_GID_PREFIX, align 4
  %12 = load %struct.qib_ibport*, %struct.qib_ibport** %4, align 8
  %13 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 4
  store i32 %11, i32* %14, align 4
  %15 = load i32, i32* @IB_LID_PERMISSIVE, align 4
  %16 = call i32 @be16_to_cpu(i32 %15)
  %17 = load %struct.qib_ibport*, %struct.qib_ibport** %4, align 8
  %18 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 3
  store i32 %16, i32* %19, align 8
  %20 = load i32, i32* @IB_PORT_SYS_IMAGE_GUID_SUP, align 4
  %21 = load i32, i32* @IB_PORT_CLIENT_REG_SUP, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @IB_PORT_SL_MAP_SUP, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @IB_PORT_TRAP_SUP, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @IB_PORT_AUTO_MIGR_SUP, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @IB_PORT_DR_NOTICE_SUP, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @IB_PORT_CAP_MASK_NOTICE_SUP, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @IB_PORT_OTHER_LOCAL_CHANGES_SUP, align 4
  %34 = or i32 %32, %33
  %35 = load %struct.qib_ibport*, %struct.qib_ibport** %4, align 8
  %36 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  store i32 %34, i32* %37, align 8
  %38 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %39 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %38, i32 0, i32 0
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @QIB_HAS_LINK_LATENCY, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %1
  %47 = load i32, i32* @IB_PORT_LINK_LATENCY_SUP, align 4
  %48 = load %struct.qib_ibport*, %struct.qib_ibport** %4, align 8
  %49 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = or i32 %51, %47
  store i32 %52, i32* %50, align 8
  br label %53

53:                                               ; preds = %46, %1
  %54 = load i32, i32* @IB_PMA_PORT_XMIT_DATA, align 4
  %55 = load %struct.qib_ibport*, %struct.qib_ibport** %4, align 8
  %56 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 2
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 0
  store i32 %54, i32* %59, align 4
  %60 = load i32, i32* @IB_PMA_PORT_RCV_DATA, align 4
  %61 = load %struct.qib_ibport*, %struct.qib_ibport** %4, align 8
  %62 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 2
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 1
  store i32 %60, i32* %65, align 4
  %66 = load i32, i32* @IB_PMA_PORT_XMIT_PKTS, align 4
  %67 = load %struct.qib_ibport*, %struct.qib_ibport** %4, align 8
  %68 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 2
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 2
  store i32 %66, i32* %71, align 4
  %72 = load i32, i32* @IB_PMA_PORT_RCV_PKTS, align 4
  %73 = load %struct.qib_ibport*, %struct.qib_ibport** %4, align 8
  %74 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 2
  %76 = load i32*, i32** %75, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 3
  store i32 %72, i32* %77, align 4
  %78 = load i32, i32* @IB_PMA_PORT_XMIT_WAIT, align 4
  %79 = load %struct.qib_ibport*, %struct.qib_ibport** %4, align 8
  %80 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 2
  %82 = load i32*, i32** %81, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 4
  store i32 %78, i32* %83, align 4
  %84 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %85 = call i32 @qib_get_counters(%struct.qib_pportdata* %84, %struct.qib_verbs_counters* %3)
  %86 = getelementptr inbounds %struct.qib_verbs_counters, %struct.qib_verbs_counters* %3, i32 0, i32 12
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.qib_ibport*, %struct.qib_ibport** %4, align 8
  %89 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %88, i32 0, i32 13
  store i32 %87, i32* %89, align 8
  %90 = getelementptr inbounds %struct.qib_verbs_counters, %struct.qib_verbs_counters* %3, i32 0, i32 11
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.qib_ibport*, %struct.qib_ibport** %4, align 8
  %93 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %92, i32 0, i32 12
  store i32 %91, i32* %93, align 4
  %94 = getelementptr inbounds %struct.qib_verbs_counters, %struct.qib_verbs_counters* %3, i32 0, i32 10
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.qib_ibport*, %struct.qib_ibport** %4, align 8
  %97 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %96, i32 0, i32 11
  store i32 %95, i32* %97, align 8
  %98 = getelementptr inbounds %struct.qib_verbs_counters, %struct.qib_verbs_counters* %3, i32 0, i32 9
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.qib_ibport*, %struct.qib_ibport** %4, align 8
  %101 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %100, i32 0, i32 10
  store i32 %99, i32* %101, align 4
  %102 = getelementptr inbounds %struct.qib_verbs_counters, %struct.qib_verbs_counters* %3, i32 0, i32 8
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.qib_ibport*, %struct.qib_ibport** %4, align 8
  %105 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %104, i32 0, i32 9
  store i32 %103, i32* %105, align 8
  %106 = getelementptr inbounds %struct.qib_verbs_counters, %struct.qib_verbs_counters* %3, i32 0, i32 7
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.qib_ibport*, %struct.qib_ibport** %4, align 8
  %109 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %108, i32 0, i32 8
  store i32 %107, i32* %109, align 4
  %110 = getelementptr inbounds %struct.qib_verbs_counters, %struct.qib_verbs_counters* %3, i32 0, i32 6
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.qib_ibport*, %struct.qib_ibport** %4, align 8
  %113 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %112, i32 0, i32 7
  store i32 %111, i32* %113, align 8
  %114 = getelementptr inbounds %struct.qib_verbs_counters, %struct.qib_verbs_counters* %3, i32 0, i32 5
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.qib_ibport*, %struct.qib_ibport** %4, align 8
  %117 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %116, i32 0, i32 6
  store i32 %115, i32* %117, align 4
  %118 = getelementptr inbounds %struct.qib_verbs_counters, %struct.qib_verbs_counters* %3, i32 0, i32 4
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.qib_ibport*, %struct.qib_ibport** %4, align 8
  %121 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %120, i32 0, i32 5
  store i32 %119, i32* %121, align 8
  %122 = getelementptr inbounds %struct.qib_verbs_counters, %struct.qib_verbs_counters* %3, i32 0, i32 3
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.qib_ibport*, %struct.qib_ibport** %4, align 8
  %125 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %124, i32 0, i32 4
  store i32 %123, i32* %125, align 4
  %126 = getelementptr inbounds %struct.qib_verbs_counters, %struct.qib_verbs_counters* %3, i32 0, i32 2
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.qib_ibport*, %struct.qib_ibport** %4, align 8
  %129 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %128, i32 0, i32 3
  store i32 %127, i32* %129, align 8
  %130 = getelementptr inbounds %struct.qib_verbs_counters, %struct.qib_verbs_counters* %3, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.qib_ibport*, %struct.qib_ibport** %4, align 8
  %133 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %132, i32 0, i32 2
  store i32 %131, i32* %133, align 4
  %134 = getelementptr inbounds %struct.qib_verbs_counters, %struct.qib_verbs_counters* %3, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.qib_ibport*, %struct.qib_ibport** %4, align 8
  %137 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %136, i32 0, i32 1
  store i32 %135, i32* %137, align 8
  %138 = load %struct.qib_ibport*, %struct.qib_ibport** %4, align 8
  %139 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 1
  %141 = load i32*, i32** %140, align 8
  %142 = getelementptr inbounds i32, i32* %141, i64 0
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @RCU_INIT_POINTER(i32 %143, i32* null)
  %145 = load %struct.qib_ibport*, %struct.qib_ibport** %4, align 8
  %146 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 1
  %148 = load i32*, i32** %147, align 8
  %149 = getelementptr inbounds i32, i32* %148, i64 1
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @RCU_INIT_POINTER(i32 %150, i32* null)
  ret void
}

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @qib_get_counters(%struct.qib_pportdata*, %struct.qib_verbs_counters*) #1

declare dso_local i32 @RCU_INIT_POINTER(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
