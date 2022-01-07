; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_hmc.c_i40iw_hmc_sd_grp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_hmc.c_i40iw_hmc_sd_grp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_sc_dev = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32 (%struct.i40iw_sc_dev*, %struct.i40iw_update_sds_info*)* }
%struct.i40iw_update_sds_info = type { i64, i32*, i32 }
%struct.i40iw_hmc_info = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { %struct.i40iw_hmc_sd_entry* }
%struct.i40iw_hmc_sd_entry = type { i64, %struct.TYPE_13__, i64 }
%struct.TYPE_13__ = type { %struct.TYPE_12__, %struct.TYPE_10__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }

@I40IW_SD_TYPE_PAGED = common dso_local global i64 0, align 8
@I40IW_MAX_SD_ENTRIES = common dso_local global i64 0, align 8
@I40IW_DEBUG_HMC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"i40iw_hmc_sd_grp: sd_programming failed err=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40iw_sc_dev*, %struct.i40iw_hmc_info*, i64, i64, i32)* @i40iw_hmc_sd_grp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40iw_hmc_sd_grp(%struct.i40iw_sc_dev* %0, %struct.i40iw_hmc_info* %1, i64 %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.i40iw_sc_dev*, align 8
  %8 = alloca %struct.i40iw_hmc_info*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.i40iw_hmc_sd_entry*, align 8
  %13 = alloca %struct.i40iw_update_sds_info, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.i40iw_sc_dev* %0, %struct.i40iw_sc_dev** %7, align 8
  store %struct.i40iw_hmc_info* %1, %struct.i40iw_hmc_info** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %16, align 4
  %17 = call i32 @memset(%struct.i40iw_update_sds_info* %13, i32 0, i32 24)
  %18 = load %struct.i40iw_hmc_info*, %struct.i40iw_hmc_info** %8, align 8
  %19 = getelementptr inbounds %struct.i40iw_hmc_info, %struct.i40iw_hmc_info* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = getelementptr inbounds %struct.i40iw_update_sds_info, %struct.i40iw_update_sds_info* %13, i32 0, i32 2
  store i32 %20, i32* %21, align 8
  %22 = load i64, i64* %9, align 8
  store i64 %22, i64* %15, align 8
  br label %23

23:                                               ; preds = %129, %5
  %24 = load i64, i64* %15, align 8
  %25 = load i64, i64* %9, align 8
  %26 = load i64, i64* %10, align 8
  %27 = add i64 %25, %26
  %28 = icmp ult i64 %24, %27
  br i1 %28, label %29, label %132

29:                                               ; preds = %23
  %30 = load %struct.i40iw_hmc_info*, %struct.i40iw_hmc_info** %8, align 8
  %31 = getelementptr inbounds %struct.i40iw_hmc_info, %struct.i40iw_hmc_info* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = load %struct.i40iw_hmc_sd_entry*, %struct.i40iw_hmc_sd_entry** %32, align 8
  %34 = load i64, i64* %15, align 8
  %35 = getelementptr inbounds %struct.i40iw_hmc_sd_entry, %struct.i40iw_hmc_sd_entry* %33, i64 %34
  store %struct.i40iw_hmc_sd_entry* %35, %struct.i40iw_hmc_sd_entry** %12, align 8
  %36 = load %struct.i40iw_hmc_sd_entry*, %struct.i40iw_hmc_sd_entry** %12, align 8
  %37 = icmp ne %struct.i40iw_hmc_sd_entry* %36, null
  br i1 %37, label %38, label %54

38:                                               ; preds = %29
  %39 = load %struct.i40iw_hmc_sd_entry*, %struct.i40iw_hmc_sd_entry** %12, align 8
  %40 = getelementptr inbounds %struct.i40iw_hmc_sd_entry, %struct.i40iw_hmc_sd_entry* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %38
  %44 = load i32, i32* %11, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %54, label %46

46:                                               ; preds = %43, %38
  %47 = load %struct.i40iw_hmc_sd_entry*, %struct.i40iw_hmc_sd_entry** %12, align 8
  %48 = getelementptr inbounds %struct.i40iw_hmc_sd_entry, %struct.i40iw_hmc_sd_entry* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %46
  %52 = load i32, i32* %11, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %51, %43, %29
  br label %129

55:                                               ; preds = %51, %46
  %56 = load i32, i32* %11, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %91

58:                                               ; preds = %55
  %59 = load %struct.i40iw_hmc_sd_entry*, %struct.i40iw_hmc_sd_entry** %12, align 8
  %60 = getelementptr inbounds %struct.i40iw_hmc_sd_entry, %struct.i40iw_hmc_sd_entry* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @I40IW_SD_TYPE_PAGED, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %71

64:                                               ; preds = %58
  %65 = load %struct.i40iw_hmc_sd_entry*, %struct.i40iw_hmc_sd_entry** %12, align 8
  %66 = getelementptr inbounds %struct.i40iw_hmc_sd_entry, %struct.i40iw_hmc_sd_entry* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  br label %78

71:                                               ; preds = %58
  %72 = load %struct.i40iw_hmc_sd_entry*, %struct.i40iw_hmc_sd_entry** %12, align 8
  %73 = getelementptr inbounds %struct.i40iw_hmc_sd_entry, %struct.i40iw_hmc_sd_entry* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  br label %78

