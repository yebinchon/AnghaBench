; ModuleID = '/home/carl/AnghaBench/linux/drivers/greybus/extr_interface.c_power_state_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/greybus/extr_interface.c_power_state_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.gb_interface = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"failed to activate interface: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"failed to enable interface: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @power_state_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @power_state_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.gb_interface*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.device*, %struct.device** %6, align 8
  %14 = call %struct.gb_interface* @to_gb_interface(%struct.device* %13)
  store %struct.gb_interface* %14, %struct.gb_interface** %10, align 8
  store i32 0, i32* %12, align 4
  %15 = load i8*, i8** %8, align 8
  %16 = call i64 @kstrtobool(i8* %15, i32* %11)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %4
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %5, align 4
  br label %74

21:                                               ; preds = %4
  %22 = load %struct.gb_interface*, %struct.gb_interface** %10, align 8
  %23 = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %22, i32 0, i32 1
  %24 = call i32 @mutex_lock(i32* %23)
  %25 = load i32, i32* %11, align 4
  %26 = load %struct.gb_interface*, %struct.gb_interface** %10, align 8
  %27 = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp eq i32 %25, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %21
  br label %63

31:                                               ; preds = %21
  %32 = load i32, i32* %11, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %57

34:                                               ; preds = %31
  %35 = load %struct.gb_interface*, %struct.gb_interface** %10, align 8
  %36 = call i32 @gb_interface_activate(%struct.gb_interface* %35)
  store i32 %36, i32* %12, align 4
  %37 = load i32, i32* %12, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %34
  %40 = load %struct.gb_interface*, %struct.gb_interface** %10, align 8
  %41 = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %40, i32 0, i32 2
  %42 = load i32, i32* %12, align 4
  %43 = call i32 @dev_err(i32* %41, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %42)
  br label %63

44:                                               ; preds = %34
  %45 = load %struct.gb_interface*, %struct.gb_interface** %10, align 8
  %46 = call i32 @gb_interface_enable(%struct.gb_interface* %45)
  store i32 %46, i32* %12, align 4
  %47 = load i32, i32* %12, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %44
  %50 = load %struct.gb_interface*, %struct.gb_interface** %10, align 8
  %51 = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %50, i32 0, i32 2
  %52 = load i32, i32* %12, align 4
  %53 = call i32 @dev_err(i32* %51, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %52)
  %54 = load %struct.gb_interface*, %struct.gb_interface** %10, align 8
  %55 = call i32 @gb_interface_deactivate(%struct.gb_interface* %54)
  br label %63

56:                                               ; preds = %44
  br label %62

57:                                               ; preds = %31
  %58 = load %struct.gb_interface*, %struct.gb_interface** %10, align 8
  %59 = call i32 @gb_interface_disable(%struct.gb_interface* %58)
  %60 = load %struct.gb_interface*, %struct.gb_interface** %10, align 8
  %61 = call i32 @gb_interface_deactivate(%struct.gb_interface* %60)
  br label %62

62:                                               ; preds = %57, %56
  br label %63

63:                                               ; preds = %62, %49, %39, %30
  %64 = load %struct.gb_interface*, %struct.gb_interface** %10, align 8
  %65 = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %64, i32 0, i32 1
  %66 = call i32 @mutex_unlock(i32* %65)
  %67 = load i32, i32* %12, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %63
  %70 = load i32, i32* %12, align 4
  store i32 %70, i32* %5, align 4
  br label %74

71:                                               ; preds = %63
  %72 = load i64, i64* %9, align 8
  %73 = trunc i64 %72 to i32
  store i32 %73, i32* %5, align 4
  br label %74

74:                                               ; preds = %71, %69, %18
  %75 = load i32, i32* %5, align 4
  ret i32 %75
}

declare dso_local %struct.gb_interface* @to_gb_interface(%struct.device*) #1

declare dso_local i64 @kstrtobool(i8*, i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @gb_interface_activate(%struct.gb_interface*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @gb_interface_enable(%struct.gb_interface*) #1

declare dso_local i32 @gb_interface_deactivate(%struct.gb_interface*) #1

declare dso_local i32 @gb_interface_disable(%struct.gb_interface*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
