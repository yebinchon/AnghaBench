; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_dp_mst_topology.c_build_allocate_payload.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_dp_mst_topology.c_build_allocate_payload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_dp_sideband_msg_tx = type { i32 }
%struct.drm_dp_sideband_msg_req_body = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i8*, i32, i8* }

@DP_ALLOCATE_PAYLOAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_dp_sideband_msg_tx*, i32, i8*, i32, i8*, i8**)* @build_allocate_payload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @build_allocate_payload(%struct.drm_dp_sideband_msg_tx* %0, i32 %1, i8* %2, i32 %3, i8* %4, i8** %5) #0 {
  %7 = alloca %struct.drm_dp_sideband_msg_tx*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8**, align 8
  %13 = alloca %struct.drm_dp_sideband_msg_req_body, align 8
  store %struct.drm_dp_sideband_msg_tx* %0, %struct.drm_dp_sideband_msg_tx** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  store i8** %5, i8*** %12, align 8
  %14 = call i32 @memset(%struct.drm_dp_sideband_msg_req_body* %13, i32 0, i32 40)
  %15 = load i32, i32* @DP_ALLOCATE_PAYLOAD, align 4
  %16 = getelementptr inbounds %struct.drm_dp_sideband_msg_req_body, %struct.drm_dp_sideband_msg_req_body* %13, i32 0, i32 1
  store i32 %15, i32* %16, align 8
  %17 = load i32, i32* %8, align 4
  %18 = getelementptr inbounds %struct.drm_dp_sideband_msg_req_body, %struct.drm_dp_sideband_msg_req_body* %13, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  store i32 %17, i32* %20, align 8
  %21 = load i8*, i8** %9, align 8
  %22 = getelementptr inbounds %struct.drm_dp_sideband_msg_req_body, %struct.drm_dp_sideband_msg_req_body* %13, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 4
  store i8* %21, i8** %24, align 8
  %25 = load i32, i32* %10, align 4
  %26 = getelementptr inbounds %struct.drm_dp_sideband_msg_req_body, %struct.drm_dp_sideband_msg_req_body* %13, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 3
  store i32 %25, i32* %28, align 8
  %29 = load i8*, i8** %11, align 8
  %30 = getelementptr inbounds %struct.drm_dp_sideband_msg_req_body, %struct.drm_dp_sideband_msg_req_body* %13, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 2
  store i8* %29, i8** %32, align 8
  %33 = getelementptr inbounds %struct.drm_dp_sideband_msg_req_body, %struct.drm_dp_sideband_msg_req_body* %13, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i8**, i8*** %12, align 8
  %38 = load i8*, i8** %11, align 8
  %39 = call i32 @memcpy(i32 %36, i8** %37, i8* %38)
  %40 = load %struct.drm_dp_sideband_msg_tx*, %struct.drm_dp_sideband_msg_tx** %7, align 8
  %41 = call i32 @drm_dp_encode_sideband_req(%struct.drm_dp_sideband_msg_req_body* %13, %struct.drm_dp_sideband_msg_tx* %40)
  %42 = load %struct.drm_dp_sideband_msg_tx*, %struct.drm_dp_sideband_msg_tx** %7, align 8
  %43 = getelementptr inbounds %struct.drm_dp_sideband_msg_tx, %struct.drm_dp_sideband_msg_tx* %42, i32 0, i32 0
  store i32 1, i32* %43, align 4
  ret i32 0
}

declare dso_local i32 @memset(%struct.drm_dp_sideband_msg_req_body*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i8**, i8*) #1

declare dso_local i32 @drm_dp_encode_sideband_req(%struct.drm_dp_sideband_msg_req_body*, %struct.drm_dp_sideband_msg_tx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
