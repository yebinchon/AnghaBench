; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_kernel_queue_v10.c_pm_map_process_v10.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_kernel_queue_v10.c_pm_map_process_v10.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.packet_manager = type { i32 }
%struct.qcm_process_device = type { i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.pm4_mes_map_process = type { i32, i32, i32, i32, i8*, i8*, i8*, i8*, i32, i32, %struct.TYPE_10__, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }

@IT_MAP_PROCESS = common dso_local global i32 0, align 4
@SQ_SHADER_TBA_HI__TRAP_EN__SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.packet_manager*, i32*, %struct.qcm_process_device*)* @pm_map_process_v10 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pm_map_process_v10(%struct.packet_manager* %0, i32* %1, %struct.qcm_process_device* %2) #0 {
  %4 = alloca %struct.packet_manager*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.qcm_process_device*, align 8
  %7 = alloca %struct.pm4_mes_map_process*, align 8
  %8 = alloca i32, align 4
  store %struct.packet_manager* %0, %struct.packet_manager** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.qcm_process_device* %2, %struct.qcm_process_device** %6, align 8
  %9 = load %struct.qcm_process_device*, %struct.qcm_process_device** %6, align 8
  %10 = getelementptr inbounds %struct.qcm_process_device, %struct.qcm_process_device* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %8, align 4
  %12 = load i32*, i32** %5, align 8
  %13 = bitcast i32* %12 to %struct.pm4_mes_map_process*
  store %struct.pm4_mes_map_process* %13, %struct.pm4_mes_map_process** %7, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = call i32 @memset(i32* %14, i32 0, i32 96)
  %16 = load i32, i32* @IT_MAP_PROCESS, align 4
  %17 = call i32 @pm_build_pm4_header(i32 %16, i32 96)
  %18 = load %struct.pm4_mes_map_process*, %struct.pm4_mes_map_process** %7, align 8
  %19 = getelementptr inbounds %struct.pm4_mes_map_process, %struct.pm4_mes_map_process* %18, i32 0, i32 12
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  store i32 %17, i32* %20, align 8
  %21 = load %struct.qcm_process_device*, %struct.qcm_process_device** %6, align 8
  %22 = getelementptr inbounds %struct.qcm_process_device, %struct.qcm_process_device* %21, i32 0, i32 7
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i32 1, i32 0
  %27 = load %struct.pm4_mes_map_process*, %struct.pm4_mes_map_process** %7, align 8
  %28 = getelementptr inbounds %struct.pm4_mes_map_process, %struct.pm4_mes_map_process* %27, i32 0, i32 11
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  store i32 %26, i32* %29, align 4
  %30 = load %struct.pm4_mes_map_process*, %struct.pm4_mes_map_process** %7, align 8
  %31 = getelementptr inbounds %struct.pm4_mes_map_process, %struct.pm4_mes_map_process* %30, i32 0, i32 11
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 1
  store i32 1, i32* %32, align 4
  %33 = load %struct.qcm_process_device*, %struct.qcm_process_device** %6, align 8
  %34 = getelementptr inbounds %struct.qcm_process_device, %struct.qcm_process_device* %33, i32 0, i32 11
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.pm4_mes_map_process*, %struct.pm4_mes_map_process** %7, align 8
  %41 = getelementptr inbounds %struct.pm4_mes_map_process, %struct.pm4_mes_map_process* %40, i32 0, i32 11
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 2
  store i32 %39, i32* %42, align 4
  %43 = load %struct.qcm_process_device*, %struct.qcm_process_device** %6, align 8
  %44 = getelementptr inbounds %struct.qcm_process_device, %struct.qcm_process_device* %43, i32 0, i32 10
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.pm4_mes_map_process*, %struct.pm4_mes_map_process** %7, align 8
  %47 = getelementptr inbounds %struct.pm4_mes_map_process, %struct.pm4_mes_map_process* %46, i32 0, i32 10
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 4
  store i32 %45, i32* %48, align 8
  %49 = load %struct.qcm_process_device*, %struct.qcm_process_device** %6, align 8
  %50 = getelementptr inbounds %struct.qcm_process_device, %struct.qcm_process_device* %49, i32 0, i32 9
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.pm4_mes_map_process*, %struct.pm4_mes_map_process** %7, align 8
  %53 = getelementptr inbounds %struct.pm4_mes_map_process, %struct.pm4_mes_map_process* %52, i32 0, i32 10
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 3
  store i32 %51, i32* %54, align 4
  %55 = load %struct.qcm_process_device*, %struct.qcm_process_device** %6, align 8
  %56 = getelementptr inbounds %struct.qcm_process_device, %struct.qcm_process_device* %55, i32 0, i32 8
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.pm4_mes_map_process*, %struct.pm4_mes_map_process** %7, align 8
  %59 = getelementptr inbounds %struct.pm4_mes_map_process, %struct.pm4_mes_map_process* %58, i32 0, i32 10
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 2
  store i32 %57, i32* %60, align 8
  %61 = load %struct.pm4_mes_map_process*, %struct.pm4_mes_map_process** %7, align 8
  %62 = getelementptr inbounds %struct.pm4_mes_map_process, %struct.pm4_mes_map_process* %61, i32 0, i32 10
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 0
  store i32 1, i32* %63, align 8
  %64 = load %struct.qcm_process_device*, %struct.qcm_process_device** %6, align 8
  %65 = getelementptr inbounds %struct.qcm_process_device, %struct.qcm_process_device* %64, i32 0, i32 7
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %3
  br label %73

