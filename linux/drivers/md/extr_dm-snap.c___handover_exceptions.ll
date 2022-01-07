; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-snap.c___handover_exceptions.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-snap.c___handover_exceptions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_snapshot = type { i64, i32, %struct.dm_exception_store*, %struct.TYPE_2__*, %struct.dm_exception_table }
%struct.dm_exception_store = type { i32, %struct.dm_snapshot*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.dm_exception_table = type { i32 }
%union.anon = type { %struct.dm_exception_store* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dm_snapshot*, %struct.dm_snapshot*)* @__handover_exceptions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__handover_exceptions(%struct.dm_snapshot* %0, %struct.dm_snapshot* %1) #0 {
  %3 = alloca %struct.dm_snapshot*, align 8
  %4 = alloca %struct.dm_snapshot*, align 8
  %5 = alloca %union.anon, align 8
  store %struct.dm_snapshot* %0, %struct.dm_snapshot** %3, align 8
  store %struct.dm_snapshot* %1, %struct.dm_snapshot** %4, align 8
  %6 = bitcast %union.anon* %5 to %struct.dm_exception_table*
  %7 = load %struct.dm_snapshot*, %struct.dm_snapshot** %4, align 8
  %8 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %7, i32 0, i32 4
  %9 = bitcast %struct.dm_exception_table* %6 to i8*
  %10 = bitcast %struct.dm_exception_table* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %9, i8* align 8 %10, i64 4, i1 false)
  %11 = load %struct.dm_snapshot*, %struct.dm_snapshot** %4, align 8
  %12 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %11, i32 0, i32 4
  %13 = load %struct.dm_snapshot*, %struct.dm_snapshot** %3, align 8
  %14 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %13, i32 0, i32 4
  %15 = bitcast %struct.dm_exception_table* %12 to i8*
  %16 = bitcast %struct.dm_exception_table* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %15, i8* align 8 %16, i64 4, i1 false)
  %17 = load %struct.dm_snapshot*, %struct.dm_snapshot** %3, align 8
  %18 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %17, i32 0, i32 4
  %19 = bitcast %union.anon* %5 to %struct.dm_exception_table*
  %20 = bitcast %struct.dm_exception_table* %18 to i8*
  %21 = bitcast %struct.dm_exception_table* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %20, i8* align 8 %21, i64 4, i1 false)
  %22 = load %struct.dm_snapshot*, %struct.dm_snapshot** %4, align 8
  %23 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %22, i32 0, i32 2
  %24 = load %struct.dm_exception_store*, %struct.dm_exception_store** %23, align 8
  %25 = bitcast %union.anon* %5 to %struct.dm_exception_store**
  store %struct.dm_exception_store* %24, %struct.dm_exception_store** %25, align 8
  %26 = load %struct.dm_snapshot*, %struct.dm_snapshot** %3, align 8
  %27 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %26, i32 0, i32 2
  %28 = load %struct.dm_exception_store*, %struct.dm_exception_store** %27, align 8
  %29 = load %struct.dm_snapshot*, %struct.dm_snapshot** %4, align 8
  %30 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %29, i32 0, i32 2
  store %struct.dm_exception_store* %28, %struct.dm_exception_store** %30, align 8
  %31 = bitcast %union.anon* %5 to %struct.dm_exception_store**
  %32 = load %struct.dm_exception_store*, %struct.dm_exception_store** %31, align 8
  %33 = getelementptr inbounds %struct.dm_exception_store, %struct.dm_exception_store* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.dm_snapshot*, %struct.dm_snapshot** %4, align 8
  %36 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %35, i32 0, i32 2
  %37 = load %struct.dm_exception_store*, %struct.dm_exception_store** %36, align 8
  %38 = getelementptr inbounds %struct.dm_exception_store, %struct.dm_exception_store* %37, i32 0, i32 2
  store i32 %34, i32* %38, align 8
  %39 = bitcast %union.anon* %5 to %struct.dm_exception_store**
  %40 = load %struct.dm_exception_store*, %struct.dm_exception_store** %39, align 8
  %41 = load %struct.dm_snapshot*, %struct.dm_snapshot** %3, align 8
  %42 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %41, i32 0, i32 2
  store %struct.dm_exception_store* %40, %struct.dm_exception_store** %42, align 8
  %43 = load %struct.dm_snapshot*, %struct.dm_snapshot** %4, align 8
  %44 = load %struct.dm_snapshot*, %struct.dm_snapshot** %4, align 8
  %45 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %44, i32 0, i32 2
  %46 = load %struct.dm_exception_store*, %struct.dm_exception_store** %45, align 8
  %47 = getelementptr inbounds %struct.dm_exception_store, %struct.dm_exception_store* %46, i32 0, i32 1
  store %struct.dm_snapshot* %43, %struct.dm_snapshot** %47, align 8
  %48 = load %struct.dm_snapshot*, %struct.dm_snapshot** %3, align 8
  %49 = load %struct.dm_snapshot*, %struct.dm_snapshot** %3, align 8
  %50 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %49, i32 0, i32 2
  %51 = load %struct.dm_exception_store*, %struct.dm_exception_store** %50, align 8
  %52 = getelementptr inbounds %struct.dm_exception_store, %struct.dm_exception_store* %51, i32 0, i32 1
  store %struct.dm_snapshot* %48, %struct.dm_snapshot** %52, align 8
  %53 = load %struct.dm_snapshot*, %struct.dm_snapshot** %4, align 8
  %54 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %53, i32 0, i32 2
  %55 = load %struct.dm_exception_store*, %struct.dm_exception_store** %54, align 8
  %56 = getelementptr inbounds %struct.dm_exception_store, %struct.dm_exception_store* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.dm_snapshot*, %struct.dm_snapshot** %4, align 8
  %59 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %58, i32 0, i32 3
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  store i32 %57, i32* %61, align 4
  %62 = load %struct.dm_snapshot*, %struct.dm_snapshot** %3, align 8
  %63 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.dm_snapshot*, %struct.dm_snapshot** %4, align 8
  %66 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %65, i32 0, i32 0
  store i64 %64, i64* %66, align 8
  %67 = load %struct.dm_snapshot*, %struct.dm_snapshot** %3, align 8
  %68 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.dm_snapshot*, %struct.dm_snapshot** %4, align 8
  %71 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 8
  %72 = load %struct.dm_snapshot*, %struct.dm_snapshot** %3, align 8
  %73 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %72, i32 0, i32 0
  store i64 0, i64* %73, align 8
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
