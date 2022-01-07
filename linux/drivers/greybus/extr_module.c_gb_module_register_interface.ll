; ModuleID = '/home/carl/AnghaBench/linux/drivers/greybus/extr_module.c_gb_module_register_interface.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/greybus/extr_module.c_gb_module_register_interface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_interface = type { i64, i32, i32, %struct.gb_module* }
%struct.gb_module = type { i32 }

@GB_INTERFACE_TYPE_DUMMY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [37 x i8] c"failed to activate interface %u: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"failed to enable interface %u: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gb_interface*)* @gb_module_register_interface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gb_module_register_interface(%struct.gb_interface* %0) #0 {
  %2 = alloca %struct.gb_interface*, align 8
  %3 = alloca %struct.gb_module*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.gb_interface* %0, %struct.gb_interface** %2, align 8
  %6 = load %struct.gb_interface*, %struct.gb_interface** %2, align 8
  %7 = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %6, i32 0, i32 3
  %8 = load %struct.gb_module*, %struct.gb_module** %7, align 8
  store %struct.gb_module* %8, %struct.gb_module** %3, align 8
  %9 = load %struct.gb_interface*, %struct.gb_interface** %2, align 8
  %10 = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %4, align 4
  %12 = load %struct.gb_interface*, %struct.gb_interface** %2, align 8
  %13 = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %12, i32 0, i32 1
  %14 = call i32 @mutex_lock(i32* %13)
  %15 = load %struct.gb_interface*, %struct.gb_interface** %2, align 8
  %16 = call i32 @gb_interface_activate(%struct.gb_interface* %15)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %34

19:                                               ; preds = %1
  %20 = load %struct.gb_interface*, %struct.gb_interface** %2, align 8
  %21 = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @GB_INTERFACE_TYPE_DUMMY, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %31

25:                                               ; preds = %19
  %26 = load %struct.gb_module*, %struct.gb_module** %3, align 8
  %27 = getelementptr inbounds %struct.gb_module, %struct.gb_module* %26, i32 0, i32 0
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @dev_err(i32* %27, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %28, i32 %29)
  br label %31

31:                                               ; preds = %25, %19
  %32 = load %struct.gb_interface*, %struct.gb_interface** %2, align 8
  %33 = call i32 @gb_interface_add(%struct.gb_interface* %32)
  br label %58

34:                                               ; preds = %1
  %35 = load %struct.gb_interface*, %struct.gb_interface** %2, align 8
  %36 = call i32 @gb_interface_add(%struct.gb_interface* %35)
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  br label %55

40:                                               ; preds = %34
  %41 = load %struct.gb_interface*, %struct.gb_interface** %2, align 8
  %42 = call i32 @gb_interface_enable(%struct.gb_interface* %41)
  store i32 %42, i32* %5, align 4
  %43 = load i32, i32* %5, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %40
  %46 = load %struct.gb_module*, %struct.gb_module** %3, align 8
  %47 = getelementptr inbounds %struct.gb_module, %struct.gb_module* %46, i32 0, i32 0
  %48 = load i32, i32* %4, align 4
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @dev_err(i32* %47, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %48, i32 %49)
  br label %55

51:                                               ; preds = %40
  %52 = load %struct.gb_interface*, %struct.gb_interface** %2, align 8
  %53 = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %52, i32 0, i32 1
  %54 = call i32 @mutex_unlock(i32* %53)
  br label %62

55:                                               ; preds = %45, %39
  %56 = load %struct.gb_interface*, %struct.gb_interface** %2, align 8
  %57 = call i32 @gb_interface_deactivate(%struct.gb_interface* %56)
  br label %58

58:                                               ; preds = %55, %31
  %59 = load %struct.gb_interface*, %struct.gb_interface** %2, align 8
  %60 = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %59, i32 0, i32 1
  %61 = call i32 @mutex_unlock(i32* %60)
  br label %62

62:                                               ; preds = %58, %51
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @gb_interface_activate(%struct.gb_interface*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, i32) #1

declare dso_local i32 @gb_interface_add(%struct.gb_interface*) #1

declare dso_local i32 @gb_interface_enable(%struct.gb_interface*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @gb_interface_deactivate(%struct.gb_interface*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
