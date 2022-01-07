; ModuleID = '/home/carl/AnghaBench/linux/drivers/greybus/extr_interface.c_gb_interface_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/greybus/extr_interface.c_gb_interface_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_interface = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [34 x i8] c"failed to register interface: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"Interface added (%s)\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"GMP VID=0x%08x, PID=0x%08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"DDBL1 Manufacturer=0x%08x, Product=0x%08x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gb_interface_add(%struct.gb_interface* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gb_interface*, align 8
  %4 = alloca i32, align 4
  store %struct.gb_interface* %0, %struct.gb_interface** %3, align 8
  %5 = load %struct.gb_interface*, %struct.gb_interface** %3, align 8
  %6 = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %5, i32 0, i32 3
  %7 = call i32 @device_add(i32* %6)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %1
  %11 = load %struct.gb_interface*, %struct.gb_interface** %3, align 8
  %12 = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %11, i32 0, i32 3
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @dev_err(i32* %12, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load i32, i32* %4, align 4
  store i32 %15, i32* %2, align 4
  br label %49

16:                                               ; preds = %1
  %17 = load %struct.gb_interface*, %struct.gb_interface** %3, align 8
  %18 = call i32 @trace_gb_interface_add(%struct.gb_interface* %17)
  %19 = load %struct.gb_interface*, %struct.gb_interface** %3, align 8
  %20 = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %19, i32 0, i32 3
  %21 = load %struct.gb_interface*, %struct.gb_interface** %3, align 8
  %22 = call i32 @gb_interface_type_string(%struct.gb_interface* %21)
  %23 = call i32 (i32*, i8*, i32, ...) @dev_info(i32* %20, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %22)
  %24 = load %struct.gb_interface*, %struct.gb_interface** %3, align 8
  %25 = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  switch i32 %26, label %47 [
    i32 129, label %27
    i32 128, label %37
  ]

27:                                               ; preds = %16
  %28 = load %struct.gb_interface*, %struct.gb_interface** %3, align 8
  %29 = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %28, i32 0, i32 3
  %30 = load %struct.gb_interface*, %struct.gb_interface** %3, align 8
  %31 = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %30, i32 0, i32 5
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.gb_interface*, %struct.gb_interface** %3, align 8
  %34 = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 4
  %36 = call i32 (i32*, i8*, i32, ...) @dev_info(i32* %29, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %32, i32 %35)
  br label %37

37:                                               ; preds = %16, %27
  %38 = load %struct.gb_interface*, %struct.gb_interface** %3, align 8
  %39 = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %38, i32 0, i32 3
  %40 = load %struct.gb_interface*, %struct.gb_interface** %3, align 8
  %41 = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.gb_interface*, %struct.gb_interface** %3, align 8
  %44 = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 (i32*, i8*, i32, ...) @dev_info(i32* %39, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i32 %42, i32 %45)
  br label %48

47:                                               ; preds = %16
  br label %48

48:                                               ; preds = %47, %37
  store i32 0, i32* %2, align 4
  br label %49

49:                                               ; preds = %48, %10
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local i32 @device_add(i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @trace_gb_interface_add(%struct.gb_interface*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, ...) #1

declare dso_local i32 @gb_interface_type_string(%struct.gb_interface*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
