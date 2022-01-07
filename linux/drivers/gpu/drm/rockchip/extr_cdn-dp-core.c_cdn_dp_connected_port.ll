; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_cdn-dp-core.c_cdn_dp_connected_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_cdn-dp-core.c_cdn_dp_connected_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdn_dp_port = type { i32 }
%struct.cdn_dp_device = type { i32, %struct.cdn_dp_port** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cdn_dp_port* (%struct.cdn_dp_device*)* @cdn_dp_connected_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cdn_dp_port* @cdn_dp_connected_port(%struct.cdn_dp_device* %0) #0 {
  %2 = alloca %struct.cdn_dp_port*, align 8
  %3 = alloca %struct.cdn_dp_device*, align 8
  %4 = alloca %struct.cdn_dp_port*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.cdn_dp_device* %0, %struct.cdn_dp_device** %3, align 8
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %28, %1
  %8 = load i32, i32* %5, align 4
  %9 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %3, align 8
  %10 = getelementptr inbounds %struct.cdn_dp_device, %struct.cdn_dp_device* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp slt i32 %8, %11
  br i1 %12, label %13, label %31

13:                                               ; preds = %7
  %14 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %3, align 8
  %15 = getelementptr inbounds %struct.cdn_dp_device, %struct.cdn_dp_device* %14, i32 0, i32 1
  %16 = load %struct.cdn_dp_port**, %struct.cdn_dp_port*** %15, align 8
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.cdn_dp_port*, %struct.cdn_dp_port** %16, i64 %18
  %20 = load %struct.cdn_dp_port*, %struct.cdn_dp_port** %19, align 8
  store %struct.cdn_dp_port* %20, %struct.cdn_dp_port** %4, align 8
  %21 = load %struct.cdn_dp_port*, %struct.cdn_dp_port** %4, align 8
  %22 = call i32 @cdn_dp_get_port_lanes(%struct.cdn_dp_port* %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %13
  %26 = load %struct.cdn_dp_port*, %struct.cdn_dp_port** %4, align 8
  store %struct.cdn_dp_port* %26, %struct.cdn_dp_port** %2, align 8
  br label %32

27:                                               ; preds = %13
  br label %28

28:                                               ; preds = %27
  %29 = load i32, i32* %5, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %5, align 4
  br label %7

31:                                               ; preds = %7
  store %struct.cdn_dp_port* null, %struct.cdn_dp_port** %2, align 8
  br label %32

32:                                               ; preds = %31, %25
  %33 = load %struct.cdn_dp_port*, %struct.cdn_dp_port** %2, align 8
  ret %struct.cdn_dp_port* %33
}

declare dso_local i32 @cdn_dp_get_port_lanes(%struct.cdn_dp_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
