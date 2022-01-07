; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/tegra/extr_bpmp-tegra210.c_tegra210_bpmp_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/tegra/extr_bpmp-tegra210.c_tegra210_bpmp_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_bpmp = type { i32*, %struct.TYPE_12__*, %struct.TYPE_9__, i32*, i32*, %struct.tegra210_bpmp*, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.tegra210_bpmp = type { i32, i8*, i8* }
%struct.platform_device = type { i32 }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"tx\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"failed to get TX IRQ: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"failed to get IRQ data for TX IRQ\0A\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"rx\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"failed to get rx IRQ: %d\0A\00", align 1
@rx_irq = common dso_local global i32 0, align 4
@IRQF_NO_SUSPEND = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [27 x i8] c"failed to request IRQ: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tegra_bpmp*)* @tegra210_bpmp_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra210_bpmp_init(%struct.tegra_bpmp* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tegra_bpmp*, align 8
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca %struct.tegra210_bpmp*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.tegra_bpmp* %0, %struct.tegra_bpmp** %3, align 8
  %10 = load %struct.tegra_bpmp*, %struct.tegra_bpmp** %3, align 8
  %11 = getelementptr inbounds %struct.tegra_bpmp, %struct.tegra_bpmp* %10, i32 0, i32 6
  %12 = load i32, i32* %11, align 8
  %13 = call %struct.platform_device* @to_platform_device(i32 %12)
  store %struct.platform_device* %13, %struct.platform_device** %4, align 8
  %14 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %15 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %14, i32 0, i32 0
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.tegra210_bpmp* @devm_kzalloc(i32* %15, i32 24, i32 %16)
  store %struct.tegra210_bpmp* %17, %struct.tegra210_bpmp** %5, align 8
  %18 = load %struct.tegra210_bpmp*, %struct.tegra210_bpmp** %5, align 8
  %19 = icmp ne %struct.tegra210_bpmp* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %1
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %191

23:                                               ; preds = %1
  %24 = load %struct.tegra210_bpmp*, %struct.tegra210_bpmp** %5, align 8
  %25 = load %struct.tegra_bpmp*, %struct.tegra_bpmp** %3, align 8
  %26 = getelementptr inbounds %struct.tegra_bpmp, %struct.tegra_bpmp* %25, i32 0, i32 5
  store %struct.tegra210_bpmp* %24, %struct.tegra210_bpmp** %26, align 8
  %27 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %28 = load i32, i32* @IORESOURCE_MEM, align 4
  %29 = call %struct.resource* @platform_get_resource(%struct.platform_device* %27, i32 %28, i32 0)
  store %struct.resource* %29, %struct.resource** %6, align 8
  %30 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %31 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %30, i32 0, i32 0
  %32 = load %struct.resource*, %struct.resource** %6, align 8
  %33 = call i8* @devm_ioremap_resource(i32* %31, %struct.resource* %32)
  %34 = load %struct.tegra210_bpmp*, %struct.tegra210_bpmp** %5, align 8
  %35 = getelementptr inbounds %struct.tegra210_bpmp, %struct.tegra210_bpmp* %34, i32 0, i32 2
  store i8* %33, i8** %35, align 8
  %36 = load %struct.tegra210_bpmp*, %struct.tegra210_bpmp** %5, align 8
  %37 = getelementptr inbounds %struct.tegra210_bpmp, %struct.tegra210_bpmp* %36, i32 0, i32 2
  %38 = load i8*, i8** %37, align 8
  %39 = call i64 @IS_ERR(i8* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %23
  %42 = load %struct.tegra210_bpmp*, %struct.tegra210_bpmp** %5, align 8
  %43 = getelementptr inbounds %struct.tegra210_bpmp, %struct.tegra210_bpmp* %42, i32 0, i32 2
  %44 = load i8*, i8** %43, align 8
  %45 = call i32 @PTR_ERR(i8* %44)
  store i32 %45, i32* %2, align 4
  br label %191

46:                                               ; preds = %23
  %47 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %48 = load i32, i32* @IORESOURCE_MEM, align 4
  %49 = call %struct.resource* @platform_get_resource(%struct.platform_device* %47, i32 %48, i32 1)
  store %struct.resource* %49, %struct.resource** %6, align 8
  %50 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %51 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %50, i32 0, i32 0
  %52 = load %struct.resource*, %struct.resource** %6, align 8
  %53 = call i8* @devm_ioremap_resource(i32* %51, %struct.resource* %52)
  %54 = load %struct.tegra210_bpmp*, %struct.tegra210_bpmp** %5, align 8
  %55 = getelementptr inbounds %struct.tegra210_bpmp, %struct.tegra210_bpmp* %54, i32 0, i32 1
  store i8* %53, i8** %55, align 8
  %56 = load %struct.tegra210_bpmp*, %struct.tegra210_bpmp** %5, align 8
  %57 = getelementptr inbounds %struct.tegra210_bpmp, %struct.tegra210_bpmp* %56, i32 0, i32 1
  %58 = load i8*, i8** %57, align 8
  %59 = call i64 @IS_ERR(i8* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %46
  %62 = load %struct.tegra210_bpmp*, %struct.tegra210_bpmp** %5, align 8
  %63 = getelementptr inbounds %struct.tegra210_bpmp, %struct.tegra210_bpmp* %62, i32 0, i32 1
  %64 = load i8*, i8** %63, align 8
  %65 = call i32 @PTR_ERR(i8* %64)
  store i32 %65, i32* %2, align 4
  br label %191

66:                                               ; preds = %46
  %67 = load %struct.tegra_bpmp*, %struct.tegra_bpmp** %3, align 8
  %68 = getelementptr inbounds %struct.tegra_bpmp, %struct.tegra_bpmp* %67, i32 0, i32 4
  %69 = load i32*, i32** %68, align 8
  %70 = load %struct.tegra_bpmp*, %struct.tegra_bpmp** %3, align 8
  %71 = load %struct.tegra_bpmp*, %struct.tegra_bpmp** %3, align 8
  %72 = getelementptr inbounds %struct.tegra_bpmp, %struct.tegra_bpmp* %71, i32 0, i32 1
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @tegra210_bpmp_channel_init(i32* %69, %struct.tegra_bpmp* %70, i32 %77)
  store i32 %78, i32* %8, align 4
  %79 = load i32, i32* %8, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %66
  %82 = load i32, i32* %8, align 4
  store i32 %82, i32* %2, align 4
  br label %191

83:                                               ; preds = %66
  %84 = load %struct.tegra_bpmp*, %struct.tegra_bpmp** %3, align 8
  %85 = getelementptr inbounds %struct.tegra_bpmp, %struct.tegra_bpmp* %84, i32 0, i32 3
  %86 = load i32*, i32** %85, align 8
  %87 = load %struct.tegra_bpmp*, %struct.tegra_bpmp** %3, align 8
  %88 = load %struct.tegra_bpmp*, %struct.tegra_bpmp** %3, align 8
  %89 = getelementptr inbounds %struct.tegra_bpmp, %struct.tegra_bpmp* %88, i32 0, i32 1
  %90 = load %struct.TYPE_12__*, %struct.TYPE_12__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @tegra210_bpmp_channel_init(i32* %86, %struct.tegra_bpmp* %87, i32 %94)
  store i32 %95, i32* %8, align 4
  %96 = load i32, i32* %8, align 4
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %83
  %99 = load i32, i32* %8, align 4
  store i32 %99, i32* %2, align 4
  br label %191

100:                                              ; preds = %83
  store i32 0, i32* %7, align 4
  br label %101

101:                                              ; preds = %132, %100
  %102 = load i32, i32* %7, align 4
  %103 = load %struct.tegra_bpmp*, %struct.tegra_bpmp** %3, align 8
  %104 = getelementptr inbounds %struct.tegra_bpmp, %struct.tegra_bpmp* %103, i32 0, i32 2
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = icmp ult i32 %102, %106
  br i1 %107, label %108, label %135

108:                                              ; preds = %101
  %109 = load %struct.tegra_bpmp*, %struct.tegra_bpmp** %3, align 8
  %110 = getelementptr inbounds %struct.tegra_bpmp, %struct.tegra_bpmp* %109, i32 0, i32 1
  %111 = load %struct.TYPE_12__*, %struct.TYPE_12__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* %7, align 4
  %117 = add i32 %115, %116
  store i32 %117, i32* %9, align 4
  %118 = load %struct.tegra_bpmp*, %struct.tegra_bpmp** %3, align 8
  %119 = getelementptr inbounds %struct.tegra_bpmp, %struct.tegra_bpmp* %118, i32 0, i32 0
  %120 = load i32*, i32** %119, align 8
  %121 = load i32, i32* %7, align 4
  %122 = zext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %120, i64 %122
  %124 = load %struct.tegra_bpmp*, %struct.tegra_bpmp** %3, align 8
  %125 = load i32, i32* %9, align 4
  %126 = call i32 @tegra210_bpmp_channel_init(i32* %123, %struct.tegra_bpmp* %124, i32 %125)
  store i32 %126, i32* %8, align 4
  %127 = load i32, i32* %8, align 4
  %128 = icmp slt i32 %127, 0
  br i1 %128, label %129, label %131

129:                                              ; preds = %108
  %130 = load i32, i32* %8, align 4
  store i32 %130, i32* %2, align 4
  br label %191

131:                                              ; preds = %108
  br label %132

132:                                              ; preds = %131
  %133 = load i32, i32* %7, align 4
  %134 = add i32 %133, 1
  store i32 %134, i32* %7, align 4
  br label %101

135:                                              ; preds = %101
  %136 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %137 = call i32 @platform_get_irq_byname(%struct.platform_device* %136, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32 %137, i32* %8, align 4
  %138 = load i32, i32* %8, align 4
  %139 = icmp slt i32 %138, 0
  br i1 %139, label %140, label %146

140:                                              ; preds = %135
  %141 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %142 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %141, i32 0, i32 0
  %143 = load i32, i32* %8, align 4
  %144 = call i32 (i32*, i8*, ...) @dev_err(i32* %142, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %143)
  %145 = load i32, i32* %8, align 4
  store i32 %145, i32* %2, align 4
  br label %191

146:                                              ; preds = %135
  %147 = load i32, i32* %8, align 4
  %148 = call i32 @irq_get_irq_data(i32 %147)
  %149 = load %struct.tegra210_bpmp*, %struct.tegra210_bpmp** %5, align 8
  %150 = getelementptr inbounds %struct.tegra210_bpmp, %struct.tegra210_bpmp* %149, i32 0, i32 0
  store i32 %148, i32* %150, align 8
  %151 = load %struct.tegra210_bpmp*, %struct.tegra210_bpmp** %5, align 8
  %152 = getelementptr inbounds %struct.tegra210_bpmp, %struct.tegra210_bpmp* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %160, label %155

155:                                              ; preds = %146
  %156 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %157 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %156, i32 0, i32 0
  %158 = call i32 (i32*, i8*, ...) @dev_err(i32* %157, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %159 = load i32, i32* %8, align 4
  store i32 %159, i32* %2, align 4
  br label %191

160:                                              ; preds = %146
  %161 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %162 = call i32 @platform_get_irq_byname(%struct.platform_device* %161, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  store i32 %162, i32* %8, align 4
  %163 = load i32, i32* %8, align 4
  %164 = icmp slt i32 %163, 0
  br i1 %164, label %165, label %171

165:                                              ; preds = %160
  %166 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %167 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %166, i32 0, i32 0
  %168 = load i32, i32* %8, align 4
  %169 = call i32 (i32*, i8*, ...) @dev_err(i32* %167, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 %168)
  %170 = load i32, i32* %8, align 4
  store i32 %170, i32* %2, align 4
  br label %191

171:                                              ; preds = %160
  %172 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %173 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %172, i32 0, i32 0
  %174 = load i32, i32* %8, align 4
  %175 = load i32, i32* @rx_irq, align 4
  %176 = load i32, i32* @IRQF_NO_SUSPEND, align 4
  %177 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %178 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %177, i32 0, i32 0
  %179 = call i32 @dev_name(i32* %178)
  %180 = load %struct.tegra_bpmp*, %struct.tegra_bpmp** %3, align 8
  %181 = call i32 @devm_request_irq(i32* %173, i32 %174, i32 %175, i32 %176, i32 %179, %struct.tegra_bpmp* %180)
  store i32 %181, i32* %8, align 4
  %182 = load i32, i32* %8, align 4
  %183 = icmp slt i32 %182, 0
  br i1 %183, label %184, label %190

184:                                              ; preds = %171
  %185 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %186 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %185, i32 0, i32 0
  %187 = load i32, i32* %8, align 4
  %188 = call i32 (i32*, i8*, ...) @dev_err(i32* %186, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i32 %187)
  %189 = load i32, i32* %8, align 4
  store i32 %189, i32* %2, align 4
  br label %191

190:                                              ; preds = %171
  store i32 0, i32* %2, align 4
  br label %191

191:                                              ; preds = %190, %184, %165, %155, %140, %129, %98, %81, %61, %41, %20
  %192 = load i32, i32* %2, align 4
  ret i32 %192
}

declare dso_local %struct.platform_device* @to_platform_device(i32) #1

declare dso_local %struct.tegra210_bpmp* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i8* @devm_ioremap_resource(i32*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @tegra210_bpmp_channel_init(i32*, %struct.tegra_bpmp*, i32) #1

declare dso_local i32 @platform_get_irq_byname(%struct.platform_device*, i8*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @irq_get_irq_data(i32) #1

declare dso_local i32 @devm_request_irq(i32*, i32, i32, i32, i32, %struct.tegra_bpmp*) #1

declare dso_local i32 @dev_name(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
