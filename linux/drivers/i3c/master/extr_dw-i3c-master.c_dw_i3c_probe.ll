; ModuleID = '/home/carl/AnghaBench/linux/drivers/i3c/master/extr_dw-i3c-master.c_dw_i3c_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i3c/master/extr_dw-i3c-master.c_dw_i3c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.dw_i3c_master = type { i32, i32, i64, i64, i32, i32, i64, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"core_rst\00", align 1
@INTR_ALL = common dso_local global i32 0, align 4
@INTR_STATUS = common dso_local global i64 0, align 8
@dw_i3c_master_irq_handler = common dso_local global i32 0, align 4
@QUEUE_STATUS_LEVEL = common dso_local global i64 0, align 8
@DATA_BUFFER_STATUS_LEVEL = common dso_local global i64 0, align 8
@DEVICE_ADDR_TABLE_POINTER = common dso_local global i64 0, align 8
@dw_mipi_i3c_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @dw_i3c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dw_i3c_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.dw_i3c_master*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.dw_i3c_master* @devm_kzalloc(i32* %9, i32 56, i32 %10)
  store %struct.dw_i3c_master* %11, %struct.dw_i3c_master** %4, align 8
  %12 = load %struct.dw_i3c_master*, %struct.dw_i3c_master** %4, align 8
  %13 = icmp ne %struct.dw_i3c_master* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %177

