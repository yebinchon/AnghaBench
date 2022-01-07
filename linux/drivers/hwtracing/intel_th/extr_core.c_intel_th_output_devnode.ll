; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwtracing/intel_th/extr_core.c_intel_th_output_devnode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwtracing/intel_th/extr_core.c_intel_th_output_devnode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.intel_th_device = type { i64, i32 }
%struct.intel_th = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"intel_th%d/%s%d\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"intel_th%d/%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.device*, i32*, i32*, i32*)* @intel_th_output_devnode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @intel_th_output_devnode(%struct.device* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.intel_th_device*, align 8
  %10 = alloca %struct.intel_th*, align 8
  %11 = alloca i8*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %12 = load %struct.device*, %struct.device** %5, align 8
  %13 = call %struct.intel_th_device* @to_intel_th_device(%struct.device* %12)
  store %struct.intel_th_device* %13, %struct.intel_th_device** %9, align 8
  %14 = load %struct.intel_th_device*, %struct.intel_th_device** %9, align 8
  %15 = call %struct.intel_th* @to_intel_th(%struct.intel_th_device* %14)
  store %struct.intel_th* %15, %struct.intel_th** %10, align 8
  %16 = load %struct.intel_th_device*, %struct.intel_th_device** %9, align 8
  %17 = getelementptr inbounds %struct.intel_th_device, %struct.intel_th_device* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp sge i64 %18, 0
  br i1 %19, label %20, label %32

20:                                               ; preds = %4
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = load %struct.intel_th*, %struct.intel_th** %10, align 8
  %23 = getelementptr inbounds %struct.intel_th, %struct.intel_th* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.intel_th_device*, %struct.intel_th_device** %9, align 8
  %26 = getelementptr inbounds %struct.intel_th_device, %struct.intel_th_device* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.intel_th_device*, %struct.intel_th_device** %9, align 8
  %29 = getelementptr inbounds %struct.intel_th_device, %struct.intel_th_device* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = call i8* (i32, i8*, i32, i32, ...) @kasprintf(i32 %21, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %27, i64 %30)
  store i8* %31, i8** %11, align 8
  br label %41

32:                                               ; preds = %4
  %33 = load i32, i32* @GFP_KERNEL, align 4
  %34 = load %struct.intel_th*, %struct.intel_th** %10, align 8
  %35 = getelementptr inbounds %struct.intel_th, %struct.intel_th* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.intel_th_device*, %struct.intel_th_device** %9, align 8
  %38 = getelementptr inbounds %struct.intel_th_device, %struct.intel_th_device* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = call i8* (i32, i8*, i32, i32, ...) @kasprintf(i32 %33, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %36, i32 %39)
  store i8* %40, i8** %11, align 8
  br label %41

41:                                               ; preds = %32, %20
  %42 = load i8*, i8** %11, align 8
  ret i8* %42
}

declare dso_local %struct.intel_th_device* @to_intel_th_device(%struct.device*) #1

declare dso_local %struct.intel_th* @to_intel_th(%struct.intel_th_device*) #1

declare dso_local i8* @kasprintf(i32, i8*, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
