; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_chip.c_add_rsm_rule.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_chip.c_add_rsm_rule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_devdata = type { i32 }
%struct.rsm_rule_data = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }

@RCV_RSM_CFG = common dso_local global i64 0, align 8
@RCV_RSM_CFG_OFFSET_SHIFT = common dso_local global i64 0, align 8
@RCV_RSM_CFG_PACKET_TYPE_SHIFT = common dso_local global i64 0, align 8
@RCV_RSM_SELECT = common dso_local global i64 0, align 8
@RCV_RSM_SELECT_FIELD1_OFFSET_SHIFT = common dso_local global i64 0, align 8
@RCV_RSM_SELECT_FIELD2_OFFSET_SHIFT = common dso_local global i64 0, align 8
@RCV_RSM_SELECT_INDEX1_OFFSET_SHIFT = common dso_local global i64 0, align 8
@RCV_RSM_SELECT_INDEX1_WIDTH_SHIFT = common dso_local global i64 0, align 8
@RCV_RSM_SELECT_INDEX2_OFFSET_SHIFT = common dso_local global i64 0, align 8
@RCV_RSM_SELECT_INDEX2_WIDTH_SHIFT = common dso_local global i64 0, align 8
@RCV_RSM_MATCH = common dso_local global i64 0, align 8
@RCV_RSM_MATCH_MASK1_SHIFT = common dso_local global i64 0, align 8
@RCV_RSM_MATCH_VALUE1_SHIFT = common dso_local global i64 0, align 8
@RCV_RSM_MATCH_MASK2_SHIFT = common dso_local global i64 0, align 8
@RCV_RSM_MATCH_VALUE2_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hfi1_devdata*, i32, %struct.rsm_rule_data*)* @add_rsm_rule to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_rsm_rule(%struct.hfi1_devdata* %0, i32 %1, %struct.rsm_rule_data* %2) #0 {
  %4 = alloca %struct.hfi1_devdata*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.rsm_rule_data*, align 8
  store %struct.hfi1_devdata* %0, %struct.hfi1_devdata** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.rsm_rule_data* %2, %struct.rsm_rule_data** %6, align 8
  %7 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %8 = load i64, i64* @RCV_RSM_CFG, align 8
  %9 = load i32, i32* %5, align 4
  %10 = mul nsw i32 8, %9
  %11 = sext i32 %10 to i64
  %12 = add nsw i64 %8, %11
  %13 = load %struct.rsm_rule_data*, %struct.rsm_rule_data** %6, align 8
  %14 = getelementptr inbounds %struct.rsm_rule_data, %struct.rsm_rule_data* %13, i32 0, i32 11
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @RCV_RSM_CFG_OFFSET_SHIFT, align 8
  %17 = shl i64 %15, %16
  %18 = load i32, i32* %5, align 4
  %19 = zext i32 %18 to i64
  %20 = shl i64 1, %19
  %21 = or i64 %17, %20
  %22 = load %struct.rsm_rule_data*, %struct.rsm_rule_data** %6, align 8
  %23 = getelementptr inbounds %struct.rsm_rule_data, %struct.rsm_rule_data* %22, i32 0, i32 10
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @RCV_RSM_CFG_PACKET_TYPE_SHIFT, align 8
  %26 = shl i64 %24, %25
  %27 = or i64 %21, %26
  %28 = call i32 @write_csr(%struct.hfi1_devdata* %7, i64 %12, i64 %27)
  %29 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %30 = load i64, i64* @RCV_RSM_SELECT, align 8
  %31 = load i32, i32* %5, align 4
  %32 = mul nsw i32 8, %31
  %33 = sext i32 %32 to i64
  %34 = add nsw i64 %30, %33
  %35 = load %struct.rsm_rule_data*, %struct.rsm_rule_data** %6, align 8
  %36 = getelementptr inbounds %struct.rsm_rule_data, %struct.rsm_rule_data* %35, i32 0, i32 9
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @RCV_RSM_SELECT_FIELD1_OFFSET_SHIFT, align 8
  %39 = shl i64 %37, %38
  %40 = load %struct.rsm_rule_data*, %struct.rsm_rule_data** %6, align 8
  %41 = getelementptr inbounds %struct.rsm_rule_data, %struct.rsm_rule_data* %40, i32 0, i32 8
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @RCV_RSM_SELECT_FIELD2_OFFSET_SHIFT, align 8
  %44 = shl i64 %42, %43
  %45 = or i64 %39, %44
  %46 = load %struct.rsm_rule_data*, %struct.rsm_rule_data** %6, align 8
  %47 = getelementptr inbounds %struct.rsm_rule_data, %struct.rsm_rule_data* %46, i32 0, i32 7
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @RCV_RSM_SELECT_INDEX1_OFFSET_SHIFT, align 8
  %50 = shl i64 %48, %49
  %51 = or i64 %45, %50
  %52 = load %struct.rsm_rule_data*, %struct.rsm_rule_data** %6, align 8
  %53 = getelementptr inbounds %struct.rsm_rule_data, %struct.rsm_rule_data* %52, i32 0, i32 6
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @RCV_RSM_SELECT_INDEX1_WIDTH_SHIFT, align 8
  %56 = shl i64 %54, %55
  %57 = or i64 %51, %56
  %58 = load %struct.rsm_rule_data*, %struct.rsm_rule_data** %6, align 8
  %59 = getelementptr inbounds %struct.rsm_rule_data, %struct.rsm_rule_data* %58, i32 0, i32 5
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @RCV_RSM_SELECT_INDEX2_OFFSET_SHIFT, align 8
  %62 = shl i64 %60, %61
  %63 = or i64 %57, %62
  %64 = load %struct.rsm_rule_data*, %struct.rsm_rule_data** %6, align 8
  %65 = getelementptr inbounds %struct.rsm_rule_data, %struct.rsm_rule_data* %64, i32 0, i32 4
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @RCV_RSM_SELECT_INDEX2_WIDTH_SHIFT, align 8
  %68 = shl i64 %66, %67
  %69 = or i64 %63, %68
  %70 = call i32 @write_csr(%struct.hfi1_devdata* %29, i64 %34, i64 %69)
  %71 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %72 = load i64, i64* @RCV_RSM_MATCH, align 8
  %73 = load i32, i32* %5, align 4
  %74 = mul nsw i32 8, %73
  %75 = sext i32 %74 to i64
  %76 = add nsw i64 %72, %75
  %77 = load %struct.rsm_rule_data*, %struct.rsm_rule_data** %6, align 8
  %78 = getelementptr inbounds %struct.rsm_rule_data, %struct.rsm_rule_data* %77, i32 0, i32 3
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @RCV_RSM_MATCH_MASK1_SHIFT, align 8
  %81 = shl i64 %79, %80
  %82 = load %struct.rsm_rule_data*, %struct.rsm_rule_data** %6, align 8
  %83 = getelementptr inbounds %struct.rsm_rule_data, %struct.rsm_rule_data* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @RCV_RSM_MATCH_VALUE1_SHIFT, align 8
  %86 = shl i64 %84, %85
  %87 = or i64 %81, %86
  %88 = load %struct.rsm_rule_data*, %struct.rsm_rule_data** %6, align 8
  %89 = getelementptr inbounds %struct.rsm_rule_data, %struct.rsm_rule_data* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @RCV_RSM_MATCH_MASK2_SHIFT, align 8
  %92 = shl i64 %90, %91
  %93 = or i64 %87, %92
  %94 = load %struct.rsm_rule_data*, %struct.rsm_rule_data** %6, align 8
  %95 = getelementptr inbounds %struct.rsm_rule_data, %struct.rsm_rule_data* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @RCV_RSM_MATCH_VALUE2_SHIFT, align 8
  %98 = shl i64 %96, %97
  %99 = or i64 %93, %98
  %100 = call i32 @write_csr(%struct.hfi1_devdata* %71, i64 %76, i64 %99)
  ret void
}

declare dso_local i32 @write_csr(%struct.hfi1_devdata*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
