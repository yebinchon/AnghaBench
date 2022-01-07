; ModuleID = '/home/carl/AnghaBench/linux/drivers/fpga/extr_of-fpga-region.c_of_fpga_region_notify_pre_apply.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/fpga/extr_of-fpga-region.c_of_fpga_region_notify_pre_apply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fpga_region = type { %struct.fpga_image_info*, %struct.device }
%struct.fpga_image_info = type { i32 }
%struct.device = type { i32 }
%struct.of_overlay_notify_data = type { i32 }

@.str = private unnamed_addr constant [37 x i8] c"Region already has overlay applied.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fpga_region*, %struct.of_overlay_notify_data*)* @of_fpga_region_notify_pre_apply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @of_fpga_region_notify_pre_apply(%struct.fpga_region* %0, %struct.of_overlay_notify_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fpga_region*, align 8
  %5 = alloca %struct.of_overlay_notify_data*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.fpga_image_info*, align 8
  %8 = alloca i32, align 4
  store %struct.fpga_region* %0, %struct.fpga_region** %4, align 8
  store %struct.of_overlay_notify_data* %1, %struct.of_overlay_notify_data** %5, align 8
  %9 = load %struct.fpga_region*, %struct.fpga_region** %4, align 8
  %10 = getelementptr inbounds %struct.fpga_region, %struct.fpga_region* %9, i32 0, i32 1
  store %struct.device* %10, %struct.device** %6, align 8
  %11 = load %struct.fpga_region*, %struct.fpga_region** %4, align 8
  %12 = load %struct.of_overlay_notify_data*, %struct.of_overlay_notify_data** %5, align 8
  %13 = getelementptr inbounds %struct.of_overlay_notify_data, %struct.of_overlay_notify_data* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.fpga_image_info* @of_fpga_region_parse_ov(%struct.fpga_region* %11, i32 %14)
  store %struct.fpga_image_info* %15, %struct.fpga_image_info** %7, align 8
  %16 = load %struct.fpga_image_info*, %struct.fpga_image_info** %7, align 8
  %17 = call i64 @IS_ERR(%struct.fpga_image_info* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load %struct.fpga_image_info*, %struct.fpga_image_info** %7, align 8
  %21 = call i32 @PTR_ERR(%struct.fpga_image_info* %20)
  store i32 %21, i32* %3, align 4
  br label %51

22:                                               ; preds = %2
  %23 = load %struct.fpga_image_info*, %struct.fpga_image_info** %7, align 8
  %24 = icmp ne %struct.fpga_image_info* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %22
  store i32 0, i32* %3, align 4
  br label %51

26:                                               ; preds = %22
  %27 = load %struct.fpga_region*, %struct.fpga_region** %4, align 8
  %28 = getelementptr inbounds %struct.fpga_region, %struct.fpga_region* %27, i32 0, i32 0
  %29 = load %struct.fpga_image_info*, %struct.fpga_image_info** %28, align 8
  %30 = icmp ne %struct.fpga_image_info* %29, null
  br i1 %30, label %31, label %36

31:                                               ; preds = %26
  %32 = load %struct.device*, %struct.device** %6, align 8
  %33 = call i32 @dev_err(%struct.device* %32, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %51

36:                                               ; preds = %26
  %37 = load %struct.fpga_image_info*, %struct.fpga_image_info** %7, align 8
  %38 = load %struct.fpga_region*, %struct.fpga_region** %4, align 8
  %39 = getelementptr inbounds %struct.fpga_region, %struct.fpga_region* %38, i32 0, i32 0
  store %struct.fpga_image_info* %37, %struct.fpga_image_info** %39, align 8
  %40 = load %struct.fpga_region*, %struct.fpga_region** %4, align 8
  %41 = call i32 @fpga_region_program_fpga(%struct.fpga_region* %40)
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %8, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %36
  %45 = load %struct.fpga_image_info*, %struct.fpga_image_info** %7, align 8
  %46 = call i32 @fpga_image_info_free(%struct.fpga_image_info* %45)
  %47 = load %struct.fpga_region*, %struct.fpga_region** %4, align 8
  %48 = getelementptr inbounds %struct.fpga_region, %struct.fpga_region* %47, i32 0, i32 0
  store %struct.fpga_image_info* null, %struct.fpga_image_info** %48, align 8
  br label %49

49:                                               ; preds = %44, %36
  %50 = load i32, i32* %8, align 4
  store i32 %50, i32* %3, align 4
  br label %51

51:                                               ; preds = %49, %31, %25, %19
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local %struct.fpga_image_info* @of_fpga_region_parse_ov(%struct.fpga_region*, i32) #1

declare dso_local i64 @IS_ERR(%struct.fpga_image_info*) #1

declare dso_local i32 @PTR_ERR(%struct.fpga_image_info*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @fpga_region_program_fpga(%struct.fpga_region*) #1

declare dso_local i32 @fpga_image_info_free(%struct.fpga_image_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
