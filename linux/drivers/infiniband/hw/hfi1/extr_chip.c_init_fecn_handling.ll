; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_chip.c_init_fecn_handling.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_chip.c_init_fecn_handling.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_devdata = type { i32, i32 }
%struct.rsm_map_table = type { i32, i32* }
%struct.rsm_rule_data = type { i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64 }

@TID_RDMA = common dso_local global i32 0, align 4
@NUM_MAP_ENTRIES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"FECN handling disabled - too many contexts allocated\0A\00", align 1
@RCV_RSM_MAP_TABLE_RCV_CONTEXT_A_MASK = common dso_local global i32 0, align 4
@RSM_INS_FECN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hfi1_devdata*, %struct.rsm_map_table*)* @init_fecn_handling to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_fecn_handling(%struct.hfi1_devdata* %0, %struct.rsm_map_table* %1) #0 {
  %3 = alloca %struct.hfi1_devdata*, align 8
  %4 = alloca %struct.rsm_map_table*, align 8
  %5 = alloca %struct.rsm_rule_data, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.hfi1_devdata* %0, %struct.hfi1_devdata** %3, align 8
  store %struct.rsm_map_table* %1, %struct.rsm_map_table** %4, align 8
  %14 = load i32, i32* @TID_RDMA, align 4
  %15 = call i64 @HFI1_CAP_IS_KSET(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i32 1, i32* %11, align 4
  br label %22

18:                                               ; preds = %2
  %19 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %20 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %11, align 4
  br label %22

22:                                               ; preds = %18, %17
  %23 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %24 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %11, align 4
  %27 = sub nsw i32 %25, %26
  store i32 %27, i32* %13, align 4
  %28 = load %struct.rsm_map_table*, %struct.rsm_map_table** %4, align 8
  %29 = getelementptr inbounds %struct.rsm_map_table, %struct.rsm_map_table* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* %13, align 4
  %32 = add nsw i32 %30, %31
  %33 = load i32, i32* @NUM_MAP_ENTRIES, align 4
  %34 = icmp sge i32 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %22
  %36 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %37 = call i32 @dd_dev_err(%struct.hfi1_devdata* %36, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0))
  br label %115

38:                                               ; preds = %22
  %39 = load i32, i32* @NUM_MAP_ENTRIES, align 4
  %40 = load %struct.rsm_map_table*, %struct.rsm_map_table** %4, align 8
  %41 = getelementptr inbounds %struct.rsm_map_table, %struct.rsm_map_table* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = add nsw i32 %39, %42
  %44 = load i32, i32* %11, align 4
  %45 = sub nsw i32 %43, %44
  %46 = sext i32 %45 to i64
  store i64 %46, i64* %12, align 8
  %47 = load i32, i32* %11, align 4
  store i32 %47, i32* %7, align 4
  %48 = load %struct.rsm_map_table*, %struct.rsm_map_table** %4, align 8
  %49 = getelementptr inbounds %struct.rsm_map_table, %struct.rsm_map_table* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  store i32 %50, i32* %8, align 4
  br label %51

51:                                               ; preds = %88, %38
  %52 = load i32, i32* %7, align 4
  %53 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %54 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = icmp slt i32 %52, %55
  br i1 %56, label %57, label %93

57:                                               ; preds = %51
  %58 = load i32, i32* %8, align 4
  %59 = srem i32 %58, 8
  %60 = mul nsw i32 %59, 8
  store i32 %60, i32* %9, align 4
  %61 = load i32, i32* %8, align 4
  %62 = sdiv i32 %61, 8
  store i32 %62, i32* %10, align 4
  %63 = load %struct.rsm_map_table*, %struct.rsm_map_table** %4, align 8
  %64 = getelementptr inbounds %struct.rsm_map_table, %struct.rsm_map_table* %63, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* %10, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i32, i32* %68, align 4
  store i32 %69, i32* %6, align 4
  %70 = load i32, i32* @RCV_RSM_MAP_TABLE_RCV_CONTEXT_A_MASK, align 4
  %71 = load i32, i32* %9, align 4
  %72 = shl i32 %70, %71
  %73 = xor i32 %72, -1
  %74 = load i32, i32* %6, align 4
  %75 = and i32 %74, %73
  store i32 %75, i32* %6, align 4
  %76 = load i32, i32* %7, align 4
  %77 = load i32, i32* %9, align 4
  %78 = shl i32 %76, %77
  %79 = load i32, i32* %6, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %6, align 4
  %81 = load i32, i32* %6, align 4
  %82 = load %struct.rsm_map_table*, %struct.rsm_map_table** %4, align 8
  %83 = getelementptr inbounds %struct.rsm_map_table, %struct.rsm_map_table* %82, i32 0, i32 1
  %84 = load i32*, i32** %83, align 8
  %85 = load i32, i32* %10, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  store i32 %81, i32* %87, align 4
  br label %88