69:                                               ; preds = %3
  %70 = load %struct.qcm_process_device*, %struct.qcm_process_device** %6, align 8
  %71 = getelementptr inbounds %struct.qcm_process_device, %struct.qcm_process_device* %70, i32 0, i32 6
  %72 = load i32, i32* %71, align 8
  br label %73

73:                                               ; preds = %69, %68
  %74 = phi i32 [ 0, %68 ], [ %72, %69 ]
  %75 = load %struct.pm4_mes_map_process*, %struct.pm4_mes_map_process** %7, align 8
  %76 = getelementptr inbounds %struct.pm4_mes_map_process, %struct.pm4_mes_map_process* %75, i32 0, i32 10
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 1
  store i32 %74, i32* %77, align 4
  %78 = load %struct.qcm_process_device*, %struct.qcm_process_device** %6, align 8
  %79 = getelementptr inbounds %struct.qcm_process_device, %struct.qcm_process_device* %78, i32 0, i32 5
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.pm4_mes_map_process*, %struct.pm4_mes_map_process** %7, align 8
  %82 = getelementptr inbounds %struct.pm4_mes_map_process, %struct.pm4_mes_map_process* %81, i32 0, i32 9
  store i32 %80, i32* %82, align 4
  %83 = load %struct.qcm_process_device*, %struct.qcm_process_device** %6, align 8
  %84 = getelementptr inbounds %struct.qcm_process_device, %struct.qcm_process_device* %83, i32 0, i32 4
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.pm4_mes_map_process*, %struct.pm4_mes_map_process** %7, align 8
  %87 = getelementptr inbounds %struct.pm4_mes_map_process, %struct.pm4_mes_map_process* %86, i32 0, i32 8
  store i32 %85, i32* %87, align 8
  %88 = load %struct.qcm_process_device*, %struct.qcm_process_device** %6, align 8
  %89 = getelementptr inbounds %struct.qcm_process_device, %struct.qcm_process_device* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %124

