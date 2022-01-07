; ModuleID = '/home/carl/AnghaBench/linux/drivers/fpga/extr_fpga-mgr.c_fpga_mgr_write_init_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/fpga/extr_fpga-mgr.c_fpga_mgr_write_init_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fpga_manager = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.fpga_manager*, %struct.fpga_image_info*, i8*, i32)*, i32 }
%struct.fpga_image_info = type { i32 }

@FPGA_MGR_STATE_WRITE_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Error preparing FPGA for writing\0A\00", align 1
@FPGA_MGR_STATE_WRITE_INIT_ERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fpga_manager*, %struct.fpga_image_info*, i8*, i64)* @fpga_mgr_write_init_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fpga_mgr_write_init_buf(%struct.fpga_manager* %0, %struct.fpga_image_info* %1, i8* %2, i64 %3) #0 {
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
  %11 = load i32, i32* @FPGA_MGR_STATE_WRITE_INIT, align 4
  %12 = load %struct.fpga_manager*, %struct.fpga_manager** %6, align 8
  %13 = getelementptr inbounds %struct.fpga_manager, %struct.fpga_manager* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 8
  %14 = load %struct.fpga_manager*, %struct.fpga_manager** %6, align 8
  %15 = getelementptr inbounds %struct.fpga_manager, %struct.fpga_manager* %14, i32 0, i32 2
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %29, label %20

20:                                               ; preds = %4
  %21 = load %struct.fpga_manager*, %struct.fpga_manager** %6, align 8
  %22 = getelementptr inbounds %struct.fpga_manager, %struct.fpga_manager* %21, i32 0, i32 2
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32 (%struct.fpga_manager*, %struct.fpga_image_info*, i8*, i32)*, i32 (%struct.fpga_manager*, %struct.fpga_image_info*, i8*, i32)** %24, align 8
  %26 = load %struct.fpga_manager*, %struct.fpga_manager** %6, align 8
  %27 = load %struct.fpga_image_info*, %struct.fpga_image_info** %7, align 8
  %28 = call i32 %25(%struct.fpga_manager* %26, %struct.fpga_image_info* %27, i8* null, i32 0)
  store i32 %28, i32* %10, align 4
  br label %46

29:                                               ; preds = %4
  %30 = load %struct.fpga_manager*, %struct.fpga_manager** %6, align 8
  %31 = getelementptr inbounds %struct.fpga_manager, %struct.fpga_manager* %30, i32 0, i32 2
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32 (%struct.fpga_manager*, %struct.fpga_image_info*, i8*, i32)*, i32 (%struct.fpga_manager*, %struct.fpga_image_info*, i8*, i32)** %33, align 8
  %35 = load %struct.fpga_manager*, %struct.fpga_manager** %6, align 8
  %36 = load %struct.fpga_image_info*, %struct.fpga_image_info** %7, align 8
  %37 = load i8*, i8** %8, align 8
  %38 = load %struct.fpga_manager*, %struct.fpga_manager** %6, align 8
  %39 = getelementptr inbounds %struct.fpga_manager, %struct.fpga_manager* %38, i32 0, i32 2
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load i64, i64* %9, align 8
  %44 = call i32 @min(i32 %42, i64 %43)
  %45 = call i32 %34(%struct.fpga_manager* %35, %struct.fpga_image_info* %36, i8* %37, i32 %44)
  store i32 %45, i32* %10, align 4
  br label %46

46:                                               ; preds = %29, %20
  %47 = load i32, i32* %10, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %57

49:                                               ; preds = %46
  %50 = load %struct.fpga_manager*, %struct.fpga_manager** %6, align 8
  %51 = getelementptr inbounds %struct.fpga_manager, %struct.fpga_manager* %50, i32 0, i32 1
  %52 = call i32 @dev_err(i32* %51, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %53 = load i32, i32* @FPGA_MGR_STATE_WRITE_INIT_ERR, align 4
  %54 = load %struct.fpga_manager*, %struct.fpga_manager** %6, align 8
  %55 = getelementptr inbounds %struct.fpga_manager, %struct.fpga_manager* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 8
  %56 = load i32, i32* %10, align 4
  store i32 %56, i32* %5, align 4
  br label %58

57:                                               ; preds = %46
  store i32 0, i32* %5, align 4
  br label %58

58:                                               ; preds = %57, %49
  %59 = load i32, i32* %5, align 4
  ret i32 %59
}

declare dso_local i32 @min(i32, i64) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
