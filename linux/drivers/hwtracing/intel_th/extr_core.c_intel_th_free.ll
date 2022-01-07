; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwtracing/intel_th/extr_core.c_intel_th_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwtracing/intel_th/extr_core.c_intel_th_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_th = type { i32, i32, i32, i32, i32**, i32* }

@TH_POSSIBLE_OUTPUTS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"intel_th/output\00", align 1
@intel_th_ida = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intel_th_free(%struct.intel_th* %0) #0 {
  %2 = alloca %struct.intel_th*, align 8
  %3 = alloca i32, align 4
  store %struct.intel_th* %0, %struct.intel_th** %2, align 8
  %4 = load %struct.intel_th*, %struct.intel_th** %2, align 8
  %5 = call i32 @intel_th_request_hub_module_flush(%struct.intel_th* %4)
  %6 = load %struct.intel_th*, %struct.intel_th** %2, align 8
  %7 = getelementptr inbounds %struct.intel_th, %struct.intel_th* %6, i32 0, i32 5
  %8 = load i32*, i32** %7, align 8
  %9 = call i32 @intel_th_device_remove(i32* %8)
  store i32 0, i32* %3, align 4
  br label %10

10:                                               ; preds = %44, %1
  %11 = load i32, i32* %3, align 4
  %12 = load %struct.intel_th*, %struct.intel_th** %2, align 8
  %13 = getelementptr inbounds %struct.intel_th, %struct.intel_th* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %47

16:                                               ; preds = %10
  %17 = load %struct.intel_th*, %struct.intel_th** %2, align 8
  %18 = getelementptr inbounds %struct.intel_th, %struct.intel_th* %17, i32 0, i32 4
  %19 = load i32**, i32*** %18, align 8
  %20 = load i32, i32* %3, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32*, i32** %19, i64 %21
  %23 = load i32*, i32** %22, align 8
  %24 = load %struct.intel_th*, %struct.intel_th** %2, align 8
  %25 = getelementptr inbounds %struct.intel_th, %struct.intel_th* %24, i32 0, i32 5
  %26 = load i32*, i32** %25, align 8
  %27 = icmp ne i32* %23, %26
  br i1 %27, label %28, label %37

28:                                               ; preds = %16
  %29 = load %struct.intel_th*, %struct.intel_th** %2, align 8
  %30 = getelementptr inbounds %struct.intel_th, %struct.intel_th* %29, i32 0, i32 4
  %31 = load i32**, i32*** %30, align 8
  %32 = load i32, i32* %3, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32*, i32** %31, i64 %33
  %35 = load i32*, i32** %34, align 8
  %36 = call i32 @intel_th_device_remove(i32* %35)
  br label %37

37:                                               ; preds = %28, %16
  %38 = load %struct.intel_th*, %struct.intel_th** %2, align 8
  %39 = getelementptr inbounds %struct.intel_th, %struct.intel_th* %38, i32 0, i32 4
  %40 = load i32**, i32*** %39, align 8
  %41 = load i32, i32* %3, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32*, i32** %40, i64 %42
  store i32* null, i32** %43, align 8
  br label %44

44:                                               ; preds = %37
  %45 = load i32, i32* %3, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %3, align 4
  br label %10

47:                                               ; preds = %10
  %48 = load %struct.intel_th*, %struct.intel_th** %2, align 8
  %49 = getelementptr inbounds %struct.intel_th, %struct.intel_th* %48, i32 0, i32 0
  store i32 0, i32* %49, align 8
  %50 = load %struct.intel_th*, %struct.intel_th** %2, align 8
  %51 = getelementptr inbounds %struct.intel_th, %struct.intel_th* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @pm_runtime_get_sync(i32 %52)
  %54 = load %struct.intel_th*, %struct.intel_th** %2, align 8
  %55 = getelementptr inbounds %struct.intel_th, %struct.intel_th* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @pm_runtime_forbid(i32 %56)
  %58 = load %struct.intel_th*, %struct.intel_th** %2, align 8
  %59 = getelementptr inbounds %struct.intel_th, %struct.intel_th* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @TH_POSSIBLE_OUTPUTS, align 4
  %62 = call i32 @__unregister_chrdev(i32 %60, i32 0, i32 %61, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %63 = load %struct.intel_th*, %struct.intel_th** %2, align 8
  %64 = getelementptr inbounds %struct.intel_th, %struct.intel_th* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @ida_simple_remove(i32* @intel_th_ida, i32 %65)
  %67 = load %struct.intel_th*, %struct.intel_th** %2, align 8
  %68 = call i32 @kfree(%struct.intel_th* %67)
  ret void
}

declare dso_local i32 @intel_th_request_hub_module_flush(%struct.intel_th*) #1

declare dso_local i32 @intel_th_device_remove(i32*) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @pm_runtime_forbid(i32) #1

declare dso_local i32 @__unregister_chrdev(i32, i32, i32, i8*) #1

declare dso_local i32 @ida_simple_remove(i32*, i32) #1

declare dso_local i32 @kfree(%struct.intel_th*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
