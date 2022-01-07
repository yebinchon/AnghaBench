; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_si_dpm.c_si_get_cac_std_voltage_max_min.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_si_dpm.c_si_get_cac_std_voltage_max_min.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.radeon_cac_leakage_table }
%struct.radeon_cac_leakage_table = type { i64, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.si_power_info = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*, i32*, i32*)* @si_get_cac_std_voltage_max_min to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si_get_cac_std_voltage_max_min(%struct.radeon_device* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.radeon_device*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.si_power_info*, align 8
  %9 = alloca %struct.radeon_cac_leakage_table*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %13 = call %struct.si_power_info* @si_get_pi(%struct.radeon_device* %12)
  store %struct.si_power_info* %13, %struct.si_power_info** %8, align 8
  %14 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %15 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  store %struct.radeon_cac_leakage_table* %18, %struct.radeon_cac_leakage_table** %9, align 8
  %19 = load %struct.radeon_cac_leakage_table*, %struct.radeon_cac_leakage_table** %9, align 8
  %20 = icmp eq %struct.radeon_cac_leakage_table* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %3
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %125

24:                                               ; preds = %3
  %25 = load i32*, i32** %6, align 8
  store i32 0, i32* %25, align 4
  %26 = load i32*, i32** %7, align 8
  store i32 65535, i32* %26, align 4
  store i64 0, i64* %10, align 8
  br label %27

27:                                               ; preds = %74, %24
  %28 = load i64, i64* %10, align 8
  %29 = load %struct.radeon_cac_leakage_table*, %struct.radeon_cac_leakage_table** %9, align 8
  %30 = getelementptr inbounds %struct.radeon_cac_leakage_table, %struct.radeon_cac_leakage_table* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ult i64 %28, %31
  br i1 %32, label %33, label %77

33:                                               ; preds = %27
  %34 = load %struct.radeon_cac_leakage_table*, %struct.radeon_cac_leakage_table** %9, align 8
  %35 = getelementptr inbounds %struct.radeon_cac_leakage_table, %struct.radeon_cac_leakage_table* %34, i32 0, i32 1
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %35, align 8
  %37 = load i64, i64* %10, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32*, i32** %6, align 8
  %42 = load i32, i32* %41, align 4
  %43 = icmp sgt i32 %40, %42
  br i1 %43, label %44, label %53

44:                                               ; preds = %33
  %45 = load %struct.radeon_cac_leakage_table*, %struct.radeon_cac_leakage_table** %9, align 8
  %46 = getelementptr inbounds %struct.radeon_cac_leakage_table, %struct.radeon_cac_leakage_table* %45, i32 0, i32 1
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %46, align 8
  %48 = load i64, i64* %10, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32*, i32** %6, align 8
  store i32 %51, i32* %52, align 4
  br label %53

53:                                               ; preds = %44, %33
  %54 = load %struct.radeon_cac_leakage_table*, %struct.radeon_cac_leakage_table** %9, align 8
  %55 = getelementptr inbounds %struct.radeon_cac_leakage_table, %struct.radeon_cac_leakage_table* %54, i32 0, i32 1
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %55, align 8
  %57 = load i64, i64* %10, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32*, i32** %7, align 8
  %62 = load i32, i32* %61, align 4
  %63 = icmp slt i32 %60, %62
  br i1 %63, label %64, label %73

64:                                               ; preds = %53
  %65 = load %struct.radeon_cac_leakage_table*, %struct.radeon_cac_leakage_table** %9, align 8
  %66 = getelementptr inbounds %struct.radeon_cac_leakage_table, %struct.radeon_cac_leakage_table* %65, i32 0, i32 1
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %66, align 8
  %68 = load i64, i64* %10, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32*, i32** %7, align 8
  store i32 %71, i32* %72, align 4
  br label %73

73:                                               ; preds = %64, %53
  br label %74

74:                                               ; preds = %73
  %75 = load i64, i64* %10, align 8
  %76 = add i64 %75, 1
  store i64 %76, i64* %10, align 8
  br label %27

77:                                               ; preds = %27
  %78 = load %struct.si_power_info*, %struct.si_power_info** %8, align 8
  %79 = getelementptr inbounds %struct.si_power_info, %struct.si_power_info* %78, i32 0, i32 0
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = icmp sgt i32 %82, 100
  br i1 %83, label %84, label %87

84:                                               ; preds = %77
  %85 = load i32, i32* @EINVAL, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %4, align 4
  br label %125

87:                                               ; preds = %77
  %88 = load i32*, i32** %7, align 8
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.si_power_info*, %struct.si_power_info** %8, align 8
  %91 = getelementptr inbounds %struct.si_power_info, %struct.si_power_info* %90, i32 0, i32 0
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = sub nsw i32 100, %94
  %96 = mul nsw i32 %89, %95
  %97 = sdiv i32 %96, 100
  %98 = sext i32 %97 to i64
  store i64 %98, i64* %11, align 8
  %99 = load i64, i64* %11, align 8
  %100 = icmp ugt i64 %99, 65535
  br i1 %100, label %101, label %104

101:                                              ; preds = %87
  %102 = load i32, i32* @EINVAL, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %4, align 4
  br label %125

104:                                              ; preds = %87
  %105 = load i64, i64* %11, align 8
  %106 = trunc i64 %105 to i32
  %107 = load i32*, i32** %7, align 8
  store i32 %106, i32* %107, align 4
  %108 = load i32*, i32** %7, align 8
  %109 = load i32, i32* %108, align 4
  %110 = load i32*, i32** %6, align 8
  %111 = load i32, i32* %110, align 4
  %112 = icmp sgt i32 %109, %111
  br i1 %112, label %121, label %113

113:                                              ; preds = %104
  %114 = load i32*, i32** %6, align 8
  %115 = load i32, i32* %114, align 4
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %121, label %117

117:                                              ; preds = %113
  %118 = load i32*, i32** %7, align 8
  %119 = load i32, i32* %118, align 4
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %124

121:                                              ; preds = %117, %113, %104
  %122 = load i32, i32* @EINVAL, align 4
  %123 = sub nsw i32 0, %122
  store i32 %123, i32* %4, align 4
  br label %125

124:                                              ; preds = %117
  store i32 0, i32* %4, align 4
  br label %125

125:                                              ; preds = %124, %121, %101, %84, %21
  %126 = load i32, i32* %4, align 4
  ret i32 %126
}

declare dso_local %struct.si_power_info* @si_get_pi(%struct.radeon_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
