; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwtracing/stm/extr_p_sys-t.c_sys_t_clock_sync.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwtracing/stm/extr_p_sys-t.c_sys_t_clock_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stm_data = type { i64 (%struct.stm_data*, i32, i32, i32, i32, i32, i8*)* }

@CLOCK_SYNC_HEADER = common dso_local global i32 0, align 4
@STP_PACKET_DATA = common dso_local global i32 0, align 4
@STP_PACKET_TIMESTAMPED = common dso_local global i32 0, align 4
@NSEC_PER_SEC = common dso_local global i32 0, align 4
@STP_PACKET_FLAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.stm_data*, i32, i32)* @sys_t_clock_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @sys_t_clock_sync(%struct.stm_data* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.stm_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  %10 = alloca [2 x i32], align 4
  %11 = alloca i64, align 8
  store %struct.stm_data* %0, %struct.stm_data** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load i32, i32* @CLOCK_SYNC_HEADER, align 4
  store i32 %12, i32* %8, align 4
  store i8 0, i8* %9, align 1
  %13 = load %struct.stm_data*, %struct.stm_data** %5, align 8
  %14 = getelementptr inbounds %struct.stm_data, %struct.stm_data* %13, i32 0, i32 0
  %15 = load i64 (%struct.stm_data*, i32, i32, i32, i32, i32, i8*)*, i64 (%struct.stm_data*, i32, i32, i32, i32, i32, i8*)** %14, align 8
  %16 = load %struct.stm_data*, %struct.stm_data** %5, align 8
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @STP_PACKET_DATA, align 4
  %20 = load i32, i32* @STP_PACKET_TIMESTAMPED, align 4
  %21 = bitcast i32* %8 to i8*
  %22 = call i64 %15(%struct.stm_data* %16, i32 %17, i32 %18, i32 %19, i32 %20, i32 4, i8* %21)
  store i64 %22, i64* %11, align 8
  %23 = load i64, i64* %11, align 8
  %24 = icmp sle i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %3
  %26 = load i64, i64* %11, align 8
  store i64 %26, i64* %4, align 8
  br label %50

27:                                               ; preds = %3
  %28 = call i32 (...) @ktime_get_real_ns()
  %29 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  store i32 %28, i32* %29, align 4
  %30 = load i32, i32* @NSEC_PER_SEC, align 4
  %31 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  store i32 %30, i32* %31, align 4
  %32 = load %struct.stm_data*, %struct.stm_data** %5, align 8
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* %7, align 4
  %35 = bitcast [2 x i32]* %10 to i32**
  %36 = call i64 @stm_data_write(%struct.stm_data* %32, i32 %33, i32 %34, i32 0, i32** %35, i32 8)
  store i64 %36, i64* %11, align 8
  %37 = load i64, i64* %11, align 8
  %38 = icmp sle i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %27
  %40 = load i64, i64* %11, align 8
  store i64 %40, i64* %4, align 8
  br label %50

41:                                               ; preds = %27
  %42 = load %struct.stm_data*, %struct.stm_data** %5, align 8
  %43 = getelementptr inbounds %struct.stm_data, %struct.stm_data* %42, i32 0, i32 0
  %44 = load i64 (%struct.stm_data*, i32, i32, i32, i32, i32, i8*)*, i64 (%struct.stm_data*, i32, i32, i32, i32, i32, i8*)** %43, align 8
  %45 = load %struct.stm_data*, %struct.stm_data** %5, align 8
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* @STP_PACKET_FLAG, align 4
  %49 = call i64 %44(%struct.stm_data* %45, i32 %46, i32 %47, i32 %48, i32 0, i32 0, i8* %9)
  store i64 12, i64* %4, align 8
  br label %50

50:                                               ; preds = %41, %39, %25
  %51 = load i64, i64* %4, align 8
  ret i64 %51
}

declare dso_local i32 @ktime_get_real_ns(...) #1

declare dso_local i64 @stm_data_write(%struct.stm_data*, i32, i32, i32, i32**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
