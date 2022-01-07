; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_falcon.c_falcon_load_firmware.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_falcon.c_falcon_load_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.falcon = type { %struct.TYPE_4__, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, %struct.firmware* }
%struct.firmware = type { i32 }
%struct.TYPE_3__ = type { i32 (%struct.falcon*, i32, i32, i32)*, i32 (%struct.falcon*, i32, i32*)* }

@.str = private unnamed_addr constant [27 x i8] c"DMA memory mapping failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"failed to parse firmware image\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @falcon_load_firmware(%struct.falcon* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.falcon*, align 8
  %4 = alloca %struct.firmware*, align 8
  %5 = alloca i32, align 4
  store %struct.falcon* %0, %struct.falcon** %3, align 8
  %6 = load %struct.falcon*, %struct.falcon** %3, align 8
  %7 = getelementptr inbounds %struct.falcon, %struct.falcon* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 3
  %9 = load %struct.firmware*, %struct.firmware** %8, align 8
  store %struct.firmware* %9, %struct.firmware** %4, align 8
  %10 = load %struct.firmware*, %struct.firmware** %4, align 8
  %11 = getelementptr inbounds %struct.firmware, %struct.firmware* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.falcon*, %struct.falcon** %3, align 8
  %14 = getelementptr inbounds %struct.falcon, %struct.falcon* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 2
  store i32 %12, i32* %15, align 8
  %16 = load %struct.falcon*, %struct.falcon** %3, align 8
  %17 = getelementptr inbounds %struct.falcon, %struct.falcon* %16, i32 0, i32 1
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  %20 = load i32 (%struct.falcon*, i32, i32*)*, i32 (%struct.falcon*, i32, i32*)** %19, align 8
  %21 = load %struct.falcon*, %struct.falcon** %3, align 8
  %22 = load %struct.firmware*, %struct.firmware** %4, align 8
  %23 = getelementptr inbounds %struct.firmware, %struct.firmware* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.falcon*, %struct.falcon** %3, align 8
  %26 = getelementptr inbounds %struct.falcon, %struct.falcon* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = call i32 %20(%struct.falcon* %21, i32 %24, i32* %27)
  %29 = load %struct.falcon*, %struct.falcon** %3, align 8
  %30 = getelementptr inbounds %struct.falcon, %struct.falcon* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  store i32 %28, i32* %31, align 8
  %32 = load %struct.falcon*, %struct.falcon** %3, align 8
  %33 = getelementptr inbounds %struct.falcon, %struct.falcon* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i64 @IS_ERR(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %48

38:                                               ; preds = %1
  %39 = load %struct.falcon*, %struct.falcon** %3, align 8
  %40 = getelementptr inbounds %struct.falcon, %struct.falcon* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @dev_err(i32 %41, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %43 = load %struct.falcon*, %struct.falcon** %3, align 8
  %44 = getelementptr inbounds %struct.falcon, %struct.falcon* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @PTR_ERR(i32 %46)
  store i32 %47, i32* %2, align 4
  br label %88

48:                                               ; preds = %1
  %49 = load %struct.falcon*, %struct.falcon** %3, align 8
  %50 = load %struct.firmware*, %struct.firmware** %4, align 8
  %51 = call i32 @falcon_copy_firmware_image(%struct.falcon* %49, %struct.firmware* %50)
  %52 = load %struct.falcon*, %struct.falcon** %3, align 8
  %53 = call i32 @falcon_parse_firmware_image(%struct.falcon* %52)
  store i32 %53, i32* %5, align 4
  %54 = load i32, i32* %5, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %48
  %57 = load %struct.falcon*, %struct.falcon** %3, align 8
  %58 = getelementptr inbounds %struct.falcon, %struct.falcon* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @dev_err(i32 %59, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %67

61:                                               ; preds = %48
  %62 = load %struct.firmware*, %struct.firmware** %4, align 8
  %63 = call i32 @release_firmware(%struct.firmware* %62)
  %64 = load %struct.falcon*, %struct.falcon** %3, align 8
  %65 = getelementptr inbounds %struct.falcon, %struct.falcon* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 3
  store %struct.firmware* null, %struct.firmware** %66, align 8
  store i32 0, i32* %2, align 4
  br label %88

67:                                               ; preds = %56
  %68 = load %struct.falcon*, %struct.falcon** %3, align 8
  %69 = getelementptr inbounds %struct.falcon, %struct.falcon* %68, i32 0, i32 1
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load i32 (%struct.falcon*, i32, i32, i32)*, i32 (%struct.falcon*, i32, i32, i32)** %71, align 8
  %73 = load %struct.falcon*, %struct.falcon** %3, align 8
  %74 = load %struct.falcon*, %struct.falcon** %3, align 8
  %75 = getelementptr inbounds %struct.falcon, %struct.falcon* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.falcon*, %struct.falcon** %3, align 8
  %79 = getelementptr inbounds %struct.falcon, %struct.falcon* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.falcon*, %struct.falcon** %3, align 8
  %83 = getelementptr inbounds %struct.falcon, %struct.falcon* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = call i32 %72(%struct.falcon* %73, i32 %77, i32 %81, i32 %85)
  %87 = load i32, i32* %5, align 4
  store i32 %87, i32* %2, align 4
  br label %88

88:                                               ; preds = %67, %61, %38
  %89 = load i32, i32* %2, align 4
  ret i32 %89
}

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @falcon_copy_firmware_image(%struct.falcon*, %struct.firmware*) #1

declare dso_local i32 @falcon_parse_firmware_image(%struct.falcon*) #1

declare dso_local i32 @release_firmware(%struct.firmware*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
