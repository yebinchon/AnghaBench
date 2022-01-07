; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwtracing/intel_th/extr_core.c_intel_th_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwtracing/intel_th/extr_core.c_intel_th_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_th = type { i32, %struct.TYPE_4__** }
%struct.TYPE_4__ = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.intel_th_driver = type { i32 (%struct.TYPE_4__*)* }

@IRQ_NONE = common dso_local global i32 0, align 4
@INTEL_TH_OUTPUT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"nobody cared for irq\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @intel_th_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_th_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.intel_th*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.intel_th_driver*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.intel_th*
  store %struct.intel_th* %10, %struct.intel_th** %5, align 8
  %11 = load i32, i32* @IRQ_NONE, align 4
  store i32 %11, i32* %6, align 4
  store i32 0, i32* %8, align 4
  br label %12

12:                                               ; preds = %65, %2
  %13 = load i32, i32* %8, align 4
  %14 = load %struct.intel_th*, %struct.intel_th** %5, align 8
  %15 = getelementptr inbounds %struct.intel_th, %struct.intel_th* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %68

18:                                               ; preds = %12
  %19 = load %struct.intel_th*, %struct.intel_th** %5, align 8
  %20 = getelementptr inbounds %struct.intel_th, %struct.intel_th* %19, i32 0, i32 1
  %21 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %20, align 8
  %22 = load i32, i32* %8, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %21, i64 %23
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @INTEL_TH_OUTPUT, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %18
  br label %65

31:                                               ; preds = %18
  %32 = load %struct.intel_th*, %struct.intel_th** %5, align 8
  %33 = getelementptr inbounds %struct.intel_th, %struct.intel_th* %32, i32 0, i32 1
  %34 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %33, align 8
  %35 = load i32, i32* %8, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %34, i64 %36
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call %struct.intel_th_driver* @to_intel_th_driver(i32 %41)
  store %struct.intel_th_driver* %42, %struct.intel_th_driver** %7, align 8
  %43 = load %struct.intel_th_driver*, %struct.intel_th_driver** %7, align 8
  %44 = icmp ne %struct.intel_th_driver* %43, null
  br i1 %44, label %45, label %64

45:                                               ; preds = %31
  %46 = load %struct.intel_th_driver*, %struct.intel_th_driver** %7, align 8
  %47 = getelementptr inbounds %struct.intel_th_driver, %struct.intel_th_driver* %46, i32 0, i32 0
  %48 = load i32 (%struct.TYPE_4__*)*, i32 (%struct.TYPE_4__*)** %47, align 8
  %49 = icmp ne i32 (%struct.TYPE_4__*)* %48, null
  br i1 %49, label %50, label %64

50:                                               ; preds = %45
  %51 = load %struct.intel_th_driver*, %struct.intel_th_driver** %7, align 8
  %52 = getelementptr inbounds %struct.intel_th_driver, %struct.intel_th_driver* %51, i32 0, i32 0
  %53 = load i32 (%struct.TYPE_4__*)*, i32 (%struct.TYPE_4__*)** %52, align 8
  %54 = load %struct.intel_th*, %struct.intel_th** %5, align 8
  %55 = getelementptr inbounds %struct.intel_th, %struct.intel_th* %54, i32 0, i32 1
  %56 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %55, align 8
  %57 = load i32, i32* %8, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %56, i64 %58
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = call i32 %53(%struct.TYPE_4__* %60)
  %62 = load i32, i32* %6, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %6, align 4
  br label %64

64:                                               ; preds = %50, %45, %31
  br label %65

65:                                               ; preds = %64, %30
  %66 = load i32, i32* %8, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %8, align 4
  br label %12

68:                                               ; preds = %12
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* @IRQ_NONE, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %68
  %73 = call i32 @pr_warn_ratelimited(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %74

74:                                               ; preds = %72, %68
  %75 = load i32, i32* %6, align 4
  ret i32 %75
}

declare dso_local %struct.intel_th_driver* @to_intel_th_driver(i32) #1

declare dso_local i32 @pr_warn_ratelimited(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
