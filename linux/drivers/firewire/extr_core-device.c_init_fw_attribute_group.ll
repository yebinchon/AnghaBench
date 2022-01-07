; ModuleID = '/home/carl/AnghaBench/linux/drivers/firewire/extr_core-device.c_init_fw_attribute_group.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firewire/extr_core-device.c_init_fw_attribute_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.device_attribute }
%struct.device_attribute = type { i64 (%struct.device.0*, %struct.device_attribute*, i32*)*, %struct.TYPE_5__ }
%struct.device.0 = type opaque
%struct.TYPE_5__ = type { i32* }
%struct.device = type { %struct.attribute_group** }
%struct.attribute_group = type { i32 }
%struct.fw_attribute_group = type { %struct.TYPE_6__**, %struct.TYPE_5__**, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__** }

@config_rom_attributes = common dso_local global %struct.TYPE_7__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*, %struct.device_attribute*, %struct.fw_attribute_group*)* @init_fw_attribute_group to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_fw_attribute_group(%struct.device* %0, %struct.device_attribute* %1, %struct.fw_attribute_group* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca %struct.fw_attribute_group*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %5, align 8
  store %struct.fw_attribute_group* %2, %struct.fw_attribute_group** %6, align 8
  store i32 0, i32* %9, align 4
  br label %10

10:                                               ; preds = %31, %3
  %11 = load %struct.device_attribute*, %struct.device_attribute** %5, align 8
  %12 = load i32, i32* %9, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.device_attribute, %struct.device_attribute* %11, i64 %13
  %15 = getelementptr inbounds %struct.device_attribute, %struct.device_attribute* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %34

19:                                               ; preds = %10
  %20 = load %struct.device_attribute*, %struct.device_attribute** %5, align 8
  %21 = load i32, i32* %9, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.device_attribute, %struct.device_attribute* %20, i64 %22
  %24 = getelementptr inbounds %struct.device_attribute, %struct.device_attribute* %23, i32 0, i32 1
  %25 = load %struct.fw_attribute_group*, %struct.fw_attribute_group** %6, align 8
  %26 = getelementptr inbounds %struct.fw_attribute_group, %struct.fw_attribute_group* %25, i32 0, i32 1
  %27 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %26, align 8
  %28 = load i32, i32* %9, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %27, i64 %29
  store %struct.TYPE_5__* %24, %struct.TYPE_5__** %30, align 8
  br label %31

31:                                               ; preds = %19
  %32 = load i32, i32* %9, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %9, align 4
  br label %10

34:                                               ; preds = %10
  store i32 0, i32* %8, align 4
  br label %35

35:                                               ; preds = %65, %34
  %36 = load i32, i32* %8, align 4
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** @config_rom_attributes, align 8
  %38 = call i32 @ARRAY_SIZE(%struct.TYPE_7__* %37)
  %39 = icmp slt i32 %36, %38
  br i1 %39, label %40, label %68

40:                                               ; preds = %35
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** @config_rom_attributes, align 8
  %42 = load i32, i32* %8, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  store %struct.device_attribute* %45, %struct.device_attribute** %7, align 8
  %46 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %47 = getelementptr inbounds %struct.device_attribute, %struct.device_attribute* %46, i32 0, i32 0
  %48 = load i64 (%struct.device.0*, %struct.device_attribute*, i32*)*, i64 (%struct.device.0*, %struct.device_attribute*, i32*)** %47, align 8
  %49 = load %struct.device*, %struct.device** %4, align 8
  %50 = bitcast %struct.device* %49 to %struct.device.0*
  %51 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %52 = call i64 %48(%struct.device.0* %50, %struct.device_attribute* %51, i32* null)
  %53 = icmp slt i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %40
  br label %65

55:                                               ; preds = %40
  %56 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %57 = getelementptr inbounds %struct.device_attribute, %struct.device_attribute* %56, i32 0, i32 1
  %58 = load %struct.fw_attribute_group*, %struct.fw_attribute_group** %6, align 8
  %59 = getelementptr inbounds %struct.fw_attribute_group, %struct.fw_attribute_group* %58, i32 0, i32 1
  %60 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %59, align 8
  %61 = load i32, i32* %9, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %9, align 4
  %63 = sext i32 %61 to i64
  %64 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %60, i64 %63
  store %struct.TYPE_5__* %57, %struct.TYPE_5__** %64, align 8
  br label %65

65:                                               ; preds = %55, %54
  %66 = load i32, i32* %8, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %8, align 4
  br label %35

68:                                               ; preds = %35
  %69 = load %struct.fw_attribute_group*, %struct.fw_attribute_group** %6, align 8
  %70 = getelementptr inbounds %struct.fw_attribute_group, %struct.fw_attribute_group* %69, i32 0, i32 1
  %71 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %70, align 8
  %72 = load i32, i32* %9, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %71, i64 %73
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %74, align 8
  %75 = load %struct.fw_attribute_group*, %struct.fw_attribute_group** %6, align 8
  %76 = getelementptr inbounds %struct.fw_attribute_group, %struct.fw_attribute_group* %75, i32 0, i32 2
  %77 = load %struct.fw_attribute_group*, %struct.fw_attribute_group** %6, align 8
  %78 = getelementptr inbounds %struct.fw_attribute_group, %struct.fw_attribute_group* %77, i32 0, i32 0
  %79 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %79, i64 0
  store %struct.TYPE_6__* %76, %struct.TYPE_6__** %80, align 8
  %81 = load %struct.fw_attribute_group*, %struct.fw_attribute_group** %6, align 8
  %82 = getelementptr inbounds %struct.fw_attribute_group, %struct.fw_attribute_group* %81, i32 0, i32 0
  %83 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %83, i64 1
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %84, align 8
  %85 = load %struct.fw_attribute_group*, %struct.fw_attribute_group** %6, align 8
  %86 = getelementptr inbounds %struct.fw_attribute_group, %struct.fw_attribute_group* %85, i32 0, i32 1
  %87 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %86, align 8
  %88 = load %struct.fw_attribute_group*, %struct.fw_attribute_group** %6, align 8
  %89 = getelementptr inbounds %struct.fw_attribute_group, %struct.fw_attribute_group* %88, i32 0, i32 2
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  store %struct.TYPE_5__** %87, %struct.TYPE_5__*** %90, align 8
  %91 = load %struct.fw_attribute_group*, %struct.fw_attribute_group** %6, align 8
  %92 = getelementptr inbounds %struct.fw_attribute_group, %struct.fw_attribute_group* %91, i32 0, i32 0
  %93 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %92, align 8
  %94 = bitcast %struct.TYPE_6__** %93 to %struct.attribute_group**
  %95 = load %struct.device*, %struct.device** %4, align 8
  %96 = getelementptr inbounds %struct.device, %struct.device* %95, i32 0, i32 0
  store %struct.attribute_group** %94, %struct.attribute_group*** %96, align 8
  ret void
}

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
