; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_sii9234.c_sii9234_cbus_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_sii9234.c_sii9234_cbus_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sii9234 = type { i32 }

@CBUS_DEVCAP_OFFSET = common dso_local global i32 0, align 4
@MHL_DCAP_DEV_STATE = common dso_local global i32 0, align 4
@MHL_DCAP_MHL_VERSION = common dso_local global i32 0, align 4
@SII9234_MHL_VERSION = common dso_local global i32 0, align 4
@MHL_DCAP_CAT = common dso_local global i32 0, align 4
@MHL_DCAP_CAT_SOURCE = common dso_local global i32 0, align 4
@MHL_DCAP_ADOPTER_ID_H = common dso_local global i32 0, align 4
@MHL_DCAP_ADOPTER_ID_L = common dso_local global i32 0, align 4
@MHL_DCAP_VID_LINK_MODE = common dso_local global i32 0, align 4
@MHL_DCAP_VID_LINK_RGB444 = common dso_local global i32 0, align 4
@MHL_DCAP_VID_LINK_YCBCR444 = common dso_local global i32 0, align 4
@MHL_DCAP_VIDEO_TYPE = common dso_local global i32 0, align 4
@MHL_DCAP_VT_GRAPHICS = common dso_local global i32 0, align 4
@MHL_DCAP_LOG_DEV_MAP = common dso_local global i32 0, align 4
@MHL_DCAP_LD_GUI = common dso_local global i32 0, align 4
@MHL_DCAP_BANDWIDTH = common dso_local global i32 0, align 4
@MHL_DCAP_FEATURE_FLAG = common dso_local global i32 0, align 4
@MHL_DCAP_FEATURE_RCP_SUPPORT = common dso_local global i32 0, align 4
@MHL_DCAP_FEATURE_RAP_SUPPORT = common dso_local global i32 0, align 4
@MHL_DCAP_FEATURE_SP_SUPPORT = common dso_local global i32 0, align 4
@MHL_DCAP_DEVICE_ID_H = common dso_local global i32 0, align 4
@MHL_DCAP_DEVICE_ID_L = common dso_local global i32 0, align 4
@MHL_DCAP_SCRATCHPAD_SIZE = common dso_local global i32 0, align 4
@SII9234_SCRATCHPAD_SIZE = common dso_local global i32 0, align 4
@MHL_DCAP_INT_STAT_SIZE = common dso_local global i32 0, align 4
@SII9234_INT_STAT_SIZE = common dso_local global i32 0, align 4
@MHL_DCAP_RESERVED = common dso_local global i32 0, align 4
@CBUS_INTR1_ENABLE_REG = common dso_local global i32 0, align 4
@CBUS_INTR2_ENABLE_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sii9234*)* @sii9234_cbus_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sii9234_cbus_init(%struct.sii9234* %0) #0 {
  %2 = alloca %struct.sii9234*, align 8
  store %struct.sii9234* %0, %struct.sii9234** %2, align 8
  %3 = load %struct.sii9234*, %struct.sii9234** %2, align 8
  %4 = call i32 @cbus_writeb(%struct.sii9234* %3, i32 7, i32 242)
  %5 = load %struct.sii9234*, %struct.sii9234** %2, align 8
  %6 = call i32 @cbus_writeb(%struct.sii9234* %5, i32 64, i32 3)
  %7 = load %struct.sii9234*, %struct.sii9234** %2, align 8
  %8 = call i32 @cbus_writeb(%struct.sii9234* %7, i32 66, i32 6)
  %9 = load %struct.sii9234*, %struct.sii9234** %2, align 8
  %10 = call i32 @cbus_writeb(%struct.sii9234* %9, i32 54, i32 12)
  %11 = load %struct.sii9234*, %struct.sii9234** %2, align 8
  %12 = call i32 @cbus_writeb(%struct.sii9234* %11, i32 61, i32 253)
  %13 = load %struct.sii9234*, %struct.sii9234** %2, align 8
  %14 = call i32 @cbus_writeb(%struct.sii9234* %13, i32 28, i32 1)
  %15 = load %struct.sii9234*, %struct.sii9234** %2, align 8
  %16 = call i32 @cbus_writeb(%struct.sii9234* %15, i32 29, i32 15)
  %17 = load %struct.sii9234*, %struct.sii9234** %2, align 8
  %18 = call i32 @cbus_writeb(%struct.sii9234* %17, i32 68, i32 2)
  %19 = load %struct.sii9234*, %struct.sii9234** %2, align 8
  %20 = load i32, i32* @CBUS_DEVCAP_OFFSET, align 4
  %21 = load i32, i32* @MHL_DCAP_DEV_STATE, align 4
  %22 = add nsw i32 %20, %21
  %23 = call i32 @cbus_writeb(%struct.sii9234* %19, i32 %22, i32 0)
  %24 = load %struct.sii9234*, %struct.sii9234** %2, align 8
  %25 = load i32, i32* @CBUS_DEVCAP_OFFSET, align 4
  %26 = load i32, i32* @MHL_DCAP_MHL_VERSION, align 4
  %27 = add nsw i32 %25, %26
  %28 = load i32, i32* @SII9234_MHL_VERSION, align 4
  %29 = call i32 @cbus_writeb(%struct.sii9234* %24, i32 %27, i32 %28)
  %30 = load %struct.sii9234*, %struct.sii9234** %2, align 8
  %31 = load i32, i32* @CBUS_DEVCAP_OFFSET, align 4
  %32 = load i32, i32* @MHL_DCAP_CAT, align 4
  %33 = add nsw i32 %31, %32
  %34 = load i32, i32* @MHL_DCAP_CAT_SOURCE, align 4
  %35 = call i32 @cbus_writeb(%struct.sii9234* %30, i32 %33, i32 %34)
  %36 = load %struct.sii9234*, %struct.sii9234** %2, align 8
  %37 = load i32, i32* @CBUS_DEVCAP_OFFSET, align 4
  %38 = load i32, i32* @MHL_DCAP_ADOPTER_ID_H, align 4
  %39 = add nsw i32 %37, %38
  %40 = call i32 @cbus_writeb(%struct.sii9234* %36, i32 %39, i32 1)
  %41 = load %struct.sii9234*, %struct.sii9234** %2, align 8
  %42 = load i32, i32* @CBUS_DEVCAP_OFFSET, align 4
  %43 = load i32, i32* @MHL_DCAP_ADOPTER_ID_L, align 4
  %44 = add nsw i32 %42, %43
  %45 = call i32 @cbus_writeb(%struct.sii9234* %41, i32 %44, i32 65)
  %46 = load %struct.sii9234*, %struct.sii9234** %2, align 8
  %47 = load i32, i32* @CBUS_DEVCAP_OFFSET, align 4
  %48 = load i32, i32* @MHL_DCAP_VID_LINK_MODE, align 4
  %49 = add nsw i32 %47, %48
  %50 = load i32, i32* @MHL_DCAP_VID_LINK_RGB444, align 4
  %51 = load i32, i32* @MHL_DCAP_VID_LINK_YCBCR444, align 4
  %52 = or i32 %50, %51
  %53 = call i32 @cbus_writeb(%struct.sii9234* %46, i32 %49, i32 %52)
  %54 = load %struct.sii9234*, %struct.sii9234** %2, align 8
  %55 = load i32, i32* @CBUS_DEVCAP_OFFSET, align 4
  %56 = load i32, i32* @MHL_DCAP_VIDEO_TYPE, align 4
  %57 = add nsw i32 %55, %56
  %58 = load i32, i32* @MHL_DCAP_VT_GRAPHICS, align 4
  %59 = call i32 @cbus_writeb(%struct.sii9234* %54, i32 %57, i32 %58)
  %60 = load %struct.sii9234*, %struct.sii9234** %2, align 8
  %61 = load i32, i32* @CBUS_DEVCAP_OFFSET, align 4
  %62 = load i32, i32* @MHL_DCAP_LOG_DEV_MAP, align 4
  %63 = add nsw i32 %61, %62
  %64 = load i32, i32* @MHL_DCAP_LD_GUI, align 4
  %65 = call i32 @cbus_writeb(%struct.sii9234* %60, i32 %63, i32 %64)
  %66 = load %struct.sii9234*, %struct.sii9234** %2, align 8
  %67 = load i32, i32* @CBUS_DEVCAP_OFFSET, align 4
  %68 = load i32, i32* @MHL_DCAP_BANDWIDTH, align 4
  %69 = add nsw i32 %67, %68
  %70 = call i32 @cbus_writeb(%struct.sii9234* %66, i32 %69, i32 15)
  %71 = load %struct.sii9234*, %struct.sii9234** %2, align 8
  %72 = load i32, i32* @CBUS_DEVCAP_OFFSET, align 4
  %73 = load i32, i32* @MHL_DCAP_FEATURE_FLAG, align 4
  %74 = add nsw i32 %72, %73
  %75 = load i32, i32* @MHL_DCAP_FEATURE_RCP_SUPPORT, align 4
  %76 = load i32, i32* @MHL_DCAP_FEATURE_RAP_SUPPORT, align 4
  %77 = or i32 %75, %76
  %78 = load i32, i32* @MHL_DCAP_FEATURE_SP_SUPPORT, align 4
  %79 = or i32 %77, %78
  %80 = call i32 @cbus_writeb(%struct.sii9234* %71, i32 %74, i32 %79)
  %81 = load %struct.sii9234*, %struct.sii9234** %2, align 8
  %82 = load i32, i32* @CBUS_DEVCAP_OFFSET, align 4
  %83 = load i32, i32* @MHL_DCAP_DEVICE_ID_H, align 4
  %84 = add nsw i32 %82, %83
  %85 = call i32 @cbus_writeb(%struct.sii9234* %81, i32 %84, i32 0)
  %86 = load %struct.sii9234*, %struct.sii9234** %2, align 8
  %87 = load i32, i32* @CBUS_DEVCAP_OFFSET, align 4
  %88 = load i32, i32* @MHL_DCAP_DEVICE_ID_L, align 4
  %89 = add nsw i32 %87, %88
  %90 = call i32 @cbus_writeb(%struct.sii9234* %86, i32 %89, i32 0)
  %91 = load %struct.sii9234*, %struct.sii9234** %2, align 8
  %92 = load i32, i32* @CBUS_DEVCAP_OFFSET, align 4
  %93 = load i32, i32* @MHL_DCAP_SCRATCHPAD_SIZE, align 4
  %94 = add nsw i32 %92, %93
  %95 = load i32, i32* @SII9234_SCRATCHPAD_SIZE, align 4
  %96 = call i32 @cbus_writeb(%struct.sii9234* %91, i32 %94, i32 %95)
  %97 = load %struct.sii9234*, %struct.sii9234** %2, align 8
  %98 = load i32, i32* @CBUS_DEVCAP_OFFSET, align 4
  %99 = load i32, i32* @MHL_DCAP_INT_STAT_SIZE, align 4
  %100 = add nsw i32 %98, %99
  %101 = load i32, i32* @SII9234_INT_STAT_SIZE, align 4
  %102 = call i32 @cbus_writeb(%struct.sii9234* %97, i32 %100, i32 %101)
  %103 = load %struct.sii9234*, %struct.sii9234** %2, align 8
  %104 = load i32, i32* @CBUS_DEVCAP_OFFSET, align 4
  %105 = load i32, i32* @MHL_DCAP_RESERVED, align 4
  %106 = add nsw i32 %104, %105
  %107 = call i32 @cbus_writeb(%struct.sii9234* %103, i32 %106, i32 0)
  %108 = load %struct.sii9234*, %struct.sii9234** %2, align 8
  %109 = call i32 @cbus_writebm(%struct.sii9234* %108, i32 49, i32 12, i32 12)
  %110 = load %struct.sii9234*, %struct.sii9234** %2, align 8
  %111 = call i32 @cbus_writeb(%struct.sii9234* %110, i32 48, i32 1)
  %112 = load %struct.sii9234*, %struct.sii9234** %2, align 8
  %113 = call i32 @cbus_writebm(%struct.sii9234* %112, i32 60, i32 48, i32 56)
  %114 = load %struct.sii9234*, %struct.sii9234** %2, align 8
  %115 = call i32 @cbus_writebm(%struct.sii9234* %114, i32 34, i32 13, i32 15)
  %116 = load %struct.sii9234*, %struct.sii9234** %2, align 8
  %117 = call i32 @cbus_writebm(%struct.sii9234* %116, i32 46, i32 21, i32 21)
  %118 = load %struct.sii9234*, %struct.sii9234** %2, align 8
  %119 = load i32, i32* @CBUS_INTR1_ENABLE_REG, align 4
  %120 = call i32 @cbus_writeb(%struct.sii9234* %118, i32 %119, i32 0)
  %121 = load %struct.sii9234*, %struct.sii9234** %2, align 8
  %122 = load i32, i32* @CBUS_INTR2_ENABLE_REG, align 4
  %123 = call i32 @cbus_writeb(%struct.sii9234* %121, i32 %122, i32 0)
  %124 = load %struct.sii9234*, %struct.sii9234** %2, align 8
  %125 = call i32 @sii9234_clear_error(%struct.sii9234* %124)
  ret i32 %125
}

declare dso_local i32 @cbus_writeb(%struct.sii9234*, i32, i32) #1

declare dso_local i32 @cbus_writebm(%struct.sii9234*, i32, i32, i32) #1

declare dso_local i32 @sii9234_clear_error(%struct.sii9234*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
