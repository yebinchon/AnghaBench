; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_ruc.c_hfi1_make_grh.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_ruc.c_hfi1_make_grh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_ibport = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.ib_grh = type { i32, %struct.TYPE_6__, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.ib_global_route = type { i32, i32, i64, i32, i32 }

@IB_GRH_VERSION = common dso_local global i32 0, align 4
@IB_GRH_VERSION_SHIFT = common dso_local global i32 0, align 4
@IB_GRH_TCLASS_SHIFT = common dso_local global i32 0, align 4
@IB_GRH_FLOW_SHIFT = common dso_local global i32 0, align 4
@IB_GRH_NEXT_HDR = common dso_local global i32 0, align 4
@HFI1_GUIDS_PER_PORT = common dso_local global i64 0, align 8
@HFI1_PORT_GUID_INDEX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hfi1_make_grh(%struct.hfi1_ibport* %0, %struct.ib_grh* %1, %struct.ib_global_route* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.hfi1_ibport*, align 8
  %7 = alloca %struct.ib_grh*, align 8
  %8 = alloca %struct.ib_global_route*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.hfi1_ibport* %0, %struct.hfi1_ibport** %6, align 8
  store %struct.ib_grh* %1, %struct.ib_grh** %7, align 8
  store %struct.ib_global_route* %2, %struct.ib_global_route** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %11 = load i32, i32* @IB_GRH_VERSION, align 4
  %12 = load i32, i32* @IB_GRH_VERSION_SHIFT, align 4
  %13 = shl i32 %11, %12
  %14 = load %struct.ib_global_route*, %struct.ib_global_route** %8, align 8
  %15 = getelementptr inbounds %struct.ib_global_route, %struct.ib_global_route* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @IB_GRH_TCLASS_SHIFT, align 4
  %18 = shl i32 %16, %17
  %19 = or i32 %13, %18
  %20 = load %struct.ib_global_route*, %struct.ib_global_route** %8, align 8
  %21 = getelementptr inbounds %struct.ib_global_route, %struct.ib_global_route* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @IB_GRH_FLOW_SHIFT, align 4
  %24 = shl i32 %22, %23
  %25 = or i32 %19, %24
  %26 = call i32 @cpu_to_be32(i32 %25)
  %27 = load %struct.ib_grh*, %struct.ib_grh** %7, align 8
  %28 = getelementptr inbounds %struct.ib_grh, %struct.ib_grh* %27, i32 0, i32 5
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* %10, align 4
  %31 = add nsw i32 %29, %30
  %32 = shl i32 %31, 2
  %33 = call i32 @cpu_to_be16(i32 %32)
  %34 = load %struct.ib_grh*, %struct.ib_grh** %7, align 8
  %35 = getelementptr inbounds %struct.ib_grh, %struct.ib_grh* %34, i32 0, i32 4
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* @IB_GRH_NEXT_HDR, align 4
  %37 = load %struct.ib_grh*, %struct.ib_grh** %7, align 8
  %38 = getelementptr inbounds %struct.ib_grh, %struct.ib_grh* %37, i32 0, i32 3
  store i32 %36, i32* %38, align 4
  %39 = load %struct.ib_global_route*, %struct.ib_global_route** %8, align 8
  %40 = getelementptr inbounds %struct.ib_global_route, %struct.ib_global_route* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.ib_grh*, %struct.ib_grh** %7, align 8
  %43 = getelementptr inbounds %struct.ib_grh, %struct.ib_grh* %42, i32 0, i32 2
  store i32 %41, i32* %43, align 4
  %44 = load %struct.hfi1_ibport*, %struct.hfi1_ibport** %6, align 8
  %45 = getelementptr inbounds %struct.hfi1_ibport, %struct.hfi1_ibport* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.ib_grh*, %struct.ib_grh** %7, align 8
  %49 = getelementptr inbounds %struct.ib_grh, %struct.ib_grh* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 1
  store i32 %47, i32* %51, align 4
  %52 = load %struct.ib_global_route*, %struct.ib_global_route** %8, align 8
  %53 = getelementptr inbounds %struct.ib_global_route, %struct.ib_global_route* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @HFI1_GUIDS_PER_PORT, align 8
  %56 = icmp slt i64 %54, %55
  br i1 %56, label %57, label %63

57:                                               ; preds = %5
  %58 = load %struct.hfi1_ibport*, %struct.hfi1_ibport** %6, align 8
  %59 = load %struct.ib_global_route*, %struct.ib_global_route** %8, align 8
  %60 = getelementptr inbounds %struct.ib_global_route, %struct.ib_global_route* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = call i32 @get_sguid(%struct.hfi1_ibport* %58, i64 %61)
  br label %67

63:                                               ; preds = %5
  %64 = load %struct.hfi1_ibport*, %struct.hfi1_ibport** %6, align 8
  %65 = load i64, i64* @HFI1_PORT_GUID_INDEX, align 8
  %66 = call i32 @get_sguid(%struct.hfi1_ibport* %64, i64 %65)
  br label %67

67:                                               ; preds = %63, %57
  %68 = phi i32 [ %62, %57 ], [ %66, %63 ]
  %69 = load %struct.ib_grh*, %struct.ib_grh** %7, align 8
  %70 = getelementptr inbounds %struct.ib_grh, %struct.ib_grh* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  store i32 %68, i32* %72, align 4
  %73 = load %struct.ib_global_route*, %struct.ib_global_route** %8, align 8
  %74 = getelementptr inbounds %struct.ib_global_route, %struct.ib_global_route* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.ib_grh*, %struct.ib_grh** %7, align 8
  %77 = getelementptr inbounds %struct.ib_grh, %struct.ib_grh* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 4
  ret i32 7
}

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @get_sguid(%struct.hfi1_ibport*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