78:                                               ; preds = %71, %64
  %79 = phi i32 [ %70, %64 ], [ %77, %71 ]
  store i32 %79, i32* %14, align 4
  %80 = load i32, i32* %14, align 4
  %81 = load i64, i64* %15, align 8
  %82 = load %struct.i40iw_hmc_sd_entry*, %struct.i40iw_hmc_sd_entry** %12, align 8
  %83 = getelementptr inbounds %struct.i40iw_hmc_sd_entry, %struct.i40iw_hmc_sd_entry* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = getelementptr inbounds %struct.i40iw_update_sds_info, %struct.i40iw_update_sds_info* %13, i32 0, i32 1
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds %struct.i40iw_update_sds_info, %struct.i40iw_update_sds_info* %13, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  %90 = call i32 @i40iw_set_sd_entry(i32 %80, i64 %81, i64 %84, i32* %89)
  br label %102

91:                                               ; preds = %55
  %92 = load i64, i64* %15, align 8
  %93 = load %struct.i40iw_hmc_sd_entry*, %struct.i40iw_hmc_sd_entry** %12, align 8
  %94 = getelementptr inbounds %struct.i40iw_hmc_sd_entry, %struct.i40iw_hmc_sd_entry* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = getelementptr inbounds %struct.i40iw_update_sds_info, %struct.i40iw_update_sds_info* %13, i32 0, i32 1
  %97 = load i32*, i32** %96, align 8
  %98 = getelementptr inbounds %struct.i40iw_update_sds_info, %struct.i40iw_update_sds_info* %13, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  %101 = call i32 @i40iw_clr_sd_entry(i64 %92, i64 %95, i32* %100)
  br label %102

102:                                              ; preds = %91, %78
  %103 = getelementptr inbounds %struct.i40iw_update_sds_info, %struct.i40iw_update_sds_info* %13, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = add i64 %104, 1
  store i64 %105, i64* %103, align 8
  %106 = getelementptr inbounds %struct.i40iw_update_sds_info, %struct.i40iw_update_sds_info* %13, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @I40IW_MAX_SD_ENTRIES, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %128

110:                                              ; preds = %102
  %111 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %7, align 8
  %112 = getelementptr inbounds %struct.i40iw_sc_dev, %struct.i40iw_sc_dev* %111, i32 0, i32 0
  %113 = load %struct.TYPE_14__*, %struct.TYPE_14__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %113, i32 0, i32 0
  %115 = load i32 (%struct.i40iw_sc_dev*, %struct.i40iw_update_sds_info*)*, i32 (%struct.i40iw_sc_dev*, %struct.i40iw_update_sds_info*)** %114, align 8
  %116 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %7, align 8
  %117 = call i32 %115(%struct.i40iw_sc_dev* %116, %struct.i40iw_update_sds_info* %13)
  store i32 %117, i32* %16, align 4
  %118 = load i32, i32* %16, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %126

120:                                              ; preds = %110
  %121 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %7, align 8
  %122 = load i32, i32* @I40IW_DEBUG_HMC, align 4
  %123 = load i32, i32* %16, align 4
  %124 = call i32 @i40iw_debug(%struct.i40iw_sc_dev* %121, i32 %122, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %123)
  %125 = load i32, i32* %16, align 4
  store i32 %125, i32* %6, align 4
  br label %146

126:                                              ; preds = %110
  %127 = getelementptr inbounds %struct.i40iw_update_sds_info, %struct.i40iw_update_sds_info* %13, i32 0, i32 0
  store i64 0, i64* %127, align 8
  br label %128

128:                                              ; preds = %126, %102
  br label %129

129:                                              ; preds = %128, %54
  %130 = load i64, i64* %15, align 8
  %131 = add i64 %130, 1
  store i64 %131, i64* %15, align 8
  br label %23

132:                                              ; preds = %23
  %133 = getelementptr inbounds %struct.i40iw_update_sds_info, %struct.i40iw_update_sds_info* %13, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %144

136:                                              ; preds = %132
  %137 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %7, align 8
  %138 = getelementptr inbounds %struct.i40iw_sc_dev, %struct.i40iw_sc_dev* %137, i32 0, i32 0
  %139 = load %struct.TYPE_14__*, %struct.TYPE_14__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %139, i32 0, i32 0
  %141 = load i32 (%struct.i40iw_sc_dev*, %struct.i40iw_update_sds_info*)*, i32 (%struct.i40iw_sc_dev*, %struct.i40iw_update_sds_info*)** %140, align 8
  %142 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %7, align 8
  %143 = call i32 %141(%struct.i40iw_sc_dev* %142, %struct.i40iw_update_sds_info* %13)
  store i32 %143, i32* %16, align 4
  br label %144

144:                                              ; preds = %136, %132
  %145 = load i32, i32* %16, align 4
  store i32 %145, i32* %6, align 4
  br label %146

146:                                              ; preds = %144, %120
  %147 = load i32, i32* %6, align 4
  ret i32 %147
}

declare dso_local i32 @memset(%struct.i40iw_update_sds_info*, i32, i32) #1

declare dso_local i32 @i40iw_set_sd_entry(i32, i64, i64, i32*) #1

declare dso_local i32 @i40iw_clr_sd_entry(i64, i64, i32*) #1

declare dso_local i32 @i40iw_debug(%struct.i40iw_sc_dev*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
