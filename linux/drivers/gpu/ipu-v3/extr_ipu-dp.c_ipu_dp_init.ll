; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/ipu-v3/extr_ipu-dp.c_ipu_dp_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/ipu-v3/extr_ipu-dp.c_ipu_dp_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipu_soc = type { %struct.ipu_dp_priv* }
%struct.ipu_dp_priv = type { %struct.TYPE_6__*, i64, i32, %struct.ipu_soc*, %struct.device* }
%struct.TYPE_6__ = type { %struct.ipu_dp_priv*, i64, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32, i8* }
%struct.TYPE_4__ = type { i8* }
%struct.device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@IPUV3_NUM_FLOWS = common dso_local global i32 0, align 4
@IPUV3_COLORSPACE_UNKNOWN = common dso_local global i8* null, align 8
@ipu_dp_flow_base = common dso_local global i64* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipu_dp_init(%struct.ipu_soc* %0, %struct.device* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ipu_soc*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.ipu_dp_priv*, align 8
  %9 = alloca i32, align 4
  store %struct.ipu_soc* %0, %struct.ipu_soc** %5, align 8
  store %struct.device* %1, %struct.device** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load %struct.device*, %struct.device** %6, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.ipu_dp_priv* @devm_kzalloc(%struct.device* %10, i32 40, i32 %11)
  store %struct.ipu_dp_priv* %12, %struct.ipu_dp_priv** %8, align 8
  %13 = load %struct.ipu_dp_priv*, %struct.ipu_dp_priv** %8, align 8
  %14 = icmp ne %struct.ipu_dp_priv* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %104

18:                                               ; preds = %3
  %19 = load %struct.device*, %struct.device** %6, align 8
  %20 = load %struct.ipu_dp_priv*, %struct.ipu_dp_priv** %8, align 8
  %21 = getelementptr inbounds %struct.ipu_dp_priv, %struct.ipu_dp_priv* %20, i32 0, i32 4
  store %struct.device* %19, %struct.device** %21, align 8
  %22 = load %struct.ipu_soc*, %struct.ipu_soc** %5, align 8
  %23 = load %struct.ipu_dp_priv*, %struct.ipu_dp_priv** %8, align 8
  %24 = getelementptr inbounds %struct.ipu_dp_priv, %struct.ipu_dp_priv* %23, i32 0, i32 3
  store %struct.ipu_soc* %22, %struct.ipu_soc** %24, align 8
  %25 = load %struct.ipu_dp_priv*, %struct.ipu_dp_priv** %8, align 8
  %26 = load %struct.ipu_soc*, %struct.ipu_soc** %5, align 8
  %27 = getelementptr inbounds %struct.ipu_soc, %struct.ipu_soc* %26, i32 0, i32 0
  store %struct.ipu_dp_priv* %25, %struct.ipu_dp_priv** %27, align 8
  %28 = load %struct.device*, %struct.device** %6, align 8
  %29 = load i64, i64* %7, align 8
  %30 = load i32, i32* @PAGE_SIZE, align 4
  %31 = call i64 @devm_ioremap(%struct.device* %28, i64 %29, i32 %30)
  %32 = load %struct.ipu_dp_priv*, %struct.ipu_dp_priv** %8, align 8
  %33 = getelementptr inbounds %struct.ipu_dp_priv, %struct.ipu_dp_priv* %32, i32 0, i32 1
  store i64 %31, i64* %33, align 8
  %34 = load %struct.ipu_dp_priv*, %struct.ipu_dp_priv** %8, align 8
  %35 = getelementptr inbounds %struct.ipu_dp_priv, %struct.ipu_dp_priv* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %18
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %4, align 4
  br label %104

41:                                               ; preds = %18
  %42 = load %struct.ipu_dp_priv*, %struct.ipu_dp_priv** %8, align 8
  %43 = getelementptr inbounds %struct.ipu_dp_priv, %struct.ipu_dp_priv* %42, i32 0, i32 2
  %44 = call i32 @mutex_init(i32* %43)
  store i32 0, i32* %9, align 4
  br label %45

45:                                               ; preds = %100, %41
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* @IPUV3_NUM_FLOWS, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %103

49:                                               ; preds = %45
  %50 = load i8*, i8** @IPUV3_COLORSPACE_UNKNOWN, align 8
  %51 = load %struct.ipu_dp_priv*, %struct.ipu_dp_priv** %8, align 8
  %52 = getelementptr inbounds %struct.ipu_dp_priv, %struct.ipu_dp_priv* %51, i32 0, i32 0
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %52, align 8
  %54 = load i32, i32* %9, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 3
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  store i8* %50, i8** %58, align 8
  %59 = load i8*, i8** @IPUV3_COLORSPACE_UNKNOWN, align 8
  %60 = load %struct.ipu_dp_priv*, %struct.ipu_dp_priv** %8, align 8
  %61 = getelementptr inbounds %struct.ipu_dp_priv, %struct.ipu_dp_priv* %60, i32 0, i32 0
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %61, align 8
  %63 = load i32, i32* %9, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 1
  store i8* %59, i8** %67, align 8
  %68 = load %struct.ipu_dp_priv*, %struct.ipu_dp_priv** %8, align 8
  %69 = getelementptr inbounds %struct.ipu_dp_priv, %struct.ipu_dp_priv* %68, i32 0, i32 0
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %69, align 8
  %71 = load i32, i32* %9, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  store i32 1, i32* %75, align 8
  %76 = load %struct.ipu_dp_priv*, %struct.ipu_dp_priv** %8, align 8
  %77 = getelementptr inbounds %struct.ipu_dp_priv, %struct.ipu_dp_priv* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = load i64*, i64** @ipu_dp_flow_base, align 8
  %80 = load i32, i32* %9, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i64, i64* %79, i64 %81
  %83 = load i64, i64* %82, align 8
  %84 = add nsw i64 %78, %83
  %85 = load %struct.ipu_dp_priv*, %struct.ipu_dp_priv** %8, align 8
  %86 = getelementptr inbounds %struct.ipu_dp_priv, %struct.ipu_dp_priv* %85, i32 0, i32 0
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %86, align 8
  %88 = load i32, i32* %9, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 1
  store i64 %84, i64* %91, align 8
  %92 = load %struct.ipu_dp_priv*, %struct.ipu_dp_priv** %8, align 8
  %93 = load %struct.ipu_dp_priv*, %struct.ipu_dp_priv** %8, align 8
  %94 = getelementptr inbounds %struct.ipu_dp_priv, %struct.ipu_dp_priv* %93, i32 0, i32 0
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %94, align 8
  %96 = load i32, i32* %9, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 0
  store %struct.ipu_dp_priv* %92, %struct.ipu_dp_priv** %99, align 8
  br label %100

100:                                              ; preds = %49
  %101 = load i32, i32* %9, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %9, align 4
  br label %45

103:                                              ; preds = %45
  store i32 0, i32* %4, align 4
  br label %104

104:                                              ; preds = %103, %38, %15
  %105 = load i32, i32* %4, align 4
  ret i32 %105
}

declare dso_local %struct.ipu_dp_priv* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i64 @devm_ioremap(%struct.device*, i64, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
