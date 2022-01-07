; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/rmi4/extr_rmi_f11.c_rmi_f11_attention.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/rmi4/extr_rmi_f11.c_rmi_f11_attention.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rmi_function = type { %struct.TYPE_4__, i32, %struct.rmi_device* }
%struct.TYPE_4__ = type { i32 }
%struct.rmi_device = type { i32 }
%struct.rmi_driver_data = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i64 }
%struct.f11_data = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32 }

@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @rmi_f11_attention to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rmi_f11_attention(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.rmi_function*, align 8
  %7 = alloca %struct.rmi_device*, align 8
  %8 = alloca %struct.rmi_driver_data*, align 8
  %9 = alloca %struct.f11_data*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = bitcast i8* %13 to %struct.rmi_function*
  store %struct.rmi_function* %14, %struct.rmi_function** %6, align 8
  %15 = load %struct.rmi_function*, %struct.rmi_function** %6, align 8
  %16 = getelementptr inbounds %struct.rmi_function, %struct.rmi_function* %15, i32 0, i32 2
  %17 = load %struct.rmi_device*, %struct.rmi_device** %16, align 8
  store %struct.rmi_device* %17, %struct.rmi_device** %7, align 8
  %18 = load %struct.rmi_device*, %struct.rmi_device** %7, align 8
  %19 = getelementptr inbounds %struct.rmi_device, %struct.rmi_device* %18, i32 0, i32 0
  %20 = call i8* @dev_get_drvdata(i32* %19)
  %21 = bitcast i8* %20 to %struct.rmi_driver_data*
  store %struct.rmi_driver_data* %21, %struct.rmi_driver_data** %8, align 8
  %22 = load %struct.rmi_function*, %struct.rmi_function** %6, align 8
  %23 = getelementptr inbounds %struct.rmi_function, %struct.rmi_function* %22, i32 0, i32 1
  %24 = call i8* @dev_get_drvdata(i32* %23)
  %25 = bitcast i8* %24 to %struct.f11_data*
  store %struct.f11_data* %25, %struct.f11_data** %9, align 8
  %26 = load %struct.rmi_function*, %struct.rmi_function** %6, align 8
  %27 = getelementptr inbounds %struct.rmi_function, %struct.rmi_function* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %10, align 4
  %30 = load %struct.f11_data*, %struct.f11_data** %9, align 8
  %31 = getelementptr inbounds %struct.f11_data, %struct.f11_data* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %12, align 4
  %34 = load %struct.rmi_driver_data*, %struct.rmi_driver_data** %8, align 8
  %35 = getelementptr inbounds %struct.rmi_driver_data, %struct.rmi_driver_data* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %83

39:                                               ; preds = %2
  %40 = load %struct.f11_data*, %struct.f11_data** %9, align 8
  %41 = getelementptr inbounds %struct.f11_data, %struct.f11_data* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.rmi_driver_data*, %struct.rmi_driver_data** %8, align 8
  %45 = getelementptr inbounds %struct.rmi_driver_data, %struct.rmi_driver_data* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp sgt i32 %43, %47
  br i1 %48, label %49, label %54

49:                                               ; preds = %39
  %50 = load %struct.rmi_driver_data*, %struct.rmi_driver_data** %8, align 8
  %51 = getelementptr inbounds %struct.rmi_driver_data, %struct.rmi_driver_data* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  store i32 %53, i32* %12, align 4
  br label %59

54:                                               ; preds = %39
  %55 = load %struct.f11_data*, %struct.f11_data** %9, align 8
  %56 = getelementptr inbounds %struct.f11_data, %struct.f11_data* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %12, align 4
  br label %59

59:                                               ; preds = %54, %49
  %60 = load %struct.f11_data*, %struct.f11_data** %9, align 8
  %61 = getelementptr inbounds %struct.f11_data, %struct.f11_data* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.rmi_driver_data*, %struct.rmi_driver_data** %8, align 8
  %65 = getelementptr inbounds %struct.rmi_driver_data, %struct.rmi_driver_data* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load i32, i32* %12, align 4
  %69 = call i32 @memcpy(i32 %63, i64 %67, i32 %68)
  %70 = load i32, i32* %12, align 4
  %71 = sext i32 %70 to i64
  %72 = load %struct.rmi_driver_data*, %struct.rmi_driver_data** %8, align 8
  %73 = getelementptr inbounds %struct.rmi_driver_data, %struct.rmi_driver_data* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = add nsw i64 %75, %71
  store i64 %76, i64* %74, align 8
  %77 = load i32, i32* %12, align 4
  %78 = load %struct.rmi_driver_data*, %struct.rmi_driver_data** %8, align 8
  %79 = getelementptr inbounds %struct.rmi_driver_data, %struct.rmi_driver_data* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = sub nsw i32 %81, %77
  store i32 %82, i32* %80, align 8
  br label %101

83:                                               ; preds = %2
  %84 = load %struct.rmi_device*, %struct.rmi_device** %7, align 8
  %85 = load i32, i32* %10, align 4
  %86 = load %struct.f11_data*, %struct.f11_data** %9, align 8
  %87 = getelementptr inbounds %struct.f11_data, %struct.f11_data* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.f11_data*, %struct.f11_data** %9, align 8
  %91 = getelementptr inbounds %struct.f11_data, %struct.f11_data* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @rmi_read_block(%struct.rmi_device* %84, i32 %85, i32 %89, i32 %93)
  store i32 %94, i32* %11, align 4
  %95 = load i32, i32* %11, align 4
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %83
  %98 = load i32, i32* %11, align 4
  %99 = call i32 @IRQ_RETVAL(i32 %98)
  store i32 %99, i32* %3, align 4
  br label %108

100:                                              ; preds = %83
  br label %101

101:                                              ; preds = %100, %59
  %102 = load %struct.f11_data*, %struct.f11_data** %9, align 8
  %103 = load %struct.f11_data*, %struct.f11_data** %9, align 8
  %104 = getelementptr inbounds %struct.f11_data, %struct.f11_data* %103, i32 0, i32 0
  %105 = load i32, i32* %12, align 4
  %106 = call i32 @rmi_f11_finger_handler(%struct.f11_data* %102, %struct.TYPE_6__* %104, i32 %105)
  %107 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %107, i32* %3, align 4
  br label %108

108:                                              ; preds = %101, %97
  %109 = load i32, i32* %3, align 4
  ret i32 %109
}

declare dso_local i8* @dev_get_drvdata(i32*) #1

declare dso_local i32 @memcpy(i32, i64, i32) #1

declare dso_local i32 @rmi_read_block(%struct.rmi_device*, i32, i32, i32) #1

declare dso_local i32 @IRQ_RETVAL(i32) #1

declare dso_local i32 @rmi_f11_finger_handler(%struct.f11_data*, %struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
