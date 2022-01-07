; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_processpptables.c_get_cac_leakage_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_processpptables.c_get_cac_leakage_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.phm_cac_leakage_table = type { i64, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i8*, i8*, i8*, i8* }
%struct.TYPE_9__ = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PHM_PlatformCaps_EVV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*, %struct.phm_cac_leakage_table**, %struct.TYPE_9__*)* @get_cac_leakage_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_cac_leakage_table(%struct.pp_hwmgr* %0, %struct.phm_cac_leakage_table** %1, %struct.TYPE_9__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pp_hwmgr*, align 8
  %6 = alloca %struct.phm_cac_leakage_table**, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca %struct.phm_cac_leakage_table*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %5, align 8
  store %struct.phm_cac_leakage_table** %1, %struct.phm_cac_leakage_table*** %6, align 8
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %7, align 8
  %11 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %5, align 8
  %12 = icmp eq %struct.pp_hwmgr* %11, null
  br i1 %12, label %19, label %13

13:                                               ; preds = %3
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %15 = icmp eq %struct.TYPE_9__* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %13
  %17 = load %struct.phm_cac_leakage_table**, %struct.phm_cac_leakage_table*** %6, align 8
  %18 = icmp eq %struct.phm_cac_leakage_table** %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %16, %13, %3
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %137

22:                                               ; preds = %16
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = sext i32 %25 to i64
  %27 = mul i64 16, %26
  %28 = add i64 8, %27
  store i64 %28, i64* %9, align 8
  %29 = load i64, i64* %9, align 8
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = call %struct.phm_cac_leakage_table* @kzalloc(i64 %29, i32 %30)
  store %struct.phm_cac_leakage_table* %31, %struct.phm_cac_leakage_table** %8, align 8
  %32 = load %struct.phm_cac_leakage_table*, %struct.phm_cac_leakage_table** %8, align 8
  %33 = icmp eq %struct.phm_cac_leakage_table* %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %22
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  br label %137

37:                                               ; preds = %22
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = sext i32 %40 to i64
  %42 = load %struct.phm_cac_leakage_table*, %struct.phm_cac_leakage_table** %8, align 8
  %43 = getelementptr inbounds %struct.phm_cac_leakage_table, %struct.phm_cac_leakage_table* %42, i32 0, i32 0
  store i64 %41, i64* %43, align 8
  store i64 0, i64* %10, align 8
  br label %44

44:                                               ; preds = %131, %37
  %45 = load i64, i64* %10, align 8
  %46 = load %struct.phm_cac_leakage_table*, %struct.phm_cac_leakage_table** %8, align 8
  %47 = getelementptr inbounds %struct.phm_cac_leakage_table, %struct.phm_cac_leakage_table* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ult i64 %45, %48
  br i1 %49, label %50, label %134

50:                                               ; preds = %44
  %51 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %5, align 8
  %52 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @PHM_PlatformCaps_EVV, align 4
  %56 = call i64 @phm_cap_enabled(i32 %54, i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %101

58:                                               ; preds = %50
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 1
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %60, align 8
  %62 = load i64, i64* %10, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 4
  %66 = call i8* @le16_to_cpu(i32 %65)
  %67 = load %struct.phm_cac_leakage_table*, %struct.phm_cac_leakage_table** %8, align 8
  %68 = getelementptr inbounds %struct.phm_cac_leakage_table, %struct.phm_cac_leakage_table* %67, i32 0, i32 1
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %68, align 8
  %70 = load i64, i64* %10, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 4
  store i8* %66, i8** %72, align 8
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 1
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %74, align 8
  %76 = load i64, i64* %10, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = call i8* @le16_to_cpu(i32 %79)
  %81 = load %struct.phm_cac_leakage_table*, %struct.phm_cac_leakage_table** %8, align 8
  %82 = getelementptr inbounds %struct.phm_cac_leakage_table, %struct.phm_cac_leakage_table* %81, i32 0, i32 1
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %82, align 8
  %84 = load i64, i64* %10, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 3
  store i8* %80, i8** %86, align 8
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 1
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %88, align 8
  %90 = load i64, i64* %10, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = call i8* @le16_to_cpu(i32 %93)
  %95 = load %struct.phm_cac_leakage_table*, %struct.phm_cac_leakage_table** %8, align 8
  %96 = getelementptr inbounds %struct.phm_cac_leakage_table, %struct.phm_cac_leakage_table* %95, i32 0, i32 1
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %96, align 8
  %98 = load i64, i64* %10, align 8
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 2
  store i8* %94, i8** %100, align 8
  br label %130

101:                                              ; preds = %50
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 1
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %103, align 8
  %105 = load i64, i64* %10, align 8
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = call i8* @le16_to_cpu(i32 %108)
  %110 = load %struct.phm_cac_leakage_table*, %struct.phm_cac_leakage_table** %8, align 8
  %111 = getelementptr inbounds %struct.phm_cac_leakage_table, %struct.phm_cac_leakage_table* %110, i32 0, i32 1
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %111, align 8
  %113 = load i64, i64* %10, align 8
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 1
  store i8* %109, i8** %115, align 8
  %116 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i32 0, i32 1
  %118 = load %struct.TYPE_8__*, %struct.TYPE_8__** %117, align 8
  %119 = load i64, i64* %10, align 8
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @le32_to_cpu(i32 %122)
  %124 = load %struct.phm_cac_leakage_table*, %struct.phm_cac_leakage_table** %8, align 8
  %125 = getelementptr inbounds %struct.phm_cac_leakage_table, %struct.phm_cac_leakage_table* %124, i32 0, i32 1
  %126 = load %struct.TYPE_7__*, %struct.TYPE_7__** %125, align 8
  %127 = load i64, i64* %10, align 8
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 0
  store i32 %123, i32* %129, align 8
  br label %130

130:                                              ; preds = %101, %58
  br label %131

131:                                              ; preds = %130
  %132 = load i64, i64* %10, align 8
  %133 = add i64 %132, 1
  store i64 %133, i64* %10, align 8
  br label %44

134:                                              ; preds = %44
  %135 = load %struct.phm_cac_leakage_table*, %struct.phm_cac_leakage_table** %8, align 8
  %136 = load %struct.phm_cac_leakage_table**, %struct.phm_cac_leakage_table*** %6, align 8
  store %struct.phm_cac_leakage_table* %135, %struct.phm_cac_leakage_table** %136, align 8
  store i32 0, i32* %4, align 4
  br label %137

137:                                              ; preds = %134, %34, %19
  %138 = load i32, i32* %4, align 4
  ret i32 %138
}

declare dso_local %struct.phm_cac_leakage_table* @kzalloc(i64, i32) #1

declare dso_local i64 @phm_cap_enabled(i32, i32) #1

declare dso_local i8* @le16_to_cpu(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
