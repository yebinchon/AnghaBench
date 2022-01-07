; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_chip.c_init_qos.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_chip.c_init_qos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_devdata = type { i32, i32 }
%struct.rsm_map_table = type { i64, i32* }
%struct.rsm_rule_data = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@NUM_MAP_ENTRIES = common dso_local global i64 0, align 8
@FIRST_KERNEL_KCTXT = common dso_local global i32 0, align 4
@num_vls = common dso_local global i32 0, align 4
@krcvqs = common dso_local global i32* null, align 8
@RCV_RSM_MAP_TABLE_RCV_CONTEXT_A_MASK = common dso_local global i32 0, align 4
@LRH_BTH_MATCH_OFFSET = common dso_local global i32 0, align 4
@LRH_SC_MATCH_OFFSET = common dso_local global i32 0, align 4
@LRH_SC_SELECT_OFFSET = common dso_local global i32 0, align 4
@QPN_SELECT_OFFSET = common dso_local global i32 0, align 4
@LRH_BTH_MASK = common dso_local global i32 0, align 4
@LRH_BTH_VALUE = common dso_local global i32 0, align 4
@LRH_SC_MASK = common dso_local global i32 0, align 4
@LRH_SC_VALUE = common dso_local global i32 0, align 4
@RSM_INS_VERBS = common dso_local global i32 0, align 4
@HFI1_CTRL_CTXT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hfi1_devdata*, %struct.rsm_map_table*)* @init_qos to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_qos(%struct.hfi1_devdata* %0, %struct.rsm_map_table* %1) #0 {
  %3 = alloca %struct.hfi1_devdata*, align 8
  %4 = alloca %struct.rsm_map_table*, align 8
  %5 = alloca %struct.rsm_rule_data, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.hfi1_devdata* %0, %struct.hfi1_devdata** %3, align 8
  store %struct.rsm_map_table* %1, %struct.rsm_map_table** %4, align 8
  store i32 1, i32* %10, align 4
  %18 = load %struct.rsm_map_table*, %struct.rsm_map_table** %4, align 8
  %19 = icmp ne %struct.rsm_map_table* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %2
  br label %179

21:                                               ; preds = %2
  %22 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %23 = call i32 @qos_rmt_entries(%struct.hfi1_devdata* %22, i32* %11, i32* %10)
  store i32 %23, i32* %12, align 4
  %24 = load i32, i32* %12, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  br label %179

27:                                               ; preds = %21
  %28 = load i32, i32* %11, align 4
  %29 = shl i32 1, %28
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %11, align 4
  %31 = load i32, i32* %10, align 4
  %32 = add i32 %30, %31
  %33 = shl i32 1, %32
  store i32 %33, i32* %12, align 4
  %34 = load %struct.rsm_map_table*, %struct.rsm_map_table** %4, align 8
  %35 = getelementptr inbounds %struct.rsm_map_table, %struct.rsm_map_table* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i32, i32* %12, align 4
  %38 = zext i32 %37 to i64
  %39 = add nsw i64 %36, %38
  %40 = load i64, i64* @NUM_MAP_ENTRIES, align 8
  %41 = icmp sge i64 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %27
  br label %179

43:                                               ; preds = %27
  store i32 0, i32* %8, align 4
  %44 = load i32, i32* @FIRST_KERNEL_KCTXT, align 4
  store i32 %44, i32* %7, align 4
  br label %45

45:                                               ; preds = %130, %43
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* @num_vls, align 4
  %48 = icmp ult i32 %46, %47
  br i1 %48, label %49, label %133

49:                                               ; preds = %45
  store i32 0, i32* %9, align 4
  %50 = load i32, i32* %7, align 4
  store i32 %50, i32* %14, align 4
  br label %51

51:                                               ; preds = %119, %49
  %52 = load i32*, i32** @krcvqs, align 8
  %53 = load i32, i32* %8, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %51
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* %6, align 4
  %61 = icmp ult i32 %59, %60
  br label %62

62:                                               ; preds = %58, %51
  %63 = phi i1 [ false, %51 ], [ %61, %58 ]
  br i1 %63, label %64, label %122

