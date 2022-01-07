; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwtracing/intel_th/extr_core.c_intel_th_populate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwtracing/intel_th/extr_core.c_intel_th_populate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_th_subdevice = type { i64, i64 }
%struct.intel_th = type { i32, %struct.intel_th_device** }
%struct.intel_th_device = type { i32 }

@intel_th_subdevices = common dso_local global %struct.intel_th_subdevice* null, align 8
@host_mode_only = common dso_local global i32 0, align 4
@host_mode = common dso_local global i64 0, align 8
@INTEL_TH_OUTPUT = common dso_local global i64 0, align 8
@GTH_NONE = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_th*)* @intel_th_populate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_th_populate(%struct.intel_th* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intel_th*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.intel_th_subdevice*, align 8
  %6 = alloca %struct.intel_th_device*, align 8
  store %struct.intel_th* %0, %struct.intel_th** %3, align 8
  store i32 0, i32* %4, align 4
  br label %7

7:                                                ; preds = %72, %1
  %8 = load i32, i32* %4, align 4
  %9 = load %struct.intel_th_subdevice*, %struct.intel_th_subdevice** @intel_th_subdevices, align 8
  %10 = call i32 @ARRAY_SIZE(%struct.intel_th_subdevice* %9)
  %11 = icmp slt i32 %8, %10
  br i1 %11, label %12, label %75

12:                                               ; preds = %7
  %13 = load %struct.intel_th_subdevice*, %struct.intel_th_subdevice** @intel_th_subdevices, align 8
  %14 = load i32, i32* %4, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.intel_th_subdevice, %struct.intel_th_subdevice* %13, i64 %15
  store %struct.intel_th_subdevice* %16, %struct.intel_th_subdevice** %5, align 8
  %17 = load %struct.intel_th*, %struct.intel_th** %3, align 8
  %18 = load i32, i32* @host_mode_only, align 4
  %19 = call i64 @INTEL_TH_CAP(%struct.intel_th* %17, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %12
  %22 = load i64, i64* @host_mode, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %21, %12
  %25 = load %struct.intel_th_subdevice*, %struct.intel_th_subdevice** %5, align 8
  %26 = getelementptr inbounds %struct.intel_th_subdevice, %struct.intel_th_subdevice* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @INTEL_TH_OUTPUT, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  br label %72

31:                                               ; preds = %24, %21
  %32 = load %struct.intel_th_subdevice*, %struct.intel_th_subdevice** %5, align 8
  %33 = getelementptr inbounds %struct.intel_th_subdevice, %struct.intel_th_subdevice* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @INTEL_TH_OUTPUT, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %44

37:                                               ; preds = %31
  %38 = load %struct.intel_th_subdevice*, %struct.intel_th_subdevice** %5, align 8
  %39 = getelementptr inbounds %struct.intel_th_subdevice, %struct.intel_th_subdevice* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @GTH_NONE, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  br label %72

44:                                               ; preds = %37, %31
  %45 = load %struct.intel_th*, %struct.intel_th** %3, align 8
  %46 = load %struct.intel_th_subdevice*, %struct.intel_th_subdevice** %5, align 8
  %47 = call %struct.intel_th_device* @intel_th_subdevice_alloc(%struct.intel_th* %45, %struct.intel_th_subdevice* %46)
  store %struct.intel_th_device* %47, %struct.intel_th_device** %6, align 8
  %48 = load %struct.intel_th_device*, %struct.intel_th_device** %6, align 8
  %49 = call i64 @IS_ERR(%struct.intel_th_device* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %61

51:                                               ; preds = %44
  %52 = load %struct.intel_th_device*, %struct.intel_th_device** %6, align 8
  %53 = call i32 @PTR_ERR(%struct.intel_th_device* %52)
  %54 = load i32, i32* @ENODEV, align 4
  %55 = sub nsw i32 0, %54
  %56 = icmp eq i32 %53, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %51
  br label %72

58:                                               ; preds = %51
  %59 = load %struct.intel_th_device*, %struct.intel_th_device** %6, align 8
  %60 = call i32 @PTR_ERR(%struct.intel_th_device* %59)
  store i32 %60, i32* %2, align 4
  br label %76

61:                                               ; preds = %44
  %62 = load %struct.intel_th_device*, %struct.intel_th_device** %6, align 8
  %63 = load %struct.intel_th*, %struct.intel_th** %3, align 8
  %64 = getelementptr inbounds %struct.intel_th, %struct.intel_th* %63, i32 0, i32 1
  %65 = load %struct.intel_th_device**, %struct.intel_th_device*** %64, align 8
  %66 = load %struct.intel_th*, %struct.intel_th** %3, align 8
  %67 = getelementptr inbounds %struct.intel_th, %struct.intel_th* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %67, align 8
  %70 = sext i32 %68 to i64
  %71 = getelementptr inbounds %struct.intel_th_device*, %struct.intel_th_device** %65, i64 %70
  store %struct.intel_th_device* %62, %struct.intel_th_device** %71, align 8
  br label %72

72:                                               ; preds = %61, %57, %43, %30
  %73 = load i32, i32* %4, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %4, align 4
  br label %7

75:                                               ; preds = %7
  store i32 0, i32* %2, align 4
  br label %76

76:                                               ; preds = %75, %58
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

declare dso_local i32 @ARRAY_SIZE(%struct.intel_th_subdevice*) #1

declare dso_local i64 @INTEL_TH_CAP(%struct.intel_th*, i32) #1

declare dso_local %struct.intel_th_device* @intel_th_subdevice_alloc(%struct.intel_th*, %struct.intel_th_subdevice*) #1

declare dso_local i64 @IS_ERR(%struct.intel_th_device*) #1

declare dso_local i32 @PTR_ERR(%struct.intel_th_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
