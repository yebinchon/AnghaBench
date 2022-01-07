; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_ti-sn65dsi86.c_ti_sn_bridge_parse_regulators.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_ti-sn65dsi86.c_ti_sn_bridge_parse_regulators.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ti_sn_bridge = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i8* }

@.str = private unnamed_addr constant [5 x i8] c"vcca\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"vcc\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"vccio\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"vpll\00", align 1
@__const.ti_sn_bridge_parse_regulators.ti_sn_bridge_supply_names = private unnamed_addr constant [4 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0)], align 16
@SN_REGULATOR_SUPPLY_NUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ti_sn_bridge*)* @ti_sn_bridge_parse_regulators to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ti_sn_bridge_parse_regulators(%struct.ti_sn_bridge* %0) #0 {
  %2 = alloca %struct.ti_sn_bridge*, align 8
  %3 = alloca i32, align 4
  %4 = alloca [4 x i8*], align 16
  store %struct.ti_sn_bridge* %0, %struct.ti_sn_bridge** %2, align 8
  %5 = bitcast [4 x i8*]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %5, i8* align 16 bitcast ([4 x i8*]* @__const.ti_sn_bridge_parse_regulators.ti_sn_bridge_supply_names to i8*), i64 32, i1 false)
  store i32 0, i32* %3, align 4
  br label %6

6:                                                ; preds = %22, %1
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @SN_REGULATOR_SUPPLY_NUM, align 4
  %9 = icmp ult i32 %7, %8
  br i1 %9, label %10, label %25

10:                                               ; preds = %6
  %11 = load i32, i32* %3, align 4
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds [4 x i8*], [4 x i8*]* %4, i64 0, i64 %12
  %14 = load i8*, i8** %13, align 8
  %15 = load %struct.ti_sn_bridge*, %struct.ti_sn_bridge** %2, align 8
  %16 = getelementptr inbounds %struct.ti_sn_bridge, %struct.ti_sn_bridge* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = load i32, i32* %3, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  store i8* %14, i8** %21, align 8
  br label %22

22:                                               ; preds = %10
  %23 = load i32, i32* %3, align 4
  %24 = add i32 %23, 1
  store i32 %24, i32* %3, align 4
  br label %6

25:                                               ; preds = %6
  %26 = load %struct.ti_sn_bridge*, %struct.ti_sn_bridge** %2, align 8
  %27 = getelementptr inbounds %struct.ti_sn_bridge, %struct.ti_sn_bridge* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @SN_REGULATOR_SUPPLY_NUM, align 4
  %30 = load %struct.ti_sn_bridge*, %struct.ti_sn_bridge** %2, align 8
  %31 = getelementptr inbounds %struct.ti_sn_bridge, %struct.ti_sn_bridge* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = call i32 @devm_regulator_bulk_get(i32 %28, i32 %29, %struct.TYPE_2__* %32)
  ret i32 %33
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @devm_regulator_bulk_get(i32, i32, %struct.TYPE_2__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