17:                                               ; preds = %1
  %18 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %19 = load i32, i32* @IORESOURCE_MEM, align 4
  %20 = call %struct.resource* @platform_get_resource(%struct.platform_device* %18, i32 %19, i32 0)
  store %struct.resource* %20, %struct.resource** %5, align 8
  %21 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %22 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %21, i32 0, i32 0
  %23 = load %struct.resource*, %struct.resource** %5, align 8
  %24 = call i64 @devm_ioremap_resource(i32* %22, %struct.resource* %23)
  %25 = load %struct.dw_i3c_master*, %struct.dw_i3c_master** %4, align 8
  %26 = getelementptr inbounds %struct.dw_i3c_master, %struct.dw_i3c_master* %25, i32 0, i32 6
  store i64 %24, i64* %26, align 8
  %27 = load %struct.dw_i3c_master*, %struct.dw_i3c_master** %4, align 8
  %28 = getelementptr inbounds %struct.dw_i3c_master, %struct.dw_i3c_master* %27, i32 0, i32 6
  %29 = load i64, i64* %28, align 8
  %30 = call i64 @IS_ERR(i64 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %17
  %33 = load %struct.dw_i3c_master*, %struct.dw_i3c_master** %4, align 8
  %34 = getelementptr inbounds %struct.dw_i3c_master, %struct.dw_i3c_master* %33, i32 0, i32 6
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @PTR_ERR(i64 %35)
  store i32 %36, i32* %2, align 4
  br label %177

37:                                               ; preds = %17
  %38 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %39 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %38, i32 0, i32 0
  %40 = call i64 @devm_clk_get(i32* %39, i32* null)
  %41 = load %struct.dw_i3c_master*, %struct.dw_i3c_master** %4, align 8
  %42 = getelementptr inbounds %struct.dw_i3c_master, %struct.dw_i3c_master* %41, i32 0, i32 2
  store i64 %40, i64* %42, align 8
  %43 = load %struct.dw_i3c_master*, %struct.dw_i3c_master** %4, align 8
  %44 = getelementptr inbounds %struct.dw_i3c_master, %struct.dw_i3c_master* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = call i64 @IS_ERR(i64 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %37
  %49 = load %struct.dw_i3c_master*, %struct.dw_i3c_master** %4, align 8
  %50 = getelementptr inbounds %struct.dw_i3c_master, %struct.dw_i3c_master* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @PTR_ERR(i64 %51)
  store i32 %52, i32* %2, align 4
  br label %177

53:                                               ; preds = %37
  %54 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %55 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %54, i32 0, i32 0
  %56 = call i64 @devm_reset_control_get_optional_exclusive(i32* %55, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %57 = load %struct.dw_i3c_master*, %struct.dw_i3c_master** %4, align 8
  %58 = getelementptr inbounds %struct.dw_i3c_master, %struct.dw_i3c_master* %57, i32 0, i32 3
  store i64 %56, i64* %58, align 8
  %59 = load %struct.dw_i3c_master*, %struct.dw_i3c_master** %4, align 8
  %60 = getelementptr inbounds %struct.dw_i3c_master, %struct.dw_i3c_master* %59, i32 0, i32 3
  %61 = load i64, i64* %60, align 8
  %62 = call i64 @IS_ERR(i64 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %53
  %65 = load %struct.dw_i3c_master*, %struct.dw_i3c_master** %4, align 8
  %66 = getelementptr inbounds %struct.dw_i3c_master, %struct.dw_i3c_master* %65, i32 0, i32 3
  %67 = load i64, i64* %66, align 8
  %68 = call i32 @PTR_ERR(i64 %67)
  store i32 %68, i32* %2, align 4
  br label %177

69:                                               ; preds = %53
  %70 = load %struct.dw_i3c_master*, %struct.dw_i3c_master** %4, align 8
  %71 = getelementptr inbounds %struct.dw_i3c_master, %struct.dw_i3c_master* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = call i32 @clk_prepare_enable(i64 %72)
  store i32 %73, i32* %6, align 4
  %74 = load i32, i32* %6, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %69
  br label %171

77:                                               ; preds = %69
  %78 = load %struct.dw_i3c_master*, %struct.dw_i3c_master** %4, align 8
  %79 = getelementptr inbounds %struct.dw_i3c_master, %struct.dw_i3c_master* %78, i32 0, i32 3
  %80 = load i64, i64* %79, align 8
  %81 = call i32 @reset_control_deassert(i64 %80)
  %82 = load %struct.dw_i3c_master*, %struct.dw_i3c_master** %4, align 8
  %83 = getelementptr inbounds %struct.dw_i3c_master, %struct.dw_i3c_master* %82, i32 0, i32 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 1
  %85 = call i32 @spin_lock_init(i32* %84)
  %86 = load %struct.dw_i3c_master*, %struct.dw_i3c_master** %4, align 8
  %87 = getelementptr inbounds %struct.dw_i3c_master, %struct.dw_i3c_master* %86, i32 0, i32 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 0
  %89 = call i32 @INIT_LIST_HEAD(i32* %88)
  %90 = load i32, i32* @INTR_ALL, align 4
  %91 = load %struct.dw_i3c_master*, %struct.dw_i3c_master** %4, align 8
  %92 = getelementptr inbounds %struct.dw_i3c_master, %struct.dw_i3c_master* %91, i32 0, i32 6
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @INTR_STATUS, align 8
  %95 = add nsw i64 %93, %94
  %96 = call i32 @writel(i32 %90, i64 %95)
  %97 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %98 = call i32 @platform_get_irq(%struct.platform_device* %97, i32 0)
  store i32 %98, i32* %7, align 4
  %99 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %100 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %99, i32 0, i32 0
  %101 = load i32, i32* %7, align 4
  %102 = load i32, i32* @dw_i3c_master_irq_handler, align 4
  %103 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %104 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %103, i32 0, i32 0
  %105 = call i32 @dev_name(i32* %104)
  %106 = load %struct.dw_i3c_master*, %struct.dw_i3c_master** %4, align 8
  %107 = call i32 @devm_request_irq(i32* %100, i32 %101, i32 %102, i32 0, i32 %105, %struct.dw_i3c_master* %106)
  store i32 %107, i32* %6, align 4
  %108 = load i32, i32* %6, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %77
  br label %166

111:                                              ; preds = %77
  %112 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %113 = load %struct.dw_i3c_master*, %struct.dw_i3c_master** %4, align 8
  %114 = call i32 @platform_set_drvdata(%struct.platform_device* %112, %struct.dw_i3c_master* %113)
  %115 = load %struct.dw_i3c_master*, %struct.dw_i3c_master** %4, align 8
  %116 = getelementptr inbounds %struct.dw_i3c_master, %struct.dw_i3c_master* %115, i32 0, i32 6
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @QUEUE_STATUS_LEVEL, align 8
  %119 = add nsw i64 %117, %118
  %120 = call i32 @readl(i64 %119)
  store i32 %120, i32* %6, align 4
  %121 = load i32, i32* %6, align 4
  %122 = call i32 @QUEUE_STATUS_LEVEL_CMD(i32 %121)
  %123 = load %struct.dw_i3c_master*, %struct.dw_i3c_master** %4, align 8
  %124 = getelementptr inbounds %struct.dw_i3c_master, %struct.dw_i3c_master* %123, i32 0, i32 7
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 1
  store i32 %122, i32* %125, align 4
  %126 = load %struct.dw_i3c_master*, %struct.dw_i3c_master** %4, align 8
  %127 = getelementptr inbounds %struct.dw_i3c_master, %struct.dw_i3c_master* %126, i32 0, i32 6
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* @DATA_BUFFER_STATUS_LEVEL, align 8
  %130 = add nsw i64 %128, %129
  %131 = call i32 @readl(i64 %130)
  store i32 %131, i32* %6, align 4
  %132 = load i32, i32* %6, align 4
  %133 = call i32 @DATA_BUFFER_STATUS_LEVEL_TX(i32 %132)
  %134 = load %struct.dw_i3c_master*, %struct.dw_i3c_master** %4, align 8
  %135 = getelementptr inbounds %struct.dw_i3c_master, %struct.dw_i3c_master* %134, i32 0, i32 7
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 0
  store i32 %133, i32* %136, align 8
  %137 = load %struct.dw_i3c_master*, %struct.dw_i3c_master** %4, align 8
  %138 = getelementptr inbounds %struct.dw_i3c_master, %struct.dw_i3c_master* %137, i32 0, i32 6
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* @DEVICE_ADDR_TABLE_POINTER, align 8
  %141 = add nsw i64 %139, %140
  %142 = call i32 @readl(i64 %141)
  store i32 %142, i32* %6, align 4
  %143 = load i32, i32* %6, align 4
  %144 = load %struct.dw_i3c_master*, %struct.dw_i3c_master** %4, align 8
  %145 = getelementptr inbounds %struct.dw_i3c_master, %struct.dw_i3c_master* %144, i32 0, i32 0
  store i32 %143, i32* %145, align 8
  %146 = load i32, i32* %6, align 4
  %147 = ashr i32 %146, 16
  %148 = load %struct.dw_i3c_master*, %struct.dw_i3c_master** %4, align 8
  %149 = getelementptr inbounds %struct.dw_i3c_master, %struct.dw_i3c_master* %148, i32 0, i32 1
  store i32 %147, i32* %149, align 4
  %150 = load %struct.dw_i3c_master*, %struct.dw_i3c_master** %4, align 8
  %151 = getelementptr inbounds %struct.dw_i3c_master, %struct.dw_i3c_master* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = sub nsw i32 %152, 1
  %154 = call i32 @GENMASK(i32 %153, i32 0)
  %155 = load %struct.dw_i3c_master*, %struct.dw_i3c_master** %4, align 8
  %156 = getelementptr inbounds %struct.dw_i3c_master, %struct.dw_i3c_master* %155, i32 0, i32 5
  store i32 %154, i32* %156, align 4
  %157 = load %struct.dw_i3c_master*, %struct.dw_i3c_master** %4, align 8
  %158 = getelementptr inbounds %struct.dw_i3c_master, %struct.dw_i3c_master* %157, i32 0, i32 4
  %159 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %160 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %159, i32 0, i32 0
  %161 = call i32 @i3c_master_register(i32* %158, i32* %160, i32* @dw_mipi_i3c_ops, i32 0)
  store i32 %161, i32* %6, align 4
  %162 = load i32, i32* %6, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %165

164:                                              ; preds = %111
  br label %166

165:                                              ; preds = %111
  store i32 0, i32* %2, align 4
  br label %177

166:                                              ; preds = %164, %110
  %167 = load %struct.dw_i3c_master*, %struct.dw_i3c_master** %4, align 8
  %168 = getelementptr inbounds %struct.dw_i3c_master, %struct.dw_i3c_master* %167, i32 0, i32 3
  %169 = load i64, i64* %168, align 8
  %170 = call i32 @reset_control_assert(i64 %169)
  br label %171

171:                                              ; preds = %166, %76
  %172 = load %struct.dw_i3c_master*, %struct.dw_i3c_master** %4, align 8
  %173 = getelementptr inbounds %struct.dw_i3c_master, %struct.dw_i3c_master* %172, i32 0, i32 2
  %174 = load i64, i64* %173, align 8
  %175 = call i32 @clk_disable_unprepare(i64 %174)
  %176 = load i32, i32* %6, align 4
  store i32 %176, i32* %2, align 4
  br label %177

177:                                              ; preds = %171, %165, %64, %48, %32, %14
  %178 = load i32, i32* %2, align 4
  ret i32 %178
}

declare dso_local %struct.dw_i3c_master* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i64 @devm_ioremap_resource(i32*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i64) #1

declare dso_local i32 @PTR_ERR(i64) #1

declare dso_local i64 @devm_clk_get(i32*, i32*) #1

declare dso_local i64 @devm_reset_control_get_optional_exclusive(i32*, i8*) #1

declare dso_local i32 @clk_prepare_enable(i64) #1

declare dso_local i32 @reset_control_deassert(i64) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @devm_request_irq(i32*, i32, i32, i32, i32, %struct.dw_i3c_master*) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.dw_i3c_master*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @QUEUE_STATUS_LEVEL_CMD(i32) #1

declare dso_local i32 @DATA_BUFFER_STATUS_LEVEL_TX(i32) #1

declare dso_local i32 @GENMASK(i32, i32) #1

declare dso_local i32 @i3c_master_register(i32*, i32*, i32*, i32) #1

declare dso_local i32 @reset_control_assert(i64) #1

declare dso_local i32 @clk_disable_unprepare(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
