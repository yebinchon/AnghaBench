; ModuleID = '/home/carl/AnghaBench/linux/drivers/fpga/extr_altera-ps-spi.c_altera_ps_write_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/fpga/extr_altera-ps-spi.c_altera_ps_write_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fpga_manager = type { i32, %struct.altera_ps_conf* }
%struct.altera_ps_conf = type { i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.fpga_image_info = type { i32 }

@FPGA_MGR_PARTIAL_RECONFIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Partial reconfiguration not supported.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Status pin failed to show a reset\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"Status pin not ready.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fpga_manager*, %struct.fpga_image_info*, i8*, i64)* @altera_ps_write_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @altera_ps_write_init(%struct.fpga_manager* %0, %struct.fpga_image_info* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.fpga_manager*, align 8
  %7 = alloca %struct.fpga_image_info*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.altera_ps_conf*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.fpga_manager* %0, %struct.fpga_manager** %6, align 8
  store %struct.fpga_image_info* %1, %struct.fpga_image_info** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load %struct.fpga_manager*, %struct.fpga_manager** %6, align 8
  %16 = getelementptr inbounds %struct.fpga_manager, %struct.fpga_manager* %15, i32 0, i32 1
  %17 = load %struct.altera_ps_conf*, %struct.altera_ps_conf** %16, align 8
  store %struct.altera_ps_conf* %17, %struct.altera_ps_conf** %10, align 8
  %18 = load %struct.fpga_image_info*, %struct.fpga_image_info** %7, align 8
  %19 = getelementptr inbounds %struct.fpga_image_info, %struct.fpga_image_info* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.altera_ps_conf*, %struct.altera_ps_conf** %10, align 8
  %22 = getelementptr inbounds %struct.altera_ps_conf, %struct.altera_ps_conf* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  %23 = load %struct.fpga_image_info*, %struct.fpga_image_info** %7, align 8
  %24 = getelementptr inbounds %struct.fpga_image_info, %struct.fpga_image_info* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @FPGA_MGR_PARTIAL_RECONFIG, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %4
  %30 = load %struct.fpga_manager*, %struct.fpga_manager** %6, align 8
  %31 = getelementptr inbounds %struct.fpga_manager, %struct.fpga_manager* %30, i32 0, i32 0
  %32 = call i32 @dev_err(i32* %31, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %5, align 4
  br label %114

35:                                               ; preds = %4
  %36 = load %struct.altera_ps_conf*, %struct.altera_ps_conf** %10, align 8
  %37 = getelementptr inbounds %struct.altera_ps_conf, %struct.altera_ps_conf* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @gpiod_set_value_cansleep(i32 %38, i32 1)
  %40 = load %struct.altera_ps_conf*, %struct.altera_ps_conf** %10, align 8
  %41 = getelementptr inbounds %struct.altera_ps_conf, %struct.altera_ps_conf* %40, i32 0, i32 1
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @altera_ps_delay(i32 %44)
  %46 = load %struct.altera_ps_conf*, %struct.altera_ps_conf** %10, align 8
  %47 = getelementptr inbounds %struct.altera_ps_conf, %struct.altera_ps_conf* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @gpiod_get_value_cansleep(i32 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %57, label %51

51:                                               ; preds = %35
  %52 = load %struct.fpga_manager*, %struct.fpga_manager** %6, align 8
  %53 = getelementptr inbounds %struct.fpga_manager, %struct.fpga_manager* %52, i32 0, i32 0
  %54 = call i32 @dev_err(i32* %53, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %55 = load i32, i32* @EIO, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %5, align 4
  br label %114

57:                                               ; preds = %35
  %58 = load %struct.altera_ps_conf*, %struct.altera_ps_conf** %10, align 8
  %59 = getelementptr inbounds %struct.altera_ps_conf, %struct.altera_ps_conf* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @gpiod_set_value_cansleep(i32 %60, i32 0)
  %62 = load %struct.altera_ps_conf*, %struct.altera_ps_conf** %10, align 8
  %63 = getelementptr inbounds %struct.altera_ps_conf, %struct.altera_ps_conf* %62, i32 0, i32 1
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  store i32 %66, i32* %11, align 4
  %67 = load %struct.altera_ps_conf*, %struct.altera_ps_conf** %10, align 8
  %68 = getelementptr inbounds %struct.altera_ps_conf, %struct.altera_ps_conf* %67, i32 0, i32 1
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  store i32 %71, i32* %12, align 4
  %72 = load i32, i32* %12, align 4
  %73 = load i32, i32* %11, align 4
  %74 = sdiv i32 %72, %73
  store i32 %74, i32* %13, align 4
  %75 = load i32, i32* %12, align 4
  %76 = load i32, i32* %11, align 4
  %77 = srem i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %57
  %80 = load i32, i32* %13, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %13, align 4
  br label %82

82:                                               ; preds = %79, %57
  store i32 0, i32* %14, align 4
  br label %83

83:                                               ; preds = %105, %82
  %84 = load i32, i32* %14, align 4
  %85 = load i32, i32* %13, align 4
  %86 = icmp slt i32 %84, %85
  br i1 %86, label %87, label %108

87:                                               ; preds = %83
  %88 = load i32, i32* %11, align 4
  %89 = load i32, i32* %11, align 4
  %90 = add nsw i32 %89, 10
  %91 = call i32 @usleep_range(i32 %88, i32 %90)
  %92 = load %struct.altera_ps_conf*, %struct.altera_ps_conf** %10, align 8
  %93 = getelementptr inbounds %struct.altera_ps_conf, %struct.altera_ps_conf* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @gpiod_get_value_cansleep(i32 %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %104, label %97

97:                                               ; preds = %87
  %98 = load %struct.altera_ps_conf*, %struct.altera_ps_conf** %10, align 8
  %99 = getelementptr inbounds %struct.altera_ps_conf, %struct.altera_ps_conf* %98, i32 0, i32 1
  %100 = load %struct.TYPE_2__*, %struct.TYPE_2__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @altera_ps_delay(i32 %102)
  store i32 0, i32* %5, align 4
  br label %114

104:                                              ; preds = %87
  br label %105

105:                                              ; preds = %104
  %106 = load i32, i32* %14, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %14, align 4
  br label %83

108:                                              ; preds = %83
  %109 = load %struct.fpga_manager*, %struct.fpga_manager** %6, align 8
  %110 = getelementptr inbounds %struct.fpga_manager, %struct.fpga_manager* %109, i32 0, i32 0
  %111 = call i32 @dev_err(i32* %110, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %112 = load i32, i32* @EIO, align 4
  %113 = sub nsw i32 0, %112
  store i32 %113, i32* %5, align 4
  br label %114

114:                                              ; preds = %108, %97, %51, %29
  %115 = load i32, i32* %5, align 4
  ret i32 %115
}

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @gpiod_set_value_cansleep(i32, i32) #1

declare dso_local i32 @altera_ps_delay(i32) #1

declare dso_local i32 @gpiod_get_value_cansleep(i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
