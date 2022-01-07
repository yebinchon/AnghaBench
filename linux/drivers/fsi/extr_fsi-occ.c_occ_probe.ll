; ModuleID = '/home/carl/AnghaBench/linux/drivers/fsi/extr_fsi-occ.c_occ_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/fsi/extr_fsi-occ.c_occ_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i64, i32 }
%struct.occ = type { i64, %struct.TYPE_2__, i32, i32, i32, %struct.device* }
%struct.TYPE_2__ = type { %struct.device*, i32, i32, i32* }
%struct.platform_device_info = type { i8*, i32, %struct.device* }

@.str = private unnamed_addr constant [10 x i8] c"occ-hwmon\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@occ_ida = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"occ%d\00", align 1
@occ_fops = common dso_local global i32 0, align 4
@MISC_DYNAMIC_MINOR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"failed to register miscdevice: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"failed to create hwmon device\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @occ_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @occ_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.occ*, align 8
  %7 = alloca %struct.platform_device*, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca %struct.platform_device_info, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  store %struct.device* %11, %struct.device** %8, align 8
  %12 = getelementptr inbounds %struct.platform_device_info, %struct.platform_device_info* %9, i32 0, i32 0
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8** %12, align 8
  %13 = getelementptr inbounds %struct.platform_device_info, %struct.platform_device_info* %9, i32 0, i32 1
  store i32 0, i32* %13, align 8
  %14 = getelementptr inbounds %struct.platform_device_info, %struct.platform_device_info* %9, i32 0, i32 2
  %15 = load %struct.device*, %struct.device** %8, align 8
  store %struct.device* %15, %struct.device** %14, align 8
  %16 = load %struct.device*, %struct.device** %8, align 8
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.occ* @devm_kzalloc(%struct.device* %16, i32 56, i32 %17)
  store %struct.occ* %18, %struct.occ** %6, align 8
  %19 = load %struct.occ*, %struct.occ** %6, align 8
  %20 = icmp ne %struct.occ* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %1
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %139

24:                                               ; preds = %1
  %25 = load %struct.device*, %struct.device** %8, align 8
  %26 = load %struct.occ*, %struct.occ** %6, align 8
  %27 = getelementptr inbounds %struct.occ, %struct.occ* %26, i32 0, i32 5
  store %struct.device* %25, %struct.device** %27, align 8
  %28 = load %struct.device*, %struct.device** %8, align 8
  %29 = getelementptr inbounds %struct.device, %struct.device* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.occ*, %struct.occ** %6, align 8
  %32 = getelementptr inbounds %struct.occ, %struct.occ* %31, i32 0, i32 4
  store i32 %30, i32* %32, align 8
  %33 = load %struct.occ*, %struct.occ** %6, align 8
  %34 = getelementptr inbounds %struct.occ, %struct.occ* %33, i32 0, i32 3
  %35 = call i32 @mutex_init(i32* %34)
  %36 = load %struct.device*, %struct.device** %8, align 8
  %37 = getelementptr inbounds %struct.device, %struct.device* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %76

40:                                               ; preds = %24
  %41 = load %struct.device*, %struct.device** %8, align 8
  %42 = getelementptr inbounds %struct.device, %struct.device* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = call i32 @of_property_read_u32(i64 %43, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32* %5)
  store i32 %44, i32* %4, align 4
  %45 = load i32, i32* %4, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %68, label %47

47:                                               ; preds = %40
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* %5, align 4
  %50 = add nsw i32 %49, 1
  %51 = load i32, i32* @GFP_KERNEL, align 4
  %52 = call i8* @ida_simple_get(i32* @occ_ida, i32 %48, i32 %50, i32 %51)
  %53 = ptrtoint i8* %52 to i64
  %54 = load %struct.occ*, %struct.occ** %6, align 8
  %55 = getelementptr inbounds %struct.occ, %struct.occ* %54, i32 0, i32 0
  store i64 %53, i64* %55, align 8
  %56 = load %struct.occ*, %struct.occ** %6, align 8
  %57 = getelementptr inbounds %struct.occ, %struct.occ* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp slt i64 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %47
  %61 = load i32, i32* @INT_MAX, align 4
  %62 = load i32, i32* @GFP_KERNEL, align 4
  %63 = call i8* @ida_simple_get(i32* @occ_ida, i32 1, i32 %61, i32 %62)
  %64 = ptrtoint i8* %63 to i64
  %65 = load %struct.occ*, %struct.occ** %6, align 8
  %66 = getelementptr inbounds %struct.occ, %struct.occ* %65, i32 0, i32 0
  store i64 %64, i64* %66, align 8
  br label %67

67:                                               ; preds = %60, %47
  br label %75

