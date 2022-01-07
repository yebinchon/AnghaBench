; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_kernel_queue_v9.c_pm_map_process_v9.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_kernel_queue_v9.c_pm_map_process_v9.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.packet_manager = type { i32 }
%struct.qcm_process_device = type { i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.pm4_mes_map_process = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, %struct.TYPE_10__, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }

@IT_MAP_PROCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.packet_manager*, i32*, %struct.qcm_process_device*)* @pm_map_process_v9 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pm_map_process_v9(%struct.packet_manager* %0, i32* %1, %struct.qcm_process_device* %2) #0 {
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
  %15 = call i32 @memset(i32* %14, i32 0, i32 112)
  %16 = load i32, i32* @IT_MAP_PROCESS, align 4
  %17 = call i32 @pm_build_pm4_header(i32 %16, i32 112)
  %18 = load %struct.pm4_mes_map_process*, %struct.pm4_mes_map_process** %7, align 8
  %19 = getelementptr inbounds %struct.pm4_mes_map_process, %struct.pm4_mes_map_process* %18, i32 0, i32 12
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  store i32 %17, i32* %20, align 4
  %21 = load %struct.qcm_process_device*, %struct.qcm_process_device** %6, align 8
  %22 = getelementptr inbounds %struct.qcm_process_device, %struct.qcm_process_device* %21, i32 0, i32 8
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i32 1, i32 0
  %27 = load %struct.pm4_mes_map_process*, %struct.pm4_mes_map_process** %7, align 8
  %28 = getelementptr inbounds %struct.pm4_mes_map_process, %struct.pm4_mes_map_process* %27, i32 0, i32 11
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  store i32 %26, i32* %29, align 8
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
  store i32 %39, i32* %42, align 8
  %43 = load %struct.qcm_process_device*, %struct.qcm_process_device** %6, align 8
  %44 = getelementptr inbounds %struct.qcm_process_device, %struct.qcm_process_device* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = and i32 %45, 63
  %47 = load %struct.pm4_mes_map_process*, %struct.pm4_mes_map_process** %7, align 8
  %48 = getelementptr inbounds %struct.pm4_mes_map_process, %struct.pm4_mes_map_process* %47, i32 0, i32 10
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 0
  store i32 %46, i32* %49, align 8
  %50 = load %struct.qcm_process_device*, %struct.qcm_process_device** %6, align 8
  %51 = getelementptr inbounds %struct.qcm_process_device, %struct.qcm_process_device* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = ashr i32 %52, 6
  %54 = and i32 %53, 15
  %55 = load %struct.pm4_mes_map_process*, %struct.pm4_mes_map_process** %7, align 8
  %56 = getelementptr inbounds %struct.pm4_mes_map_process, %struct.pm4_mes_map_process* %55, i32 0, i32 10
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 1
  store i32 %54, i32* %57, align 4
  %58 = load %struct.qcm_process_device*, %struct.qcm_process_device** %6, align 8
  %59 = getelementptr inbounds %struct.qcm_process_device, %struct.qcm_process_device* %58, i32 0, i32 10
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.pm4_mes_map_process*, %struct.pm4_mes_map_process** %7, align 8
  %62 = getelementptr inbounds %struct.pm4_mes_map_process, %struct.pm4_mes_map_process* %61, i32 0, i32 10
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 5
  store i32 %60, i32* %63, align 4
  %64 = load %struct.qcm_process_device*, %struct.qcm_process_device** %6, align 8
  %65 = getelementptr inbounds %struct.qcm_process_device, %struct.qcm_process_device* %64, i32 0, i32 9
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.pm4_mes_map_process*, %struct.pm4_mes_map_process** %7, align 8
  %68 = getelementptr inbounds %struct.pm4_mes_map_process, %struct.pm4_mes_map_process* %67, i32 0, i32 10
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 4
  store i32 %66, i32* %69, align 8
  %70 = load %struct.pm4_mes_map_process*, %struct.pm4_mes_map_process** %7, align 8
  %71 = getelementptr inbounds %struct.pm4_mes_map_process, %struct.pm4_mes_map_process* %70, i32 0, i32 10
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 2
  store i32 1, i32* %72, align 8
  %73 = load %struct.qcm_process_device*, %struct.qcm_process_device** %6, align 8
  %74 = getelementptr inbounds %struct.qcm_process_device, %struct.qcm_process_device* %73, i32 0, i32 8
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %3
  br label %82

78:                                               ; preds = %3
  %79 = load %struct.qcm_process_device*, %struct.qcm_process_device** %6, align 8
  %80 = getelementptr inbounds %struct.qcm_process_device, %struct.qcm_process_device* %79, i32 0, i32 7
  %81 = load i32, i32* %80, align 4
  br label %82

