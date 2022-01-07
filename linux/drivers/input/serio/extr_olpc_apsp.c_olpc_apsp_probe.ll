; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/serio/extr_olpc_apsp.c_olpc_apsp_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/serio/extr_olpc_apsp.c_olpc_apsp_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.serio = type { i32, i32, %struct.TYPE_4__, %struct.olpc_apsp*, i8*, i8*, i8*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32* }
%struct.olpc_apsp = type { i64, i32*, %struct.serio*, %struct.serio*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Failed to map WTM registers\0A\00", align 1
@SERIO_8042_XL = common dso_local global i32 0, align 4
@olpc_apsp_write = common dso_local global i8* null, align 8
@olpc_apsp_open = common dso_local global i8* null, align 8
@olpc_apsp_close = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"sp keyboard\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"sp/serio0\00", align 1
@SERIO_8042 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"sp touchpad\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"sp/serio1\00", align 1
@olpc_apsp_rx = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [10 x i8] c"olpc-apsp\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"Failed to request IRQ\0A\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"probed successfully.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @olpc_apsp_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @olpc_apsp_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.serio*, align 8
  %5 = alloca %struct.serio*, align 8
  %6 = alloca %struct.olpc_apsp*, align 8
  %7 = alloca %struct.resource*, align 8
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.olpc_apsp* @devm_kzalloc(i32* %10, i32 40, i32 %11)
  store %struct.olpc_apsp* %12, %struct.olpc_apsp** %6, align 8
  %13 = load %struct.olpc_apsp*, %struct.olpc_apsp** %6, align 8
  %14 = icmp ne %struct.olpc_apsp* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %175

18:                                               ; preds = %1
  %19 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %20 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %19, i32 0, i32 0
  %21 = load %struct.olpc_apsp*, %struct.olpc_apsp** %6, align 8
  %22 = getelementptr inbounds %struct.olpc_apsp, %struct.olpc_apsp* %21, i32 0, i32 1
  store i32* %20, i32** %22, align 8
  %23 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %24 = load i32, i32* @IORESOURCE_MEM, align 4
  %25 = call %struct.resource* @platform_get_resource(%struct.platform_device* %23, i32 %24, i32 0)
  store %struct.resource* %25, %struct.resource** %7, align 8
  %26 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %27 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %26, i32 0, i32 0
  %28 = load %struct.resource*, %struct.resource** %7, align 8
  %29 = call i32 @devm_ioremap_resource(i32* %27, %struct.resource* %28)
  %30 = load %struct.olpc_apsp*, %struct.olpc_apsp** %6, align 8
  %31 = getelementptr inbounds %struct.olpc_apsp, %struct.olpc_apsp* %30, i32 0, i32 4
  store i32 %29, i32* %31, align 8
  %32 = load %struct.olpc_apsp*, %struct.olpc_apsp** %6, align 8
  %33 = getelementptr inbounds %struct.olpc_apsp, %struct.olpc_apsp* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 8
  %35 = call i64 @IS_ERR(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %18
  %38 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %39 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %38, i32 0, i32 0
  %40 = call i32 @dev_err(i32* %39, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %41 = load %struct.olpc_apsp*, %struct.olpc_apsp** %6, align 8
  %42 = getelementptr inbounds %struct.olpc_apsp, %struct.olpc_apsp* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @PTR_ERR(i32 %43)
  store i32 %44, i32* %2, align 4
  br label %175

45:                                               ; preds = %18
  %46 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %47 = call i64 @platform_get_irq(%struct.platform_device* %46, i32 0)
  %48 = load %struct.olpc_apsp*, %struct.olpc_apsp** %6, align 8
  %49 = getelementptr inbounds %struct.olpc_apsp, %struct.olpc_apsp* %48, i32 0, i32 0
  store i64 %47, i64* %49, align 8
  %50 = load %struct.olpc_apsp*, %struct.olpc_apsp** %6, align 8
  %51 = getelementptr inbounds %struct.olpc_apsp, %struct.olpc_apsp* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp slt i64 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %45
  %55 = load %struct.olpc_apsp*, %struct.olpc_apsp** %6, align 8
  %56 = getelementptr inbounds %struct.olpc_apsp, %struct.olpc_apsp* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = trunc i64 %57 to i32
  store i32 %58, i32* %2, align 4
  br label %175

59:                                               ; preds = %45
  %60 = load i32, i32* @GFP_KERNEL, align 4
  %61 = call %struct.serio* @kzalloc(i32 56, i32 %60)
  store %struct.serio* %61, %struct.serio** %4, align 8
  %62 = load %struct.serio*, %struct.serio** %4, align 8
  %63 = icmp ne %struct.serio* %62, null
  br i1 %63, label %67, label %64

64:                                               ; preds = %59
  %65 = load i32, i32* @ENOMEM, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %2, align 4
  br label %175

67:                                               ; preds = %59
  %68 = load i32, i32* @SERIO_8042_XL, align 4
  %69 = load %struct.serio*, %struct.serio** %4, align 8
  %70 = getelementptr inbounds %struct.serio, %struct.serio* %69, i32 0, i32 7
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  store i32 %68, i32* %71, align 8
  %72 = load i8*, i8** @olpc_apsp_write, align 8
  %73 = load %struct.serio*, %struct.serio** %4, align 8
  %74 = getelementptr inbounds %struct.serio, %struct.serio* %73, i32 0, i32 6
  store i8* %72, i8** %74, align 8
  %75 = load i8*, i8** @olpc_apsp_open, align 8
  %76 = load %struct.serio*, %struct.serio** %4, align 8
  %77 = getelementptr inbounds %struct.serio, %struct.serio* %76, i32 0, i32 5
  store i8* %75, i8** %77, align 8
  %78 = load i8*, i8** @olpc_apsp_close, align 8
  %79 = load %struct.serio*, %struct.serio** %4, align 8
  %80 = getelementptr inbounds %struct.serio, %struct.serio* %79, i32 0, i32 4
  store i8* %78, i8** %80, align 8
  %81 = load %struct.olpc_apsp*, %struct.olpc_apsp** %6, align 8
  %82 = load %struct.serio*, %struct.serio** %4, align 8
  %83 = getelementptr inbounds %struct.serio, %struct.serio* %82, i32 0, i32 3
  store %struct.olpc_apsp* %81, %struct.olpc_apsp** %83, align 8
  %84 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %85 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %84, i32 0, i32 0
  %86 = load %struct.serio*, %struct.serio** %4, align 8
  %87 = getelementptr inbounds %struct.serio, %struct.serio* %86, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  store i32* %85, i32** %88, align 8
  %89 = load %struct.serio*, %struct.serio** %4, align 8
  %90 = getelementptr inbounds %struct.serio, %struct.serio* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @strlcpy(i32 %91, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 4)
  %93 = load %struct.serio*, %struct.serio** %4, align 8
  %94 = getelementptr inbounds %struct.serio, %struct.serio* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @strlcpy(i32 %95, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 4)
  %97 = load %struct.serio*, %struct.serio** %4, align 8
  %98 = load %struct.olpc_apsp*, %struct.olpc_apsp** %6, align 8
  %99 = getelementptr inbounds %struct.olpc_apsp, %struct.olpc_apsp* %98, i32 0, i32 3
  store %struct.serio* %97, %struct.serio** %99, align 8
  %100 = load %struct.serio*, %struct.serio** %4, align 8
  %101 = call i32 @serio_register_port(%struct.serio* %100)
  %102 = load i32, i32* @GFP_KERNEL, align 4
  %103 = call %struct.serio* @kzalloc(i32 56, i32 %102)
  store %struct.serio* %103, %struct.serio** %5, align 8
  %104 = load %struct.serio*, %struct.serio** %5, align 8
  %105 = icmp ne %struct.serio* %104, null
  br i1 %105, label %109, label %106

106:                                              ; preds = %67
  %107 = load i32, i32* @ENOMEM, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %8, align 4
  br label %171

109:                                              ; preds = %67
  %110 = load i32, i32* @SERIO_8042, align 4
  %111 = load %struct.serio*, %struct.serio** %5, align 8
  %112 = getelementptr inbounds %struct.serio, %struct.serio* %111, i32 0, i32 7
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 0
  store i32 %110, i32* %113, align 8
  %114 = load i8*, i8** @olpc_apsp_write, align 8
  %115 = load %struct.serio*, %struct.serio** %5, align 8
  %116 = getelementptr inbounds %struct.serio, %struct.serio* %115, i32 0, i32 6
  store i8* %114, i8** %116, align 8
  %117 = load i8*, i8** @olpc_apsp_open, align 8
  %118 = load %struct.serio*, %struct.serio** %5, align 8
  %119 = getelementptr inbounds %struct.serio, %struct.serio* %118, i32 0, i32 5
  store i8* %117, i8** %119, align 8
  %120 = load i8*, i8** @olpc_apsp_close, align 8
  %121 = load %struct.serio*, %struct.serio** %5, align 8
  %122 = getelementptr inbounds %struct.serio, %struct.serio* %121, i32 0, i32 4
  store i8* %120, i8** %122, align 8
  %123 = load %struct.olpc_apsp*, %struct.olpc_apsp** %6, align 8
  %124 = load %struct.serio*, %struct.serio** %5, align 8
  %125 = getelementptr inbounds %struct.serio, %struct.serio* %124, i32 0, i32 3
  store %struct.olpc_apsp* %123, %struct.olpc_apsp** %125, align 8
  %126 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %127 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %126, i32 0, i32 0
  %128 = load %struct.serio*, %struct.serio** %5, align 8
  %129 = getelementptr inbounds %struct.serio, %struct.serio* %128, i32 0, i32 2
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 0
  store i32* %127, i32** %130, align 8
  %131 = load %struct.serio*, %struct.serio** %5, align 8
  %132 = getelementptr inbounds %struct.serio, %struct.serio* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @strlcpy(i32 %133, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 4)
  %135 = load %struct.serio*, %struct.serio** %5, align 8
  %136 = getelementptr inbounds %struct.serio, %struct.serio* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = call i32 @strlcpy(i32 %137, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 4)
  %139 = load %struct.serio*, %struct.serio** %5, align 8
  %140 = load %struct.olpc_apsp*, %struct.olpc_apsp** %6, align 8
  %141 = getelementptr inbounds %struct.olpc_apsp, %struct.olpc_apsp* %140, i32 0, i32 2
  store %struct.serio* %139, %struct.serio** %141, align 8
  %142 = load %struct.serio*, %struct.serio** %5, align 8
  %143 = call i32 @serio_register_port(%struct.serio* %142)
  %144 = load %struct.olpc_apsp*, %struct.olpc_apsp** %6, align 8
  %145 = getelementptr inbounds %struct.olpc_apsp, %struct.olpc_apsp* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = trunc i64 %146 to i32
  %148 = load i32, i32* @olpc_apsp_rx, align 4
  %149 = load %struct.olpc_apsp*, %struct.olpc_apsp** %6, align 8
  %150 = call i32 @request_irq(i32 %147, i32 %148, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), %struct.olpc_apsp* %149)
  store i32 %150, i32* %8, align 4
  %151 = load i32, i32* %8, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %157

153:                                              ; preds = %109
  %154 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %155 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %154, i32 0, i32 0
  %156 = call i32 @dev_err(i32* %155, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0))
  br label %168

157:                                              ; preds = %109
  %158 = load %struct.olpc_apsp*, %struct.olpc_apsp** %6, align 8
  %159 = getelementptr inbounds %struct.olpc_apsp, %struct.olpc_apsp* %158, i32 0, i32 1
  %160 = load i32*, i32** %159, align 8
  %161 = call i32 @device_init_wakeup(i32* %160, i32 1)
  %162 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %163 = load %struct.olpc_apsp*, %struct.olpc_apsp** %6, align 8
  %164 = call i32 @platform_set_drvdata(%struct.platform_device* %162, %struct.olpc_apsp* %163)
  %165 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %166 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %165, i32 0, i32 0
  %167 = call i32 @dev_dbg(i32* %166, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %175

168:                                              ; preds = %153
  %169 = load %struct.serio*, %struct.serio** %5, align 8
  %170 = call i32 @serio_unregister_port(%struct.serio* %169)
  br label %171

171:                                              ; preds = %168, %106
  %172 = load %struct.serio*, %struct.serio** %4, align 8
  %173 = call i32 @serio_unregister_port(%struct.serio* %172)
  %174 = load i32, i32* %8, align 4
  store i32 %174, i32* %2, align 4
  br label %175

175:                                              ; preds = %171, %157, %64, %54, %37, %15
  %176 = load i32, i32* %2, align 4
  ret i32 %176
}

declare dso_local %struct.olpc_apsp* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(i32*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i64 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local %struct.serio* @kzalloc(i32, i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i32 @serio_register_port(%struct.serio*) #1

declare dso_local i32 @request_irq(i32, i32, i32, i8*, %struct.olpc_apsp*) #1

declare dso_local i32 @device_init_wakeup(i32*, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.olpc_apsp*) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @serio_unregister_port(%struct.serio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