68:                                               ; preds = %40
  %69 = load i32, i32* @INT_MAX, align 4
  %70 = load i32, i32* @GFP_KERNEL, align 4
  %71 = call i8* @ida_simple_get(i32* @occ_ida, i32 1, i32 %69, i32 %70)
  %72 = ptrtoint i8* %71 to i64
  %73 = load %struct.occ*, %struct.occ** %6, align 8
  %74 = getelementptr inbounds %struct.occ, %struct.occ* %73, i32 0, i32 0
  store i64 %72, i64* %74, align 8
  br label %75

75:                                               ; preds = %68, %67
  br label %83

76:                                               ; preds = %24
  %77 = load i32, i32* @INT_MAX, align 4
  %78 = load i32, i32* @GFP_KERNEL, align 4
  %79 = call i8* @ida_simple_get(i32* @occ_ida, i32 1, i32 %77, i32 %78)
  %80 = ptrtoint i8* %79 to i64
  %81 = load %struct.occ*, %struct.occ** %6, align 8
  %82 = getelementptr inbounds %struct.occ, %struct.occ* %81, i32 0, i32 0
  store i64 %80, i64* %82, align 8
  br label %83

83:                                               ; preds = %76, %75
  %84 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %85 = load %struct.occ*, %struct.occ** %6, align 8
  %86 = call i32 @platform_set_drvdata(%struct.platform_device* %84, %struct.occ* %85)
  %87 = load %struct.occ*, %struct.occ** %6, align 8
  %88 = getelementptr inbounds %struct.occ, %struct.occ* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.occ*, %struct.occ** %6, align 8
  %91 = getelementptr inbounds %struct.occ, %struct.occ* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = call i32 @snprintf(i32 %89, i32 4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i64 %92)
  %94 = load %struct.occ*, %struct.occ** %6, align 8
  %95 = getelementptr inbounds %struct.occ, %struct.occ* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 3
  store i32* @occ_fops, i32** %96, align 8
  %97 = load i32, i32* @MISC_DYNAMIC_MINOR, align 4
  %98 = load %struct.occ*, %struct.occ** %6, align 8
  %99 = getelementptr inbounds %struct.occ, %struct.occ* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 2
  store i32 %97, i32* %100, align 4
  %101 = load %struct.occ*, %struct.occ** %6, align 8
  %102 = getelementptr inbounds %struct.occ, %struct.occ* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.occ*, %struct.occ** %6, align 8
  %105 = getelementptr inbounds %struct.occ, %struct.occ* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 1
  store i32 %103, i32* %106, align 8
  %107 = load %struct.device*, %struct.device** %8, align 8
  %108 = load %struct.occ*, %struct.occ** %6, align 8
  %109 = getelementptr inbounds %struct.occ, %struct.occ* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 0
  store %struct.device* %107, %struct.device** %110, align 8
  %111 = load %struct.occ*, %struct.occ** %6, align 8
  %112 = getelementptr inbounds %struct.occ, %struct.occ* %111, i32 0, i32 1
  %113 = call i32 @misc_register(%struct.TYPE_2__* %112)
  store i32 %113, i32* %4, align 4
  %114 = load i32, i32* %4, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %126

116:                                              ; preds = %83
  %117 = load %struct.device*, %struct.device** %8, align 8
  %118 = load i32, i32* %4, align 4
  %119 = call i32 @dev_err(%struct.device* %117, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %118)
  %120 = load %struct.occ*, %struct.occ** %6, align 8
  %121 = getelementptr inbounds %struct.occ, %struct.occ* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = trunc i64 %122 to i32
  %124 = call i32 @ida_simple_remove(i32* @occ_ida, i32 %123)
  %125 = load i32, i32* %4, align 4
  store i32 %125, i32* %2, align 4
  br label %139

126:                                              ; preds = %83
  %127 = load %struct.occ*, %struct.occ** %6, align 8
  %128 = getelementptr inbounds %struct.occ, %struct.occ* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = trunc i64 %129 to i32
  %131 = getelementptr inbounds %struct.platform_device_info, %struct.platform_device_info* %9, i32 0, i32 1
  store i32 %130, i32* %131, align 8
  %132 = call %struct.platform_device* @platform_device_register_full(%struct.platform_device_info* %9)
  store %struct.platform_device* %132, %struct.platform_device** %7, align 8
  %133 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %134 = icmp ne %struct.platform_device* %133, null
  br i1 %134, label %138, label %135

135:                                              ; preds = %126
  %136 = load %struct.device*, %struct.device** %8, align 8
  %137 = call i32 @dev_warn(%struct.device* %136, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  br label %138

138:                                              ; preds = %135, %126
  store i32 0, i32* %2, align 4
  br label %139

139:                                              ; preds = %138, %116, %21
  %140 = load i32, i32* %2, align 4
  ret i32 %140
}

declare dso_local %struct.occ* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @of_property_read_u32(i64, i8*, i32*) #1

declare dso_local i8* @ida_simple_get(i32*, i32, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.occ*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i64) #1

declare dso_local i32 @misc_register(%struct.TYPE_2__*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @ida_simple_remove(i32*, i32) #1

declare dso_local %struct.platform_device* @platform_device_register_full(%struct.platform_device_info*) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