82:                                               ; preds = %78, %77
  %83 = phi i32 [ 0, %77 ], [ %81, %78 ]
  %84 = load %struct.pm4_mes_map_process*, %struct.pm4_mes_map_process** %7, align 8
  %85 = getelementptr inbounds %struct.pm4_mes_map_process, %struct.pm4_mes_map_process* %84, i32 0, i32 10
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 3
  store i32 %83, i32* %86, align 4
  %87 = load %struct.qcm_process_device*, %struct.qcm_process_device** %6, align 8
  %88 = getelementptr inbounds %struct.qcm_process_device, %struct.qcm_process_device* %87, i32 0, i32 6
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.pm4_mes_map_process*, %struct.pm4_mes_map_process** %7, align 8
  %91 = getelementptr inbounds %struct.pm4_mes_map_process, %struct.pm4_mes_map_process* %90, i32 0, i32 9
  store i32 %89, i32* %91, align 4
  %92 = load %struct.qcm_process_device*, %struct.qcm_process_device** %6, align 8
  %93 = getelementptr inbounds %struct.qcm_process_device, %struct.qcm_process_device* %92, i32 0, i32 5
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.pm4_mes_map_process*, %struct.pm4_mes_map_process** %7, align 8
  %96 = getelementptr inbounds %struct.pm4_mes_map_process, %struct.pm4_mes_map_process* %95, i32 0, i32 8
  store i32 %94, i32* %96, align 8
  %97 = load %struct.qcm_process_device*, %struct.qcm_process_device** %6, align 8
  %98 = getelementptr inbounds %struct.qcm_process_device, %struct.qcm_process_device* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = ashr i32 %99, 8
  %101 = call i8* @lower_32_bits(i32 %100)
  %102 = load %struct.pm4_mes_map_process*, %struct.pm4_mes_map_process** %7, align 8
  %103 = getelementptr inbounds %struct.pm4_mes_map_process, %struct.pm4_mes_map_process* %102, i32 0, i32 7
  store i8* %101, i8** %103, align 8
  %104 = load %struct.qcm_process_device*, %struct.qcm_process_device** %6, align 8
  %105 = getelementptr inbounds %struct.qcm_process_device, %struct.qcm_process_device* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = ashr i32 %106, 8
  %108 = call i8* @upper_32_bits(i32 %107)
  %109 = load %struct.pm4_mes_map_process*, %struct.pm4_mes_map_process** %7, align 8
  %110 = getelementptr inbounds %struct.pm4_mes_map_process, %struct.pm4_mes_map_process* %109, i32 0, i32 6
  store i8* %108, i8** %110, align 8
  %111 = load %struct.qcm_process_device*, %struct.qcm_process_device** %6, align 8
  %112 = getelementptr inbounds %struct.qcm_process_device, %struct.qcm_process_device* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 4
  %114 = ashr i32 %113, 8
  %115 = call i8* @lower_32_bits(i32 %114)
  %116 = load %struct.pm4_mes_map_process*, %struct.pm4_mes_map_process** %7, align 8
  %117 = getelementptr inbounds %struct.pm4_mes_map_process, %struct.pm4_mes_map_process* %116, i32 0, i32 5
  store i8* %115, i8** %117, align 8
  %118 = load %struct.qcm_process_device*, %struct.qcm_process_device** %6, align 8
  %119 = getelementptr inbounds %struct.qcm_process_device, %struct.qcm_process_device* %118, i32 0, i32 3
  %120 = load i32, i32* %119, align 4
  %121 = ashr i32 %120, 8
  %122 = call i8* @upper_32_bits(i32 %121)
  %123 = load %struct.pm4_mes_map_process*, %struct.pm4_mes_map_process** %7, align 8
  %124 = getelementptr inbounds %struct.pm4_mes_map_process, %struct.pm4_mes_map_process* %123, i32 0, i32 4
  store i8* %122, i8** %124, align 8
  %125 = load %struct.qcm_process_device*, %struct.qcm_process_device** %6, align 8
  %126 = getelementptr inbounds %struct.qcm_process_device, %struct.qcm_process_device* %125, i32 0, i32 4
  %127 = load i32, i32* %126, align 8
  %128 = call i8* @lower_32_bits(i32 %127)
  %129 = load %struct.pm4_mes_map_process*, %struct.pm4_mes_map_process** %7, align 8
  %130 = getelementptr inbounds %struct.pm4_mes_map_process, %struct.pm4_mes_map_process* %129, i32 0, i32 3
  store i8* %128, i8** %130, align 8
  %131 = load %struct.qcm_process_device*, %struct.qcm_process_device** %6, align 8
  %132 = getelementptr inbounds %struct.qcm_process_device, %struct.qcm_process_device* %131, i32 0, i32 4
  %133 = load i32, i32* %132, align 8
  %134 = call i8* @upper_32_bits(i32 %133)
  %135 = load %struct.pm4_mes_map_process*, %struct.pm4_mes_map_process** %7, align 8
  %136 = getelementptr inbounds %struct.pm4_mes_map_process, %struct.pm4_mes_map_process* %135, i32 0, i32 2
  store i8* %134, i8** %136, align 8
  %137 = load i32, i32* %8, align 4
  %138 = call i8* @lower_32_bits(i32 %137)
  %139 = load %struct.pm4_mes_map_process*, %struct.pm4_mes_map_process** %7, align 8
  %140 = getelementptr inbounds %struct.pm4_mes_map_process, %struct.pm4_mes_map_process* %139, i32 0, i32 1
  store i8* %138, i8** %140, align 8
  %141 = load i32, i32* %8, align 4
  %142 = call i8* @upper_32_bits(i32 %141)
  %143 = load %struct.pm4_mes_map_process*, %struct.pm4_mes_map_process** %7, align 8
  %144 = getelementptr inbounds %struct.pm4_mes_map_process, %struct.pm4_mes_map_process* %143, i32 0, i32 0
  store i8* %142, i8** %144, align 8
  ret i32 0
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @pm_build_pm4_header(i32, i32) #1

declare dso_local i8* @lower_32_bits(i32) #1

declare dso_local i8* @upper_32_bits(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
