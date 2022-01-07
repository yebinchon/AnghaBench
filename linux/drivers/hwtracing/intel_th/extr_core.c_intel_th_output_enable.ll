; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwtracing/intel_th/extr_core.c_intel_th_output_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwtracing/intel_th/extr_core.c_intel_th_output_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32 }
%struct.intel_th = type { i32, %struct.intel_th_device** }
%struct.intel_th_device = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@intel_th_subdevices = common dso_local global %struct.TYPE_6__* null, align 8
@INTEL_TH_OUTPUT = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @intel_th_output_enable(%struct.intel_th* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.intel_th*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.intel_th_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.intel_th* %0, %struct.intel_th** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %9

9:                                                ; preds = %99, %2
  %10 = load i32, i32* %8, align 4
  %11 = load %struct.intel_th*, %struct.intel_th** %4, align 8
  %12 = getelementptr inbounds %struct.intel_th, %struct.intel_th* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp sle i32 %10, %13
  br i1 %14, label %15, label %104

15:                                               ; preds = %9
  br label %16

16:                                               ; preds = %42, %15
  %17 = load i32, i32* %7, align 4
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** @intel_th_subdevices, align 8
  %19 = call i32 @ARRAY_SIZE(%struct.TYPE_6__* %18)
  %20 = icmp slt i32 %17, %19
  br i1 %20, label %21, label %45

21:                                               ; preds = %16
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** @intel_th_subdevices, align 8
  %23 = load i32, i32* %7, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @INTEL_TH_OUTPUT, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %21
  br label %42

31:                                               ; preds = %21
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** @intel_th_subdevices, align 8
  %33 = load i32, i32* %7, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* %5, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %31
  br label %42

41:                                               ; preds = %31
  br label %45

42:                                               ; preds = %40, %30
  %43 = load i32, i32* %7, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %7, align 4
  br label %16

45:                                               ; preds = %41, %16
  %46 = load i32, i32* %7, align 4
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** @intel_th_subdevices, align 8
  %48 = call i32 @ARRAY_SIZE(%struct.TYPE_6__* %47)
  %49 = icmp eq i32 %46, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %45
  %51 = load i32, i32* @ENODEV, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %3, align 4
  br label %131

53:                                               ; preds = %45
  br label %54

54:                                               ; preds = %88, %53
  %55 = load i32, i32* %8, align 4
  %56 = load %struct.intel_th*, %struct.intel_th** %4, align 8
  %57 = getelementptr inbounds %struct.intel_th, %struct.intel_th* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp slt i32 %55, %58
  br i1 %59, label %60, label %91

60:                                               ; preds = %54
  %61 = load %struct.intel_th*, %struct.intel_th** %4, align 8
  %62 = getelementptr inbounds %struct.intel_th, %struct.intel_th* %61, i32 0, i32 1
  %63 = load %struct.intel_th_device**, %struct.intel_th_device*** %62, align 8
  %64 = load i32, i32* %8, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.intel_th_device*, %struct.intel_th_device** %63, i64 %65
  %67 = load %struct.intel_th_device*, %struct.intel_th_device** %66, align 8
  %68 = getelementptr inbounds %struct.intel_th_device, %struct.intel_th_device* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @INTEL_TH_OUTPUT, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %60
  br label %88

73:                                               ; preds = %60
  %74 = load %struct.intel_th*, %struct.intel_th** %4, align 8
  %75 = getelementptr inbounds %struct.intel_th, %struct.intel_th* %74, i32 0, i32 1
  %76 = load %struct.intel_th_device**, %struct.intel_th_device*** %75, align 8
  %77 = load i32, i32* %8, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.intel_th_device*, %struct.intel_th_device** %76, i64 %78
  %80 = load %struct.intel_th_device*, %struct.intel_th_device** %79, align 8
  %81 = getelementptr inbounds %struct.intel_th_device, %struct.intel_th_device* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* %5, align 4
  %85 = icmp ne i32 %83, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %73
  br label %88

87:                                               ; preds = %73
  br label %91

88:                                               ; preds = %86, %72
  %89 = load i32, i32* %8, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %8, align 4
  br label %54

91:                                               ; preds = %87, %54
  %92 = load i32, i32* %8, align 4
  %93 = load %struct.intel_th*, %struct.intel_th** %4, align 8
  %94 = getelementptr inbounds %struct.intel_th, %struct.intel_th* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = icmp eq i32 %92, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %91
  br label %107

98:                                               ; preds = %91
  br label %99

99:                                               ; preds = %98
  %100 = load i32, i32* %7, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %7, align 4
  %102 = load i32, i32* %8, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %8, align 4
  br label %9

104:                                              ; preds = %9
  %105 = load i32, i32* @ENODEV, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %3, align 4
  br label %131

107:                                              ; preds = %97
  %108 = load %struct.intel_th*, %struct.intel_th** %4, align 8
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** @intel_th_subdevices, align 8
  %110 = load i32, i32* %7, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i64 %111
  %113 = call %struct.intel_th_device* @intel_th_subdevice_alloc(%struct.intel_th* %108, %struct.TYPE_6__* %112)
  store %struct.intel_th_device* %113, %struct.intel_th_device** %6, align 8
  %114 = load %struct.intel_th_device*, %struct.intel_th_device** %6, align 8
  %115 = call i64 @IS_ERR(%struct.intel_th_device* %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %107
  %118 = load %struct.intel_th_device*, %struct.intel_th_device** %6, align 8
  %119 = call i32 @PTR_ERR(%struct.intel_th_device* %118)
  store i32 %119, i32* %3, align 4
  br label %131

120:                                              ; preds = %107
  %121 = load %struct.intel_th_device*, %struct.intel_th_device** %6, align 8
  %122 = load %struct.intel_th*, %struct.intel_th** %4, align 8
  %123 = getelementptr inbounds %struct.intel_th, %struct.intel_th* %122, i32 0, i32 1
  %124 = load %struct.intel_th_device**, %struct.intel_th_device*** %123, align 8
  %125 = load %struct.intel_th*, %struct.intel_th** %4, align 8
  %126 = getelementptr inbounds %struct.intel_th, %struct.intel_th* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %126, align 8
  %129 = sext i32 %127 to i64
  %130 = getelementptr inbounds %struct.intel_th_device*, %struct.intel_th_device** %124, i64 %129
  store %struct.intel_th_device* %121, %struct.intel_th_device** %130, align 8
  store i32 0, i32* %3, align 4
  br label %131

131:                                              ; preds = %120, %117, %104, %50
  %132 = load i32, i32* %3, align 4
  ret i32 %132
}

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_6__*) #1

declare dso_local %struct.intel_th_device* @intel_th_subdevice_alloc(%struct.intel_th*, %struct.TYPE_6__*) #1

declare dso_local i64 @IS_ERR(%struct.intel_th_device*) #1

declare dso_local i32 @PTR_ERR(%struct.intel_th_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
