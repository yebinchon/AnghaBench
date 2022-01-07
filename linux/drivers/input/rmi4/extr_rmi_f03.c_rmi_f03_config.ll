; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/rmi4/extr_rmi_f03.c_rmi_f03_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/rmi4/extr_rmi_f03.c_rmi_f03_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rmi_function = type { i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.TYPE_4__*, i32)* }
%struct.f03_data = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rmi_function*)* @rmi_f03_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rmi_f03_config(%struct.rmi_function* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rmi_function*, align 8
  %4 = alloca %struct.f03_data*, align 8
  %5 = alloca i32, align 4
  store %struct.rmi_function* %0, %struct.rmi_function** %3, align 8
  %6 = load %struct.rmi_function*, %struct.rmi_function** %3, align 8
  %7 = getelementptr inbounds %struct.rmi_function, %struct.rmi_function* %6, i32 0, i32 2
  %8 = call %struct.f03_data* @dev_get_drvdata(i32* %7)
  store %struct.f03_data* %8, %struct.f03_data** %4, align 8
  %9 = load %struct.f03_data*, %struct.f03_data** %4, align 8
  %10 = getelementptr inbounds %struct.f03_data, %struct.f03_data* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %23, label %13

13:                                               ; preds = %1
  %14 = load %struct.f03_data*, %struct.f03_data** %4, align 8
  %15 = call i32 @rmi_f03_register_pt(%struct.f03_data* %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %13
  %19 = load i32, i32* %5, align 4
  store i32 %19, i32* %2, align 4
  br label %39

20:                                               ; preds = %13
  %21 = load %struct.f03_data*, %struct.f03_data** %4, align 8
  %22 = getelementptr inbounds %struct.f03_data, %struct.f03_data* %21, i32 0, i32 0
  store i32 1, i32* %22, align 4
  br label %38

23:                                               ; preds = %1
  %24 = load %struct.rmi_function*, %struct.rmi_function** %3, align 8
  %25 = getelementptr inbounds %struct.rmi_function, %struct.rmi_function* %24, i32 0, i32 1
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32 (%struct.TYPE_4__*, i32)*, i32 (%struct.TYPE_4__*, i32)** %29, align 8
  %31 = load %struct.rmi_function*, %struct.rmi_function** %3, align 8
  %32 = getelementptr inbounds %struct.rmi_function, %struct.rmi_function* %31, i32 0, i32 1
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = load %struct.rmi_function*, %struct.rmi_function** %3, align 8
  %35 = getelementptr inbounds %struct.rmi_function, %struct.rmi_function* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 %30(%struct.TYPE_4__* %33, i32 %36)
  br label %38

38:                                               ; preds = %23, %20
  store i32 0, i32* %2, align 4
  br label %39

39:                                               ; preds = %38, %18
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local %struct.f03_data* @dev_get_drvdata(i32*) #1

declare dso_local i32 @rmi_f03_register_pt(%struct.f03_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
