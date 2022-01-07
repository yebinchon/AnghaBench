; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/analogix/extr_analogix_dp_core.c_analogix_dp_dt_parse_pdata.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/analogix/extr_analogix_dp_core.c_analogix_dp_dt_parse_pdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.analogix_dp_device = type { %struct.TYPE_4__*, %struct.video_info, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.video_info = type { i32, i32 }
%struct.TYPE_3__ = type { %struct.device_node* }
%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"samsung,link-rate\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"samsung,lane-count\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.analogix_dp_device*)* @analogix_dp_dt_parse_pdata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @analogix_dp_dt_parse_pdata(%struct.analogix_dp_device* %0) #0 {
  %2 = alloca %struct.analogix_dp_device*, align 8
  %3 = alloca %struct.device_node*, align 8
  %4 = alloca %struct.video_info*, align 8
  store %struct.analogix_dp_device* %0, %struct.analogix_dp_device** %2, align 8
  %5 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %2, align 8
  %6 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %5, i32 0, i32 2
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load %struct.device_node*, %struct.device_node** %8, align 8
  store %struct.device_node* %9, %struct.device_node** %3, align 8
  %10 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %2, align 8
  %11 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %10, i32 0, i32 1
  store %struct.video_info* %11, %struct.video_info** %4, align 8
  %12 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %2, align 8
  %13 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  switch i32 %16, label %31 [
    i32 129, label %17
    i32 128, label %17
    i32 130, label %22
  ]

17:                                               ; preds = %1, %1
  %18 = load %struct.video_info*, %struct.video_info** %4, align 8
  %19 = getelementptr inbounds %struct.video_info, %struct.video_info* %18, i32 0, i32 0
  store i32 10, i32* %19, align 4
  %20 = load %struct.video_info*, %struct.video_info** %4, align 8
  %21 = getelementptr inbounds %struct.video_info, %struct.video_info* %20, i32 0, i32 1
  store i32 4, i32* %21, align 4
  br label %31

22:                                               ; preds = %1
  %23 = load %struct.device_node*, %struct.device_node** %3, align 8
  %24 = load %struct.video_info*, %struct.video_info** %4, align 8
  %25 = getelementptr inbounds %struct.video_info, %struct.video_info* %24, i32 0, i32 0
  %26 = call i32 @of_property_read_u32(%struct.device_node* %23, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32* %25)
  %27 = load %struct.device_node*, %struct.device_node** %3, align 8
  %28 = load %struct.video_info*, %struct.video_info** %4, align 8
  %29 = getelementptr inbounds %struct.video_info, %struct.video_info* %28, i32 0, i32 1
  %30 = call i32 @of_property_read_u32(%struct.device_node* %27, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32* %29)
  br label %31

31:                                               ; preds = %1, %22, %17
  ret i32 0
}

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
