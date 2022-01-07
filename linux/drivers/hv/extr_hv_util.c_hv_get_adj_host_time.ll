; ModuleID = '/home/carl/AnghaBench/linux/drivers/hv/extr_hv_util.c_hv_get_adj_host_time.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hv/extr_hv_util.c_hv_get_adj_host_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i32 (%struct.TYPE_4__*)* }
%struct.timespec64 = type { i32 }

@host_ts = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@hyperv_cs = common dso_local global %struct.TYPE_4__* null, align 8
@WLTIMEDELTA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @hv_get_adj_host_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hv_get_adj_host_time() #0 {
  %1 = alloca %struct.timespec64, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.timespec64, align 4
  %6 = load i64, i64* %4, align 8
  %7 = call i32 @spin_lock_irqsave(i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @host_ts, i32 0, i32 2), i64 %6)
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** @hyperv_cs, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i32 (%struct.TYPE_4__*)*, i32 (%struct.TYPE_4__*)** %9, align 8
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** @hyperv_cs, align 8
  %12 = call i32 %10(%struct.TYPE_4__* %11)
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @host_ts, i32 0, i32 0), align 4
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @host_ts, i32 0, i32 1), align 4
  %16 = sub nsw i32 %14, %15
  %17 = add nsw i32 %13, %16
  store i32 %17, i32* %2, align 4
  %18 = load i32, i32* %2, align 4
  %19 = load i32, i32* @WLTIMEDELTA, align 4
  %20 = sub nsw i32 %18, %19
  %21 = mul nsw i32 %20, 100
  %22 = call i32 @ns_to_timespec64(i32 %21)
  %23 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %5, i32 0, i32 0
  store i32 %22, i32* %23, align 4
  %24 = bitcast %struct.timespec64* %1 to i8*
  %25 = bitcast %struct.timespec64* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %24, i8* align 4 %25, i64 4, i1 false)
  %26 = load i64, i64* %4, align 8
  %27 = call i32 @spin_unlock_irqrestore(i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @host_ts, i32 0, i32 2), i64 %26)
  %28 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %1, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  ret i32 %29
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @ns_to_timespec64(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
