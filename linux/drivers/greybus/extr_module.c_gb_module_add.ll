; ModuleID = '/home/carl/AnghaBench/linux/drivers/greybus/extr_module.c_gb_module_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/greybus/extr_module.c_gb_module_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_module = type { i64, i32*, i32 }

@.str = private unnamed_addr constant [31 x i8] c"failed to register module: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gb_module_add(%struct.gb_module* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gb_module*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.gb_module* %0, %struct.gb_module** %3, align 8
  %6 = load %struct.gb_module*, %struct.gb_module** %3, align 8
  %7 = getelementptr inbounds %struct.gb_module, %struct.gb_module* %6, i32 0, i32 2
  %8 = call i32 @device_add(i32* %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %1
  %12 = load %struct.gb_module*, %struct.gb_module** %3, align 8
  %13 = getelementptr inbounds %struct.gb_module, %struct.gb_module* %12, i32 0, i32 2
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @dev_err(i32* %13, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load i32, i32* %5, align 4
  store i32 %16, i32* %2, align 4
  br label %38

17:                                               ; preds = %1
  %18 = load %struct.gb_module*, %struct.gb_module** %3, align 8
  %19 = call i32 @trace_gb_module_add(%struct.gb_module* %18)
  store i64 0, i64* %4, align 8
  br label %20

20:                                               ; preds = %34, %17
  %21 = load i64, i64* %4, align 8
  %22 = load %struct.gb_module*, %struct.gb_module** %3, align 8
  %23 = getelementptr inbounds %struct.gb_module, %struct.gb_module* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ult i64 %21, %24
  br i1 %25, label %26, label %37

26:                                               ; preds = %20
  %27 = load %struct.gb_module*, %struct.gb_module** %3, align 8
  %28 = getelementptr inbounds %struct.gb_module, %struct.gb_module* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = load i64, i64* %4, align 8
  %31 = getelementptr inbounds i32, i32* %29, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @gb_module_register_interface(i32 %32)
  br label %34

34:                                               ; preds = %26
  %35 = load i64, i64* %4, align 8
  %36 = add i64 %35, 1
  store i64 %36, i64* %4, align 8
  br label %20

37:                                               ; preds = %20
  store i32 0, i32* %2, align 4
  br label %38

38:                                               ; preds = %37, %11
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local i32 @device_add(i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @trace_gb_module_add(%struct.gb_module*) #1

declare dso_local i32 @gb_module_register_interface(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
