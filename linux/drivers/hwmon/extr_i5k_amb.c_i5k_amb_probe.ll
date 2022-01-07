; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_i5k_amb.c_i5k_amb_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_i5k_amb.c_i5k_amb_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64 }
%struct.platform_device = type { i32 }
%struct.i5k_amb_data = type { i32, i32, i32, i32* }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@chipset_ids = common dso_local global %struct.TYPE_2__* null, align 8
@DRVNAME = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @i5k_amb_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i5k_amb_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.i5k_amb_data*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.i5k_amb_data* @kzalloc(i32 24, i32 %8)
  store %struct.i5k_amb_data* %9, %struct.i5k_amb_data** %4, align 8
  %10 = load %struct.i5k_amb_data*, %struct.i5k_amb_data** %4, align 8
  %11 = icmp ne %struct.i5k_amb_data* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %129

15:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  br label %16

16:                                               ; preds = %31, %15
  %17 = load %struct.i5k_amb_data*, %struct.i5k_amb_data** %4, align 8
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** @chipset_ids, align 8
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @i5k_find_amb_registers(%struct.i5k_amb_data* %17, i64 %23)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %16
  br label %39

28:                                               ; preds = %16
  %29 = load i32, i32* %6, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %6, align 4
  br label %31

31:                                               ; preds = %28
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** @chipset_ids, align 8
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %16, label %39

39:                                               ; preds = %31, %27
  %40 = load i32, i32* %7, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %39
  br label %125

43:                                               ; preds = %39
  %44 = load %struct.i5k_amb_data*, %struct.i5k_amb_data** %4, align 8
  %45 = getelementptr inbounds %struct.i5k_amb_data, %struct.i5k_amb_data* %44, i32 0, i32 3
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 0
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** @chipset_ids, align 8
  %49 = load i32, i32* %6, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @i5k_channel_probe(i32* %47, i64 %53)
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* %7, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %43
  br label %125

58:                                               ; preds = %43
  %59 = load %struct.i5k_amb_data*, %struct.i5k_amb_data** %4, align 8
  %60 = getelementptr inbounds %struct.i5k_amb_data, %struct.i5k_amb_data* %59, i32 0, i32 3
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 2
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** @chipset_ids, align 8
  %64 = load i32, i32* %6, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = add nsw i64 %68, 1
  %70 = call i32 @i5k_channel_probe(i32* %62, i64 %69)
  %71 = load %struct.i5k_amb_data*, %struct.i5k_amb_data** %4, align 8
  %72 = getelementptr inbounds %struct.i5k_amb_data, %struct.i5k_amb_data* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.i5k_amb_data*, %struct.i5k_amb_data** %4, align 8
  %75 = getelementptr inbounds %struct.i5k_amb_data, %struct.i5k_amb_data* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @DRVNAME, align 4
  %78 = call %struct.resource* @request_mem_region(i32 %73, i32 %76, i32 %77)
  store %struct.resource* %78, %struct.resource** %5, align 8
  %79 = load %struct.resource*, %struct.resource** %5, align 8
  %80 = icmp ne %struct.resource* %79, null
  br i1 %80, label %84, label %81

81:                                               ; preds = %58
  %82 = load i32, i32* @EBUSY, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %7, align 4
  br label %125

84:                                               ; preds = %58
  %85 = load %struct.i5k_amb_data*, %struct.i5k_amb_data** %4, align 8
  %86 = getelementptr inbounds %struct.i5k_amb_data, %struct.i5k_amb_data* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.i5k_amb_data*, %struct.i5k_amb_data** %4, align 8
  %89 = getelementptr inbounds %struct.i5k_amb_data, %struct.i5k_amb_data* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @ioremap_nocache(i32 %87, i32 %90)
  %92 = load %struct.i5k_amb_data*, %struct.i5k_amb_data** %4, align 8
  %93 = getelementptr inbounds %struct.i5k_amb_data, %struct.i5k_amb_data* %92, i32 0, i32 2
  store i32 %91, i32* %93, align 8
  %94 = load %struct.i5k_amb_data*, %struct.i5k_amb_data** %4, align 8
  %95 = getelementptr inbounds %struct.i5k_amb_data, %struct.i5k_amb_data* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %101, label %98

98:                                               ; preds = %84
  %99 = load i32, i32* @EBUSY, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %7, align 4
  br label %117

101:                                              ; preds = %84
  %102 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %103 = load %struct.i5k_amb_data*, %struct.i5k_amb_data** %4, align 8
  %104 = call i32 @platform_set_drvdata(%struct.platform_device* %102, %struct.i5k_amb_data* %103)
  %105 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %106 = call i32 @i5k_amb_hwmon_init(%struct.platform_device* %105)
  store i32 %106, i32* %7, align 4
  %107 = load i32, i32* %7, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %101
  br label %112

110:                                              ; preds = %101
  %111 = load i32, i32* %7, align 4
  store i32 %111, i32* %2, align 4
  br label %129

112:                                              ; preds = %109
  %113 = load %struct.i5k_amb_data*, %struct.i5k_amb_data** %4, align 8
  %114 = getelementptr inbounds %struct.i5k_amb_data, %struct.i5k_amb_data* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @iounmap(i32 %115)
  br label %117

117:                                              ; preds = %112, %98
  %118 = load %struct.i5k_amb_data*, %struct.i5k_amb_data** %4, align 8
  %119 = getelementptr inbounds %struct.i5k_amb_data, %struct.i5k_amb_data* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.i5k_amb_data*, %struct.i5k_amb_data** %4, align 8
  %122 = getelementptr inbounds %struct.i5k_amb_data, %struct.i5k_amb_data* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = call i32 @release_mem_region(i32 %120, i32 %123)
  br label %125

125:                                              ; preds = %117, %81, %57, %42
  %126 = load %struct.i5k_amb_data*, %struct.i5k_amb_data** %4, align 8
  %127 = call i32 @kfree(%struct.i5k_amb_data* %126)
  %128 = load i32, i32* %7, align 4
  store i32 %128, i32* %2, align 4
  br label %129

129:                                              ; preds = %125, %110, %12
  %130 = load i32, i32* %2, align 4
  ret i32 %130
}

declare dso_local %struct.i5k_amb_data* @kzalloc(i32, i32) #1

declare dso_local i32 @i5k_find_amb_registers(%struct.i5k_amb_data*, i64) #1

declare dso_local i32 @i5k_channel_probe(i32*, i64) #1

declare dso_local %struct.resource* @request_mem_region(i32, i32, i32) #1

declare dso_local i32 @ioremap_nocache(i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.i5k_amb_data*) #1

declare dso_local i32 @i5k_amb_hwmon_init(%struct.platform_device*) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @release_mem_region(i32, i32) #1

declare dso_local i32 @kfree(%struct.i5k_amb_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
