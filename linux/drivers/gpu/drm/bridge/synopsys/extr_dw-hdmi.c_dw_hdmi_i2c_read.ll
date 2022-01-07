; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/synopsys/extr_dw-hdmi.c_dw_hdmi_i2c_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/synopsys/extr_dw-hdmi.c_dw_hdmi_i2c_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dw_hdmi = type { i32, %struct.dw_hdmi_i2c* }
%struct.dw_hdmi_i2c = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [32 x i8] c"set read register address to 0\0A\00", align 1
@HDMI_I2CM_ADDRESS = common dso_local global i32 0, align 4
@HDMI_I2CM_OPERATION_READ_EXT = common dso_local global i32 0, align 4
@HDMI_I2CM_OPERATION = common dso_local global i32 0, align 4
@HDMI_I2CM_OPERATION_READ = common dso_local global i32 0, align 4
@HDMI_I2CM_DATAI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dw_hdmi*, i8*, i32)* @dw_hdmi_i2c_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dw_hdmi_i2c_read(%struct.dw_hdmi* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dw_hdmi*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.dw_hdmi_i2c*, align 8
  %9 = alloca i32, align 4
  store %struct.dw_hdmi* %0, %struct.dw_hdmi** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.dw_hdmi*, %struct.dw_hdmi** %5, align 8
  %11 = getelementptr inbounds %struct.dw_hdmi, %struct.dw_hdmi* %10, i32 0, i32 1
  %12 = load %struct.dw_hdmi_i2c*, %struct.dw_hdmi_i2c** %11, align 8
  store %struct.dw_hdmi_i2c* %12, %struct.dw_hdmi_i2c** %8, align 8
  %13 = load %struct.dw_hdmi_i2c*, %struct.dw_hdmi_i2c** %8, align 8
  %14 = getelementptr inbounds %struct.dw_hdmi_i2c, %struct.dw_hdmi_i2c* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %26, label %17

17:                                               ; preds = %3
  %18 = load %struct.dw_hdmi*, %struct.dw_hdmi** %5, align 8
  %19 = getelementptr inbounds %struct.dw_hdmi, %struct.dw_hdmi* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @dev_dbg(i32 %20, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %22 = load %struct.dw_hdmi_i2c*, %struct.dw_hdmi_i2c** %8, align 8
  %23 = getelementptr inbounds %struct.dw_hdmi_i2c, %struct.dw_hdmi_i2c* %22, i32 0, i32 1
  store i32 0, i32* %23, align 4
  %24 = load %struct.dw_hdmi_i2c*, %struct.dw_hdmi_i2c** %8, align 8
  %25 = getelementptr inbounds %struct.dw_hdmi_i2c, %struct.dw_hdmi_i2c* %24, i32 0, i32 0
  store i32 1, i32* %25, align 4
  br label %26

26:                                               ; preds = %17, %3
  br label %27

27:                                               ; preds = %63, %26
  %28 = load i32, i32* %7, align 4
  %29 = add i32 %28, -1
  store i32 %29, i32* %7, align 4
  %30 = icmp ne i32 %28, 0
  br i1 %30, label %31, label %70

31:                                               ; preds = %27
  %32 = load %struct.dw_hdmi_i2c*, %struct.dw_hdmi_i2c** %8, align 8
  %33 = getelementptr inbounds %struct.dw_hdmi_i2c, %struct.dw_hdmi_i2c* %32, i32 0, i32 3
  %34 = call i32 @reinit_completion(i32* %33)
  %35 = load %struct.dw_hdmi*, %struct.dw_hdmi** %5, align 8
  %36 = load %struct.dw_hdmi_i2c*, %struct.dw_hdmi_i2c** %8, align 8
  %37 = getelementptr inbounds %struct.dw_hdmi_i2c, %struct.dw_hdmi_i2c* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %37, align 4
  %40 = load i32, i32* @HDMI_I2CM_ADDRESS, align 4
  %41 = call i32 @hdmi_writeb(%struct.dw_hdmi* %35, i32 %38, i32 %40)
  %42 = load %struct.dw_hdmi_i2c*, %struct.dw_hdmi_i2c** %8, align 8
  %43 = getelementptr inbounds %struct.dw_hdmi_i2c, %struct.dw_hdmi_i2c* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %31
  %47 = load %struct.dw_hdmi*, %struct.dw_hdmi** %5, align 8
  %48 = load i32, i32* @HDMI_I2CM_OPERATION_READ_EXT, align 4
  %49 = load i32, i32* @HDMI_I2CM_OPERATION, align 4
  %50 = call i32 @hdmi_writeb(%struct.dw_hdmi* %47, i32 %48, i32 %49)
  br label %56

51:                                               ; preds = %31
  %52 = load %struct.dw_hdmi*, %struct.dw_hdmi** %5, align 8
  %53 = load i32, i32* @HDMI_I2CM_OPERATION_READ, align 4
  %54 = load i32, i32* @HDMI_I2CM_OPERATION, align 4
  %55 = call i32 @hdmi_writeb(%struct.dw_hdmi* %52, i32 %53, i32 %54)
  br label %56

56:                                               ; preds = %51, %46
  %57 = load %struct.dw_hdmi*, %struct.dw_hdmi** %5, align 8
  %58 = call i32 @dw_hdmi_i2c_wait(%struct.dw_hdmi* %57)
  store i32 %58, i32* %9, align 4
  %59 = load i32, i32* %9, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %56
  %62 = load i32, i32* %9, align 4
  store i32 %62, i32* %4, align 4
  br label %73

63:                                               ; preds = %56
  %64 = load %struct.dw_hdmi*, %struct.dw_hdmi** %5, align 8
  %65 = load i32, i32* @HDMI_I2CM_DATAI, align 4
  %66 = call i32 @hdmi_readb(%struct.dw_hdmi* %64, i32 %65)
  %67 = trunc i32 %66 to i8
  %68 = load i8*, i8** %6, align 8
  %69 = getelementptr inbounds i8, i8* %68, i32 1
  store i8* %69, i8** %6, align 8
  store i8 %67, i8* %68, align 1
  br label %27

70:                                               ; preds = %27
  %71 = load %struct.dw_hdmi_i2c*, %struct.dw_hdmi_i2c** %8, align 8
  %72 = getelementptr inbounds %struct.dw_hdmi_i2c, %struct.dw_hdmi_i2c* %71, i32 0, i32 2
  store i32 0, i32* %72, align 4
  store i32 0, i32* %4, align 4
  br label %73

73:                                               ; preds = %70, %61
  %74 = load i32, i32* %4, align 4
  ret i32 %74
}

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i32 @hdmi_writeb(%struct.dw_hdmi*, i32, i32) #1

declare dso_local i32 @dw_hdmi_i2c_wait(%struct.dw_hdmi*) #1

declare dso_local i32 @hdmi_readb(%struct.dw_hdmi*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
