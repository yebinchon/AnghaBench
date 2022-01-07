; ModuleID = '/home/carl/AnghaBench/linux/drivers/fpga/extr_fpga-mgr.c_fpga_mgr_buf_load_mapped.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/fpga/extr_fpga-mgr.c_fpga_mgr_buf_load_mapped.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fpga_manager = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.fpga_manager*, i8*, i64)* }
%struct.fpga_image_info = type { i32 }

@FPGA_MGR_STATE_WRITE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Error while writing image data to FPGA\0A\00", align 1
@FPGA_MGR_STATE_WRITE_ERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fpga_manager*, %struct.fpga_image_info*, i8*, i64)* @fpga_mgr_buf_load_mapped to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fpga_mgr_buf_load_mapped(%struct.fpga_manager* %0, %struct.fpga_image_info* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.fpga_manager*, align 8
  %7 = alloca %struct.fpga_image_info*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.fpga_manager* %0, %struct.fpga_manager** %6, align 8
  store %struct.fpga_image_info* %1, %struct.fpga_image_info** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %11 = load %struct.fpga_manager*, %struct.fpga_manager** %6, align 8
  %12 = load %struct.fpga_image_info*, %struct.fpga_image_info** %7, align 8
  %13 = load i8*, i8** %8, align 8
  %14 = load i64, i64* %9, align 8
  %15 = call i32 @fpga_mgr_write_init_buf(%struct.fpga_manager* %11, %struct.fpga_image_info* %12, i8* %13, i64 %14)
  store i32 %15, i32* %10, align 4
  %16 = load i32, i32* %10, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %4
  %19 = load i32, i32* %10, align 4
  store i32 %19, i32* %5, align 4
  br label %47

20:                                               ; preds = %4
  %21 = load i32, i32* @FPGA_MGR_STATE_WRITE, align 4
  %22 = load %struct.fpga_manager*, %struct.fpga_manager** %6, align 8
  %23 = getelementptr inbounds %struct.fpga_manager, %struct.fpga_manager* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  %24 = load %struct.fpga_manager*, %struct.fpga_manager** %6, align 8
  %25 = getelementptr inbounds %struct.fpga_manager, %struct.fpga_manager* %24, i32 0, i32 2
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32 (%struct.fpga_manager*, i8*, i64)*, i32 (%struct.fpga_manager*, i8*, i64)** %27, align 8
  %29 = load %struct.fpga_manager*, %struct.fpga_manager** %6, align 8
  %30 = load i8*, i8** %8, align 8
  %31 = load i64, i64* %9, align 8
  %32 = call i32 %28(%struct.fpga_manager* %29, i8* %30, i64 %31)
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %10, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %20
  %36 = load %struct.fpga_manager*, %struct.fpga_manager** %6, align 8
  %37 = getelementptr inbounds %struct.fpga_manager, %struct.fpga_manager* %36, i32 0, i32 1
  %38 = call i32 @dev_err(i32* %37, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %39 = load i32, i32* @FPGA_MGR_STATE_WRITE_ERR, align 4
  %40 = load %struct.fpga_manager*, %struct.fpga_manager** %6, align 8
  %41 = getelementptr inbounds %struct.fpga_manager, %struct.fpga_manager* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = load i32, i32* %10, align 4
  store i32 %42, i32* %5, align 4
  br label %47

43:                                               ; preds = %20
  %44 = load %struct.fpga_manager*, %struct.fpga_manager** %6, align 8
  %45 = load %struct.fpga_image_info*, %struct.fpga_image_info** %7, align 8
  %46 = call i32 @fpga_mgr_write_complete(%struct.fpga_manager* %44, %struct.fpga_image_info* %45)
  store i32 %46, i32* %5, align 4
  br label %47

47:                                               ; preds = %43, %35, %18
  %48 = load i32, i32* %5, align 4
  ret i32 %48
}

declare dso_local i32 @fpga_mgr_write_init_buf(%struct.fpga_manager*, %struct.fpga_image_info*, i8*, i64) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @fpga_mgr_write_complete(%struct.fpga_manager*, %struct.fpga_image_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
