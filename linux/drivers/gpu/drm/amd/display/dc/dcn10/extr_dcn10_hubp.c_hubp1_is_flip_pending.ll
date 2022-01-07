; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_hubp.c_hubp1_is_flip_pending.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_hubp.c_hubp1_is_flip_pending.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hubp = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.dcn10_hubp = type { i32 }
%struct.dc_plane_address = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64, i64, i64 }

@DCSURF_FLIP_CONTROL = common dso_local global i32 0, align 4
@SURFACE_FLIP_PENDING = common dso_local global i32 0, align 4
@DCSURF_SURFACE_EARLIEST_INUSE = common dso_local global i32 0, align 4
@SURFACE_EARLIEST_INUSE_ADDRESS = common dso_local global i32 0, align 4
@DCSURF_SURFACE_EARLIEST_INUSE_HIGH = common dso_local global i32 0, align 4
@SURFACE_EARLIEST_INUSE_ADDRESS_HIGH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hubp1_is_flip_pending(%struct.hubp* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hubp*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.dcn10_hubp*, align 8
  %6 = alloca %struct.dc_plane_address, align 8
  store %struct.hubp* %0, %struct.hubp** %3, align 8
  store i64 0, i64* %4, align 8
  %7 = load %struct.hubp*, %struct.hubp** %3, align 8
  %8 = call %struct.dcn10_hubp* @TO_DCN10_HUBP(%struct.hubp* %7)
  store %struct.dcn10_hubp* %8, %struct.dcn10_hubp** %5, align 8
  %9 = load i32, i32* @DCSURF_FLIP_CONTROL, align 4
  %10 = load i32, i32* @SURFACE_FLIP_PENDING, align 4
  %11 = call i32 @REG_GET(i32 %9, i32 %10, i64* %4)
  %12 = load i32, i32* @DCSURF_SURFACE_EARLIEST_INUSE, align 4
  %13 = load i32, i32* @SURFACE_EARLIEST_INUSE_ADDRESS, align 4
  %14 = getelementptr inbounds %struct.dc_plane_address, %struct.dc_plane_address* %6, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 2
  %17 = call i32 @REG_GET(i32 %12, i32 %13, i64* %16)
  %18 = load i32, i32* @DCSURF_SURFACE_EARLIEST_INUSE_HIGH, align 4
  %19 = load i32, i32* @SURFACE_EARLIEST_INUSE_ADDRESS_HIGH, align 4
  %20 = getelementptr inbounds %struct.dc_plane_address, %struct.dc_plane_address* %6, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 1
  %23 = call i32 @REG_GET(i32 %18, i32 %19, i64* %22)
  %24 = load i64, i64* %4, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %41

27:                                               ; preds = %1
  %28 = getelementptr inbounds %struct.dc_plane_address, %struct.dc_plane_address* %6, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.hubp*, %struct.hubp** %3, align 8
  %33 = getelementptr inbounds %struct.hubp, %struct.hubp* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %31, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %27
  store i32 1, i32* %2, align 4
  br label %41

40:                                               ; preds = %27
  store i32 0, i32* %2, align 4
  br label %41

41:                                               ; preds = %40, %39, %26
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local %struct.dcn10_hubp* @TO_DCN10_HUBP(%struct.hubp*) #1

declare dso_local i32 @REG_GET(i32, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
