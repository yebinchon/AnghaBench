; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn21/extr_dcn21_resource.c_update_bw_bounding_box.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn21/extr_dcn21_resource.c_update_bw_bounding_box.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_11__ = type { i64, %struct.TYPE_9__*, i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32 }
%struct.dc = type { i32 }
%struct.clk_bw_params = type { i32, %struct.clk_limit_table }
%struct.clk_limit_table = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i32, i32, i32 }
%struct.dcn21_resource_pool = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }

@dcn2_1_ip = common dso_local global %struct.TYPE_12__ zeroinitializer, align 4
@dcn2_1_soc = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dc*, %struct.clk_bw_params*)* @update_bw_bounding_box to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_bw_bounding_box(%struct.dc* %0, %struct.clk_bw_params* %1) #0 {
  %3 = alloca %struct.dc*, align 8
  %4 = alloca %struct.clk_bw_params*, align 8
  %5 = alloca %struct.dcn21_resource_pool*, align 8
  %6 = alloca %struct.clk_limit_table*, align 8
  %7 = alloca i32, align 4
  store %struct.dc* %0, %struct.dc** %3, align 8
  store %struct.clk_bw_params* %1, %struct.clk_bw_params** %4, align 8
  %8 = load %struct.dc*, %struct.dc** %3, align 8
  %9 = getelementptr inbounds %struct.dc, %struct.dc* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.dcn21_resource_pool* @TO_DCN21_RES_POOL(i32 %10)
  store %struct.dcn21_resource_pool* %11, %struct.dcn21_resource_pool** %5, align 8
  %12 = load %struct.clk_bw_params*, %struct.clk_bw_params** %4, align 8
  %13 = getelementptr inbounds %struct.clk_bw_params, %struct.clk_bw_params* %12, i32 0, i32 1
  store %struct.clk_limit_table* %13, %struct.clk_limit_table** %6, align 8
  %14 = load %struct.dcn21_resource_pool*, %struct.dcn21_resource_pool** %5, align 8
  %15 = getelementptr inbounds %struct.dcn21_resource_pool, %struct.dcn21_resource_pool* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @dcn2_1_ip, i32 0, i32 1), align 4
  %20 = load %struct.dcn21_resource_pool*, %struct.dcn21_resource_pool** %5, align 8
  %21 = getelementptr inbounds %struct.dcn21_resource_pool, %struct.dcn21_resource_pool* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @dcn2_1_ip, i32 0, i32 0), align 4
  %24 = load %struct.clk_bw_params*, %struct.clk_bw_params** %4, align 8
  %25 = getelementptr inbounds %struct.clk_bw_params, %struct.clk_bw_params* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @dcn2_1_soc, i32 0, i32 2), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @dcn2_1_soc, i32 0, i32 0), align 8
  store i32 0, i32* %7, align 4
  br label %27

27:                                               ; preds = %96, %2
  %28 = load i32, i32* %7, align 4
  %29 = load %struct.clk_limit_table*, %struct.clk_limit_table** %6, align 8
  %30 = getelementptr inbounds %struct.clk_limit_table, %struct.clk_limit_table* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp slt i32 %28, %31
  br i1 %32, label %33, label %99

33:                                               ; preds = %27
  %34 = load i32, i32* %7, align 4
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @dcn2_1_soc, i32 0, i32 1), align 8
  %36 = load i32, i32* %7, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  store i32 %34, i32* %39, align 4
  %40 = load %struct.clk_limit_table*, %struct.clk_limit_table** %6, align 8
  %41 = getelementptr inbounds %struct.clk_limit_table, %struct.clk_limit_table* %40, i32 0, i32 1
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %41, align 8
  %43 = load i32, i32* %7, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @dcn2_1_soc, i32 0, i32 1), align 8
  %49 = load i32, i32* %7, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 4
  store i32 %47, i32* %52, align 4
  %53 = load %struct.clk_limit_table*, %struct.clk_limit_table** %6, align 8
  %54 = getelementptr inbounds %struct.clk_limit_table, %struct.clk_limit_table* %53, i32 0, i32 1
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %54, align 8
  %56 = load i32, i32* %7, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @dcn2_1_soc, i32 0, i32 1), align 8
  %62 = load i32, i32* %7, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 3
  store i32 %60, i32* %65, align 4
  %66 = load %struct.clk_limit_table*, %struct.clk_limit_table** %6, align 8
  %67 = getelementptr inbounds %struct.clk_limit_table, %struct.clk_limit_table* %66, i32 0, i32 1
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %67, align 8
  %69 = load i32, i32* %7, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @dcn2_1_soc, i32 0, i32 1), align 8
  %75 = load i32, i32* %7, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 2
  store i32 %73, i32* %78, align 4
  %79 = load %struct.clk_limit_table*, %struct.clk_limit_table** %6, align 8
  %80 = getelementptr inbounds %struct.clk_limit_table, %struct.clk_limit_table* %79, i32 0, i32 1
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %80, align 8
  %82 = load i32, i32* %7, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = mul nsw i32 %86, 16
  %88 = sdiv i32 %87, 1000
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @dcn2_1_soc, i32 0, i32 1), align 8
  %90 = load i32, i32* %7, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 1
  store i32 %88, i32* %93, align 4
  %94 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @dcn2_1_soc, i32 0, i32 0), align 8
  %95 = add nsw i64 %94, 1
  store i64 %95, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @dcn2_1_soc, i32 0, i32 0), align 8
  br label %96

96:                                               ; preds = %33
  %97 = load i32, i32* %7, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %7, align 4
  br label %27

99:                                               ; preds = %27
  ret void
}

declare dso_local %struct.dcn21_resource_pool* @TO_DCN21_RES_POOL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
