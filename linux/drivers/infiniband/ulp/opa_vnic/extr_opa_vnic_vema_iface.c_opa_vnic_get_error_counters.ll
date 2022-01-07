; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/opa_vnic/extr_opa_vnic_vema_iface.c_opa_vnic_get_error_counters.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/opa_vnic/extr_opa_vnic_vema_iface.c_opa_vnic_get_error_counters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.opa_vnic_adapter = type { i32, %struct.TYPE_7__, i32, i32, i32, %struct.TYPE_5__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 (i32, %struct.TYPE_8__*)* }
%struct.TYPE_8__ = type { i64, i64, i64, i64, i64, i64 }
%struct.opa_veswport_error_counters = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i8*, i8* }
%struct.opa_vnic_stats = type { %struct.TYPE_8__, i64, i64, i64, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @opa_vnic_get_error_counters(%struct.opa_vnic_adapter* %0, %struct.opa_veswport_error_counters* %1) #0 {
  %3 = alloca %struct.opa_vnic_adapter*, align 8
  %4 = alloca %struct.opa_veswport_error_counters*, align 8
  %5 = alloca %struct.opa_vnic_stats, align 8
  store %struct.opa_vnic_adapter* %0, %struct.opa_vnic_adapter** %3, align 8
  store %struct.opa_veswport_error_counters* %1, %struct.opa_veswport_error_counters** %4, align 8
  %6 = call i32 @memset(%struct.opa_vnic_stats* %5, i32 0, i32 88)
  %7 = load %struct.opa_vnic_adapter*, %struct.opa_vnic_adapter** %3, align 8
  %8 = getelementptr inbounds %struct.opa_vnic_adapter, %struct.opa_vnic_adapter* %7, i32 0, i32 3
  %9 = call i32 @spin_lock(i32* %8)
  %10 = load %struct.opa_vnic_adapter*, %struct.opa_vnic_adapter** %3, align 8
  %11 = getelementptr inbounds %struct.opa_vnic_adapter, %struct.opa_vnic_adapter* %10, i32 0, i32 5
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i32 (i32, %struct.TYPE_8__*)*, i32 (i32, %struct.TYPE_8__*)** %13, align 8
  %15 = load %struct.opa_vnic_adapter*, %struct.opa_vnic_adapter** %3, align 8
  %16 = getelementptr inbounds %struct.opa_vnic_adapter, %struct.opa_vnic_adapter* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 8
  %18 = getelementptr inbounds %struct.opa_vnic_stats, %struct.opa_vnic_stats* %5, i32 0, i32 0
  %19 = call i32 %14(i32 %17, %struct.TYPE_8__* %18)
  %20 = load %struct.opa_vnic_adapter*, %struct.opa_vnic_adapter** %3, align 8
  %21 = getelementptr inbounds %struct.opa_vnic_adapter, %struct.opa_vnic_adapter* %20, i32 0, i32 3
  %22 = call i32 @spin_unlock(i32* %21)
  %23 = load %struct.opa_vnic_adapter*, %struct.opa_vnic_adapter** %3, align 8
  %24 = getelementptr inbounds %struct.opa_vnic_adapter, %struct.opa_vnic_adapter* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = call i8* @cpu_to_be16(i32 %25)
  %27 = load %struct.opa_veswport_error_counters*, %struct.opa_veswport_error_counters** %4, align 8
  %28 = getelementptr inbounds %struct.opa_veswport_error_counters, %struct.opa_veswport_error_counters* %27, i32 0, i32 12
  store i8* %26, i8** %28, align 8
  %29 = load %struct.opa_vnic_adapter*, %struct.opa_vnic_adapter** %3, align 8
  %30 = getelementptr inbounds %struct.opa_vnic_adapter, %struct.opa_vnic_adapter* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i8* @cpu_to_be16(i32 %33)
  %35 = load %struct.opa_veswport_error_counters*, %struct.opa_veswport_error_counters** %4, align 8
  %36 = getelementptr inbounds %struct.opa_veswport_error_counters, %struct.opa_veswport_error_counters* %35, i32 0, i32 11
  store i8* %34, i8** %36, align 8
  %37 = load %struct.opa_vnic_adapter*, %struct.opa_vnic_adapter** %3, align 8
  %38 = getelementptr inbounds %struct.opa_vnic_adapter, %struct.opa_vnic_adapter* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @cpu_to_be32(i32 %39)
  %41 = load %struct.opa_veswport_error_counters*, %struct.opa_veswport_error_counters** %4, align 8
  %42 = getelementptr inbounds %struct.opa_veswport_error_counters, %struct.opa_veswport_error_counters* %41, i32 0, i32 10
  store i32 %40, i32* %42, align 8
  %43 = getelementptr inbounds %struct.opa_vnic_stats, %struct.opa_vnic_stats* %5, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 5
  %45 = load i64, i64* %44, align 8
  %46 = call i8* @cpu_to_be64(i64 %45)
  %47 = load %struct.opa_veswport_error_counters*, %struct.opa_veswport_error_counters** %4, align 8
  %48 = getelementptr inbounds %struct.opa_veswport_error_counters, %struct.opa_veswport_error_counters* %47, i32 0, i32 9
  store i8* %46, i8** %48, align 8
  %49 = getelementptr inbounds %struct.opa_vnic_stats, %struct.opa_vnic_stats* %5, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 4
  %51 = load i64, i64* %50, align 8
  %52 = call i8* @cpu_to_be64(i64 %51)
  %53 = load %struct.opa_veswport_error_counters*, %struct.opa_veswport_error_counters** %4, align 8
  %54 = getelementptr inbounds %struct.opa_veswport_error_counters, %struct.opa_veswport_error_counters* %53, i32 0, i32 8
  store i8* %52, i8** %54, align 8
  %55 = getelementptr inbounds %struct.opa_vnic_stats, %struct.opa_vnic_stats* %5, i32 0, i32 5
  %56 = load i64, i64* %55, align 8
  %57 = call i8* @cpu_to_be64(i64 %56)
  %58 = load %struct.opa_veswport_error_counters*, %struct.opa_veswport_error_counters** %4, align 8
  %59 = getelementptr inbounds %struct.opa_veswport_error_counters, %struct.opa_veswport_error_counters* %58, i32 0, i32 7
  store i8* %57, i8** %59, align 8
  %60 = getelementptr inbounds %struct.opa_vnic_stats, %struct.opa_vnic_stats* %5, i32 0, i32 4
  %61 = load i64, i64* %60, align 8
  %62 = call i8* @cpu_to_be64(i64 %61)
  %63 = load %struct.opa_veswport_error_counters*, %struct.opa_veswport_error_counters** %4, align 8
  %64 = getelementptr inbounds %struct.opa_veswport_error_counters, %struct.opa_veswport_error_counters* %63, i32 0, i32 6
  store i8* %62, i8** %64, align 8
  %65 = getelementptr inbounds %struct.opa_vnic_stats, %struct.opa_vnic_stats* %5, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 3
  %67 = load i64, i64* %66, align 8
  %68 = getelementptr inbounds %struct.opa_vnic_stats, %struct.opa_vnic_stats* %5, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = add nsw i64 %67, %70
  %72 = call i8* @cpu_to_be64(i64 %71)
  %73 = load %struct.opa_veswport_error_counters*, %struct.opa_veswport_error_counters** %4, align 8
  %74 = getelementptr inbounds %struct.opa_veswport_error_counters, %struct.opa_veswport_error_counters* %73, i32 0, i32 5
  store i8* %72, i8** %74, align 8
  %75 = getelementptr inbounds %struct.opa_vnic_stats, %struct.opa_vnic_stats* %5, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = call i8* @cpu_to_be64(i64 %77)
  %79 = load %struct.opa_veswport_error_counters*, %struct.opa_veswport_error_counters** %4, align 8
  %80 = getelementptr inbounds %struct.opa_veswport_error_counters, %struct.opa_veswport_error_counters* %79, i32 0, i32 4
  store i8* %78, i8** %80, align 8
  %81 = getelementptr inbounds %struct.opa_vnic_stats, %struct.opa_vnic_stats* %5, i32 0, i32 3
  %82 = load i64, i64* %81, align 8
  %83 = call i8* @cpu_to_be64(i64 %82)
  %84 = load %struct.opa_veswport_error_counters*, %struct.opa_veswport_error_counters** %4, align 8
  %85 = getelementptr inbounds %struct.opa_veswport_error_counters, %struct.opa_veswport_error_counters* %84, i32 0, i32 3
  store i8* %83, i8** %85, align 8
  %86 = getelementptr inbounds %struct.opa_vnic_stats, %struct.opa_vnic_stats* %5, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = call i8* @cpu_to_be64(i64 %87)
  %89 = load %struct.opa_veswport_error_counters*, %struct.opa_veswport_error_counters** %4, align 8
  %90 = getelementptr inbounds %struct.opa_veswport_error_counters, %struct.opa_veswport_error_counters* %89, i32 0, i32 2
  store i8* %88, i8** %90, align 8
  %91 = getelementptr inbounds %struct.opa_vnic_stats, %struct.opa_vnic_stats* %5, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = call i8* @cpu_to_be64(i64 %92)
  %94 = load %struct.opa_veswport_error_counters*, %struct.opa_veswport_error_counters** %4, align 8
  %95 = getelementptr inbounds %struct.opa_veswport_error_counters, %struct.opa_veswport_error_counters* %94, i32 0, i32 1
  store i8* %93, i8** %95, align 8
  %96 = getelementptr inbounds %struct.opa_vnic_stats, %struct.opa_vnic_stats* %5, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = call i8* @cpu_to_be64(i64 %98)
  %100 = load %struct.opa_veswport_error_counters*, %struct.opa_veswport_error_counters** %4, align 8
  %101 = getelementptr inbounds %struct.opa_veswport_error_counters, %struct.opa_veswport_error_counters* %100, i32 0, i32 0
  store i8* %99, i8** %101, align 8
  ret void
}

declare dso_local i32 @memset(%struct.opa_vnic_stats*, i32, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i8* @cpu_to_be16(i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i8* @cpu_to_be64(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
