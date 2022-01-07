; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_atmel_mxt_ts.c_mxt_set_t7_power_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_atmel_mxt_ts.c_mxt_set_t7_power_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mxt_data = type { i32, %struct.TYPE_2__*, %struct.t7_config }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }
%struct.t7_config = type { i32, i32 }

@MXT_POWER_CFG_DEEPSLEEP = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"Set T7 ACTV:%d IDLE:%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mxt_data*, i64)* @mxt_set_t7_power_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxt_set_t7_power_cfg(%struct.mxt_data* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mxt_data*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.t7_config*, align 8
  %9 = alloca %struct.t7_config, align 4
  store %struct.mxt_data* %0, %struct.mxt_data** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load %struct.mxt_data*, %struct.mxt_data** %4, align 8
  %11 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  store %struct.device* %13, %struct.device** %6, align 8
  %14 = bitcast %struct.t7_config* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %14, i8 0, i64 8, i1 false)
  %15 = load i64, i64* %5, align 8
  %16 = load i64, i64* @MXT_POWER_CFG_DEEPSLEEP, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store %struct.t7_config* %9, %struct.t7_config** %8, align 8
  br label %22

19:                                               ; preds = %2
  %20 = load %struct.mxt_data*, %struct.mxt_data** %4, align 8
  %21 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %20, i32 0, i32 2
  store %struct.t7_config* %21, %struct.t7_config** %8, align 8
  br label %22

22:                                               ; preds = %19, %18
  %23 = load %struct.mxt_data*, %struct.mxt_data** %4, align 8
  %24 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = load %struct.mxt_data*, %struct.mxt_data** %4, align 8
  %27 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.t7_config*, %struct.t7_config** %8, align 8
  %30 = call i32 @__mxt_write_reg(%struct.TYPE_2__* %25, i32 %28, i32 8, %struct.t7_config* %29)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %22
  %34 = load i32, i32* %7, align 4
  store i32 %34, i32* %3, align 4
  br label %44

35:                                               ; preds = %22
  %36 = load %struct.device*, %struct.device** %6, align 8
  %37 = load %struct.t7_config*, %struct.t7_config** %8, align 8
  %38 = getelementptr inbounds %struct.t7_config, %struct.t7_config* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.t7_config*, %struct.t7_config** %8, align 8
  %41 = getelementptr inbounds %struct.t7_config, %struct.t7_config* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @dev_dbg(%struct.device* %36, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %39, i32 %42)
  store i32 0, i32* %3, align 4
  br label %44

44:                                               ; preds = %35, %33
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @__mxt_write_reg(%struct.TYPE_2__*, i32, i32, %struct.t7_config*) #2

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
