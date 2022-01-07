; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_smu_v11_0.c_smu_v11_0_get_max_sustainable_clocks_by_dc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_smu_v11_0.c_smu_v11_0_get_max_sustainable_clocks_by_dc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smu_context = type { %struct.smu_table_context }
%struct.smu_table_context = type { %struct.smu_11_0_max_sustainable_clocks* }
%struct.smu_11_0_max_sustainable_clocks = type { i64, i64, i64, i64, i64, i64 }
%struct.pp_smu_nv_clock_table = type { i32, i32, i32, i32, i32, i32, i64, i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smu_context*, %struct.pp_smu_nv_clock_table*)* @smu_v11_0_get_max_sustainable_clocks_by_dc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smu_v11_0_get_max_sustainable_clocks_by_dc(%struct.smu_context* %0, %struct.pp_smu_nv_clock_table* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.smu_context*, align 8
  %5 = alloca %struct.pp_smu_nv_clock_table*, align 8
  %6 = alloca %struct.smu_table_context*, align 8
  %7 = alloca %struct.smu_11_0_max_sustainable_clocks*, align 8
  store %struct.smu_context* %0, %struct.smu_context** %4, align 8
  store %struct.pp_smu_nv_clock_table* %1, %struct.pp_smu_nv_clock_table** %5, align 8
  %8 = load %struct.smu_context*, %struct.smu_context** %4, align 8
  %9 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %8, i32 0, i32 0
  store %struct.smu_table_context* %9, %struct.smu_table_context** %6, align 8
  store %struct.smu_11_0_max_sustainable_clocks* null, %struct.smu_11_0_max_sustainable_clocks** %7, align 8
  %10 = load %struct.pp_smu_nv_clock_table*, %struct.pp_smu_nv_clock_table** %5, align 8
  %11 = icmp ne %struct.pp_smu_nv_clock_table* %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %2
  %13 = load %struct.smu_table_context*, %struct.smu_table_context** %6, align 8
  %14 = getelementptr inbounds %struct.smu_table_context, %struct.smu_table_context* %13, i32 0, i32 0
  %15 = load %struct.smu_11_0_max_sustainable_clocks*, %struct.smu_11_0_max_sustainable_clocks** %14, align 8
  %16 = icmp ne %struct.smu_11_0_max_sustainable_clocks* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %12, %2
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %72

20:                                               ; preds = %12
  %21 = load %struct.smu_table_context*, %struct.smu_table_context** %6, align 8
  %22 = getelementptr inbounds %struct.smu_table_context, %struct.smu_table_context* %21, i32 0, i32 0
  %23 = load %struct.smu_11_0_max_sustainable_clocks*, %struct.smu_11_0_max_sustainable_clocks** %22, align 8
  store %struct.smu_11_0_max_sustainable_clocks* %23, %struct.smu_11_0_max_sustainable_clocks** %7, align 8
  %24 = load %struct.smu_11_0_max_sustainable_clocks*, %struct.smu_11_0_max_sustainable_clocks** %7, align 8
  %25 = getelementptr inbounds %struct.smu_11_0_max_sustainable_clocks, %struct.smu_11_0_max_sustainable_clocks* %24, i32 0, i32 5
  %26 = load i64, i64* %25, align 8
  %27 = trunc i64 %26 to i32
  %28 = mul i32 %27, 1000
  %29 = load %struct.pp_smu_nv_clock_table*, %struct.pp_smu_nv_clock_table** %5, align 8
  %30 = getelementptr inbounds %struct.pp_smu_nv_clock_table, %struct.pp_smu_nv_clock_table* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  %31 = load %struct.smu_11_0_max_sustainable_clocks*, %struct.smu_11_0_max_sustainable_clocks** %7, align 8
  %32 = getelementptr inbounds %struct.smu_11_0_max_sustainable_clocks, %struct.smu_11_0_max_sustainable_clocks* %31, i32 0, i32 4
  %33 = load i64, i64* %32, align 8
  %34 = trunc i64 %33 to i32
  %35 = mul i32 %34, 1000
  %36 = load %struct.pp_smu_nv_clock_table*, %struct.pp_smu_nv_clock_table** %5, align 8
  %37 = getelementptr inbounds %struct.pp_smu_nv_clock_table, %struct.pp_smu_nv_clock_table* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  %38 = load %struct.smu_11_0_max_sustainable_clocks*, %struct.smu_11_0_max_sustainable_clocks** %7, align 8
  %39 = getelementptr inbounds %struct.smu_11_0_max_sustainable_clocks, %struct.smu_11_0_max_sustainable_clocks* %38, i32 0, i32 3
  %40 = load i64, i64* %39, align 8
  %41 = trunc i64 %40 to i32
  %42 = mul i32 %41, 1000
  %43 = load %struct.pp_smu_nv_clock_table*, %struct.pp_smu_nv_clock_table** %5, align 8
  %44 = getelementptr inbounds %struct.pp_smu_nv_clock_table, %struct.pp_smu_nv_clock_table* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 8
  %45 = load %struct.smu_11_0_max_sustainable_clocks*, %struct.smu_11_0_max_sustainable_clocks** %7, align 8
  %46 = getelementptr inbounds %struct.smu_11_0_max_sustainable_clocks, %struct.smu_11_0_max_sustainable_clocks* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = trunc i64 %47 to i32
  %49 = mul i32 %48, 1000
  %50 = load %struct.pp_smu_nv_clock_table*, %struct.pp_smu_nv_clock_table** %5, align 8
  %51 = getelementptr inbounds %struct.pp_smu_nv_clock_table, %struct.pp_smu_nv_clock_table* %50, i32 0, i32 3
  store i32 %49, i32* %51, align 4
  %52 = load %struct.smu_11_0_max_sustainable_clocks*, %struct.smu_11_0_max_sustainable_clocks** %7, align 8
  %53 = getelementptr inbounds %struct.smu_11_0_max_sustainable_clocks, %struct.smu_11_0_max_sustainable_clocks* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = trunc i64 %54 to i32
  %56 = mul i32 %55, 1000
  %57 = load %struct.pp_smu_nv_clock_table*, %struct.pp_smu_nv_clock_table** %5, align 8
  %58 = getelementptr inbounds %struct.pp_smu_nv_clock_table, %struct.pp_smu_nv_clock_table* %57, i32 0, i32 4
  store i32 %56, i32* %58, align 8
  %59 = load %struct.smu_11_0_max_sustainable_clocks*, %struct.smu_11_0_max_sustainable_clocks** %7, align 8
  %60 = getelementptr inbounds %struct.smu_11_0_max_sustainable_clocks, %struct.smu_11_0_max_sustainable_clocks* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = trunc i64 %61 to i32
  %63 = mul i32 %62, 1000
  %64 = load %struct.pp_smu_nv_clock_table*, %struct.pp_smu_nv_clock_table** %5, align 8
  %65 = getelementptr inbounds %struct.pp_smu_nv_clock_table, %struct.pp_smu_nv_clock_table* %64, i32 0, i32 5
  store i32 %63, i32* %65, align 4
  %66 = load %struct.pp_smu_nv_clock_table*, %struct.pp_smu_nv_clock_table** %5, align 8
  %67 = getelementptr inbounds %struct.pp_smu_nv_clock_table, %struct.pp_smu_nv_clock_table* %66, i32 0, i32 8
  store i64 0, i64* %67, align 8
  %68 = load %struct.pp_smu_nv_clock_table*, %struct.pp_smu_nv_clock_table** %5, align 8
  %69 = getelementptr inbounds %struct.pp_smu_nv_clock_table, %struct.pp_smu_nv_clock_table* %68, i32 0, i32 7
  store i64 0, i64* %69, align 8
  %70 = load %struct.pp_smu_nv_clock_table*, %struct.pp_smu_nv_clock_table** %5, align 8
  %71 = getelementptr inbounds %struct.pp_smu_nv_clock_table, %struct.pp_smu_nv_clock_table* %70, i32 0, i32 6
  store i64 0, i64* %71, align 8
  store i32 0, i32* %3, align 4
  br label %72

72:                                               ; preds = %20, %17
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
