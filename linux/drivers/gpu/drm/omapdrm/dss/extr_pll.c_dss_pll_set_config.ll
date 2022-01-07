; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_pll.c_dss_pll_set_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_pll.c_dss_pll_set_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dss_pll = type { %struct.dss_pll_clock_info, %struct.TYPE_2__* }
%struct.dss_pll_clock_info = type { i32 }
%struct.TYPE_2__ = type { {}* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dss_pll_set_config(%struct.dss_pll* %0, %struct.dss_pll_clock_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dss_pll*, align 8
  %5 = alloca %struct.dss_pll_clock_info*, align 8
  %6 = alloca i32, align 4
  store %struct.dss_pll* %0, %struct.dss_pll** %4, align 8
  store %struct.dss_pll_clock_info* %1, %struct.dss_pll_clock_info** %5, align 8
  %7 = load %struct.dss_pll*, %struct.dss_pll** %4, align 8
  %8 = getelementptr inbounds %struct.dss_pll, %struct.dss_pll* %7, i32 0, i32 1
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = bitcast {}** %10 to i32 (%struct.dss_pll*, %struct.dss_pll_clock_info*)**
  %12 = load i32 (%struct.dss_pll*, %struct.dss_pll_clock_info*)*, i32 (%struct.dss_pll*, %struct.dss_pll_clock_info*)** %11, align 8
  %13 = load %struct.dss_pll*, %struct.dss_pll** %4, align 8
  %14 = load %struct.dss_pll_clock_info*, %struct.dss_pll_clock_info** %5, align 8
  %15 = call i32 %12(%struct.dss_pll* %13, %struct.dss_pll_clock_info* %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* %6, align 4
  store i32 %19, i32* %3, align 4
  br label %26

20:                                               ; preds = %2
  %21 = load %struct.dss_pll*, %struct.dss_pll** %4, align 8
  %22 = getelementptr inbounds %struct.dss_pll, %struct.dss_pll* %21, i32 0, i32 0
  %23 = load %struct.dss_pll_clock_info*, %struct.dss_pll_clock_info** %5, align 8
  %24 = bitcast %struct.dss_pll_clock_info* %22 to i8*
  %25 = bitcast %struct.dss_pll_clock_info* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %24, i8* align 4 %25, i64 4, i1 false)
  store i32 0, i32* %3, align 4
  br label %26

26:                                               ; preds = %20, %18
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
