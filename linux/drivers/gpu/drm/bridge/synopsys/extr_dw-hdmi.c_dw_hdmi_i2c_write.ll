; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/synopsys/extr_dw-hdmi.c_dw_hdmi_i2c_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/synopsys/extr_dw-hdmi.c_dw_hdmi_i2c_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dw_hdmi = type { %struct.dw_hdmi_i2c* }
%struct.dw_hdmi_i2c = type { i32, i8, i32 }

@HDMI_I2CM_DATAO = common dso_local global i32 0, align 4
@HDMI_I2CM_ADDRESS = common dso_local global i32 0, align 4
@HDMI_I2CM_OPERATION_WRITE = common dso_local global i32 0, align 4
@HDMI_I2CM_OPERATION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dw_hdmi*, i8*, i32)* @dw_hdmi_i2c_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dw_hdmi_i2c_write(%struct.dw_hdmi* %0, i8* %1, i32 %2) #0 {
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
  %11 = getelementptr inbounds %struct.dw_hdmi, %struct.dw_hdmi* %10, i32 0, i32 0
  %12 = load %struct.dw_hdmi_i2c*, %struct.dw_hdmi_i2c** %11, align 8
  store %struct.dw_hdmi_i2c* %12, %struct.dw_hdmi_i2c** %8, align 8
  %13 = load %struct.dw_hdmi_i2c*, %struct.dw_hdmi_i2c** %8, align 8
  %14 = getelementptr inbounds %struct.dw_hdmi_i2c, %struct.dw_hdmi_i2c* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %29, label %17

17:                                               ; preds = %3
  %18 = load i8*, i8** %6, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 0
  %20 = load i8, i8* %19, align 1
  %21 = load %struct.dw_hdmi_i2c*, %struct.dw_hdmi_i2c** %8, align 8
  %22 = getelementptr inbounds %struct.dw_hdmi_i2c, %struct.dw_hdmi_i2c* %21, i32 0, i32 1
  store i8 %20, i8* %22, align 4
  %23 = load i32, i32* %7, align 4
  %24 = add i32 %23, -1
  store i32 %24, i32* %7, align 4
  %25 = load i8*, i8** %6, align 8
  %26 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %26, i8** %6, align 8
  %27 = load %struct.dw_hdmi_i2c*, %struct.dw_hdmi_i2c** %8, align 8
  %28 = getelementptr inbounds %struct.dw_hdmi_i2c, %struct.dw_hdmi_i2c* %27, i32 0, i32 0
  store i32 1, i32* %28, align 4
  br label %29

29:                                               ; preds = %17, %3
  br label %30

30:                                               ; preds = %63, %29
  %31 = load i32, i32* %7, align 4
  %32 = add i32 %31, -1
  store i32 %32, i32* %7, align 4
  %33 = icmp ne i32 %31, 0
  br i1 %33, label %34, label %64

34:                                               ; preds = %30
  %35 = load %struct.dw_hdmi_i2c*, %struct.dw_hdmi_i2c** %8, align 8
  %36 = getelementptr inbounds %struct.dw_hdmi_i2c, %struct.dw_hdmi_i2c* %35, i32 0, i32 2
  %37 = call i32 @reinit_completion(i32* %36)
  %38 = load %struct.dw_hdmi*, %struct.dw_hdmi** %5, align 8
  %39 = load i8*, i8** %6, align 8
  %40 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %40, i8** %6, align 8
  %41 = load i8, i8* %39, align 1
  %42 = zext i8 %41 to i32
  %43 = load i32, i32* @HDMI_I2CM_DATAO, align 4
  %44 = call i32 @hdmi_writeb(%struct.dw_hdmi* %38, i32 %42, i32 %43)
  %45 = load %struct.dw_hdmi*, %struct.dw_hdmi** %5, align 8
  %46 = load %struct.dw_hdmi_i2c*, %struct.dw_hdmi_i2c** %8, align 8
  %47 = getelementptr inbounds %struct.dw_hdmi_i2c, %struct.dw_hdmi_i2c* %46, i32 0, i32 1
  %48 = load i8, i8* %47, align 4
  %49 = add i8 %48, 1
  store i8 %49, i8* %47, align 4
  %50 = zext i8 %48 to i32
  %51 = load i32, i32* @HDMI_I2CM_ADDRESS, align 4
  %52 = call i32 @hdmi_writeb(%struct.dw_hdmi* %45, i32 %50, i32 %51)
  %53 = load %struct.dw_hdmi*, %struct.dw_hdmi** %5, align 8
  %54 = load i32, i32* @HDMI_I2CM_OPERATION_WRITE, align 4
  %55 = load i32, i32* @HDMI_I2CM_OPERATION, align 4
  %56 = call i32 @hdmi_writeb(%struct.dw_hdmi* %53, i32 %54, i32 %55)
  %57 = load %struct.dw_hdmi*, %struct.dw_hdmi** %5, align 8
  %58 = call i32 @dw_hdmi_i2c_wait(%struct.dw_hdmi* %57)
  store i32 %58, i32* %9, align 4
  %59 = load i32, i32* %9, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %34
  %62 = load i32, i32* %9, align 4
  store i32 %62, i32* %4, align 4
  br label %65

63:                                               ; preds = %34
  br label %30

64:                                               ; preds = %30
  store i32 0, i32* %4, align 4
  br label %65

65:                                               ; preds = %64, %61
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i32 @hdmi_writeb(%struct.dw_hdmi*, i32, i32) #1

declare dso_local i32 @dw_hdmi_i2c_wait(%struct.dw_hdmi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
