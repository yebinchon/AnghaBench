; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-kcopyd.c_dm_kcopyd_do_callback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-kcopyd.c_dm_kcopyd_do_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kcopyd_job = type { i32, i64, %struct.dm_kcopyd_client* }
%struct.dm_kcopyd_client = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dm_kcopyd_do_callback(i8* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.kcopyd_job*, align 8
  %8 = alloca %struct.dm_kcopyd_client*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.kcopyd_job*
  store %struct.kcopyd_job* %10, %struct.kcopyd_job** %7, align 8
  %11 = load %struct.kcopyd_job*, %struct.kcopyd_job** %7, align 8
  %12 = getelementptr inbounds %struct.kcopyd_job, %struct.kcopyd_job* %11, i32 0, i32 2
  %13 = load %struct.dm_kcopyd_client*, %struct.dm_kcopyd_client** %12, align 8
  store %struct.dm_kcopyd_client* %13, %struct.dm_kcopyd_client** %8, align 8
  %14 = load i32, i32* %5, align 4
  %15 = load %struct.kcopyd_job*, %struct.kcopyd_job** %7, align 8
  %16 = getelementptr inbounds %struct.kcopyd_job, %struct.kcopyd_job* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 8
  %17 = load i64, i64* %6, align 8
  %18 = load %struct.kcopyd_job*, %struct.kcopyd_job** %7, align 8
  %19 = getelementptr inbounds %struct.kcopyd_job, %struct.kcopyd_job* %18, i32 0, i32 1
  store i64 %17, i64* %19, align 8
  %20 = load %struct.dm_kcopyd_client*, %struct.dm_kcopyd_client** %8, align 8
  %21 = getelementptr inbounds %struct.dm_kcopyd_client, %struct.dm_kcopyd_client* %20, i32 0, i32 0
  %22 = load %struct.kcopyd_job*, %struct.kcopyd_job** %7, align 8
  %23 = call i32 @push(i32* %21, %struct.kcopyd_job* %22)
  %24 = load %struct.dm_kcopyd_client*, %struct.dm_kcopyd_client** %8, align 8
  %25 = call i32 @wake(%struct.dm_kcopyd_client* %24)
  ret void
}

declare dso_local i32 @push(i32*, %struct.kcopyd_job*) #1

declare dso_local i32 @wake(%struct.dm_kcopyd_client*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
