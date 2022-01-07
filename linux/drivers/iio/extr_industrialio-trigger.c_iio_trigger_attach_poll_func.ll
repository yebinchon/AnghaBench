; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/extr_industrialio-trigger.c_iio_trigger_attach_poll_func.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/extr_industrialio-trigger.c_iio_trigger_attach_poll_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_trigger = type { i32, %struct.TYPE_7__, %struct.TYPE_5__*, i32, i32 }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_5__ = type { i32 (%struct.iio_trigger*, i32)* }
%struct.iio_poll_func = type { i64, %struct.TYPE_8__*, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }

@CONFIG_IIO_CONSUMERS_PER_TRIGGER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [109 x i8] c"Could not find an available irq for trigger %s, CONFIG_IIO_CONSUMERS_PER_TRIGGER=%d limit might be exceeded\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_trigger*, %struct.iio_poll_func*)* @iio_trigger_attach_poll_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iio_trigger_attach_poll_func(%struct.iio_trigger* %0, %struct.iio_poll_func* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iio_trigger*, align 8
  %5 = alloca %struct.iio_poll_func*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.iio_trigger* %0, %struct.iio_trigger** %4, align 8
  store %struct.iio_poll_func* %1, %struct.iio_poll_func** %5, align 8
  store i32 0, i32* %6, align 4
  %8 = load %struct.iio_trigger*, %struct.iio_trigger** %4, align 8
  %9 = getelementptr inbounds %struct.iio_trigger, %struct.iio_trigger* %8, i32 0, i32 4
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @CONFIG_IIO_CONSUMERS_PER_TRIGGER, align 4
  %12 = call i32 @bitmap_empty(i32 %10, i32 %11)
  store i32 %12, i32* %7, align 4
  %13 = load %struct.iio_poll_func*, %struct.iio_poll_func** %5, align 8
  %14 = getelementptr inbounds %struct.iio_poll_func, %struct.iio_poll_func* %13, i32 0, i32 1
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @__module_get(i32 %17)
  %19 = load %struct.iio_trigger*, %struct.iio_trigger** %4, align 8
  %20 = call i64 @iio_trigger_get_irq(%struct.iio_trigger* %19)
  %21 = load %struct.iio_poll_func*, %struct.iio_poll_func** %5, align 8
  %22 = getelementptr inbounds %struct.iio_poll_func, %struct.iio_poll_func* %21, i32 0, i32 0
  store i64 %20, i64* %22, align 8
  %23 = load %struct.iio_poll_func*, %struct.iio_poll_func** %5, align 8
  %24 = getelementptr inbounds %struct.iio_poll_func, %struct.iio_poll_func* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp slt i64 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %2
  %28 = load %struct.iio_trigger*, %struct.iio_trigger** %4, align 8
  %29 = getelementptr inbounds %struct.iio_trigger, %struct.iio_trigger* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @CONFIG_IIO_CONSUMERS_PER_TRIGGER, align 4
  %32 = call i32 @pr_err(i8* getelementptr inbounds ([109 x i8], [109 x i8]* @.str, i64 0, i64 0), i32 %30, i32 %31)
  br label %110

33:                                               ; preds = %2
  %34 = load %struct.iio_poll_func*, %struct.iio_poll_func** %5, align 8
  %35 = getelementptr inbounds %struct.iio_poll_func, %struct.iio_poll_func* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.iio_poll_func*, %struct.iio_poll_func** %5, align 8
  %38 = getelementptr inbounds %struct.iio_poll_func, %struct.iio_poll_func* %37, i32 0, i32 5
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.iio_poll_func*, %struct.iio_poll_func** %5, align 8
  %41 = getelementptr inbounds %struct.iio_poll_func, %struct.iio_poll_func* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.iio_poll_func*, %struct.iio_poll_func** %5, align 8
  %44 = getelementptr inbounds %struct.iio_poll_func, %struct.iio_poll_func* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.iio_poll_func*, %struct.iio_poll_func** %5, align 8
  %47 = getelementptr inbounds %struct.iio_poll_func, %struct.iio_poll_func* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.iio_poll_func*, %struct.iio_poll_func** %5, align 8
  %50 = call i32 @request_threaded_irq(i64 %36, i32 %39, i32 %42, i32 %45, i32 %48, %struct.iio_poll_func* %49)
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* %6, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %33
  br label %104

54:                                               ; preds = %33
  %55 = load %struct.iio_trigger*, %struct.iio_trigger** %4, align 8
  %56 = getelementptr inbounds %struct.iio_trigger, %struct.iio_trigger* %55, i32 0, i32 2
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %56, align 8
  %58 = icmp ne %struct.TYPE_5__* %57, null
  br i1 %58, label %59, label %81

