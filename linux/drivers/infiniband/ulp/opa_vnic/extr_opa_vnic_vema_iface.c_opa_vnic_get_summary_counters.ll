; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/opa_vnic/extr_opa_vnic_vema_iface.c_opa_vnic_get_summary_counters.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/opa_vnic/extr_opa_vnic_vema_iface.c_opa_vnic_get_summary_counters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.opa_vnic_adapter = type { i32, %struct.TYPE_8__, i32, i32, i32, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 (i32, %struct.TYPE_10__*)* }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32, i32 }
%struct.opa_veswport_summary_counters = type { i8**, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i8*, i8* }
%struct.opa_vnic_stats = type { %struct.TYPE_9__, %struct.TYPE_10__ }
%struct.TYPE_9__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @opa_vnic_get_summary_counters(%struct.opa_vnic_adapter* %0, %struct.opa_veswport_summary_counters* %1) #0 {
  %3 = alloca %struct.opa_vnic_adapter*, align 8
  %4 = alloca %struct.opa_veswport_summary_counters*, align 8
  %5 = alloca %struct.opa_vnic_stats, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i32*, align 8
  store %struct.opa_vnic_adapter* %0, %struct.opa_vnic_adapter** %3, align 8
  store %struct.opa_veswport_summary_counters* %1, %struct.opa_veswport_summary_counters** %4, align 8
  %8 = call i32 @memset(%struct.opa_vnic_stats* %5, i32 0, i32 28)
  %9 = load %struct.opa_vnic_adapter*, %struct.opa_vnic_adapter** %3, align 8
  %10 = getelementptr inbounds %struct.opa_vnic_adapter, %struct.opa_vnic_adapter* %9, i32 0, i32 3
  %11 = call i32 @spin_lock(i32* %10)
  %12 = load %struct.opa_vnic_adapter*, %struct.opa_vnic_adapter** %3, align 8
  %13 = getelementptr inbounds %struct.opa_vnic_adapter, %struct.opa_vnic_adapter* %12, i32 0, i32 5
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i32 (i32, %struct.TYPE_10__*)*, i32 (i32, %struct.TYPE_10__*)** %15, align 8
  %17 = load %struct.opa_vnic_adapter*, %struct.opa_vnic_adapter** %3, align 8
  %18 = getelementptr inbounds %struct.opa_vnic_adapter, %struct.opa_vnic_adapter* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 8
  %20 = getelementptr inbounds %struct.opa_vnic_stats, %struct.opa_vnic_stats* %5, i32 0, i32 1
  %21 = call i32 %16(i32 %19, %struct.TYPE_10__* %20)
  %22 = load %struct.opa_vnic_adapter*, %struct.opa_vnic_adapter** %3, align 8
  %23 = getelementptr inbounds %struct.opa_vnic_adapter, %struct.opa_vnic_adapter* %22, i32 0, i32 3
  %24 = call i32 @spin_unlock(i32* %23)
  %25 = load %struct.opa_vnic_adapter*, %struct.opa_vnic_adapter** %3, align 8
  %26 = getelementptr inbounds %struct.opa_vnic_adapter, %struct.opa_vnic_adapter* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = call i8* @cpu_to_be16(i32 %27)
  %29 = load %struct.opa_veswport_summary_counters*, %struct.opa_veswport_summary_counters** %4, align 8
  %30 = getelementptr inbounds %struct.opa_veswport_summary_counters, %struct.opa_veswport_summary_counters* %29, i32 0, i32 10
  store i8* %28, i8** %30, align 8
  %31 = load %struct.opa_vnic_adapter*, %struct.opa_vnic_adapter** %3, align 8
  %32 = getelementptr inbounds %struct.opa_vnic_adapter, %struct.opa_vnic_adapter* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i8* @cpu_to_be16(i32 %35)
  %37 = load %struct.opa_veswport_summary_counters*, %struct.opa_veswport_summary_counters** %4, align 8
  %38 = getelementptr inbounds %struct.opa_veswport_summary_counters, %struct.opa_veswport_summary_counters* %37, i32 0, i32 9
  store i8* %36, i8** %38, align 8
  %39 = load %struct.opa_vnic_adapter*, %struct.opa_vnic_adapter** %3, align 8
  %40 = getelementptr inbounds %struct.opa_vnic_adapter, %struct.opa_vnic_adapter* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @cpu_to_be32(i32 %41)
  %43 = load %struct.opa_veswport_summary_counters*, %struct.opa_veswport_summary_counters** %4, align 8
  %44 = getelementptr inbounds %struct.opa_veswport_summary_counters, %struct.opa_veswport_summary_counters* %43, i32 0, i32 8
  store i32 %42, i32* %44, align 8
  %45 = getelementptr inbounds %struct.opa_vnic_stats, %struct.opa_vnic_stats* %5, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 5
  %47 = load i32, i32* %46, align 4
  %48 = call i8* @cpu_to_be64(i32 %47)
  %49 = load %struct.opa_veswport_summary_counters*, %struct.opa_veswport_summary_counters** %4, align 8
  %50 = getelementptr inbounds %struct.opa_veswport_summary_counters, %struct.opa_veswport_summary_counters* %49, i32 0, i32 7
  store i8* %48, i8** %50, align 8
  %51 = getelementptr inbounds %struct.opa_vnic_stats, %struct.opa_vnic_stats* %5, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 4
  %54 = call i8* @cpu_to_be64(i32 %53)
  %55 = load %struct.opa_veswport_summary_counters*, %struct.opa_veswport_summary_counters** %4, align 8
  %56 = getelementptr inbounds %struct.opa_veswport_summary_counters, %struct.opa_veswport_summary_counters* %55, i32 0, i32 6
  store i8* %54, i8** %56, align 8
  %57 = getelementptr inbounds %struct.opa_vnic_stats, %struct.opa_vnic_stats* %5, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = call i8* @cpu_to_be64(i32 %59)
  %61 = load %struct.opa_veswport_summary_counters*, %struct.opa_veswport_summary_counters** %4, align 8
  %62 = getelementptr inbounds %struct.opa_veswport_summary_counters, %struct.opa_veswport_summary_counters* %61, i32 0, i32 5
  store i8* %60, i8** %62, align 8
  %63 = getelementptr inbounds %struct.opa_vnic_stats, %struct.opa_vnic_stats* %5, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = call i8* @cpu_to_be64(i32 %65)
  %67 = load %struct.opa_veswport_summary_counters*, %struct.opa_veswport_summary_counters** %4, align 8
  %68 = getelementptr inbounds %struct.opa_veswport_summary_counters, %struct.opa_veswport_summary_counters* %67, i32 0, i32 4
  store i8* %66, i8** %68, align 8
  %69 = getelementptr inbounds %struct.opa_vnic_stats, %struct.opa_vnic_stats* %5, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i8* @cpu_to_be64(i32 %71)
  %73 = load %struct.opa_veswport_summary_counters*, %struct.opa_veswport_summary_counters** %4, align 8
  %74 = getelementptr inbounds %struct.opa_veswport_summary_counters, %struct.opa_veswport_summary_counters* %73, i32 0, i32 3
  store i8* %72, i8** %74, align 8
  %75 = getelementptr inbounds %struct.opa_vnic_stats, %struct.opa_vnic_stats* %5, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i8* @cpu_to_be64(i32 %77)
  %79 = load %struct.opa_veswport_summary_counters*, %struct.opa_veswport_summary_counters** %4, align 8
  %80 = getelementptr inbounds %struct.opa_veswport_summary_counters, %struct.opa_veswport_summary_counters* %79, i32 0, i32 2
  store i8* %78, i8** %80, align 8
  %81 = load %struct.opa_veswport_summary_counters*, %struct.opa_veswport_summary_counters** %4, align 8
  %82 = getelementptr inbounds %struct.opa_veswport_summary_counters, %struct.opa_veswport_summary_counters* %81, i32 0, i32 1
  store i8** %82, i8*** %6, align 8
  %83 = getelementptr inbounds %struct.opa_vnic_stats, %struct.opa_vnic_stats* %5, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 0
  store i32* %84, i32** %7, align 8
  br label %85

