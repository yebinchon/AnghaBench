; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/display/komeda/extr_komeda_dev.c_komeda_dev_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/display/komeda/extr_komeda_dev.c_komeda_dev_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.komeda_dev = type { i32, i32*, i32*, i32**, i32*, %struct.komeda_dev_funcs*, i32, %struct.device* }
%struct.komeda_dev_funcs = type { i32 (%struct.komeda_dev.0*)*, i32 (%struct.komeda_dev.1*)* }
%struct.komeda_dev.0 = type opaque
%struct.komeda_dev.1 = type opaque
%struct.device = type { i32 }

@komeda_sysfs_attr_group = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @komeda_dev_destroy(%struct.komeda_dev* %0) #0 {
  %2 = alloca %struct.komeda_dev*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.komeda_dev_funcs*, align 8
  %5 = alloca i32, align 4
  store %struct.komeda_dev* %0, %struct.komeda_dev** %2, align 8
  %6 = load %struct.komeda_dev*, %struct.komeda_dev** %2, align 8
  %7 = getelementptr inbounds %struct.komeda_dev, %struct.komeda_dev* %6, i32 0, i32 7
  %8 = load %struct.device*, %struct.device** %7, align 8
  store %struct.device* %8, %struct.device** %3, align 8
  %9 = load %struct.komeda_dev*, %struct.komeda_dev** %2, align 8
  %10 = getelementptr inbounds %struct.komeda_dev, %struct.komeda_dev* %9, i32 0, i32 5
  %11 = load %struct.komeda_dev_funcs*, %struct.komeda_dev_funcs** %10, align 8
  store %struct.komeda_dev_funcs* %11, %struct.komeda_dev_funcs** %4, align 8
  %12 = load %struct.device*, %struct.device** %3, align 8
  %13 = getelementptr inbounds %struct.device, %struct.device* %12, i32 0, i32 0
  %14 = call i32 @sysfs_remove_group(i32* %13, i32* @komeda_sysfs_attr_group)
  %15 = load %struct.komeda_dev*, %struct.komeda_dev** %2, align 8
  %16 = getelementptr inbounds %struct.komeda_dev, %struct.komeda_dev* %15, i32 0, i32 4
  %17 = load i32*, i32** %16, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %35

19:                                               ; preds = %1
  %20 = load %struct.komeda_dev*, %struct.komeda_dev** %2, align 8
  %21 = getelementptr inbounds %struct.komeda_dev, %struct.komeda_dev* %20, i32 0, i32 5
  %22 = load %struct.komeda_dev_funcs*, %struct.komeda_dev_funcs** %21, align 8
  %23 = getelementptr inbounds %struct.komeda_dev_funcs, %struct.komeda_dev_funcs* %22, i32 0, i32 1
  %24 = load i32 (%struct.komeda_dev.1*)*, i32 (%struct.komeda_dev.1*)** %23, align 8
  %25 = icmp ne i32 (%struct.komeda_dev.1*)* %24, null
  br i1 %25, label %26, label %35

26:                                               ; preds = %19
  %27 = load %struct.komeda_dev*, %struct.komeda_dev** %2, align 8
  %28 = getelementptr inbounds %struct.komeda_dev, %struct.komeda_dev* %27, i32 0, i32 5
  %29 = load %struct.komeda_dev_funcs*, %struct.komeda_dev_funcs** %28, align 8
  %30 = getelementptr inbounds %struct.komeda_dev_funcs, %struct.komeda_dev_funcs* %29, i32 0, i32 1
  %31 = load i32 (%struct.komeda_dev.1*)*, i32 (%struct.komeda_dev.1*)** %30, align 8
  %32 = load %struct.komeda_dev*, %struct.komeda_dev** %2, align 8
  %33 = bitcast %struct.komeda_dev* %32 to %struct.komeda_dev.1*
  %34 = call i32 %31(%struct.komeda_dev.1* %33)
  br label %35

35:                                               ; preds = %26, %19, %1
  %36 = load %struct.komeda_dev*, %struct.komeda_dev** %2, align 8
  %37 = getelementptr inbounds %struct.komeda_dev, %struct.komeda_dev* %36, i32 0, i32 4
  store i32* null, i32** %37, align 8
  store i32 0, i32* %5, align 4
  br label %38

38:                                               ; preds = %60, %35
  %39 = load i32, i32* %5, align 4
  %40 = load %struct.komeda_dev*, %struct.komeda_dev** %2, align 8
  %41 = getelementptr inbounds %struct.komeda_dev, %struct.komeda_dev* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp slt i32 %39, %42
  br i1 %43, label %44, label %63

44:                                               ; preds = %38
  %45 = load %struct.komeda_dev*, %struct.komeda_dev** %2, align 8
  %46 = load %struct.komeda_dev*, %struct.komeda_dev** %2, align 8
  %47 = getelementptr inbounds %struct.komeda_dev, %struct.komeda_dev* %46, i32 0, i32 3
  %48 = load i32**, i32*** %47, align 8
  %49 = load i32, i32* %5, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32*, i32** %48, i64 %50
  %52 = load i32*, i32** %51, align 8
  %53 = call i32 @komeda_pipeline_destroy(%struct.komeda_dev* %45, i32* %52)
  %54 = load %struct.komeda_dev*, %struct.komeda_dev** %2, align 8
  %55 = getelementptr inbounds %struct.komeda_dev, %struct.komeda_dev* %54, i32 0, i32 3
  %56 = load i32**, i32*** %55, align 8
  %57 = load i32, i32* %5, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32*, i32** %56, i64 %58
  store i32* null, i32** %59, align 8
  br label %60

