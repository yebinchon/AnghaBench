; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/ux500/cryp/extr_cryp.c_cryp_configure_key_values.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/ux500/cryp/extr_cryp.c_cryp_configure_key_values.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cryp_device_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.cryp_key_value = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cryp_configure_key_values(%struct.cryp_device_data* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cryp_key_value, align 4
  %6 = alloca %struct.cryp_device_data*, align 8
  %7 = alloca i32, align 4
  %8 = bitcast %struct.cryp_key_value* %5 to i64*
  store i64 %2, i64* %8, align 4
  store %struct.cryp_device_data* %0, %struct.cryp_device_data** %6, align 8
  store i32 %1, i32* %7, align 4
  br label %9

9:                                                ; preds = %13, %3
  %10 = load %struct.cryp_device_data*, %struct.cryp_device_data** %6, align 8
  %11 = call i64 @cryp_is_logic_busy(%struct.cryp_device_data* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  %14 = call i32 (...) @cpu_relax()
  br label %9

15:                                               ; preds = %9
  %16 = load i32, i32* %7, align 4
  switch i32 %16, label %77 [
    i32 131, label %17
    i32 130, label %32
    i32 129, label %47
    i32 128, label %62
  ]

17:                                               ; preds = %15
  %18 = getelementptr inbounds %struct.cryp_key_value, %struct.cryp_key_value* %5, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.cryp_device_data*, %struct.cryp_device_data** %6, align 8
  %21 = getelementptr inbounds %struct.cryp_device_data, %struct.cryp_device_data* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 7
  %24 = call i32 @writel_relaxed(i32 %19, i32* %23)
  %25 = getelementptr inbounds %struct.cryp_key_value, %struct.cryp_key_value* %5, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.cryp_device_data*, %struct.cryp_device_data** %6, align 8
  %28 = getelementptr inbounds %struct.cryp_device_data, %struct.cryp_device_data* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 6
  %31 = call i32 @writel_relaxed(i32 %26, i32* %30)
  br label %80

32:                                               ; preds = %15
  %33 = getelementptr inbounds %struct.cryp_key_value, %struct.cryp_key_value* %5, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.cryp_device_data*, %struct.cryp_device_data** %6, align 8
  %36 = getelementptr inbounds %struct.cryp_device_data, %struct.cryp_device_data* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 5
  %39 = call i32 @writel_relaxed(i32 %34, i32* %38)
  %40 = getelementptr inbounds %struct.cryp_key_value, %struct.cryp_key_value* %5, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.cryp_device_data*, %struct.cryp_device_data** %6, align 8
  %43 = getelementptr inbounds %struct.cryp_device_data, %struct.cryp_device_data* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 4
  %46 = call i32 @writel_relaxed(i32 %41, i32* %45)
  br label %80

47:                                               ; preds = %15
  %48 = getelementptr inbounds %struct.cryp_key_value, %struct.cryp_key_value* %5, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.cryp_device_data*, %struct.cryp_device_data** %6, align 8
  %51 = getelementptr inbounds %struct.cryp_device_data, %struct.cryp_device_data* %50, i32 0, i32 0
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 3
  %54 = call i32 @writel_relaxed(i32 %49, i32* %53)
  %55 = getelementptr inbounds %struct.cryp_key_value, %struct.cryp_key_value* %5, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.cryp_device_data*, %struct.cryp_device_data** %6, align 8
  %58 = getelementptr inbounds %struct.cryp_device_data, %struct.cryp_device_data* %57, i32 0, i32 0
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 2
  %61 = call i32 @writel_relaxed(i32 %56, i32* %60)
  br label %80

62:                                               ; preds = %15
  %63 = getelementptr inbounds %struct.cryp_key_value, %struct.cryp_key_value* %5, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.cryp_device_data*, %struct.cryp_device_data** %6, align 8
  %66 = getelementptr inbounds %struct.cryp_device_data, %struct.cryp_device_data* %65, i32 0, i32 0
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 1
  %69 = call i32 @writel_relaxed(i32 %64, i32* %68)
  %70 = getelementptr inbounds %struct.cryp_key_value, %struct.cryp_key_value* %5, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.cryp_device_data*, %struct.cryp_device_data** %6, align 8
  %73 = getelementptr inbounds %struct.cryp_device_data, %struct.cryp_device_data* %72, i32 0, i32 0
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = call i32 @writel_relaxed(i32 %71, i32* %75)
  br label %80

77:                                               ; preds = %15
  %78 = load i32, i32* @EINVAL, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %4, align 4
  br label %81

80:                                               ; preds = %62, %47, %32, %17
  store i32 0, i32* %4, align 4
  br label %81

81:                                               ; preds = %80, %77
  %82 = load i32, i32* %4, align 4
  ret i32 %82
}

declare dso_local i64 @cryp_is_logic_busy(%struct.cryp_device_data*) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i32 @writel_relaxed(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
