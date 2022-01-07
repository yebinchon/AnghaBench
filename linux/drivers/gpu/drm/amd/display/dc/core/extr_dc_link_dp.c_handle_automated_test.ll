; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_link_dp.c_handle_automated_test.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_link_dp.c_handle_automated_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc_link = type { i32 }
%union.test_request = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64, i64, i64 }
%union.test_response = type { %struct.TYPE_2__ }

@DP_TEST_REQUEST = common dso_local global i32 0, align 4
@DP_TEST_RESPONSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dc_link*)* @handle_automated_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_automated_test(%struct.dc_link* %0) #0 {
  %2 = alloca %struct.dc_link*, align 8
  %3 = alloca %union.test_request, align 8
  %4 = alloca %union.test_response, align 8
  store %struct.dc_link* %0, %struct.dc_link** %2, align 8
  %5 = bitcast %union.test_request* %3 to %union.test_response*
  %6 = call i32 @memset(%union.test_response* %5, i32 0, i32 32)
  %7 = call i32 @memset(%union.test_response* %4, i32 0, i32 32)
  %8 = load %struct.dc_link*, %struct.dc_link** %2, align 8
  %9 = load i32, i32* @DP_TEST_REQUEST, align 4
  %10 = bitcast %union.test_request* %3 to i32*
  %11 = call i32 @core_link_read_dpcd(%struct.dc_link* %8, i32 %9, i32* %10, i32 32)
  %12 = bitcast %union.test_request* %3 to %struct.TYPE_2__*
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 3
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %27

16:                                               ; preds = %1
  %17 = bitcast %union.test_response* %4 to %struct.TYPE_2__*
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  store i32 1, i32* %18, align 8
  %19 = load %struct.dc_link*, %struct.dc_link** %2, align 8
  %20 = load i32, i32* @DP_TEST_RESPONSE, align 4
  %21 = bitcast %union.test_response* %4 to i32*
  %22 = call i32 @core_link_write_dpcd(%struct.dc_link* %19, i32 %20, i32* %21, i32 32)
  %23 = load %struct.dc_link*, %struct.dc_link** %2, align 8
  %24 = call i32 @dp_test_send_link_training(%struct.dc_link* %23)
  %25 = bitcast %union.test_response* %4 to %struct.TYPE_2__*
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  store i32 0, i32* %26, align 8
  br label %27

27:                                               ; preds = %16, %1
  %28 = bitcast %union.test_request* %3 to %struct.TYPE_2__*
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %27
  %33 = load %struct.dc_link*, %struct.dc_link** %2, align 8
  %34 = call i32 @dp_test_send_link_test_pattern(%struct.dc_link* %33)
  %35 = bitcast %union.test_response* %4 to %struct.TYPE_2__*
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  store i32 1, i32* %36, align 8
  br label %37

37:                                               ; preds = %32, %27
  %38 = bitcast %union.test_request* %3 to %struct.TYPE_2__*
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %37
  %43 = load %struct.dc_link*, %struct.dc_link** %2, align 8
  %44 = call i32 @dp_test_send_phy_test_pattern(%struct.dc_link* %43)
  %45 = bitcast %union.test_response* %4 to %struct.TYPE_2__*
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  store i32 1, i32* %46, align 8
  br label %47

47:                                               ; preds = %42, %37
  %48 = bitcast %union.test_response* %4 to %struct.TYPE_2__*
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %47
  %53 = load %struct.dc_link*, %struct.dc_link** %2, align 8
  %54 = load i32, i32* @DP_TEST_RESPONSE, align 4
  %55 = bitcast %union.test_response* %4 to i32*
  %56 = call i32 @core_link_write_dpcd(%struct.dc_link* %53, i32 %54, i32* %55, i32 32)
  br label %57

57:                                               ; preds = %52, %47
  ret void
}

declare dso_local i32 @memset(%union.test_response*, i32, i32) #1

declare dso_local i32 @core_link_read_dpcd(%struct.dc_link*, i32, i32*, i32) #1

declare dso_local i32 @core_link_write_dpcd(%struct.dc_link*, i32, i32*, i32) #1

declare dso_local i32 @dp_test_send_link_training(%struct.dc_link*) #1

declare dso_local i32 @dp_test_send_link_test_pattern(%struct.dc_link*) #1

declare dso_local i32 @dp_test_send_phy_test_pattern(%struct.dc_link*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
