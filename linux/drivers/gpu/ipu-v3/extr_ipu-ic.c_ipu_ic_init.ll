; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/ipu-v3/extr_ipu-ic.c_ipu_ic_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/ipu-v3/extr_ipu-ic.c_ipu_ic_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipu_soc = type { %struct.ipu_ic_priv* }
%struct.ipu_ic_priv = type { %struct.TYPE_2__*, %struct.ipu_soc*, i8*, i8*, i32 }
%struct.TYPE_2__ = type { i32, i32*, i32*, %struct.ipu_ic_priv* }
%struct.device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@SZ_64K = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"IC base: 0x%08lx remapped to %p\0A\00", align 1
@IC_NUM_TASKS = common dso_local global i32 0, align 4
@ic_task_reg = common dso_local global i32* null, align 8
@ic_task_bit = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipu_ic_init(%struct.ipu_soc* %0, %struct.device* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ipu_soc*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.ipu_ic_priv*, align 8
  %11 = alloca i32, align 4
  store %struct.ipu_soc* %0, %struct.ipu_soc** %6, align 8
  store %struct.device* %1, %struct.device** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load %struct.device*, %struct.device** %7, align 8
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.ipu_ic_priv* @devm_kzalloc(%struct.device* %12, i32 40, i32 %13)
  store %struct.ipu_ic_priv* %14, %struct.ipu_ic_priv** %10, align 8
  %15 = load %struct.ipu_ic_priv*, %struct.ipu_ic_priv** %10, align 8
  %16 = icmp ne %struct.ipu_ic_priv* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %4
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %5, align 4
  br label %111

20:                                               ; preds = %4
  %21 = load %struct.ipu_ic_priv*, %struct.ipu_ic_priv** %10, align 8
  %22 = load %struct.ipu_soc*, %struct.ipu_soc** %6, align 8
  %23 = getelementptr inbounds %struct.ipu_soc, %struct.ipu_soc* %22, i32 0, i32 0
  store %struct.ipu_ic_priv* %21, %struct.ipu_ic_priv** %23, align 8
  %24 = load %struct.ipu_ic_priv*, %struct.ipu_ic_priv** %10, align 8
  %25 = getelementptr inbounds %struct.ipu_ic_priv, %struct.ipu_ic_priv* %24, i32 0, i32 4
  %26 = call i32 @spin_lock_init(i32* %25)
  %27 = load %struct.device*, %struct.device** %7, align 8
  %28 = load i64, i64* %8, align 8
  %29 = load i32, i32* @PAGE_SIZE, align 4
  %30 = call i8* @devm_ioremap(%struct.device* %27, i64 %28, i32 %29)
  %31 = load %struct.ipu_ic_priv*, %struct.ipu_ic_priv** %10, align 8
  %32 = getelementptr inbounds %struct.ipu_ic_priv, %struct.ipu_ic_priv* %31, i32 0, i32 2
  store i8* %30, i8** %32, align 8
  %33 = load %struct.ipu_ic_priv*, %struct.ipu_ic_priv** %10, align 8
  %34 = getelementptr inbounds %struct.ipu_ic_priv, %struct.ipu_ic_priv* %33, i32 0, i32 2
  %35 = load i8*, i8** %34, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %20
  %38 = load i32, i32* @ENOMEM, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %5, align 4
  br label %111

40:                                               ; preds = %20
  %41 = load %struct.device*, %struct.device** %7, align 8
  %42 = load i64, i64* %9, align 8
  %43 = load i32, i32* @SZ_64K, align 4
  %44 = call i8* @devm_ioremap(%struct.device* %41, i64 %42, i32 %43)
  %45 = load %struct.ipu_ic_priv*, %struct.ipu_ic_priv** %10, align 8
  %46 = getelementptr inbounds %struct.ipu_ic_priv, %struct.ipu_ic_priv* %45, i32 0, i32 3
  store i8* %44, i8** %46, align 8
  %47 = load %struct.ipu_ic_priv*, %struct.ipu_ic_priv** %10, align 8
  %48 = getelementptr inbounds %struct.ipu_ic_priv, %struct.ipu_ic_priv* %47, i32 0, i32 3
  %49 = load i8*, i8** %48, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %54, label %51

51:                                               ; preds = %40
  %52 = load i32, i32* @ENOMEM, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %5, align 4
  br label %111

54:                                               ; preds = %40
  %55 = load %struct.device*, %struct.device** %7, align 8
  %56 = load i64, i64* %8, align 8
  %57 = load %struct.ipu_ic_priv*, %struct.ipu_ic_priv** %10, align 8
  %58 = getelementptr inbounds %struct.ipu_ic_priv, %struct.ipu_ic_priv* %57, i32 0, i32 2
  %59 = load i8*, i8** %58, align 8
  %60 = call i32 @dev_dbg(%struct.device* %55, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i64 %56, i8* %59)
  %61 = load %struct.ipu_soc*, %struct.ipu_soc** %6, align 8
  %62 = load %struct.ipu_ic_priv*, %struct.ipu_ic_priv** %10, align 8
  %63 = getelementptr inbounds %struct.ipu_ic_priv, %struct.ipu_ic_priv* %62, i32 0, i32 1
  store %struct.ipu_soc* %61, %struct.ipu_soc** %63, align 8
  store i32 0, i32* %11, align 4
  br label %64

64:                                               ; preds = %107, %54
  %65 = load i32, i32* %11, align 4
  %66 = load i32, i32* @IC_NUM_TASKS, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %110

68:                                               ; preds = %64
  %69 = load i32, i32* %11, align 4
  %70 = load %struct.ipu_ic_priv*, %struct.ipu_ic_priv** %10, align 8
  %71 = getelementptr inbounds %struct.ipu_ic_priv, %struct.ipu_ic_priv* %70, i32 0, i32 0
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = load i32, i32* %11, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  store i32 %69, i32* %76, align 8
  %77 = load %struct.ipu_ic_priv*, %struct.ipu_ic_priv** %10, align 8
  %78 = load %struct.ipu_ic_priv*, %struct.ipu_ic_priv** %10, align 8
  %79 = getelementptr inbounds %struct.ipu_ic_priv, %struct.ipu_ic_priv* %78, i32 0, i32 0
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = load i32, i32* %11, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 3
  store %struct.ipu_ic_priv* %77, %struct.ipu_ic_priv** %84, align 8
  %85 = load i32*, i32** @ic_task_reg, align 8
  %86 = load i32, i32* %11, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  %89 = load %struct.ipu_ic_priv*, %struct.ipu_ic_priv** %10, align 8
  %90 = getelementptr inbounds %struct.ipu_ic_priv, %struct.ipu_ic_priv* %89, i32 0, i32 0
  %91 = load %struct.TYPE_2__*, %struct.TYPE_2__** %90, align 8
  %92 = load i32, i32* %11, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 2
  store i32* %88, i32** %95, align 8
  %96 = load i32*, i32** @ic_task_bit, align 8
  %97 = load i32, i32* %11, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  %100 = load %struct.ipu_ic_priv*, %struct.ipu_ic_priv** %10, align 8
  %101 = getelementptr inbounds %struct.ipu_ic_priv, %struct.ipu_ic_priv* %100, i32 0, i32 0
  %102 = load %struct.TYPE_2__*, %struct.TYPE_2__** %101, align 8
  %103 = load i32, i32* %11, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 1
  store i32* %99, i32** %106, align 8
  br label %107

107:                                              ; preds = %68
  %108 = load i32, i32* %11, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %11, align 4
  br label %64

110:                                              ; preds = %64
  store i32 0, i32* %5, align 4
  br label %111

111:                                              ; preds = %110, %51, %37, %17
  %112 = load i32, i32* %5, align 4
  ret i32 %112
}

declare dso_local %struct.ipu_ic_priv* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i8* @devm_ioremap(%struct.device*, i64, i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
