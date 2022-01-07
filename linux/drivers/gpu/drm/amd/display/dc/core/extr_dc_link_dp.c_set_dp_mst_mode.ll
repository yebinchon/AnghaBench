; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_link_dp.c_set_dp_mst_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_link_dp.c_set_dp_mst_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc_link = type { i64, %struct.TYPE_2__*, i32, %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i32 }

@dc_connection_mst_branch = common dso_local global i64 0, align 8
@dc_connection_single = common dso_local global i64 0, align 8
@SIGNAL_TYPE_DISPLAY_PORT = common dso_local global i32 0, align 4
@SIGNAL_TYPE_DISPLAY_PORT_MST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dc_link*, i32)* @set_dp_mst_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_dp_mst_mode(%struct.dc_link* %0, i32 %1) #0 {
  %3 = alloca %struct.dc_link*, align 8
  %4 = alloca i32, align 4
  store %struct.dc_link* %0, %struct.dc_link** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %34

7:                                                ; preds = %2
  %8 = load %struct.dc_link*, %struct.dc_link** %3, align 8
  %9 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @dc_connection_mst_branch, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %34

13:                                               ; preds = %7
  %14 = load %struct.dc_link*, %struct.dc_link** %3, align 8
  %15 = load %struct.dc_link*, %struct.dc_link** %3, align 8
  %16 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @dp_disable_link_phy_mst(%struct.dc_link* %14, i32 %17)
  %19 = load i64, i64* @dc_connection_single, align 8
  %20 = load %struct.dc_link*, %struct.dc_link** %3, align 8
  %21 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %20, i32 0, i32 0
  store i64 %19, i64* %21, align 8
  %22 = load %struct.dc_link*, %struct.dc_link** %3, align 8
  %23 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %22, i32 0, i32 3
  %24 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %24, i64 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = load %struct.dc_link*, %struct.dc_link** %3, align 8
  %28 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %27, i32 0, i32 1
  store %struct.TYPE_2__* %26, %struct.TYPE_2__** %28, align 8
  %29 = load i32, i32* @SIGNAL_TYPE_DISPLAY_PORT, align 4
  %30 = load %struct.dc_link*, %struct.dc_link** %3, align 8
  %31 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %30, i32 0, i32 1
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  store i32 %29, i32* %33, align 4
  br label %67

34:                                               ; preds = %7, %2
  %35 = load i32, i32* %4, align 4
  %36 = icmp eq i32 %35, 1
  br i1 %36, label %37, label %66

37:                                               ; preds = %34
  %38 = load %struct.dc_link*, %struct.dc_link** %3, align 8
  %39 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @dc_connection_single, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %66

43:                                               ; preds = %37
  %44 = load %struct.dc_link*, %struct.dc_link** %3, align 8
  %45 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %44, i32 0, i32 3
  %46 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %46, i64 0
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = icmp ne %struct.TYPE_2__* %48, null
  br i1 %49, label %50, label %66

50:                                               ; preds = %43
  %51 = load %struct.dc_link*, %struct.dc_link** %3, align 8
  %52 = load %struct.dc_link*, %struct.dc_link** %3, align 8
  %53 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @dp_disable_link_phy(%struct.dc_link* %51, i32 %54)
  %56 = load %struct.dc_link*, %struct.dc_link** %3, align 8
  %57 = call i32 @dp_enable_mst_on_sink(%struct.dc_link* %56, i32 1)
  %58 = load i64, i64* @dc_connection_mst_branch, align 8
  %59 = load %struct.dc_link*, %struct.dc_link** %3, align 8
  %60 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %59, i32 0, i32 0
  store i64 %58, i64* %60, align 8
  %61 = load i32, i32* @SIGNAL_TYPE_DISPLAY_PORT_MST, align 4
  %62 = load %struct.dc_link*, %struct.dc_link** %3, align 8
  %63 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %62, i32 0, i32 1
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  store i32 %61, i32* %65, align 4
  br label %66

66:                                               ; preds = %50, %43, %37, %34
  br label %67

67:                                               ; preds = %66, %13
  ret void
}

declare dso_local i32 @dp_disable_link_phy_mst(%struct.dc_link*, i32) #1

declare dso_local i32 @dp_disable_link_phy(%struct.dc_link*, i32) #1

declare dso_local i32 @dp_enable_mst_on_sink(%struct.dc_link*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
