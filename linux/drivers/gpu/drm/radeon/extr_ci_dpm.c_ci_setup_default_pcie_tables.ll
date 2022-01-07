; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ci_dpm.c_ci_setup_default_pcie_tables.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ci_dpm.c_ci_setup_default_pcie_tables.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i64 }
%struct.ci_power_info = type { %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_7__, %struct.TYPE_6__, i64, i64 }
%struct.TYPE_8__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@SMU7_MAX_LEVELS_LINK = common dso_local global i32 0, align 4
@CHIP_BONAIRE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*)* @ci_setup_default_pcie_tables to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ci_setup_default_pcie_tables(%struct.radeon_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca %struct.ci_power_info*, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  %5 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %6 = call %struct.ci_power_info* @ci_get_pi(%struct.radeon_device* %5)
  store %struct.ci_power_info* %6, %struct.ci_power_info** %4, align 8
  %7 = load %struct.ci_power_info*, %struct.ci_power_info** %4, align 8
  %8 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %7, i32 0, i32 6
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %19, label %11

11:                                               ; preds = %1
  %12 = load %struct.ci_power_info*, %struct.ci_power_info** %4, align 8
  %13 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %12, i32 0, i32 5
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %11
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %169

19:                                               ; preds = %11, %1
  %20 = load %struct.ci_power_info*, %struct.ci_power_info** %4, align 8
  %21 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %20, i32 0, i32 6
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %42

24:                                               ; preds = %19
  %25 = load %struct.ci_power_info*, %struct.ci_power_info** %4, align 8
  %26 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %25, i32 0, i32 5
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %42, label %29

29:                                               ; preds = %24
  %30 = load %struct.ci_power_info*, %struct.ci_power_info** %4, align 8
  %31 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %30, i32 0, i32 4
  %32 = load %struct.ci_power_info*, %struct.ci_power_info** %4, align 8
  %33 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %32, i32 0, i32 2
  %34 = bitcast %struct.TYPE_6__* %31 to i8*
  %35 = bitcast %struct.TYPE_6__* %33 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %34, i8* align 4 %35, i64 8, i1 false)
  %36 = load %struct.ci_power_info*, %struct.ci_power_info** %4, align 8
  %37 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %36, i32 0, i32 3
  %38 = load %struct.ci_power_info*, %struct.ci_power_info** %4, align 8
  %39 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %38, i32 0, i32 1
  %40 = bitcast %struct.TYPE_7__* %37 to i8*
  %41 = bitcast %struct.TYPE_7__* %39 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %40, i8* align 4 %41, i64 8, i1 false)
  br label %66

42:                                               ; preds = %24, %19
  %43 = load %struct.ci_power_info*, %struct.ci_power_info** %4, align 8
  %44 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %43, i32 0, i32 6
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %65, label %47

47:                                               ; preds = %42
  %48 = load %struct.ci_power_info*, %struct.ci_power_info** %4, align 8
  %49 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %48, i32 0, i32 5
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %65

52:                                               ; preds = %47
  %53 = load %struct.ci_power_info*, %struct.ci_power_info** %4, align 8
  %54 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %53, i32 0, i32 2
  %55 = load %struct.ci_power_info*, %struct.ci_power_info** %4, align 8
  %56 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %55, i32 0, i32 4
  %57 = bitcast %struct.TYPE_6__* %54 to i8*
  %58 = bitcast %struct.TYPE_6__* %56 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %57, i8* align 4 %58, i64 8, i1 false)
  %59 = load %struct.ci_power_info*, %struct.ci_power_info** %4, align 8
  %60 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %59, i32 0, i32 1
  %61 = load %struct.ci_power_info*, %struct.ci_power_info** %4, align 8
  %62 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %61, i32 0, i32 3
  %63 = bitcast %struct.TYPE_7__* %60 to i8*
  %64 = bitcast %struct.TYPE_7__* %62 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %63, i8* align 4 %64, i64 8, i1 false)
  br label %65

65:                                               ; preds = %52, %47, %42
  br label %66

66:                                               ; preds = %65, %29
  %67 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %68 = load %struct.ci_power_info*, %struct.ci_power_info** %4, align 8
  %69 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 0
  %71 = load i32, i32* @SMU7_MAX_LEVELS_LINK, align 4
  %72 = call i32 @ci_reset_single_dpm_table(%struct.radeon_device* %67, %struct.TYPE_9__* %70, i32 %71)
  %73 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %74 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @CHIP_BONAIRE, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %91

