; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_gr2d.c_gr2d_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_gr2d.c_gr2d_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.host1x_syncpt = type { i32 }
%struct.gr2d = type { i32, i32, %struct.TYPE_4__, %struct.TYPE_5__* }
%struct.TYPE_4__ = type { %struct.TYPE_6__, i32*, i32, i32 }
%struct.TYPE_6__ = type { i32, %struct.host1x_syncpt**, i32, %struct.device*, i32*, i32 }
%struct.TYPE_5__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"cannot get clock\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"cannot turn on clock\0A\00", align 1
@gr2d_client_ops = common dso_local global i32 0, align 4
@HOST1X_CLASS_GR2D = common dso_local global i32 0, align 4
@gr2d_ops = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"failed to register host1x client: %d\0A\00", align 1
@gr2d_addr_regs = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @gr2d_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gr2d_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.host1x_syncpt**, align 8
  %6 = alloca %struct.gr2d*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  store %struct.device* %10, %struct.device** %4, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call i8* @devm_kzalloc(%struct.device* %11, i32 80, i32 %12)
  %14 = bitcast i8* %13 to %struct.gr2d*
  store %struct.gr2d* %14, %struct.gr2d** %6, align 8
  %15 = load %struct.gr2d*, %struct.gr2d** %6, align 8
  %16 = icmp ne %struct.gr2d* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %144

20:                                               ; preds = %1
  %21 = load %struct.device*, %struct.device** %4, align 8
  %22 = call %struct.TYPE_5__* @of_device_get_match_data(%struct.device* %21)
  %23 = load %struct.gr2d*, %struct.gr2d** %6, align 8
  %24 = getelementptr inbounds %struct.gr2d, %struct.gr2d* %23, i32 0, i32 3
  store %struct.TYPE_5__* %22, %struct.TYPE_5__** %24, align 8
  %25 = load %struct.device*, %struct.device** %4, align 8
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call i8* @devm_kzalloc(%struct.device* %25, i32 8, i32 %26)
  %28 = bitcast i8* %27 to %struct.host1x_syncpt**
  store %struct.host1x_syncpt** %28, %struct.host1x_syncpt*** %5, align 8
  %29 = load %struct.host1x_syncpt**, %struct.host1x_syncpt*** %5, align 8
  %30 = icmp ne %struct.host1x_syncpt** %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %20
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %144