60:                                               ; preds = %44
  %61 = load i32, i32* %5, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %5, align 4
  br label %38

63:                                               ; preds = %38
  %64 = load %struct.komeda_dev*, %struct.komeda_dev** %2, align 8
  %65 = getelementptr inbounds %struct.komeda_dev, %struct.komeda_dev* %64, i32 0, i32 0
  store i32 0, i32* %65, align 8
  %66 = load %struct.device*, %struct.device** %3, align 8
  %67 = call i32 @of_reserved_mem_device_release(%struct.device* %66)
  %68 = load %struct.komeda_dev_funcs*, %struct.komeda_dev_funcs** %4, align 8
  %69 = icmp ne %struct.komeda_dev_funcs* %68, null
  br i1 %69, label %70, label %82

70:                                               ; preds = %63
  %71 = load %struct.komeda_dev_funcs*, %struct.komeda_dev_funcs** %4, align 8
  %72 = getelementptr inbounds %struct.komeda_dev_funcs, %struct.komeda_dev_funcs* %71, i32 0, i32 0
  %73 = load i32 (%struct.komeda_dev.0*)*, i32 (%struct.komeda_dev.0*)** %72, align 8
  %74 = icmp ne i32 (%struct.komeda_dev.0*)* %73, null
  br i1 %74, label %75, label %82

75:                                               ; preds = %70
  %76 = load %struct.komeda_dev_funcs*, %struct.komeda_dev_funcs** %4, align 8
  %77 = getelementptr inbounds %struct.komeda_dev_funcs, %struct.komeda_dev_funcs* %76, i32 0, i32 0
  %78 = load i32 (%struct.komeda_dev.0*)*, i32 (%struct.komeda_dev.0*)** %77, align 8
  %79 = load %struct.komeda_dev*, %struct.komeda_dev** %2, align 8
  %80 = bitcast %struct.komeda_dev* %79 to %struct.komeda_dev.0*
  %81 = call i32 %78(%struct.komeda_dev.0* %80)
  br label %82

82:                                               ; preds = %75, %70, %63
  %83 = load %struct.komeda_dev*, %struct.komeda_dev** %2, align 8
  %84 = getelementptr inbounds %struct.komeda_dev, %struct.komeda_dev* %83, i32 0, i32 2
  %85 = load i32*, i32** %84, align 8
  %86 = icmp ne i32* %85, null
  br i1 %86, label %87, label %95

87:                                               ; preds = %82
  %88 = load %struct.device*, %struct.device** %3, align 8
  %89 = load %struct.komeda_dev*, %struct.komeda_dev** %2, align 8
  %90 = getelementptr inbounds %struct.komeda_dev, %struct.komeda_dev* %89, i32 0, i32 2
  %91 = load i32*, i32** %90, align 8
  %92 = call i32 @devm_iounmap(%struct.device* %88, i32* %91)
  %93 = load %struct.komeda_dev*, %struct.komeda_dev** %2, align 8
  %94 = getelementptr inbounds %struct.komeda_dev, %struct.komeda_dev* %93, i32 0, i32 2
  store i32* null, i32** %94, align 8
  br label %95

95:                                               ; preds = %87, %82
  %96 = load %struct.komeda_dev*, %struct.komeda_dev** %2, align 8
  %97 = getelementptr inbounds %struct.komeda_dev, %struct.komeda_dev* %96, i32 0, i32 1
  %98 = load i32*, i32** %97, align 8
  %99 = icmp ne i32* %98, null
  br i1 %99, label %100, label %112

100:                                              ; preds = %95
  %101 = load %struct.komeda_dev*, %struct.komeda_dev** %2, align 8
  %102 = getelementptr inbounds %struct.komeda_dev, %struct.komeda_dev* %101, i32 0, i32 1
  %103 = load i32*, i32** %102, align 8
  %104 = call i32 @clk_disable_unprepare(i32* %103)
  %105 = load %struct.device*, %struct.device** %3, align 8
  %106 = load %struct.komeda_dev*, %struct.komeda_dev** %2, align 8
  %107 = getelementptr inbounds %struct.komeda_dev, %struct.komeda_dev* %106, i32 0, i32 1
  %108 = load i32*, i32** %107, align 8
  %109 = call i32 @devm_clk_put(%struct.device* %105, i32* %108)
  %110 = load %struct.komeda_dev*, %struct.komeda_dev** %2, align 8
  %111 = getelementptr inbounds %struct.komeda_dev, %struct.komeda_dev* %110, i32 0, i32 1
  store i32* null, i32** %111, align 8
  br label %112

112:                                              ; preds = %100, %95
  %113 = load %struct.device*, %struct.device** %3, align 8
  %114 = load %struct.komeda_dev*, %struct.komeda_dev** %2, align 8
  %115 = call i32 @devm_kfree(%struct.device* %113, %struct.komeda_dev* %114)
  ret void
}

declare dso_local i32 @sysfs_remove_group(i32*, i32*) #1

declare dso_local i32 @komeda_pipeline_destroy(%struct.komeda_dev*, i32*) #1

declare dso_local i32 @of_reserved_mem_device_release(%struct.device*) #1

declare dso_local i32 @devm_iounmap(%struct.device*, i32*) #1

declare dso_local i32 @clk_disable_unprepare(i32*) #1

declare dso_local i32 @devm_clk_put(%struct.device*, i32*) #1

declare dso_local i32 @devm_kfree(%struct.device*, %struct.komeda_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
