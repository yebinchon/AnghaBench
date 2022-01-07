; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dispc.c_dispc_configure_burst_sizes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dispc.c_dispc_configure_burst_sizes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dispc_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@BURST_SIZE_X8 = common dso_local global i32 0, align 4
@OMAP_DSS_WB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dispc_device*)* @dispc_configure_burst_sizes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dispc_configure_burst_sizes(%struct.dispc_device* %0) #0 {
  %2 = alloca %struct.dispc_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.dispc_device* %0, %struct.dispc_device** %2, align 8
  %5 = load i32, i32* @BURST_SIZE_X8, align 4
  store i32 %5, i32* %4, align 4
  store i32 0, i32* %3, align 4
  br label %6

6:                                                ; preds = %16, %1
  %7 = load i32, i32* %3, align 4
  %8 = load %struct.dispc_device*, %struct.dispc_device** %2, align 8
  %9 = call i32 @dispc_get_num_ovls(%struct.dispc_device* %8)
  %10 = icmp slt i32 %7, %9
  br i1 %10, label %11, label %19

11:                                               ; preds = %6
  %12 = load %struct.dispc_device*, %struct.dispc_device** %2, align 8
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @dispc_ovl_set_burst_size(%struct.dispc_device* %12, i32 %13, i32 %14)
  br label %16

16:                                               ; preds = %11
  %17 = load i32, i32* %3, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %3, align 4
  br label %6

19:                                               ; preds = %6
  %20 = load %struct.dispc_device*, %struct.dispc_device** %2, align 8
  %21 = getelementptr inbounds %struct.dispc_device, %struct.dispc_device* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %19
  %27 = load %struct.dispc_device*, %struct.dispc_device** %2, align 8
  %28 = load i32, i32* @OMAP_DSS_WB, align 4
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @dispc_ovl_set_burst_size(%struct.dispc_device* %27, i32 %28, i32 %29)
  br label %31

31:                                               ; preds = %26, %19
  ret void
}

declare dso_local i32 @dispc_get_num_ovls(%struct.dispc_device*) #1

declare dso_local i32 @dispc_ovl_set_burst_size(%struct.dispc_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