88:                                               ; preds = %57
  %89 = load i32, i32* %7, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %7, align 4
  %91 = load i32, i32* %8, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %8, align 4
  br label %51

93:                                               ; preds = %51
  %94 = load i64, i64* %12, align 8
  %95 = getelementptr inbounds %struct.rsm_rule_data, %struct.rsm_rule_data* %5, i32 0, i32 11
  store i64 %94, i64* %95, align 8
  %96 = getelementptr inbounds %struct.rsm_rule_data, %struct.rsm_rule_data* %5, i32 0, i32 10
  store i64 0, i64* %96, align 8
  %97 = getelementptr inbounds %struct.rsm_rule_data, %struct.rsm_rule_data* %5, i32 0, i32 0
  store i32 95, i32* %97, align 8
  %98 = getelementptr inbounds %struct.rsm_rule_data, %struct.rsm_rule_data* %5, i32 0, i32 1
  store i32 133, i32* %98, align 4
  %99 = getelementptr inbounds %struct.rsm_rule_data, %struct.rsm_rule_data* %5, i32 0, i32 2
  store i32 64, i32* %99, align 8
  %100 = getelementptr inbounds %struct.rsm_rule_data, %struct.rsm_rule_data* %5, i32 0, i32 3
  store i32 8, i32* %100, align 4
  %101 = getelementptr inbounds %struct.rsm_rule_data, %struct.rsm_rule_data* %5, i32 0, i32 9
  store i64 0, i64* %101, align 8
  %102 = getelementptr inbounds %struct.rsm_rule_data, %struct.rsm_rule_data* %5, i32 0, i32 8
  store i64 0, i64* %102, align 8
  %103 = getelementptr inbounds %struct.rsm_rule_data, %struct.rsm_rule_data* %5, i32 0, i32 4
  store i32 1, i32* %103, align 8
  %104 = getelementptr inbounds %struct.rsm_rule_data, %struct.rsm_rule_data* %5, i32 0, i32 5
  store i32 1, i32* %104, align 4
  %105 = getelementptr inbounds %struct.rsm_rule_data, %struct.rsm_rule_data* %5, i32 0, i32 6
  store i32 1, i32* %105, align 8
  %106 = getelementptr inbounds %struct.rsm_rule_data, %struct.rsm_rule_data* %5, i32 0, i32 7
  store i32 1, i32* %106, align 4
  %107 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %108 = load i32, i32* @RSM_INS_FECN, align 4
  %109 = call i32 @add_rsm_rule(%struct.hfi1_devdata* %107, i32 %108, %struct.rsm_rule_data* %5)
  %110 = load i32, i32* %13, align 4
  %111 = load %struct.rsm_map_table*, %struct.rsm_map_table** %4, align 8
  %112 = getelementptr inbounds %struct.rsm_map_table, %struct.rsm_map_table* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = add nsw i32 %113, %110
  store i32 %114, i32* %112, align 8
  br label %115

115:                                              ; preds = %93, %35
  ret void
}

declare dso_local i64 @HFI1_CAP_IS_KSET(i32) #1

declare dso_local i32 @dd_dev_err(%struct.hfi1_devdata*, i8*) #1

declare dso_local i32 @add_rsm_rule(%struct.hfi1_devdata*, i32, %struct.rsm_rule_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
