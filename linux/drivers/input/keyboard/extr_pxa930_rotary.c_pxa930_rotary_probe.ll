; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_pxa930_rotary.c_pxa930_rotary_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_pxa930_rotary.c_pxa930_rotary_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32, i32 }
%struct.pxa930_rotary_platform_data = type { i64, i64, i64 }
%struct.pxa930_rotary = type { i32*, %struct.input_dev*, %struct.pxa930_rotary_platform_data* }
%struct.input_dev = type { i32, i32, i32, %struct.TYPE_4__, i32, i32, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_3__ = type { i32 }
%struct.resource = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"no I/O memory defined\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"no platform data defined\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"failed to remap IO memory\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"failed to allocate input device\0A\00", align 1
@BUS_HOST = common dso_local global i32 0, align 4
@pxa930_rotary_open = common dso_local global i32 0, align 4
@pxa930_rotary_close = common dso_local global i32 0, align 4
@EV_KEY = common dso_local global i64 0, align 8
@EV_REL = common dso_local global i64 0, align 8
@rotary_irq = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [16 x i8] c"enhanced rotary\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"failed to request IRQ\0A\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"failed to register input device\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @pxa930_rotary_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pxa930_rotary_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.pxa930_rotary_platform_data*, align 8
  %5 = alloca %struct.pxa930_rotary*, align 8
  %6 = alloca %struct.input_dev*, align 8
  %7 = alloca %struct.resource*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  %12 = call %struct.pxa930_rotary_platform_data* @dev_get_platdata(i32* %11)
  store %struct.pxa930_rotary_platform_data* %12, %struct.pxa930_rotary_platform_data** %4, align 8
  %13 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %14 = call i32 @platform_get_irq(%struct.platform_device* %13, i32 0)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load i32, i32* @ENXIO, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %190

20:                                               ; preds = %1
  %21 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %22 = load i32, i32* @IORESOURCE_MEM, align 4
  %23 = call %struct.resource* @platform_get_resource(%struct.platform_device* %21, i32 %22, i32 0)
  store %struct.resource* %23, %struct.resource** %7, align 8
  %24 = load %struct.resource*, %struct.resource** %7, align 8
  %25 = icmp ne %struct.resource* %24, null
  br i1 %25, label %32, label %26

26:                                               ; preds = %20
  %27 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %28 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %27, i32 0, i32 0
  %29 = call i32 @dev_err(i32* %28, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* @ENXIO, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %190

32:                                               ; preds = %20
  %33 = load %struct.pxa930_rotary_platform_data*, %struct.pxa930_rotary_platform_data** %4, align 8
  %34 = icmp ne %struct.pxa930_rotary_platform_data* %33, null
  br i1 %34, label %41, label %35

35:                                               ; preds = %32
  %36 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %37 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %36, i32 0, i32 0
  %38 = call i32 @dev_err(i32* %37, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %2, align 4
  br label %190

41:                                               ; preds = %32
  %42 = load i32, i32* @GFP_KERNEL, align 4
  %43 = call %struct.pxa930_rotary* @kzalloc(i32 24, i32 %42)
  store %struct.pxa930_rotary* %43, %struct.pxa930_rotary** %5, align 8
  %44 = load %struct.pxa930_rotary*, %struct.pxa930_rotary** %5, align 8
  %45 = icmp ne %struct.pxa930_rotary* %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %41
  %47 = load i32, i32* @ENOMEM, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %2, align 4
  br label %190

49:                                               ; preds = %41
  %50 = load %struct.resource*, %struct.resource** %7, align 8
  %51 = getelementptr inbounds %struct.resource, %struct.resource* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.resource*, %struct.resource** %7, align 8
  %54 = call i32 @resource_size(%struct.resource* %53)
  %55 = call i32* @ioremap_nocache(i32 %52, i32 %54)
  %56 = load %struct.pxa930_rotary*, %struct.pxa930_rotary** %5, align 8
  %57 = getelementptr inbounds %struct.pxa930_rotary, %struct.pxa930_rotary* %56, i32 0, i32 0
  store i32* %55, i32** %57, align 8
  %58 = load %struct.pxa930_rotary*, %struct.pxa930_rotary** %5, align 8
  %59 = getelementptr inbounds %struct.pxa930_rotary, %struct.pxa930_rotary* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = icmp eq i32* %60, null
  br i1 %61, label %62, label %68

62:                                               ; preds = %49
  %63 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %64 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %63, i32 0, i32 0
  %65 = call i32 @dev_err(i32* %64, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %66 = load i32, i32* @ENXIO, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %9, align 4
  br label %186

68:                                               ; preds = %49
  %69 = load %struct.pxa930_rotary_platform_data*, %struct.pxa930_rotary_platform_data** %4, align 8
  %70 = load %struct.pxa930_rotary*, %struct.pxa930_rotary** %5, align 8
  %71 = getelementptr inbounds %struct.pxa930_rotary, %struct.pxa930_rotary* %70, i32 0, i32 2
  store %struct.pxa930_rotary_platform_data* %69, %struct.pxa930_rotary_platform_data** %71, align 8
  %72 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %73 = load %struct.pxa930_rotary*, %struct.pxa930_rotary** %5, align 8
  %74 = call i32 @platform_set_drvdata(%struct.platform_device* %72, %struct.pxa930_rotary* %73)
  %75 = call %struct.input_dev* (...) @input_allocate_device()
  store %struct.input_dev* %75, %struct.input_dev** %6, align 8
  %76 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %77 = icmp ne %struct.input_dev* %76, null
  br i1 %77, label %84, label %78

78:                                               ; preds = %68
  %79 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %80 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %79, i32 0, i32 0
  %81 = call i32 @dev_err(i32* %80, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  %82 = load i32, i32* @ENOMEM, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %9, align 4
  br label %181

84:                                               ; preds = %68
  %85 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %86 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %89 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %88, i32 0, i32 7
  store i32 %87, i32* %89, align 4
  %90 = load i32, i32* @BUS_HOST, align 4
  %91 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %92 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %91, i32 0, i32 6
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 0
  store i32 %90, i32* %93, align 8
  %94 = load i32, i32* @pxa930_rotary_open, align 4
  %95 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %96 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %95, i32 0, i32 5
  store i32 %94, i32* %96, align 4
  %97 = load i32, i32* @pxa930_rotary_close, align 4
  %98 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %99 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %98, i32 0, i32 4
  store i32 %97, i32* %99, align 8
  %100 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %101 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %100, i32 0, i32 0
  %102 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %103 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %102, i32 0, i32 3
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 0
  store i32* %101, i32** %104, align 8
  %105 = load %struct.pxa930_rotary_platform_data*, %struct.pxa930_rotary_platform_data** %4, align 8
  %106 = getelementptr inbounds %struct.pxa930_rotary_platform_data, %struct.pxa930_rotary_platform_data* %105, i32 0, i32 2
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %134

109:                                              ; preds = %84
  %110 = load %struct.pxa930_rotary_platform_data*, %struct.pxa930_rotary_platform_data** %4, align 8
  %111 = getelementptr inbounds %struct.pxa930_rotary_platform_data, %struct.pxa930_rotary_platform_data* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %134

114:                                              ; preds = %109
  %115 = load %struct.pxa930_rotary_platform_data*, %struct.pxa930_rotary_platform_data** %4, align 8
  %116 = getelementptr inbounds %struct.pxa930_rotary_platform_data, %struct.pxa930_rotary_platform_data* %115, i32 0, i32 2
  %117 = load i64, i64* %116, align 8
  %118 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %119 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = call i32 @__set_bit(i64 %117, i32 %120)
  %122 = load %struct.pxa930_rotary_platform_data*, %struct.pxa930_rotary_platform_data** %4, align 8
  %123 = getelementptr inbounds %struct.pxa930_rotary_platform_data, %struct.pxa930_rotary_platform_data* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %126 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = call i32 @__set_bit(i64 %124, i32 %127)
  %129 = load i64, i64* @EV_KEY, align 8
  %130 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %131 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = call i32 @__set_bit(i64 %129, i32 %132)
  br label %147

134:                                              ; preds = %109, %84
  %135 = load %struct.pxa930_rotary_platform_data*, %struct.pxa930_rotary_platform_data** %4, align 8
  %136 = getelementptr inbounds %struct.pxa930_rotary_platform_data, %struct.pxa930_rotary_platform_data* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %139 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @__set_bit(i64 %137, i32 %140)
  %142 = load i64, i64* @EV_REL, align 8
  %143 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %144 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = call i32 @__set_bit(i64 %142, i32 %145)
  br label %147

147:                                              ; preds = %134, %114
  %148 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %149 = load %struct.pxa930_rotary*, %struct.pxa930_rotary** %5, align 8
  %150 = getelementptr inbounds %struct.pxa930_rotary, %struct.pxa930_rotary* %149, i32 0, i32 1
  store %struct.input_dev* %148, %struct.input_dev** %150, align 8
  %151 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %152 = load %struct.pxa930_rotary*, %struct.pxa930_rotary** %5, align 8
  %153 = call i32 @input_set_drvdata(%struct.input_dev* %151, %struct.pxa930_rotary* %152)
  %154 = load i32, i32* %8, align 4
  %155 = load i32, i32* @rotary_irq, align 4
  %156 = load %struct.pxa930_rotary*, %struct.pxa930_rotary** %5, align 8
  %157 = call i32 @request_irq(i32 %154, i32 %155, i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), %struct.pxa930_rotary* %156)
  store i32 %157, i32* %9, align 4
  %158 = load i32, i32* %9, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %164

160:                                              ; preds = %147
  %161 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %162 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %161, i32 0, i32 0
  %163 = call i32 @dev_err(i32* %162, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  br label %178

164:                                              ; preds = %147
  %165 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %166 = call i32 @input_register_device(%struct.input_dev* %165)
  store i32 %166, i32* %9, align 4
  %167 = load i32, i32* %9, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %173

169:                                              ; preds = %164
  %170 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %171 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %170, i32 0, i32 0
  %172 = call i32 @dev_err(i32* %171, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0))
  br label %174

173:                                              ; preds = %164
  store i32 0, i32* %2, align 4
  br label %190

174:                                              ; preds = %169
  %175 = load i32, i32* %8, align 4
  %176 = load %struct.pxa930_rotary*, %struct.pxa930_rotary** %5, align 8
  %177 = call i32 @free_irq(i32 %175, %struct.pxa930_rotary* %176)
  br label %178

178:                                              ; preds = %174, %160
  %179 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %180 = call i32 @input_free_device(%struct.input_dev* %179)
  br label %181

181:                                              ; preds = %178, %78
  %182 = load %struct.pxa930_rotary*, %struct.pxa930_rotary** %5, align 8
  %183 = getelementptr inbounds %struct.pxa930_rotary, %struct.pxa930_rotary* %182, i32 0, i32 0
  %184 = load i32*, i32** %183, align 8
  %185 = call i32 @iounmap(i32* %184)
  br label %186

186:                                              ; preds = %181, %62
  %187 = load %struct.pxa930_rotary*, %struct.pxa930_rotary** %5, align 8
  %188 = call i32 @kfree(%struct.pxa930_rotary* %187)
  %189 = load i32, i32* %9, align 4
  store i32 %189, i32* %2, align 4
  br label %190

190:                                              ; preds = %186, %173, %46, %35, %26, %17
  %191 = load i32, i32* %2, align 4
  ret i32 %191
}

declare dso_local %struct.pxa930_rotary_platform_data* @dev_get_platdata(i32*) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local %struct.pxa930_rotary* @kzalloc(i32, i32) #1

declare dso_local i32* @ioremap_nocache(i32, i32) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.pxa930_rotary*) #1

declare dso_local %struct.input_dev* @input_allocate_device(...) #1

declare dso_local i32 @__set_bit(i64, i32) #1

declare dso_local i32 @input_set_drvdata(%struct.input_dev*, %struct.pxa930_rotary*) #1

declare dso_local i32 @request_irq(i32, i32, i32, i8*, %struct.pxa930_rotary*) #1

declare dso_local i32 @input_register_device(%struct.input_dev*) #1

declare dso_local i32 @free_irq(i32, %struct.pxa930_rotary*) #1

declare dso_local i32 @input_free_device(%struct.input_dev*) #1

declare dso_local i32 @iounmap(i32*) #1

declare dso_local i32 @kfree(%struct.pxa930_rotary*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
