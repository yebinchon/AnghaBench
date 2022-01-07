; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_ruc.c_qib_make_grh.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_ruc.c_qib_make_grh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_ibport = type { i32*, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.ib_grh = type { i32, %struct.TYPE_7__, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.ib_global_route = type { i32, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32 }

@IB_GRH_VERSION = common dso_local global i32 0, align 4
@IB_GRH_VERSION_SHIFT = common dso_local global i32 0, align 4
@IB_GRH_TCLASS_SHIFT = common dso_local global i32 0, align 4
@IB_GRH_FLOW_SHIFT = common dso_local global i32 0, align 4
@SIZE_OF_CRC = common dso_local global i32 0, align 4
@IB_GRH_NEXT_HDR = common dso_local global i32 0, align 4
@QIB_GUIDS_PER_PORT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qib_make_grh(%struct.qib_ibport* %0, %struct.ib_grh* %1, %struct.ib_global_route* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.qib_ibport*, align 8
  %7 = alloca %struct.ib_grh*, align 8
  %8 = alloca %struct.ib_global_route*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.qib_ibport* %0, %struct.qib_ibport** %6, align 8
  store %struct.ib_grh* %1, %struct.ib_grh** %7, align 8
  store %struct.ib_global_route* %2, %struct.ib_global_route** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %11 = load i32, i32* @IB_GRH_VERSION, align 4
  %12 = load i32, i32* @IB_GRH_VERSION_SHIFT, align 4
  %13 = shl i32 %11, %12
  %14 = load %struct.ib_global_route*, %struct.ib_global_route** %8, align 8
  %15 = getelementptr inbounds %struct.ib_global_route, %struct.ib_global_route* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
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
  %30 = sub nsw i32 %29, 2
  %31 = load i32, i32* %10, align 4
  %32 = add nsw i32 %30, %31
  %33 = load i32, i32* @SIZE_OF_CRC, align 4
  %34 = add nsw i32 %32, %33
  %35 = shl i32 %34, 2
  %36 = call i32 @cpu_to_be16(i32 %35)
  %37 = load %struct.ib_grh*, %struct.ib_grh** %7, align 8
  %38 = getelementptr inbounds %struct.ib_grh, %struct.ib_grh* %37, i32 0, i32 4
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* @IB_GRH_NEXT_HDR, align 4
  %40 = load %struct.ib_grh*, %struct.ib_grh** %7, align 8
  %41 = getelementptr inbounds %struct.ib_grh, %struct.ib_grh* %40, i32 0, i32 3
  store i32 %39, i32* %41, align 4
  %42 = load %struct.ib_global_route*, %struct.ib_global_route** %8, align 8
  %43 = getelementptr inbounds %struct.ib_global_route, %struct.ib_global_route* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.ib_grh*, %struct.ib_grh** %7, align 8
  %46 = getelementptr inbounds %struct.ib_grh, %struct.ib_grh* %45, i32 0, i32 2
  store i32 %44, i32* %46, align 4
  %47 = load %struct.qib_ibport*, %struct.qib_ibport** %6, align 8
  %48 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.ib_grh*, %struct.ib_grh** %7, align 8
  %52 = getelementptr inbounds %struct.ib_grh, %struct.ib_grh* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 1
  store i32 %50, i32* %54, align 4
  %55 = load %struct.ib_global_route*, %struct.ib_global_route** %8, align 8
  %56 = getelementptr inbounds %struct.ib_global_route, %struct.ib_global_route* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %68, label %59

59:                                               ; preds = %5
  %60 = load %struct.qib_ibport*, %struct.qib_ibport** %6, align 8
  %61 = call %struct.TYPE_8__* @ppd_from_ibp(%struct.qib_ibport* %60)
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.ib_grh*, %struct.ib_grh** %7, align 8
  %65 = getelementptr inbounds %struct.ib_grh, %struct.ib_grh* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  store i32 %63, i32* %67, align 4
  br label %90

68:                                               ; preds = %5
  %69 = load %struct.ib_global_route*, %struct.ib_global_route** %8, align 8
  %70 = getelementptr inbounds %struct.ib_global_route, %struct.ib_global_route* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @QIB_GUIDS_PER_PORT, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %89

74:                                               ; preds = %68
  %75 = load %struct.qib_ibport*, %struct.qib_ibport** %6, align 8
  %76 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = load %struct.ib_global_route*, %struct.ib_global_route** %8, align 8
  %79 = getelementptr inbounds %struct.ib_global_route, %struct.ib_global_route* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = sub nsw i32 %80, 1
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %77, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.ib_grh*, %struct.ib_grh** %7, align 8
  %86 = getelementptr inbounds %struct.ib_grh, %struct.ib_grh* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  store i32 %84, i32* %88, align 4
  br label %89

89:                                               ; preds = %74, %68
  br label %90

90:                                               ; preds = %89, %59
  %91 = load %struct.ib_global_route*, %struct.ib_global_route** %8, align 8
  %92 = getelementptr inbounds %struct.ib_global_route, %struct.ib_global_route* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.ib_grh*, %struct.ib_grh** %7, align 8
  %95 = getelementptr inbounds %struct.ib_grh, %struct.ib_grh* %94, i32 0, i32 0
  store i32 %93, i32* %95, align 4
  ret i32 7
}

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local %struct.TYPE_8__* @ppd_from_ibp(%struct.qib_ibport*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
