; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/zte/extr_zx_hdmi.c_zx_hdmi_i2c_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/zte/extr_zx_hdmi.c_zx_hdmi_i2c_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zx_hdmi = type { i32 }
%struct.i2c_msg = type { i32, i32* }

@ZX_DDC_DIN_CNT2 = common dso_local global i32 0, align 4
@ZX_DDC_DIN_CNT1 = common dso_local global i32 0, align 4
@ZX_DDC_CMD = common dso_local global i32 0, align 4
@DDC_CMD_MASK = common dso_local global i32 0, align 4
@DDC_CMD_CLEAR_FIFO = common dso_local global i32 0, align 4
@DDC_CMD_SEQUENTIAL_READ = common dso_local global i32 0, align 4
@ZX_DDC_DOUT_CNT = common dso_local global i32 0, align 4
@DDC_DOUT_CNT_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"DDC FIFO read timed out!\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@ZX_DDC_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zx_hdmi*, %struct.i2c_msg*)* @zx_hdmi_i2c_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zx_hdmi_i2c_read(%struct.zx_hdmi* %0, %struct.i2c_msg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.zx_hdmi*, align 8
  %5 = alloca %struct.i2c_msg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.zx_hdmi* %0, %struct.zx_hdmi** %4, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %5, align 8
  %12 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %13 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %6, align 4
  %15 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %16 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  store i32* %17, i32** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %18 = load %struct.zx_hdmi*, %struct.zx_hdmi** %4, align 8
  %19 = load i32, i32* @ZX_DDC_DIN_CNT2, align 4
  %20 = load i32, i32* %6, align 4
  %21 = ashr i32 %20, 8
  %22 = and i32 %21, 255
  %23 = call i32 @hdmi_writeb(%struct.zx_hdmi* %18, i32 %19, i32 %22)
  %24 = load %struct.zx_hdmi*, %struct.zx_hdmi** %4, align 8
  %25 = load i32, i32* @ZX_DDC_DIN_CNT1, align 4
  %26 = load i32, i32* %6, align 4
  %27 = and i32 %26, 255
  %28 = call i32 @hdmi_writeb(%struct.zx_hdmi* %24, i32 %25, i32 %27)
  %29 = load %struct.zx_hdmi*, %struct.zx_hdmi** %4, align 8
  %30 = load i32, i32* @ZX_DDC_CMD, align 4
  %31 = load i32, i32* @DDC_CMD_MASK, align 4
  %32 = load i32, i32* @DDC_CMD_CLEAR_FIFO, align 4
  %33 = call i32 @hdmi_writeb_mask(%struct.zx_hdmi* %29, i32 %30, i32 %31, i32 %32)
  %34 = load %struct.zx_hdmi*, %struct.zx_hdmi** %4, align 8
  %35 = load i32, i32* @ZX_DDC_CMD, align 4
  %36 = load i32, i32* @DDC_CMD_MASK, align 4
  %37 = load i32, i32* @DDC_CMD_SEQUENTIAL_READ, align 4
  %38 = call i32 @hdmi_writeb_mask(%struct.zx_hdmi* %34, i32 %35, i32 %36, i32 %37)
  br label %39

39:                                               ; preds = %77, %62, %2
  %40 = load i32, i32* %6, align 4
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %42, label %81

42:                                               ; preds = %39
  %43 = call i32 @usleep_range(i32 500, i32 1000)
  %44 = load %struct.zx_hdmi*, %struct.zx_hdmi** %4, align 8
  %45 = load i32, i32* @ZX_DDC_DOUT_CNT, align 4
  %46 = call i32 @hdmi_readb(%struct.zx_hdmi* %44, i32 %45)
  %47 = load i32, i32* @DDC_DOUT_CNT_MASK, align 4
  %48 = and i32 %46, %47
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* %10, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %63

51:                                               ; preds = %42
  %52 = load i32, i32* %8, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %8, align 4
  %54 = icmp sgt i32 %53, 5
  br i1 %54, label %55, label %62

55:                                               ; preds = %51
  %56 = load %struct.zx_hdmi*, %struct.zx_hdmi** %4, align 8
  %57 = getelementptr inbounds %struct.zx_hdmi, %struct.zx_hdmi* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @DRM_DEV_ERROR(i32 %58, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %60 = load i32, i32* @ETIMEDOUT, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %3, align 4
  br label %83

62:                                               ; preds = %51
  br label %39

63:                                               ; preds = %42
  store i32 0, i32* %11, align 4
  br label %64

64:                                               ; preds = %74, %63
  %65 = load i32, i32* %11, align 4
  %66 = load i32, i32* %10, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %77

68:                                               ; preds = %64
  %69 = load %struct.zx_hdmi*, %struct.zx_hdmi** %4, align 8
  %70 = load i32, i32* @ZX_DDC_DATA, align 4
  %71 = call i32 @hdmi_readb(%struct.zx_hdmi* %69, i32 %70)
  %72 = load i32*, i32** %7, align 8
  %73 = getelementptr inbounds i32, i32* %72, i32 1
  store i32* %73, i32** %7, align 8
  store i32 %71, i32* %72, align 4
  br label %74

74:                                               ; preds = %68
  %75 = load i32, i32* %11, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %11, align 4
  br label %64

77:                                               ; preds = %64
  %78 = load i32, i32* %10, align 4
  %79 = load i32, i32* %6, align 4
  %80 = sub nsw i32 %79, %78
  store i32 %80, i32* %6, align 4
  br label %39

81:                                               ; preds = %39
  %82 = load i32, i32* %9, align 4
  store i32 %82, i32* %3, align 4
  br label %83

83:                                               ; preds = %81, %55
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local i32 @hdmi_writeb(%struct.zx_hdmi*, i32, i32) #1

declare dso_local i32 @hdmi_writeb_mask(%struct.zx_hdmi*, i32, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @hdmi_readb(%struct.zx_hdmi*, i32) #1

declare dso_local i32 @DRM_DEV_ERROR(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
