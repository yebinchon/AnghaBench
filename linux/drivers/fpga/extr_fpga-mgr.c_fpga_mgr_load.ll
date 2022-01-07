; ModuleID = '/home/carl/AnghaBench/linux/drivers/fpga/extr_fpga-mgr.c_fpga_mgr_load.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/fpga/extr_fpga-mgr.c_fpga_mgr_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fpga_manager = type { i32 }
%struct.fpga_image_info = type { i64, i64, i64, i64 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fpga_mgr_load(%struct.fpga_manager* %0, %struct.fpga_image_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fpga_manager*, align 8
  %5 = alloca %struct.fpga_image_info*, align 8
  store %struct.fpga_manager* %0, %struct.fpga_manager** %4, align 8
  store %struct.fpga_image_info* %1, %struct.fpga_image_info** %5, align 8
  %6 = load %struct.fpga_image_info*, %struct.fpga_image_info** %5, align 8
  %7 = getelementptr inbounds %struct.fpga_image_info, %struct.fpga_image_info* %6, i32 0, i32 3
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %17

10:                                               ; preds = %2
  %11 = load %struct.fpga_manager*, %struct.fpga_manager** %4, align 8
  %12 = load %struct.fpga_image_info*, %struct.fpga_image_info** %5, align 8
  %13 = load %struct.fpga_image_info*, %struct.fpga_image_info** %5, align 8
  %14 = getelementptr inbounds %struct.fpga_image_info, %struct.fpga_image_info* %13, i32 0, i32 3
  %15 = load i64, i64* %14, align 8
  %16 = call i32 @fpga_mgr_buf_load_sg(%struct.fpga_manager* %11, %struct.fpga_image_info* %12, i64 %15)
  store i32 %16, i32* %3, align 4
  br label %52

17:                                               ; preds = %2
  %18 = load %struct.fpga_image_info*, %struct.fpga_image_info** %5, align 8
  %19 = getelementptr inbounds %struct.fpga_image_info, %struct.fpga_image_info* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %37

22:                                               ; preds = %17
  %23 = load %struct.fpga_image_info*, %struct.fpga_image_info** %5, align 8
  %24 = getelementptr inbounds %struct.fpga_image_info, %struct.fpga_image_info* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %37

27:                                               ; preds = %22
  %28 = load %struct.fpga_manager*, %struct.fpga_manager** %4, align 8
  %29 = load %struct.fpga_image_info*, %struct.fpga_image_info** %5, align 8
  %30 = load %struct.fpga_image_info*, %struct.fpga_image_info** %5, align 8
  %31 = getelementptr inbounds %struct.fpga_image_info, %struct.fpga_image_info* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.fpga_image_info*, %struct.fpga_image_info** %5, align 8
  %34 = getelementptr inbounds %struct.fpga_image_info, %struct.fpga_image_info* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @fpga_mgr_buf_load(%struct.fpga_manager* %28, %struct.fpga_image_info* %29, i64 %32, i64 %35)
  store i32 %36, i32* %3, align 4
  br label %52

37:                                               ; preds = %22, %17
  %38 = load %struct.fpga_image_info*, %struct.fpga_image_info** %5, align 8
  %39 = getelementptr inbounds %struct.fpga_image_info, %struct.fpga_image_info* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %37
  %43 = load %struct.fpga_manager*, %struct.fpga_manager** %4, align 8
  %44 = load %struct.fpga_image_info*, %struct.fpga_image_info** %5, align 8
  %45 = load %struct.fpga_image_info*, %struct.fpga_image_info** %5, align 8
  %46 = getelementptr inbounds %struct.fpga_image_info, %struct.fpga_image_info* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @fpga_mgr_firmware_load(%struct.fpga_manager* %43, %struct.fpga_image_info* %44, i64 %47)
  store i32 %48, i32* %3, align 4
  br label %52

49:                                               ; preds = %37
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %3, align 4
  br label %52

52:                                               ; preds = %49, %42, %27, %10
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i32 @fpga_mgr_buf_load_sg(%struct.fpga_manager*, %struct.fpga_image_info*, i64) #1

declare dso_local i32 @fpga_mgr_buf_load(%struct.fpga_manager*, %struct.fpga_image_info*, i64, i64) #1

declare dso_local i32 @fpga_mgr_firmware_load(%struct.fpga_manager*, %struct.fpga_image_info*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
