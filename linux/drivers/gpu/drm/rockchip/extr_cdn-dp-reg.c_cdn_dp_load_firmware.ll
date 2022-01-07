; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_cdn-dp-reg.c_cdn_dp_load_firmware.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_cdn-dp-reg.c_cdn_dp_load_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdn_dp_device = type { i32, i32, i64 }

@APB_IRAM_PATH = common dso_local global i32 0, align 4
@APB_DRAM_PATH = common dso_local global i32 0, align 4
@APB_XT_RESET = common dso_local global i32 0, align 4
@APB_CTRL = common dso_local global i64 0, align 8
@ADDR_IMEM = common dso_local global i64 0, align 8
@ADDR_DMEM = common dso_local global i64 0, align 8
@KEEP_ALIVE = common dso_local global i64 0, align 8
@FW_ALIVE_TIMEOUT_US = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"failed to loaded the FW reg = %x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@VER_L = common dso_local global i64 0, align 8
@VER_H = common dso_local global i64 0, align 8
@VER_LIB_L_ADDR = common dso_local global i64 0, align 8
@VER_LIB_H_ADDR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"firmware version: %x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cdn_dp_load_firmware(%struct.cdn_dp_device* %0, i32* %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.cdn_dp_device*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.cdn_dp_device* %0, %struct.cdn_dp_device** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %15 = load i32, i32* @APB_IRAM_PATH, align 4
  %16 = load i32, i32* @APB_DRAM_PATH, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @APB_XT_RESET, align 4
  %19 = or i32 %17, %18
  %20 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %7, align 8
  %21 = getelementptr inbounds %struct.cdn_dp_device, %struct.cdn_dp_device* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @APB_CTRL, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @writel(i32 %19, i64 %24)
  store i32 0, i32* %13, align 4
  br label %26

26:                                               ; preds = %43, %5
  %27 = load i32, i32* %13, align 4
  %28 = load i32, i32* %9, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %46

30:                                               ; preds = %26
  %31 = load i32*, i32** %8, align 8
  %32 = getelementptr inbounds i32, i32* %31, i32 1
  store i32* %32, i32** %8, align 8
  %33 = load i32, i32* %31, align 4
  %34 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %7, align 8
  %35 = getelementptr inbounds %struct.cdn_dp_device, %struct.cdn_dp_device* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @ADDR_IMEM, align 8
  %38 = add nsw i64 %36, %37
  %39 = load i32, i32* %13, align 4
  %40 = sext i32 %39 to i64
  %41 = add nsw i64 %38, %40
  %42 = call i32 @writel(i32 %33, i64 %41)
  br label %43

43:                                               ; preds = %30
  %44 = load i32, i32* %13, align 4
  %45 = add nsw i32 %44, 4
  store i32 %45, i32* %13, align 4
  br label %26

46:                                               ; preds = %26
  store i32 0, i32* %13, align 4
  br label %47

47:                                               ; preds = %64, %46
  %48 = load i32, i32* %13, align 4
  %49 = load i32, i32* %11, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %67

51:                                               ; preds = %47
  %52 = load i32*, i32** %10, align 8
  %53 = getelementptr inbounds i32, i32* %52, i32 1
  store i32* %53, i32** %10, align 8
  %54 = load i32, i32* %52, align 4
  %55 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %7, align 8
  %56 = getelementptr inbounds %struct.cdn_dp_device, %struct.cdn_dp_device* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @ADDR_DMEM, align 8
  %59 = add nsw i64 %57, %58
  %60 = load i32, i32* %13, align 4
  %61 = sext i32 %60 to i64
  %62 = add nsw i64 %59, %61
  %63 = call i32 @writel(i32 %54, i64 %62)
  br label %64

64:                                               ; preds = %51
  %65 = load i32, i32* %13, align 4
  %66 = add nsw i32 %65, 4
  store i32 %66, i32* %13, align 4
  br label %47

