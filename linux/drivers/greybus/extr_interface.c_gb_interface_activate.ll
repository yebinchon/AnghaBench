; ModuleID = '/home/carl/AnghaBench/linux/drivers/greybus/extr_interface.c_gb_interface_activate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/greybus/extr_interface.c_gb_interface_activate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_interface = type { i32, i32 }

@.str = private unnamed_addr constant [33 x i8] c"failed to detect interface type\0A\00", align 1
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gb_interface_activate(%struct.gb_interface* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gb_interface*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.gb_interface* %0, %struct.gb_interface** %3, align 8
  %6 = load %struct.gb_interface*, %struct.gb_interface** %3, align 8
  %7 = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %12 [
    i32 128, label %9
    i32 129, label %9
  ]

9:                                                ; preds = %1, %1
  %10 = load %struct.gb_interface*, %struct.gb_interface** %3, align 8
  %11 = call i32 @_gb_interface_activate_es3_hack(%struct.gb_interface* %10, i32* %4)
  store i32 %11, i32* %5, align 4
  br label %15

12:                                               ; preds = %1
  %13 = load %struct.gb_interface*, %struct.gb_interface** %3, align 8
  %14 = call i32 @_gb_interface_activate(%struct.gb_interface* %13, i32* %4)
  store i32 %14, i32* %5, align 4
  br label %15

15:                                               ; preds = %12, %9
  %16 = load %struct.gb_interface*, %struct.gb_interface** %3, align 8
  %17 = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 128
  br i1 %19, label %20, label %39

20:                                               ; preds = %15
  %21 = load i32, i32* %4, align 4
  %22 = load %struct.gb_interface*, %struct.gb_interface** %3, align 8
  %23 = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %21, %24
  br i1 %25, label %26, label %38

26:                                               ; preds = %20
  %27 = load %struct.gb_interface*, %struct.gb_interface** %3, align 8
  %28 = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %27, i32 0, i32 1
  %29 = call i32 @dev_err(i32* %28, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* %5, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %26
  %33 = load %struct.gb_interface*, %struct.gb_interface** %3, align 8
  %34 = call i32 @gb_interface_deactivate(%struct.gb_interface* %33)
  br label %35

35:                                               ; preds = %32, %26
  %36 = load i32, i32* @EIO, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %2, align 4
  br label %45

38:                                               ; preds = %20
  br label %43

39:                                               ; preds = %15
  %40 = load i32, i32* %4, align 4
  %41 = load %struct.gb_interface*, %struct.gb_interface** %3, align 8
  %42 = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 4
  br label %43

43:                                               ; preds = %39, %38
  %44 = load i32, i32* %5, align 4
  store i32 %44, i32* %2, align 4
  br label %45

45:                                               ; preds = %43, %35
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local i32 @_gb_interface_activate_es3_hack(%struct.gb_interface*, i32*) #1

declare dso_local i32 @_gb_interface_activate(%struct.gb_interface*, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @gb_interface_deactivate(%struct.gb_interface*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