64:                                               ; preds = %62
  %65 = load %struct.rsm_map_table*, %struct.rsm_map_table** %4, align 8
  %66 = getelementptr inbounds %struct.rsm_map_table, %struct.rsm_map_table* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i32, i32* %9, align 4
  %69 = load i32, i32* %10, align 4
  %70 = shl i32 %68, %69
  %71 = load i32, i32* %8, align 4
  %72 = xor i32 %70, %71
  %73 = zext i32 %72 to i64
  %74 = add nsw i64 %67, %73
  %75 = trunc i64 %74 to i32
  store i32 %75, i32* %15, align 4
  %76 = load i32, i32* %15, align 4
  %77 = urem i32 %76, 8
  %78 = mul i32 %77, 8
  store i32 %78, i32* %16, align 4
  %79 = load i32, i32* %15, align 4
  %80 = udiv i32 %79, 8
  store i32 %80, i32* %17, align 4
  %81 = load %struct.rsm_map_table*, %struct.rsm_map_table** %4, align 8
  %82 = getelementptr inbounds %struct.rsm_map_table, %struct.rsm_map_table* %81, i32 0, i32 1
  %83 = load i32*, i32** %82, align 8
  %84 = load i32, i32* %17, align 4
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = load i32, i32* %86, align 4
  store i32 %87, i32* %13, align 4
  %88 = load i32, i32* @RCV_RSM_MAP_TABLE_RCV_CONTEXT_A_MASK, align 4
  %89 = load i32, i32* %16, align 4
  %90 = shl i32 %88, %89
  %91 = xor i32 %90, -1
  %92 = load i32, i32* %13, align 4
  %93 = and i32 %92, %91
  store i32 %93, i32* %13, align 4
  %94 = load i32, i32* %14, align 4
  %95 = add i32 %94, 1
  store i32 %95, i32* %14, align 4
  %96 = load i32, i32* %16, align 4
  %97 = shl i32 %94, %96
  %98 = load i32, i32* %13, align 4
  %99 = or i32 %98, %97
  store i32 %99, i32* %13, align 4
  %100 = load i32, i32* %13, align 4
  %101 = load %struct.rsm_map_table*, %struct.rsm_map_table** %4, align 8
  %102 = getelementptr inbounds %struct.rsm_map_table, %struct.rsm_map_table* %101, i32 0, i32 1
  %103 = load i32*, i32** %102, align 8
  %104 = load i32, i32* %17, align 4
  %105 = zext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  store i32 %100, i32* %106, align 4
  %107 = load i32, i32* %14, align 4
  %108 = load i32, i32* %7, align 4
  %109 = load i32*, i32** @krcvqs, align 8
  %110 = load i32, i32* %8, align 4
  %111 = zext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %109, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = add i32 %108, %113
  %115 = icmp eq i32 %107, %114
  br i1 %115, label %116, label %118

116:                                              ; preds = %64
  %117 = load i32, i32* %7, align 4
  store i32 %117, i32* %14, align 4
  br label %118

118:                                              ; preds = %116, %64
  br label %119

119:                                              ; preds = %118
  %120 = load i32, i32* %9, align 4
  %121 = add i32 %120, 1
  store i32 %121, i32* %9, align 4
  br label %51

122:                                              ; preds = %62
  %123 = load i32*, i32** @krcvqs, align 8
  %124 = load i32, i32* %8, align 4
  %125 = zext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %123, i64 %125
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* %7, align 4
  %129 = add i32 %128, %127
  store i32 %129, i32* %7, align 4
  br label %130

130:                                              ; preds = %122
  %131 = load i32, i32* %8, align 4
  %132 = add i32 %131, 1
  store i32 %132, i32* %8, align 4
  br label %45

