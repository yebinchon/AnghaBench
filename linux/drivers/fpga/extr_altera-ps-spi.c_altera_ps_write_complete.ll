; ModuleID = '/home/carl/AnghaBench/linux/drivers/fpga/extr_altera-ps-spi.c_altera_ps_write_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/fpga/extr_altera-ps-spi.c_altera_ps_write_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fpga_manager = type { i32, %struct.altera_ps_conf* }
%struct.altera_ps_conf = type { i32, i64, i32 }
%struct.fpga_image_info = type { i32 }

@altera_ps_write_complete.dummy = internal constant [1 x i8] zeroinitializer, align 1
@.str = private unnamed_addr constant [29 x i8] c"Error during configuration.\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"CONF_DONE is inactive!\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"spi error during end sequence: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fpga_manager*, %struct.fpga_image_info*)* @altera_ps_write_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @altera_ps_write_complete(%struct.fpga_manager* %0, %struct.fpga_image_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fpga_manager*, align 8
  %5 = alloca %struct.fpga_image_info*, align 8
  %6 = alloca %struct.altera_ps_conf*, align 8
  %7 = alloca i32, align 4
  store %struct.fpga_manager* %0, %struct.fpga_manager** %4, align 8
  store %struct.fpga_image_info* %1, %struct.fpga_image_info** %5, align 8
  %8 = load %struct.fpga_manager*, %struct.fpga_manager** %4, align 8
  %9 = getelementptr inbounds %struct.fpga_manager, %struct.fpga_manager* %8, i32 0, i32 1
  %10 = load %struct.altera_ps_conf*, %struct.altera_ps_conf** %9, align 8
  store %struct.altera_ps_conf* %10, %struct.altera_ps_conf** %6, align 8
  %11 = load %struct.altera_ps_conf*, %struct.altera_ps_conf** %6, align 8
  %12 = getelementptr inbounds %struct.altera_ps_conf, %struct.altera_ps_conf* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = call i64 @gpiod_get_value_cansleep(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %2
  %17 = load %struct.fpga_manager*, %struct.fpga_manager** %4, align 8
  %18 = getelementptr inbounds %struct.fpga_manager, %struct.fpga_manager* %17, i32 0, i32 0
  %19 = call i32 (i32*, i8*, ...) @dev_err(i32* %18, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @EIO, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %54

22:                                               ; preds = %2
  %23 = load %struct.altera_ps_conf*, %struct.altera_ps_conf** %6, align 8
  %24 = getelementptr inbounds %struct.altera_ps_conf, %struct.altera_ps_conf* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %40

27:                                               ; preds = %22
  %28 = load %struct.altera_ps_conf*, %struct.altera_ps_conf** %6, align 8
  %29 = getelementptr inbounds %struct.altera_ps_conf, %struct.altera_ps_conf* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @gpiod_get_raw_value_cansleep(i64 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %39, label %33

33:                                               ; preds = %27
  %34 = load %struct.fpga_manager*, %struct.fpga_manager** %4, align 8
  %35 = getelementptr inbounds %struct.fpga_manager, %struct.fpga_manager* %34, i32 0, i32 0
  %36 = call i32 (i32*, i8*, ...) @dev_err(i32* %35, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %37 = load i32, i32* @EIO, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %54

39:                                               ; preds = %27
  br label %40

40:                                               ; preds = %39, %22
  %41 = load %struct.altera_ps_conf*, %struct.altera_ps_conf** %6, align 8
  %42 = getelementptr inbounds %struct.altera_ps_conf, %struct.altera_ps_conf* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @spi_write(i32 %43, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @altera_ps_write_complete.dummy, i64 0, i64 0), i32 1)
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %7, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %40
  %48 = load %struct.fpga_manager*, %struct.fpga_manager** %4, align 8
  %49 = getelementptr inbounds %struct.fpga_manager, %struct.fpga_manager* %48, i32 0, i32 0
  %50 = load i32, i32* %7, align 4
  %51 = call i32 (i32*, i8*, ...) @dev_err(i32* %49, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %50)
  %52 = load i32, i32* %7, align 4
  store i32 %52, i32* %3, align 4
  br label %54

53:                                               ; preds = %40
  store i32 0, i32* %3, align 4
  br label %54

54:                                               ; preds = %53, %47, %33, %16
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i64 @gpiod_get_value_cansleep(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @gpiod_get_raw_value_cansleep(i64) #1

declare dso_local i32 @spi_write(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