34:                                               ; preds = %20
  %35 = load %struct.device*, %struct.device** %4, align 8
  %36 = call i32 @devm_clk_get(%struct.device* %35, i32* null)
  %37 = load %struct.gr2d*, %struct.gr2d** %6, align 8
  %38 = getelementptr inbounds %struct.gr2d, %struct.gr2d* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  %39 = load %struct.gr2d*, %struct.gr2d** %6, align 8
  %40 = getelementptr inbounds %struct.gr2d, %struct.gr2d* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @IS_ERR(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %34
  %45 = load %struct.device*, %struct.device** %4, align 8
  %46 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %45, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %47 = load %struct.gr2d*, %struct.gr2d** %6, align 8
  %48 = getelementptr inbounds %struct.gr2d, %struct.gr2d* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @PTR_ERR(i32 %49)
  store i32 %50, i32* %2, align 4
  br label %144

51:                                               ; preds = %34
  %52 = load %struct.gr2d*, %struct.gr2d** %6, align 8
  %53 = getelementptr inbounds %struct.gr2d, %struct.gr2d* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @clk_prepare_enable(i32 %54)
  store i32 %55, i32* %8, align 4
  %56 = load i32, i32* %8, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %51
  %59 = load %struct.device*, %struct.device** %4, align 8
  %60 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %59, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %61 = load i32, i32* %8, align 4
  store i32 %61, i32* %2, align 4
  br label %144

62:                                               ; preds = %51
  %63 = load %struct.gr2d*, %struct.gr2d** %6, align 8
  %64 = getelementptr inbounds %struct.gr2d, %struct.gr2d* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 5
  %67 = call i32 @INIT_LIST_HEAD(i32* %66)
  %68 = load %struct.gr2d*, %struct.gr2d** %6, align 8
  %69 = getelementptr inbounds %struct.gr2d, %struct.gr2d* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 4
  store i32* @gr2d_client_ops, i32** %71, align 8
  %72 = load %struct.device*, %struct.device** %4, align 8
  %73 = load %struct.gr2d*, %struct.gr2d** %6, align 8
  %74 = getelementptr inbounds %struct.gr2d, %struct.gr2d* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 3
  store %struct.device* %72, %struct.device** %76, align 8
  %77 = load i32, i32* @HOST1X_CLASS_GR2D, align 4
  %78 = load %struct.gr2d*, %struct.gr2d** %6, align 8
  %79 = getelementptr inbounds %struct.gr2d, %struct.gr2d* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 2
  store i32 %77, i32* %81, align 8
  %82 = load %struct.host1x_syncpt**, %struct.host1x_syncpt*** %5, align 8
  %83 = load %struct.gr2d*, %struct.gr2d** %6, align 8
  %84 = getelementptr inbounds %struct.gr2d, %struct.gr2d* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 1
  store %struct.host1x_syncpt** %82, %struct.host1x_syncpt*** %86, align 8
  %87 = load %struct.gr2d*, %struct.gr2d** %6, align 8
  %88 = getelementptr inbounds %struct.gr2d, %struct.gr2d* %87, i32 0, i32 2
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  store i32 1, i32* %90, align 8
  %91 = load %struct.gr2d*, %struct.gr2d** %6, align 8
  %92 = getelementptr inbounds %struct.gr2d, %struct.gr2d* %91, i32 0, i32 2
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 3
  %94 = call i32 @INIT_LIST_HEAD(i32* %93)
  %95 = load %struct.gr2d*, %struct.gr2d** %6, align 8
  %96 = getelementptr inbounds %struct.gr2d, %struct.gr2d* %95, i32 0, i32 3
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.gr2d*, %struct.gr2d** %6, align 8
  %101 = getelementptr inbounds %struct.gr2d, %struct.gr2d* %100, i32 0, i32 2
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 2
  store i32 %99, i32* %102, align 8
  %103 = load %struct.gr2d*, %struct.gr2d** %6, align 8
  %104 = getelementptr inbounds %struct.gr2d, %struct.gr2d* %103, i32 0, i32 2
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 1
  store i32* @gr2d_ops, i32** %105, align 8
  %106 = load %struct.gr2d*, %struct.gr2d** %6, align 8
  %107 = getelementptr inbounds %struct.gr2d, %struct.gr2d* %106, i32 0, i32 2
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 0
  %109 = call i32 @host1x_client_register(%struct.TYPE_6__* %108)
  store i32 %109, i32* %8, align 4
  %110 = load i32, i32* %8, align 4
  %111 = icmp slt i32 %110, 0
  br i1 %111, label %112, label %121

112:                                              ; preds = %62
  %113 = load %struct.device*, %struct.device** %4, align 8
  %114 = load i32, i32* %8, align 4
  %115 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %113, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %114)
  %116 = load %struct.gr2d*, %struct.gr2d** %6, align 8
  %117 = getelementptr inbounds %struct.gr2d, %struct.gr2d* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @clk_disable_unprepare(i32 %118)
  %120 = load i32, i32* %8, align 4
  store i32 %120, i32* %2, align 4
  br label %144

121:                                              ; preds = %62
  store i32 0, i32* %7, align 4
  br label %122

122:                                              ; preds = %137, %121
  %123 = load i32, i32* %7, align 4
  %124 = load i32*, i32** @gr2d_addr_regs, align 8
  %125 = call i32 @ARRAY_SIZE(i32* %124)
  %126 = icmp ult i32 %123, %125
  br i1 %126, label %127, label %140

127:                                              ; preds = %122
  %128 = load i32*, i32** @gr2d_addr_regs, align 8
  %129 = load i32, i32* %7, align 4
  %130 = zext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %128, i64 %130
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.gr2d*, %struct.gr2d** %6, align 8
  %134 = getelementptr inbounds %struct.gr2d, %struct.gr2d* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = call i32 @set_bit(i32 %132, i32 %135)
  br label %137

137:                                              ; preds = %127
  %138 = load i32, i32* %7, align 4
  %139 = add i32 %138, 1
  store i32 %139, i32* %7, align 4
  br label %122

140:                                              ; preds = %122
  %141 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %142 = load %struct.gr2d*, %struct.gr2d** %6, align 8
  %143 = call i32 @platform_set_drvdata(%struct.platform_device* %141, %struct.gr2d* %142)
  store i32 0, i32* %2, align 4
  br label %144

144:                                              ; preds = %140, %112, %58, %44, %31, %17
  %145 = load i32, i32* %2, align 4
  ret i32 %145
}

declare dso_local i8* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local %struct.TYPE_5__* @of_device_get_match_data(%struct.device*) #1

declare dso_local i32 @devm_clk_get(%struct.device*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @host1x_client_register(%struct.TYPE_6__*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.gr2d*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
