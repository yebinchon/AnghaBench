; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_link_dp.c_dp_test_send_link_training.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_link_dp.c_dp_test_send_link_training.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc_link = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }
%struct.dc_link_settings = type { i64, i64, i32 }

@DP_TEST_LANE_COUNT = common dso_local global i32 0, align 4
@DP_TEST_LINK_RATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dc_link*)* @dp_test_send_link_training to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dp_test_send_link_training(%struct.dc_link* %0) #0 {
  %2 = alloca %struct.dc_link*, align 8
  %3 = alloca %struct.dc_link_settings, align 8
  store %struct.dc_link* %0, %struct.dc_link** %2, align 8
  %4 = bitcast %struct.dc_link_settings* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %4, i8 0, i64 24, i1 false)
  %5 = load %struct.dc_link*, %struct.dc_link** %2, align 8
  %6 = load i32, i32* @DP_TEST_LANE_COUNT, align 4
  %7 = getelementptr inbounds %struct.dc_link_settings, %struct.dc_link_settings* %3, i32 0, i32 1
  %8 = bitcast i64* %7 to i8*
  %9 = call i32 @core_link_read_dpcd(%struct.dc_link* %5, i32 %6, i8* %8, i32 1)
  %10 = load %struct.dc_link*, %struct.dc_link** %2, align 8
  %11 = load i32, i32* @DP_TEST_LINK_RATE, align 4
  %12 = getelementptr inbounds %struct.dc_link_settings, %struct.dc_link_settings* %3, i32 0, i32 0
  %13 = bitcast i64* %12 to i8*
  %14 = call i32 @core_link_read_dpcd(%struct.dc_link* %10, i32 %11, i8* %13, i32 1)
  %15 = getelementptr inbounds %struct.dc_link_settings, %struct.dc_link_settings* %3, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.dc_link*, %struct.dc_link** %2, align 8
  %18 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  store i64 %16, i64* %19, align 8
  %20 = getelementptr inbounds %struct.dc_link_settings, %struct.dc_link_settings* %3, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.dc_link*, %struct.dc_link** %2, align 8
  %23 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  store i64 %21, i64* %24, align 8
  %25 = load %struct.dc_link*, %struct.dc_link** %2, align 8
  %26 = call i32 @dp_retrain_link_dp_test(%struct.dc_link* %25, %struct.dc_link_settings* %3, i32 0)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @core_link_read_dpcd(%struct.dc_link*, i32, i8*, i32) #2

declare dso_local i32 @dp_retrain_link_dp_test(%struct.dc_link*, %struct.dc_link_settings*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