92:                                               ; preds = %73
  %93 = load %struct.qcm_process_device*, %struct.qcm_process_device** %6, align 8
  %94 = getelementptr inbounds %struct.qcm_process_device, %struct.qcm_process_device* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = ashr i32 %95, 8
  %97 = call i8* @lower_32_bits(i32 %96)
  %98 = load %struct.pm4_mes_map_process*, %struct.pm4_mes_map_process** %7, align 8
  %99 = getelementptr inbounds %struct.pm4_mes_map_process, %struct.pm4_mes_map_process* %98, i32 0, i32 7
  store i8* %97, i8** %99, align 8
  %100 = load i32, i32* @SQ_SHADER_TBA_HI__TRAP_EN__SHIFT, align 4
  %101 = shl i32 1, %100
  %102 = load %struct.qcm_process_device*, %struct.qcm_process_device** %6, align 8
  %103 = getelementptr inbounds %struct.qcm_process_device, %struct.qcm_process_device* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = ashr i32 %104, 8
  %106 = call i32 @upper_32_bits(i32 %105)
  %107 = or i32 %101, %106
  %108 = load %struct.pm4_mes_map_process*, %struct.pm4_mes_map_process** %7, align 8
  %109 = getelementptr inbounds %struct.pm4_mes_map_process, %struct.pm4_mes_map_process* %108, i32 0, i32 0
  store i32 %107, i32* %109, align 8
  %110 = load %struct.qcm_process_device*, %struct.qcm_process_device** %6, align 8
  %111 = getelementptr inbounds %struct.qcm_process_device, %struct.qcm_process_device* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = ashr i32 %112, 8
  %114 = call i8* @lower_32_bits(i32 %113)
  %115 = load %struct.pm4_mes_map_process*, %struct.pm4_mes_map_process** %7, align 8
  %116 = getelementptr inbounds %struct.pm4_mes_map_process, %struct.pm4_mes_map_process* %115, i32 0, i32 6
  store i8* %114, i8** %116, align 8
  %117 = load %struct.qcm_process_device*, %struct.qcm_process_device** %6, align 8
  %118 = getelementptr inbounds %struct.qcm_process_device, %struct.qcm_process_device* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = ashr i32 %119, 8
  %121 = call i32 @upper_32_bits(i32 %120)
  %122 = load %struct.pm4_mes_map_process*, %struct.pm4_mes_map_process** %7, align 8
  %123 = getelementptr inbounds %struct.pm4_mes_map_process, %struct.pm4_mes_map_process* %122, i32 0, i32 1
  store i32 %121, i32* %123, align 4
  br label %124

124:                                              ; preds = %92, %73
  %125 = load %struct.qcm_process_device*, %struct.qcm_process_device** %6, align 8
  %126 = getelementptr inbounds %struct.qcm_process_device, %struct.qcm_process_device* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 4
  %128 = call i8* @lower_32_bits(i32 %127)
  %129 = load %struct.pm4_mes_map_process*, %struct.pm4_mes_map_process** %7, align 8
  %130 = getelementptr inbounds %struct.pm4_mes_map_process, %struct.pm4_mes_map_process* %129, i32 0, i32 5
  store i8* %128, i8** %130, align 8
  %131 = load %struct.qcm_process_device*, %struct.qcm_process_device** %6, align 8
  %132 = getelementptr inbounds %struct.qcm_process_device, %struct.qcm_process_device* %131, i32 0, i32 3
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @upper_32_bits(i32 %133)
  %135 = load %struct.pm4_mes_map_process*, %struct.pm4_mes_map_process** %7, align 8
  %136 = getelementptr inbounds %struct.pm4_mes_map_process, %struct.pm4_mes_map_process* %135, i32 0, i32 2
  store i32 %134, i32* %136, align 8
  %137 = load i32, i32* %8, align 4
  %138 = call i8* @lower_32_bits(i32 %137)
  %139 = load %struct.pm4_mes_map_process*, %struct.pm4_mes_map_process** %7, align 8
  %140 = getelementptr inbounds %struct.pm4_mes_map_process, %struct.pm4_mes_map_process* %139, i32 0, i32 4
  store i8* %138, i8** %140, align 8
  %141 = load i32, i32* %8, align 4
  %142 = call i32 @upper_32_bits(i32 %141)
  %143 = load %struct.pm4_mes_map_process*, %struct.pm4_mes_map_process** %7, align 8
  %144 = getelementptr inbounds %struct.pm4_mes_map_process, %struct.pm4_mes_map_process* %143, i32 0, i32 3
  store i32 %142, i32* %144, align 4
  ret i32 0
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @pm_build_pm4_header(i32, i32) #1

declare dso_local i8* @lower_32_bits(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
