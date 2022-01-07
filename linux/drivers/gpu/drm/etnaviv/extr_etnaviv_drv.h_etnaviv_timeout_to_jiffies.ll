; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/etnaviv/extr_etnaviv_drv.h_etnaviv_timeout_to_jiffies.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/etnaviv/extr_etnaviv_drv.h_etnaviv_timeout_to_jiffies.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i32 }
%struct.timespec64 = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.timespec*)* @etnaviv_timeout_to_jiffies to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @etnaviv_timeout_to_jiffies(%struct.timespec* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.timespec*, align 8
  %4 = alloca %struct.timespec64, align 4
  %5 = alloca %struct.timespec64, align 4
  %6 = alloca %struct.timespec64, align 4
  %7 = alloca %struct.timespec64, align 4
  store %struct.timespec* %0, %struct.timespec** %3, align 8
  %8 = load %struct.timespec*, %struct.timespec** %3, align 8
  %9 = getelementptr inbounds %struct.timespec, %struct.timespec* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @timespec_to_timespec64(i32 %10)
  %12 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %6, i32 0, i32 0
  store i32 %11, i32* %12, align 4
  %13 = bitcast %struct.timespec64* %5 to i8*
  %14 = bitcast %struct.timespec64* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %13, i8* align 4 %14, i64 4, i1 false)
  %15 = call i32 @ktime_get_ts64(%struct.timespec64* %4)
  %16 = call i64 @timespec64_compare(%struct.timespec64* %5, %struct.timespec64* %4)
  %17 = icmp sle i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  store i64 0, i64* %2, align 8
  br label %29

19:                                               ; preds = %1
  %20 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %5, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %4, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @timespec64_sub(i32 %21, i32 %23)
  %25 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %7, i32 0, i32 0
  store i32 %24, i32* %25, align 4
  %26 = bitcast %struct.timespec64* %4 to i8*
  %27 = bitcast %struct.timespec64* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %26, i8* align 4 %27, i64 4, i1 false)
  %28 = call i64 @timespec64_to_jiffies(%struct.timespec64* %4)
  store i64 %28, i64* %2, align 8
  br label %29

29:                                               ; preds = %19, %18
  %30 = load i64, i64* %2, align 8
  ret i64 %30
}

declare dso_local i32 @timespec_to_timespec64(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ktime_get_ts64(%struct.timespec64*) #1

declare dso_local i64 @timespec64_compare(%struct.timespec64*, %struct.timespec64*) #1

declare dso_local i32 @timespec64_sub(i32, i32) #1

declare dso_local i64 @timespec64_to_jiffies(%struct.timespec64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