67:                                               ; preds = %47
  %68 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %7, align 8
  %69 = getelementptr inbounds %struct.cdn_dp_device, %struct.cdn_dp_device* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @APB_CTRL, align 8
  %72 = add nsw i64 %70, %71
  %73 = call i32 @writel(i32 0, i64 %72)
  %74 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %7, align 8
  %75 = getelementptr inbounds %struct.cdn_dp_device, %struct.cdn_dp_device* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @KEEP_ALIVE, align 8
  %78 = add nsw i64 %76, %77
  %79 = load i32, i32* %12, align 4
  %80 = load i32, i32* %12, align 4
  %81 = load i32, i32* @FW_ALIVE_TIMEOUT_US, align 4
  %82 = call i32 @readx_poll_timeout(i32 (i64)* @readl, i64 %78, i32 %79, i32 %80, i32 2000, i32 %81)
  store i32 %82, i32* %14, align 4
  %83 = load i32, i32* %14, align 4
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %93

85:                                               ; preds = %67
  %86 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %7, align 8
  %87 = getelementptr inbounds %struct.cdn_dp_device, %struct.cdn_dp_device* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* %12, align 4
  %90 = call i32 @DRM_DEV_ERROR(i32 %88, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %89)
  %91 = load i32, i32* @EINVAL, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %6, align 4
  br label %150

93:                                               ; preds = %67
  %94 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %7, align 8
  %95 = getelementptr inbounds %struct.cdn_dp_device, %struct.cdn_dp_device* %94, i32 0, i32 2
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @VER_L, align 8
  %98 = add nsw i64 %96, %97
  %99 = call i32 @readl(i64 %98)
  %100 = and i32 %99, 255
  store i32 %100, i32* %12, align 4
  %101 = load i32, i32* %12, align 4
  %102 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %7, align 8
  %103 = getelementptr inbounds %struct.cdn_dp_device, %struct.cdn_dp_device* %102, i32 0, i32 0
  store i32 %101, i32* %103, align 8
  %104 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %7, align 8
  %105 = getelementptr inbounds %struct.cdn_dp_device, %struct.cdn_dp_device* %104, i32 0, i32 2
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @VER_H, align 8
  %108 = add nsw i64 %106, %107
  %109 = call i32 @readl(i64 %108)
  %110 = and i32 %109, 255
  store i32 %110, i32* %12, align 4
  %111 = load i32, i32* %12, align 4
  %112 = shl i32 %111, 8
  %113 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %7, align 8
  %114 = getelementptr inbounds %struct.cdn_dp_device, %struct.cdn_dp_device* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = or i32 %115, %112
  store i32 %116, i32* %114, align 8
  %117 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %7, align 8
  %118 = getelementptr inbounds %struct.cdn_dp_device, %struct.cdn_dp_device* %117, i32 0, i32 2
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* @VER_LIB_L_ADDR, align 8
  %121 = add nsw i64 %119, %120
  %122 = call i32 @readl(i64 %121)
  %123 = and i32 %122, 255
  store i32 %123, i32* %12, align 4
  %124 = load i32, i32* %12, align 4
  %125 = shl i32 %124, 16
  %126 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %7, align 8
  %127 = getelementptr inbounds %struct.cdn_dp_device, %struct.cdn_dp_device* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = or i32 %128, %125
  store i32 %129, i32* %127, align 8
  %130 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %7, align 8
  %131 = getelementptr inbounds %struct.cdn_dp_device, %struct.cdn_dp_device* %130, i32 0, i32 2
  %132 = load i64, i64* %131, align 8
  %133 = load i64, i64* @VER_LIB_H_ADDR, align 8
  %134 = add nsw i64 %132, %133
  %135 = call i32 @readl(i64 %134)
  %136 = and i32 %135, 255
  store i32 %136, i32* %12, align 4
  %137 = load i32, i32* %12, align 4
  %138 = shl i32 %137, 24
  %139 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %7, align 8
  %140 = getelementptr inbounds %struct.cdn_dp_device, %struct.cdn_dp_device* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = or i32 %141, %138
  store i32 %142, i32* %140, align 8
  %143 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %7, align 8
  %144 = getelementptr inbounds %struct.cdn_dp_device, %struct.cdn_dp_device* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %7, align 8
  %147 = getelementptr inbounds %struct.cdn_dp_device, %struct.cdn_dp_device* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = call i32 @DRM_DEV_DEBUG(i32 %145, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %148)
  store i32 0, i32* %6, align 4
  br label %150

150:                                              ; preds = %93, %85
  %151 = load i32, i32* %6, align 4
  ret i32 %151
}

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @readx_poll_timeout(i32 (i64)*, i64, i32, i32, i32, i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @DRM_DEV_ERROR(i32, i8*, i32) #1

declare dso_local i32 @DRM_DEV_DEBUG(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
