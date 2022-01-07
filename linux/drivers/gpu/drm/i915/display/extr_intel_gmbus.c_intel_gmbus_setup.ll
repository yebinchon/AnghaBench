; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_gmbus.c_intel_gmbus_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_gmbus.c_intel_gmbus_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { %struct.intel_gmbus*, i32, i32, i32, %struct.TYPE_6__ }
%struct.intel_gmbus = type { i32, i32, %struct.TYPE_8__, %struct.drm_i915_private* }
%struct.TYPE_8__ = type { i32, i32*, i32*, %struct.TYPE_7__, i32, i32, i32 }
%struct.TYPE_7__ = type { i32* }
%struct.TYPE_6__ = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }
%struct.TYPE_9__ = type { i8* }

@VLV_DISPLAY_BASE = common dso_local global i32 0, align 4
@PCH_DISPLAY_BASE = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@I2C_CLASS_DDC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"i915 gmbus %s\00", align 1
@gmbus_algorithm = common dso_local global i32 0, align 4
@gmbus_lock_ops = common dso_local global i32 0, align 4
@GMBUS_RATE_100KHZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @intel_gmbus_setup(%struct.drm_i915_private* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.intel_gmbus*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %3, align 8
  %8 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %9 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %8, i32 0, i32 4
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  store %struct.pci_dev* %11, %struct.pci_dev** %4, align 8
  %12 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %13 = call i32 @HAS_DISPLAY(%struct.drm_i915_private* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %151

16:                                               ; preds = %1
  %17 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %18 = call i64 @IS_VALLEYVIEW(%struct.drm_i915_private* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %16
  %21 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %22 = call i64 @IS_CHERRYVIEW(%struct.drm_i915_private* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %20, %16
  %25 = load i32, i32* @VLV_DISPLAY_BASE, align 4
  %26 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %27 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %26, i32 0, i32 3
  store i32 %25, i32* %27, align 8
  br label %37

28:                                               ; preds = %20
  %29 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %30 = call i32 @HAS_GMCH(%struct.drm_i915_private* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %28
  %33 = load i32, i32* @PCH_DISPLAY_BASE, align 4
  %34 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %35 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %34, i32 0, i32 3
  store i32 %33, i32* %35, align 8
  br label %36

36:                                               ; preds = %32, %28
  br label %37

37:                                               ; preds = %36, %24
  %38 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %39 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %38, i32 0, i32 2
  %40 = call i32 @mutex_init(i32* %39)
  %41 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %42 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %41, i32 0, i32 1
  %43 = call i32 @init_waitqueue_head(i32* %42)
  store i32 0, i32* %6, align 4
  br label %44

44:                                               ; preds = %122, %37
  %45 = load i32, i32* %6, align 4
  %46 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %47 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %46, i32 0, i32 0
  %48 = load %struct.intel_gmbus*, %struct.intel_gmbus** %47, align 8
  %49 = call i32 @ARRAY_SIZE(%struct.intel_gmbus* %48)
  %50 = icmp ult i32 %45, %49
  br i1 %50, label %51, label %125

51:                                               ; preds = %44
  %52 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %53 = load i32, i32* %6, align 4
  %54 = call i32 @intel_gmbus_is_valid_pin(%struct.drm_i915_private* %52, i32 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %51
  br label %122

57:                                               ; preds = %51
  %58 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %59 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %58, i32 0, i32 0
  %60 = load %struct.intel_gmbus*, %struct.intel_gmbus** %59, align 8
  %61 = load i32, i32* %6, align 4
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds %struct.intel_gmbus, %struct.intel_gmbus* %60, i64 %62
  store %struct.intel_gmbus* %63, %struct.intel_gmbus** %5, align 8
  %64 = load i32, i32* @THIS_MODULE, align 4
  %65 = load %struct.intel_gmbus*, %struct.intel_gmbus** %5, align 8
  %66 = getelementptr inbounds %struct.intel_gmbus, %struct.intel_gmbus* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 6
  store i32 %64, i32* %67, align 8
  %68 = load i32, i32* @I2C_CLASS_DDC, align 4
  %69 = load %struct.intel_gmbus*, %struct.intel_gmbus** %5, align 8
  %70 = getelementptr inbounds %struct.intel_gmbus, %struct.intel_gmbus* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 5
  store i32 %68, i32* %71, align 4
  %72 = load %struct.intel_gmbus*, %struct.intel_gmbus** %5, align 8
  %73 = getelementptr inbounds %struct.intel_gmbus, %struct.intel_gmbus* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 4
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %77 = load i32, i32* %6, align 4
  %78 = call %struct.TYPE_9__* @get_gmbus_pin(%struct.drm_i915_private* %76, i32 %77)
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 0
  %80 = load i8*, i8** %79, align 8
  %81 = call i32 @snprintf(i32 %75, i32 4, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %80)
  %82 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %83 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %82, i32 0, i32 0
  %84 = load %struct.intel_gmbus*, %struct.intel_gmbus** %5, align 8
  %85 = getelementptr inbounds %struct.intel_gmbus, %struct.intel_gmbus* %84, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 3
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 0
  store i32* %83, i32** %87, align 8
  %88 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %89 = load %struct.intel_gmbus*, %struct.intel_gmbus** %5, align 8
  %90 = getelementptr inbounds %struct.intel_gmbus, %struct.intel_gmbus* %89, i32 0, i32 3
  store %struct.drm_i915_private* %88, %struct.drm_i915_private** %90, align 8
  %91 = load %struct.intel_gmbus*, %struct.intel_gmbus** %5, align 8
  %92 = getelementptr inbounds %struct.intel_gmbus, %struct.intel_gmbus* %91, i32 0, i32 2
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 2
  store i32* @gmbus_algorithm, i32** %93, align 8
  %94 = load %struct.intel_gmbus*, %struct.intel_gmbus** %5, align 8
  %95 = getelementptr inbounds %struct.intel_gmbus, %struct.intel_gmbus* %94, i32 0, i32 2
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 1
  store i32* @gmbus_lock_ops, i32** %96, align 8
  %97 = load %struct.intel_gmbus*, %struct.intel_gmbus** %5, align 8
  %98 = getelementptr inbounds %struct.intel_gmbus, %struct.intel_gmbus* %97, i32 0, i32 2
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 0
  store i32 1, i32* %99, align 8
  %100 = load i32, i32* %6, align 4
  %101 = load i32, i32* @GMBUS_RATE_100KHZ, align 4
  %102 = or i32 %100, %101
  %103 = load %struct.intel_gmbus*, %struct.intel_gmbus** %5, align 8
  %104 = getelementptr inbounds %struct.intel_gmbus, %struct.intel_gmbus* %103, i32 0, i32 0
  store i32 %102, i32* %104, align 8
  %105 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %106 = call i64 @IS_I830(%struct.drm_i915_private* %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %57
  %109 = load %struct.intel_gmbus*, %struct.intel_gmbus** %5, align 8
  %110 = getelementptr inbounds %struct.intel_gmbus, %struct.intel_gmbus* %109, i32 0, i32 1
  store i32 1, i32* %110, align 4
  br label %111

111:                                              ; preds = %108, %57
  %112 = load %struct.intel_gmbus*, %struct.intel_gmbus** %5, align 8
  %113 = load i32, i32* %6, align 4
  %114 = call i32 @intel_gpio_setup(%struct.intel_gmbus* %112, i32 %113)
  %115 = load %struct.intel_gmbus*, %struct.intel_gmbus** %5, align 8
  %116 = getelementptr inbounds %struct.intel_gmbus, %struct.intel_gmbus* %115, i32 0, i32 2
  %117 = call i32 @i2c_add_adapter(%struct.TYPE_8__* %116)
  store i32 %117, i32* %7, align 4
  %118 = load i32, i32* %7, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %111
  br label %128

121:                                              ; preds = %111
  br label %122

122:                                              ; preds = %121, %56
  %123 = load i32, i32* %6, align 4
  %124 = add i32 %123, 1
  store i32 %124, i32* %6, align 4
  br label %44

125:                                              ; preds = %44
  %126 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %127 = call i32 @intel_gmbus_reset(%struct.drm_i915_private* %126)
  store i32 0, i32* %2, align 4
  br label %151

128:                                              ; preds = %120
  br label %129

129:                                              ; preds = %139, %138, %128
  %130 = load i32, i32* %6, align 4
  %131 = add i32 %130, -1
  store i32 %131, i32* %6, align 4
  %132 = icmp ne i32 %130, 0
  br i1 %132, label %133, label %149

133:                                              ; preds = %129
  %134 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %135 = load i32, i32* %6, align 4
  %136 = call i32 @intel_gmbus_is_valid_pin(%struct.drm_i915_private* %134, i32 %135)
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %139, label %138

138:                                              ; preds = %133
  br label %129

139:                                              ; preds = %133
  %140 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %141 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %140, i32 0, i32 0
  %142 = load %struct.intel_gmbus*, %struct.intel_gmbus** %141, align 8
  %143 = load i32, i32* %6, align 4
  %144 = zext i32 %143 to i64
  %145 = getelementptr inbounds %struct.intel_gmbus, %struct.intel_gmbus* %142, i64 %144
  store %struct.intel_gmbus* %145, %struct.intel_gmbus** %5, align 8
  %146 = load %struct.intel_gmbus*, %struct.intel_gmbus** %5, align 8
  %147 = getelementptr inbounds %struct.intel_gmbus, %struct.intel_gmbus* %146, i32 0, i32 2
  %148 = call i32 @i2c_del_adapter(%struct.TYPE_8__* %147)
  br label %129

149:                                              ; preds = %129
  %150 = load i32, i32* %7, align 4
  store i32 %150, i32* %2, align 4
  br label %151

151:                                              ; preds = %149, %125, %15
  %152 = load i32, i32* %2, align 4
  ret i32 %152
}

declare dso_local i32 @HAS_DISPLAY(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_VALLEYVIEW(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_CHERRYVIEW(%struct.drm_i915_private*) #1

declare dso_local i32 @HAS_GMCH(%struct.drm_i915_private*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.intel_gmbus*) #1

declare dso_local i32 @intel_gmbus_is_valid_pin(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*) #1

declare dso_local %struct.TYPE_9__* @get_gmbus_pin(%struct.drm_i915_private*, i32) #1

declare dso_local i64 @IS_I830(%struct.drm_i915_private*) #1

declare dso_local i32 @intel_gpio_setup(%struct.intel_gmbus*, i32) #1

declare dso_local i32 @i2c_add_adapter(%struct.TYPE_8__*) #1

declare dso_local i32 @intel_gmbus_reset(%struct.drm_i915_private*) #1

declare dso_local i32 @i2c_del_adapter(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