78:                                               ; preds = %66
  %79 = load %struct.ci_power_info*, %struct.ci_power_info** %4, align 8
  %80 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 0
  %82 = load %struct.ci_power_info*, %struct.ci_power_info** %4, align 8
  %83 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %82, i32 0, i32 4
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.ci_power_info*, %struct.ci_power_info** %4, align 8
  %87 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %86, i32 0, i32 3
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @ci_setup_pcie_table_entry(%struct.TYPE_9__* %81, i32 0, i32 %85, i32 %89)
  br label %104

91:                                               ; preds = %66
  %92 = load %struct.ci_power_info*, %struct.ci_power_info** %4, align 8
  %93 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 0
  %95 = load %struct.ci_power_info*, %struct.ci_power_info** %4, align 8
  %96 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %95, i32 0, i32 4
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.ci_power_info*, %struct.ci_power_info** %4, align 8
  %100 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %99, i32 0, i32 3
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @ci_setup_pcie_table_entry(%struct.TYPE_9__* %94, i32 0, i32 %98, i32 %102)
  br label %104

104:                                              ; preds = %91, %78
  %105 = load %struct.ci_power_info*, %struct.ci_power_info** %4, align 8
  %106 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 0
  %108 = load %struct.ci_power_info*, %struct.ci_power_info** %4, align 8
  %109 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %108, i32 0, i32 2
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.ci_power_info*, %struct.ci_power_info** %4, align 8
  %113 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @ci_setup_pcie_table_entry(%struct.TYPE_9__* %107, i32 1, i32 %111, i32 %115)
  %117 = load %struct.ci_power_info*, %struct.ci_power_info** %4, align 8
  %118 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 0
  %120 = load %struct.ci_power_info*, %struct.ci_power_info** %4, align 8
  %121 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %120, i32 0, i32 4
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.ci_power_info*, %struct.ci_power_info** %4, align 8
  %125 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %124, i32 0, i32 3
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @ci_setup_pcie_table_entry(%struct.TYPE_9__* %119, i32 2, i32 %123, i32 %127)
  %129 = load %struct.ci_power_info*, %struct.ci_power_info** %4, align 8
  %130 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 0
  %132 = load %struct.ci_power_info*, %struct.ci_power_info** %4, align 8
  %133 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %132, i32 0, i32 2
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.ci_power_info*, %struct.ci_power_info** %4, align 8
  %137 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @ci_setup_pcie_table_entry(%struct.TYPE_9__* %131, i32 3, i32 %135, i32 %139)
  %141 = load %struct.ci_power_info*, %struct.ci_power_info** %4, align 8
  %142 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i32 0, i32 0
  %144 = load %struct.ci_power_info*, %struct.ci_power_info** %4, align 8
  %145 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %144, i32 0, i32 4
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.ci_power_info*, %struct.ci_power_info** %4, align 8
  %149 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %148, i32 0, i32 3
  %150 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @ci_setup_pcie_table_entry(%struct.TYPE_9__* %143, i32 4, i32 %147, i32 %151)
  %153 = load %struct.ci_power_info*, %struct.ci_power_info** %4, align 8
  %154 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %154, i32 0, i32 0
  %156 = load %struct.ci_power_info*, %struct.ci_power_info** %4, align 8
  %157 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %156, i32 0, i32 2
  %158 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.ci_power_info*, %struct.ci_power_info** %4, align 8
  %161 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %160, i32 0, i32 1
  %162 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = call i32 @ci_setup_pcie_table_entry(%struct.TYPE_9__* %155, i32 5, i32 %159, i32 %163)
  %165 = load %struct.ci_power_info*, %struct.ci_power_info** %4, align 8
  %166 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %167, i32 0, i32 0
  store i32 6, i32* %168, align 8
  store i32 0, i32* %2, align 4
  br label %169

169:                                              ; preds = %104, %16
  %170 = load i32, i32* %2, align 4
  ret i32 %170
}

declare dso_local %struct.ci_power_info* @ci_get_pi(%struct.radeon_device*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ci_reset_single_dpm_table(%struct.radeon_device*, %struct.TYPE_9__*, i32) #1

declare dso_local i32 @ci_setup_pcie_table_entry(%struct.TYPE_9__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