85:                                               ; preds = %97, %2
  %86 = load i8**, i8*** %6, align 8
  %87 = load %struct.opa_veswport_summary_counters*, %struct.opa_veswport_summary_counters** %4, align 8
  %88 = getelementptr inbounds %struct.opa_veswport_summary_counters, %struct.opa_veswport_summary_counters* %87, i32 0, i32 0
  %89 = load i8**, i8*** %88, align 8
  %90 = getelementptr inbounds i8*, i8** %89, i64 0
  %91 = icmp ult i8** %86, %90
  br i1 %91, label %92, label %102

92:                                               ; preds = %85
  %93 = load i32*, i32** %7, align 8
  %94 = load i32, i32* %93, align 4
  %95 = call i8* @cpu_to_be64(i32 %94)
  %96 = load i8**, i8*** %6, align 8
  store i8* %95, i8** %96, align 8
  br label %97

97:                                               ; preds = %92
  %98 = load i8**, i8*** %6, align 8
  %99 = getelementptr inbounds i8*, i8** %98, i32 1
  store i8** %99, i8*** %6, align 8
  %100 = load i32*, i32** %7, align 8
  %101 = getelementptr inbounds i32, i32* %100, i32 1
  store i32* %101, i32** %7, align 8
  br label %85

102:                                              ; preds = %85
  ret void
}

declare dso_local i32 @memset(%struct.opa_vnic_stats*, i32, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i8* @cpu_to_be16(i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i8* @cpu_to_be64(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
