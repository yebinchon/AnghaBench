; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_link_hwss.c_edp_receiver_ready_T7.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_link_hwss.c_edp_receiver_ready_T7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc_link = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@DC_OK = common dso_local global i32 0, align 4
@DP_EDP_DPCD_REV = common dso_local global i32 0, align 4
@DP_EDP_12 = common dso_local global i8 0, align 1
@DP_SINK_STATUS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @edp_receiver_ready_T7(%struct.dc_link* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dc_link*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  store %struct.dc_link* %0, %struct.dc_link** %3, align 8
  store i32 0, i32* %4, align 4
  store i8 0, i8* %5, align 1
  store i8 0, i8* %6, align 1
  %8 = load i32, i32* @DC_OK, align 4
  store i32 %8, i32* %7, align 4
  %9 = load %struct.dc_link*, %struct.dc_link** %3, align 8
  %10 = load i32, i32* @DP_EDP_DPCD_REV, align 4
  %11 = call i32 @core_link_read_dpcd(%struct.dc_link* %9, i32 %10, i8* %6, i32 1)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* @DC_OK, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %22

15:                                               ; preds = %1
  %16 = load i8, i8* %6, align 1
  %17 = zext i8 %16 to i32
  %18 = load i8, i8* @DP_EDP_12, align 1
  %19 = zext i8 %18 to i32
  %20 = icmp slt i32 %17, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  store i32 1, i32* %2, align 4
  br label %63

22:                                               ; preds = %15, %1
  br label %23

23:                                               ; preds = %38, %22
  store i8 0, i8* %5, align 1
  %24 = load %struct.dc_link*, %struct.dc_link** %3, align 8
  %25 = load i32, i32* @DP_SINK_STATUS, align 4
  %26 = call i32 @core_link_read_dpcd(%struct.dc_link* %24, i32 %25, i8* %5, i32 1)
  store i32 %26, i32* %7, align 4
  %27 = load i8, i8* %5, align 1
  %28 = zext i8 %27 to i32
  %29 = icmp eq i32 %28, 1
  br i1 %29, label %30, label %31

30:                                               ; preds = %23
  br label %42

31:                                               ; preds = %23
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* @DC_OK, align 4
  %34 = icmp ne i32 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  br label %42

36:                                               ; preds = %31
  %37 = call i32 @udelay(i32 25)
  br label %38

38:                                               ; preds = %36
  %39 = load i32, i32* %4, align 4
  %40 = add i32 %39, 1
  store i32 %40, i32* %4, align 4
  %41 = icmp ult i32 %40, 300
  br i1 %41, label %23, label %42

42:                                               ; preds = %38, %35, %30
  %43 = load %struct.dc_link*, %struct.dc_link** %3, align 8
  %44 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %43, i32 0, i32 0
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp sgt i32 %49, 0
  br i1 %50, label %51, label %61

51:                                               ; preds = %42
  %52 = load %struct.dc_link*, %struct.dc_link** %3, align 8
  %53 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %52, i32 0, i32 0
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = mul nsw i32 %58, 1000
  %60 = call i32 @udelay(i32 %59)
  br label %61

61:                                               ; preds = %51, %42
  %62 = load i32, i32* %7, align 4
  store i32 %62, i32* %2, align 4
  br label %63

63:                                               ; preds = %61, %21
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local i32 @core_link_read_dpcd(%struct.dc_link*, i32, i8*, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