133:                                              ; preds = %45
  %134 = load %struct.rsm_map_table*, %struct.rsm_map_table** %4, align 8
  %135 = getelementptr inbounds %struct.rsm_map_table, %struct.rsm_map_table* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = trunc i64 %136 to i32
  %138 = getelementptr inbounds %struct.rsm_rule_data, %struct.rsm_rule_data* %5, i32 0, i32 0
  store i32 %137, i32* %138, align 4
  %139 = getelementptr inbounds %struct.rsm_rule_data, %struct.rsm_rule_data* %5, i32 0, i32 1
  store i32 2, i32* %139, align 4
  %140 = load i32, i32* @LRH_BTH_MATCH_OFFSET, align 4
  %141 = getelementptr inbounds %struct.rsm_rule_data, %struct.rsm_rule_data* %5, i32 0, i32 11
  store i32 %140, i32* %141, align 4
  %142 = load i32, i32* @LRH_SC_MATCH_OFFSET, align 4
  %143 = getelementptr inbounds %struct.rsm_rule_data, %struct.rsm_rule_data* %5, i32 0, i32 10
  store i32 %142, i32* %143, align 4
  %144 = load i32, i32* @LRH_SC_SELECT_OFFSET, align 4
  %145 = getelementptr inbounds %struct.rsm_rule_data, %struct.rsm_rule_data* %5, i32 0, i32 9
  store i32 %144, i32* %145, align 4
  %146 = load i32, i32* %10, align 4
  %147 = getelementptr inbounds %struct.rsm_rule_data, %struct.rsm_rule_data* %5, i32 0, i32 2
  store i32 %146, i32* %147, align 4
  %148 = load i32, i32* @QPN_SELECT_OFFSET, align 4
  %149 = getelementptr inbounds %struct.rsm_rule_data, %struct.rsm_rule_data* %5, i32 0, i32 8
  store i32 %148, i32* %149, align 4
  %150 = load i32, i32* %11, align 4
  %151 = load i32, i32* %10, align 4
  %152 = add i32 %150, %151
  %153 = getelementptr inbounds %struct.rsm_rule_data, %struct.rsm_rule_data* %5, i32 0, i32 3
  store i32 %152, i32* %153, align 4
  %154 = load i32, i32* @LRH_BTH_MASK, align 4
  %155 = getelementptr inbounds %struct.rsm_rule_data, %struct.rsm_rule_data* %5, i32 0, i32 7
  store i32 %154, i32* %155, align 4
  %156 = load i32, i32* @LRH_BTH_VALUE, align 4
  %157 = getelementptr inbounds %struct.rsm_rule_data, %struct.rsm_rule_data* %5, i32 0, i32 6
  store i32 %156, i32* %157, align 4
  %158 = load i32, i32* @LRH_SC_MASK, align 4
  %159 = getelementptr inbounds %struct.rsm_rule_data, %struct.rsm_rule_data* %5, i32 0, i32 5
  store i32 %158, i32* %159, align 4
  %160 = load i32, i32* @LRH_SC_VALUE, align 4
  %161 = getelementptr inbounds %struct.rsm_rule_data, %struct.rsm_rule_data* %5, i32 0, i32 4
  store i32 %160, i32* %161, align 4
  %162 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %163 = load i32, i32* @RSM_INS_VERBS, align 4
  %164 = call i32 @add_rsm_rule(%struct.hfi1_devdata* %162, i32 %163, %struct.rsm_rule_data* %5)
  %165 = load i32, i32* %12, align 4
  %166 = zext i32 %165 to i64
  %167 = load %struct.rsm_map_table*, %struct.rsm_map_table** %4, align 8
  %168 = getelementptr inbounds %struct.rsm_map_table, %struct.rsm_map_table* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = add nsw i64 %169, %166
  store i64 %170, i64* %168, align 8
  %171 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %172 = load i32, i32* @HFI1_CTRL_CTXT, align 4
  %173 = load i32, i32* @HFI1_CTRL_CTXT, align 4
  %174 = call i32 @init_qpmap_table(%struct.hfi1_devdata* %171, i32 %172, i32 %173)
  %175 = load i32, i32* %10, align 4
  %176 = add i32 %175, 1
  %177 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %178 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %177, i32 0, i32 0
  store i32 %176, i32* %178, align 4
  br label %189

179:                                              ; preds = %42, %26, %20
  %180 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %181 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %180, i32 0, i32 0
  store i32 1, i32* %181, align 4
  %182 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %183 = load i32, i32* @FIRST_KERNEL_KCTXT, align 4
  %184 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %185 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 4
  %187 = sub i32 %186, 1
  %188 = call i32 @init_qpmap_table(%struct.hfi1_devdata* %182, i32 %183, i32 %187)
  br label %189

189:                                              ; preds = %179, %133
  ret void
}

declare dso_local i32 @qos_rmt_entries(%struct.hfi1_devdata*, i32*, i32*) #1

declare dso_local i32 @add_rsm_rule(%struct.hfi1_devdata*, i32, %struct.rsm_rule_data*) #1

declare dso_local i32 @init_qpmap_table(%struct.hfi1_devdata*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
