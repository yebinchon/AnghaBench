; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/imx/extr_imx-ldb.c_imx_ldb_ch_set_bus_format.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/imx/extr_imx-ldb.c_imx_ldb_ch_set_bus_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imx_ldb_channel = type { i32, %struct.imx_ldb* }
%struct.imx_ldb = type { i32 }

@LDB_SPLIT_MODE_EN = common dso_local global i32 0, align 4
@LDB_DATA_WIDTH_CH0_24 = common dso_local global i32 0, align 4
@LDB_DATA_WIDTH_CH1_24 = common dso_local global i32 0, align 4
@LDB_BIT_MAP_CH0_JEIDA = common dso_local global i32 0, align 4
@LDB_BIT_MAP_CH1_JEIDA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.imx_ldb_channel*, i32)* @imx_ldb_ch_set_bus_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @imx_ldb_ch_set_bus_format(%struct.imx_ldb_channel* %0, i32 %1) #0 {
  %3 = alloca %struct.imx_ldb_channel*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.imx_ldb*, align 8
  %6 = alloca i32, align 4
  store %struct.imx_ldb_channel* %0, %struct.imx_ldb_channel** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.imx_ldb_channel*, %struct.imx_ldb_channel** %3, align 8
  %8 = getelementptr inbounds %struct.imx_ldb_channel, %struct.imx_ldb_channel* %7, i32 0, i32 1
  %9 = load %struct.imx_ldb*, %struct.imx_ldb** %8, align 8
  store %struct.imx_ldb* %9, %struct.imx_ldb** %5, align 8
  %10 = load %struct.imx_ldb*, %struct.imx_ldb** %5, align 8
  %11 = getelementptr inbounds %struct.imx_ldb, %struct.imx_ldb* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @LDB_SPLIT_MODE_EN, align 4
  %14 = and i32 %12, %13
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %4, align 4
  switch i32 %15, label %79 [
    i32 130, label %16
    i32 128, label %17
    i32 129, label %46
  ]

16:                                               ; preds = %2
  br label %79

17:                                               ; preds = %2
  %18 = load %struct.imx_ldb_channel*, %struct.imx_ldb_channel** %3, align 8
  %19 = getelementptr inbounds %struct.imx_ldb_channel, %struct.imx_ldb_channel* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %17
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %22, %17
  %26 = load i32, i32* @LDB_DATA_WIDTH_CH0_24, align 4
  %27 = load %struct.imx_ldb*, %struct.imx_ldb** %5, align 8
  %28 = getelementptr inbounds %struct.imx_ldb, %struct.imx_ldb* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = or i32 %29, %26
  store i32 %30, i32* %28, align 4
  br label %31

31:                                               ; preds = %25, %22
  %32 = load %struct.imx_ldb_channel*, %struct.imx_ldb_channel** %3, align 8
  %33 = getelementptr inbounds %struct.imx_ldb_channel, %struct.imx_ldb_channel* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp eq i32 %34, 1
  br i1 %35, label %39, label %36

36:                                               ; preds = %31
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %36, %31
  %40 = load i32, i32* @LDB_DATA_WIDTH_CH1_24, align 4
  %41 = load %struct.imx_ldb*, %struct.imx_ldb** %5, align 8
  %42 = getelementptr inbounds %struct.imx_ldb, %struct.imx_ldb* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = or i32 %43, %40
  store i32 %44, i32* %42, align 4
  br label %45

45:                                               ; preds = %39, %36
  br label %79

46:                                               ; preds = %2
  %47 = load %struct.imx_ldb_channel*, %struct.imx_ldb_channel** %3, align 8
  %48 = getelementptr inbounds %struct.imx_ldb_channel, %struct.imx_ldb_channel* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %46
  %52 = load i32, i32* %6, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %62

54:                                               ; preds = %51, %46
  %55 = load i32, i32* @LDB_DATA_WIDTH_CH0_24, align 4
  %56 = load i32, i32* @LDB_BIT_MAP_CH0_JEIDA, align 4
  %57 = or i32 %55, %56
  %58 = load %struct.imx_ldb*, %struct.imx_ldb** %5, align 8
  %59 = getelementptr inbounds %struct.imx_ldb, %struct.imx_ldb* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = or i32 %60, %57
  store i32 %61, i32* %59, align 4
  br label %62

62:                                               ; preds = %54, %51
  %63 = load %struct.imx_ldb_channel*, %struct.imx_ldb_channel** %3, align 8
  %64 = getelementptr inbounds %struct.imx_ldb_channel, %struct.imx_ldb_channel* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = icmp eq i32 %65, 1
  br i1 %66, label %70, label %67

67:                                               ; preds = %62
  %68 = load i32, i32* %6, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %78

70:                                               ; preds = %67, %62
  %71 = load i32, i32* @LDB_DATA_WIDTH_CH1_24, align 4
  %72 = load i32, i32* @LDB_BIT_MAP_CH1_JEIDA, align 4
  %73 = or i32 %71, %72
  %74 = load %struct.imx_ldb*, %struct.imx_ldb** %5, align 8
  %75 = getelementptr inbounds %struct.imx_ldb, %struct.imx_ldb* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = or i32 %76, %73
  store i32 %77, i32* %75, align 4
  br label %78

78:                                               ; preds = %70, %67
  br label %79

79:                                               ; preds = %2, %78, %45, %16
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
