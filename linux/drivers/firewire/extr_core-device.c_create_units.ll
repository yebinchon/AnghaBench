; ModuleID = '/home/carl/AnghaBench/linux/drivers/firewire/extr_core-device.c_create_units.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firewire/extr_core-device.c_create_units.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fw_device = type { i32, i32* }
%struct.fw_csr_iterator = type { i64 }
%struct.fw_unit = type { %struct.TYPE_5__, %struct.TYPE_6__, i64 }
%struct.TYPE_5__ = type { i32*, i32*, i32* }
%struct.TYPE_6__ = type { i32 }

@CSR_UNIT = common dso_local global i32 0, align 4
@CSR_DIRECTORY = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@fw_bus_type = common dso_local global i32 0, align 4
@fw_unit_type = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s.%d\00", align 1
@fw_unit_attributes = common dso_local global i32 0, align 4
@config_rom_attributes = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fw_device*)* @create_units to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @create_units(%struct.fw_device* %0) #0 {
  %2 = alloca %struct.fw_device*, align 8
  %3 = alloca %struct.fw_csr_iterator, align 8
  %4 = alloca %struct.fw_unit*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.fw_device* %0, %struct.fw_device** %2, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.fw_device*, %struct.fw_device** %2, align 8
  %9 = getelementptr inbounds %struct.fw_device, %struct.fw_device* %8, i32 0, i32 1
  %10 = load i32*, i32** %9, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 5
  %12 = call i32 @fw_csr_iterator_init(%struct.fw_csr_iterator* %3, i32* %11)
  br label %13

13:                                               ; preds = %84, %81, %28, %22, %1
  %14 = call i64 @fw_csr_iterator_next(%struct.fw_csr_iterator* %3, i32* %5, i32* %6)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %87

16:                                               ; preds = %13
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @CSR_UNIT, align 4
  %19 = load i32, i32* @CSR_DIRECTORY, align 4
  %20 = or i32 %18, %19
  %21 = icmp ne i32 %17, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  br label %13

23:                                               ; preds = %16
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call %struct.fw_unit* @kzalloc(i32 40, i32 %24)
  store %struct.fw_unit* %25, %struct.fw_unit** %4, align 8
  %26 = load %struct.fw_unit*, %struct.fw_unit** %4, align 8
  %27 = icmp eq %struct.fw_unit* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  br label %13

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.fw_csr_iterator, %struct.fw_csr_iterator* %3, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  %34 = add nsw i64 %31, %33
  %35 = sub nsw i64 %34, 1
  %36 = load %struct.fw_unit*, %struct.fw_unit** %4, align 8
  %37 = getelementptr inbounds %struct.fw_unit, %struct.fw_unit* %36, i32 0, i32 2
  store i64 %35, i64* %37, align 8
  %38 = load %struct.fw_unit*, %struct.fw_unit** %4, align 8
  %39 = getelementptr inbounds %struct.fw_unit, %struct.fw_unit* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 2
  store i32* @fw_bus_type, i32** %40, align 8
  %41 = load %struct.fw_unit*, %struct.fw_unit** %4, align 8
  %42 = getelementptr inbounds %struct.fw_unit, %struct.fw_unit* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 1
  store i32* @fw_unit_type, i32** %43, align 8
  %44 = load %struct.fw_device*, %struct.fw_device** %2, align 8
  %45 = getelementptr inbounds %struct.fw_device, %struct.fw_device* %44, i32 0, i32 0
  %46 = load %struct.fw_unit*, %struct.fw_unit** %4, align 8
  %47 = getelementptr inbounds %struct.fw_unit, %struct.fw_unit* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  store i32* %45, i32** %48, align 8
  %49 = load %struct.fw_unit*, %struct.fw_unit** %4, align 8
  %50 = getelementptr inbounds %struct.fw_unit, %struct.fw_unit* %49, i32 0, i32 0
  %51 = load %struct.fw_device*, %struct.fw_device** %2, align 8
  %52 = getelementptr inbounds %struct.fw_device, %struct.fw_device* %51, i32 0, i32 0
  %53 = call i32 @dev_name(i32* %52)
  %54 = load i32, i32* %7, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %7, align 4
  %56 = call i32 @dev_set_name(%struct.TYPE_5__* %50, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %53, i32 %54)
  %57 = load %struct.fw_unit*, %struct.fw_unit** %4, align 8
  %58 = getelementptr inbounds %struct.fw_unit, %struct.fw_unit* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i64 @ARRAY_SIZE(i32 %60)
  %62 = load i32, i32* @fw_unit_attributes, align 4
  %63 = call i64 @ARRAY_SIZE(i32 %62)
  %64 = load i32, i32* @config_rom_attributes, align 4
  %65 = call i64 @ARRAY_SIZE(i32 %64)
  %66 = add nsw i64 %63, %65
  %67 = icmp slt i64 %61, %66
  %68 = zext i1 %67 to i32
  %69 = call i32 @BUILD_BUG_ON(i32 %68)
  %70 = load %struct.fw_unit*, %struct.fw_unit** %4, align 8
  %71 = getelementptr inbounds %struct.fw_unit, %struct.fw_unit* %70, i32 0, i32 0
  %72 = load i32, i32* @fw_unit_attributes, align 4
  %73 = load %struct.fw_unit*, %struct.fw_unit** %4, align 8
  %74 = getelementptr inbounds %struct.fw_unit, %struct.fw_unit* %73, i32 0, i32 1
  %75 = call i32 @init_fw_attribute_group(%struct.TYPE_5__* %71, i32 %72, %struct.TYPE_6__* %74)
  %76 = load %struct.fw_unit*, %struct.fw_unit** %4, align 8
  %77 = getelementptr inbounds %struct.fw_unit, %struct.fw_unit* %76, i32 0, i32 0
  %78 = call i64 @device_register(%struct.TYPE_5__* %77)
  %79 = icmp slt i64 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %29
  br label %84

81:                                               ; preds = %29
  %82 = load %struct.fw_device*, %struct.fw_device** %2, align 8
  %83 = call i32 @fw_device_get(%struct.fw_device* %82)
  br label %13

84:                                               ; preds = %80
  %85 = load %struct.fw_unit*, %struct.fw_unit** %4, align 8
  %86 = call i32 @kfree(%struct.fw_unit* %85)
  br label %13

87:                                               ; preds = %13
  ret void
}

declare dso_local i32 @fw_csr_iterator_init(%struct.fw_csr_iterator*, i32*) #1

declare dso_local i64 @fw_csr_iterator_next(%struct.fw_csr_iterator*, i32*, i32*) #1

declare dso_local %struct.fw_unit* @kzalloc(i32, i32) #1

declare dso_local i32 @dev_set_name(%struct.TYPE_5__*, i8*, i32, i32) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i64 @ARRAY_SIZE(i32) #1

declare dso_local i32 @init_fw_attribute_group(%struct.TYPE_5__*, i32, %struct.TYPE_6__*) #1

declare dso_local i64 @device_register(%struct.TYPE_5__*) #1

declare dso_local i32 @fw_device_get(%struct.fw_device*) #1

declare dso_local i32 @kfree(%struct.fw_unit*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
