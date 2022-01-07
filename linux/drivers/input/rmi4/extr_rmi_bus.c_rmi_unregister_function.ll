; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/rmi4/extr_rmi_bus.c_rmi_unregister_function.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/rmi4/extr_rmi_bus.c_rmi_unregister_function.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rmi_function = type { i32, i32*, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@RMI_DEBUG_CORE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Unregistering F%02X.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rmi_unregister_function(%struct.rmi_function* %0) #0 {
  %2 = alloca %struct.rmi_function*, align 8
  %3 = alloca i32, align 4
  store %struct.rmi_function* %0, %struct.rmi_function** %2, align 8
  %4 = load i32, i32* @RMI_DEBUG_CORE, align 4
  %5 = load %struct.rmi_function*, %struct.rmi_function** %2, align 8
  %6 = getelementptr inbounds %struct.rmi_function, %struct.rmi_function* %5, i32 0, i32 2
  %7 = load %struct.rmi_function*, %struct.rmi_function** %2, align 8
  %8 = getelementptr inbounds %struct.rmi_function, %struct.rmi_function* %7, i32 0, i32 3
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @rmi_dbg(i32 %4, %struct.TYPE_6__* %6, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = load %struct.rmi_function*, %struct.rmi_function** %2, align 8
  %13 = getelementptr inbounds %struct.rmi_function, %struct.rmi_function* %12, i32 0, i32 2
  %14 = call i32 @device_del(%struct.TYPE_6__* %13)
  %15 = load %struct.rmi_function*, %struct.rmi_function** %2, align 8
  %16 = getelementptr inbounds %struct.rmi_function, %struct.rmi_function* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @of_node_put(i32 %18)
  %20 = load %struct.rmi_function*, %struct.rmi_function** %2, align 8
  %21 = getelementptr inbounds %struct.rmi_function, %struct.rmi_function* %20, i32 0, i32 2
  %22 = call i32 @put_device(%struct.TYPE_6__* %21)
  store i32 0, i32* %3, align 4
  br label %23

23:                                               ; preds = %38, %1
  %24 = load i32, i32* %3, align 4
  %25 = load %struct.rmi_function*, %struct.rmi_function** %2, align 8
  %26 = getelementptr inbounds %struct.rmi_function, %struct.rmi_function* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %41

29:                                               ; preds = %23
  %30 = load %struct.rmi_function*, %struct.rmi_function** %2, align 8
  %31 = getelementptr inbounds %struct.rmi_function, %struct.rmi_function* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %3, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @irq_dispose_mapping(i32 %36)
  br label %38

38:                                               ; preds = %29
  %39 = load i32, i32* %3, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %3, align 4
  br label %23

41:                                               ; preds = %23
  ret void
}

declare dso_local i32 @rmi_dbg(i32, %struct.TYPE_6__*, i8*, i32) #1

declare dso_local i32 @device_del(%struct.TYPE_6__*) #1

declare dso_local i32 @of_node_put(i32) #1

declare dso_local i32 @put_device(%struct.TYPE_6__*) #1

declare dso_local i32 @irq_dispose_mapping(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
