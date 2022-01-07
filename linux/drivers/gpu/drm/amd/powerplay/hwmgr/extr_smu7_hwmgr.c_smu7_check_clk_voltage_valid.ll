; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu7_hwmgr.c_smu7_check_clk_voltage_valid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu7_hwmgr.c_smu7_check_clk_voltage_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { %struct.TYPE_16__, i64 }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i64, i64 }
%struct.smu7_hwmgr = type { %struct.TYPE_14__, %struct.TYPE_9__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__, %struct.TYPE_11__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_9__ = type { i64, i64 }

@.str = private unnamed_addr constant [41 x i8] c"OD voltage is out of range [%d - %d] mV\0A\00", align 1
@PP_OD_EDIT_SCLK_VDDC_TABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"OD engine clock is out of range [%d - %d] MHz\0A\00", align 1
@PP_OD_EDIT_MCLK_VDDC_TABLE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [47 x i8] c"OD memory clock is out of range [%d - %d] MHz\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*, i32, i64, i64)* @smu7_check_clk_voltage_valid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smu7_check_clk_voltage_valid(%struct.pp_hwmgr* %0, i32 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pp_hwmgr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.smu7_hwmgr*, align 8
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %11 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %6, align 8
  %12 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.smu7_hwmgr*
  store %struct.smu7_hwmgr* %14, %struct.smu7_hwmgr** %10, align 8
  %15 = load i64, i64* %9, align 8
  %16 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %10, align 8
  %17 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp slt i64 %15, %19
  br i1 %20, label %28, label %21

21:                                               ; preds = %4
  %22 = load i64, i64* %9, align 8
  %23 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %10, align 8
  %24 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp sgt i64 %22, %26
  br i1 %27, label %28, label %40

28:                                               ; preds = %21, %4
  %29 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %10, align 8
  %30 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = trunc i64 %32 to i32
  %34 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %10, align 8
  %35 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = trunc i64 %37 to i32
  %39 = call i32 @pr_info(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %33, i32 %38)
  store i32 0, i32* %5, align 4
  br label %129

40:                                               ; preds = %21
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* @PP_OD_EDIT_SCLK_VDDC_TABLE, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %83

44:                                               ; preds = %40
  %45 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %10, align 8
  %46 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i64 0
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* %8, align 8
  %54 = icmp sgt i64 %52, %53
  br i1 %54, label %63, label %55

55:                                               ; preds = %44
  %56 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %6, align 8
  %57 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* %8, align 8
  %62 = icmp slt i64 %60, %61
  br i1 %62, label %63, label %82

63:                                               ; preds = %55, %44
  %64 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %10, align 8
  %65 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i64 0
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = sdiv i64 %71, 100
  %73 = trunc i64 %72 to i32
  %74 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %6, align 8
  %75 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = sdiv i64 %78, 100
  %80 = trunc i64 %79 to i32
  %81 = call i32 @pr_info(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %73, i32 %80)
  store i32 0, i32* %5, align 4
  br label %129

82:                                               ; preds = %55
  br label %128

83:                                               ; preds = %40
  %84 = load i32, i32* %7, align 4
  %85 = load i32, i32* @PP_OD_EDIT_MCLK_VDDC_TABLE, align 4
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %87, label %126

87:                                               ; preds = %83
  %88 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %10, align 8
  %89 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %90, i32 0, i32 0
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i64 0
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* %8, align 8
  %97 = icmp sgt i64 %95, %96
  br i1 %97, label %106, label %98

98:                                               ; preds = %87
  %99 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %6, align 8
  %100 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* %8, align 8
  %105 = icmp slt i64 %103, %104
  br i1 %105, label %106, label %125

106:                                              ; preds = %98, %87
  %107 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %10, align 8
  %108 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %109, i32 0, i32 0
  %111 = load %struct.TYPE_12__*, %struct.TYPE_12__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %111, i64 0
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = sdiv i64 %114, 100
  %116 = trunc i64 %115 to i32
  %117 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %6, align 8
  %118 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = sdiv i64 %121, 100
  %123 = trunc i64 %122 to i32
  %124 = call i32 @pr_info(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i32 %116, i32 %123)
  store i32 0, i32* %5, align 4
  br label %129

125:                                              ; preds = %98
  br label %127

126:                                              ; preds = %83
  store i32 0, i32* %5, align 4
  br label %129

127:                                              ; preds = %125
  br label %128

128:                                              ; preds = %127, %82
  store i32 1, i32* %5, align 4
  br label %129

129:                                              ; preds = %128, %126, %106, %63, %28
  %130 = load i32, i32* %5, align 4
  ret i32 %130
}

declare dso_local i32 @pr_info(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