59:                                               ; preds = %54
  %60 = load %struct.iio_trigger*, %struct.iio_trigger** %4, align 8
  %61 = getelementptr inbounds %struct.iio_trigger, %struct.iio_trigger* %60, i32 0, i32 2
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = load i32 (%struct.iio_trigger*, i32)*, i32 (%struct.iio_trigger*, i32)** %63, align 8
  %65 = icmp ne i32 (%struct.iio_trigger*, i32)* %64, null
  br i1 %65, label %66, label %81

66:                                               ; preds = %59
  %67 = load i32, i32* %7, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %81

69:                                               ; preds = %66
  %70 = load %struct.iio_trigger*, %struct.iio_trigger** %4, align 8
  %71 = getelementptr inbounds %struct.iio_trigger, %struct.iio_trigger* %70, i32 0, i32 2
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  %74 = load i32 (%struct.iio_trigger*, i32)*, i32 (%struct.iio_trigger*, i32)** %73, align 8
  %75 = load %struct.iio_trigger*, %struct.iio_trigger** %4, align 8
  %76 = call i32 %74(%struct.iio_trigger* %75, i32 1)
  store i32 %76, i32* %6, align 4
  %77 = load i32, i32* %6, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %69
  br label %98

80:                                               ; preds = %69
  br label %81

81:                                               ; preds = %80, %66, %59, %54
  %82 = load %struct.iio_poll_func*, %struct.iio_poll_func** %5, align 8
  %83 = getelementptr inbounds %struct.iio_poll_func, %struct.iio_poll_func* %82, i32 0, i32 1
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.iio_trigger*, %struct.iio_trigger** %4, align 8
  %89 = getelementptr inbounds %struct.iio_trigger, %struct.iio_trigger* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = icmp eq i64 %87, %91
  br i1 %92, label %93, label %96

93:                                               ; preds = %81
  %94 = load %struct.iio_trigger*, %struct.iio_trigger** %4, align 8
  %95 = getelementptr inbounds %struct.iio_trigger, %struct.iio_trigger* %94, i32 0, i32 0
  store i32 1, i32* %95, align 8
  br label %96

96:                                               ; preds = %93, %81
  %97 = load i32, i32* %6, align 4
  store i32 %97, i32* %3, align 4
  br label %118

98:                                               ; preds = %79
  %99 = load %struct.iio_poll_func*, %struct.iio_poll_func** %5, align 8
  %100 = getelementptr inbounds %struct.iio_poll_func, %struct.iio_poll_func* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load %struct.iio_poll_func*, %struct.iio_poll_func** %5, align 8
  %103 = call i32 @free_irq(i64 %101, %struct.iio_poll_func* %102)
  br label %104

104:                                              ; preds = %98, %53
  %105 = load %struct.iio_trigger*, %struct.iio_trigger** %4, align 8
  %106 = load %struct.iio_poll_func*, %struct.iio_poll_func** %5, align 8
  %107 = getelementptr inbounds %struct.iio_poll_func, %struct.iio_poll_func* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = call i32 @iio_trigger_put_irq(%struct.iio_trigger* %105, i64 %108)
  br label %110

110:                                              ; preds = %104, %27
  %111 = load %struct.iio_poll_func*, %struct.iio_poll_func** %5, align 8
  %112 = getelementptr inbounds %struct.iio_poll_func, %struct.iio_poll_func* %111, i32 0, i32 1
  %113 = load %struct.TYPE_8__*, %struct.TYPE_8__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @module_put(i32 %115)
  %117 = load i32, i32* %6, align 4
  store i32 %117, i32* %3, align 4
  br label %118

118:                                              ; preds = %110, %96
  %119 = load i32, i32* %3, align 4
  ret i32 %119
}

declare dso_local i32 @bitmap_empty(i32, i32) #1

declare dso_local i32 @__module_get(i32) #1

declare dso_local i64 @iio_trigger_get_irq(%struct.iio_trigger*) #1

declare dso_local i32 @pr_err(i8*, i32, i32) #1

declare dso_local i32 @request_threaded_irq(i64, i32, i32, i32, i32, %struct.iio_poll_func*) #1

declare dso_local i32 @free_irq(i64, %struct.iio_poll_func*) #1

declare dso_local i32 @iio_trigger_put_irq(%struct.iio_trigger*, i64) #1

declare dso_local i32 @module_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
