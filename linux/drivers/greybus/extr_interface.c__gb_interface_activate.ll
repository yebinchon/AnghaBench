; ModuleID = '/home/carl/AnghaBench/linux/drivers/greybus/extr_interface.c__gb_interface_activate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/greybus/extr_interface.c__gb_interface_activate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_interface = type { i32, i64, i64 }

@GB_INTERFACE_TYPE_UNKNOWN = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gb_interface*, i32*)* @_gb_interface_activate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_gb_interface_activate(%struct.gb_interface* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gb_interface*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.gb_interface* %0, %struct.gb_interface** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load i32, i32* @GB_INTERFACE_TYPE_UNKNOWN, align 4
  %8 = load i32*, i32** %5, align 8
  store i32 %7, i32* %8, align 4
  %9 = load %struct.gb_interface*, %struct.gb_interface** %4, align 8
  %10 = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %2
  %14 = load %struct.gb_interface*, %struct.gb_interface** %4, align 8
  %15 = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %13, %2
  %19 = load i32, i32* @ENODEV, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %81

21:                                               ; preds = %13
  %22 = load %struct.gb_interface*, %struct.gb_interface** %4, align 8
  %23 = call i32 @gb_interface_vsys_set(%struct.gb_interface* %22, i32 1)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = load i32, i32* %6, align 4
  store i32 %27, i32* %3, align 4
  br label %81

28:                                               ; preds = %21
  %29 = load %struct.gb_interface*, %struct.gb_interface** %4, align 8
  %30 = call i32 @gb_interface_refclk_set(%struct.gb_interface* %29, i32 1)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  br label %77

34:                                               ; preds = %28
  %35 = load %struct.gb_interface*, %struct.gb_interface** %4, align 8
  %36 = call i32 @gb_interface_unipro_set(%struct.gb_interface* %35, i32 1)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  br label %74

40:                                               ; preds = %34
  %41 = load %struct.gb_interface*, %struct.gb_interface** %4, align 8
  %42 = load i32*, i32** %5, align 8
  %43 = call i32 @gb_interface_activate_operation(%struct.gb_interface* %41, i32* %42)
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %40
  %47 = load i32*, i32** %5, align 8
  %48 = load i32, i32* %47, align 4
  switch i32 %48, label %50 [
    i32 128, label %49
    i32 129, label %49
  ]

49:                                               ; preds = %46, %46
  br label %68

50:                                               ; preds = %46
  br label %71

51:                                               ; preds = %40
  %52 = load %struct.gb_interface*, %struct.gb_interface** %4, align 8
  %53 = call i32 @gb_interface_read_dme(%struct.gb_interface* %52)
  store i32 %53, i32* %6, align 4
  %54 = load i32, i32* %6, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %51
  br label %68

57:                                               ; preds = %51
  %58 = load %struct.gb_interface*, %struct.gb_interface** %4, align 8
  %59 = call i32 @gb_interface_route_create(%struct.gb_interface* %58)
  store i32 %59, i32* %6, align 4
  %60 = load i32, i32* %6, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %57
  br label %68

63:                                               ; preds = %57
  %64 = load %struct.gb_interface*, %struct.gb_interface** %4, align 8
  %65 = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %64, i32 0, i32 0
  store i32 1, i32* %65, align 8
  %66 = load %struct.gb_interface*, %struct.gb_interface** %4, align 8
  %67 = call i32 @trace_gb_interface_activate(%struct.gb_interface* %66)
  store i32 0, i32* %3, align 4
  br label %81

68:                                               ; preds = %62, %56, %49
  %69 = load %struct.gb_interface*, %struct.gb_interface** %4, align 8
  %70 = call i32 @gb_interface_hibernate_link(%struct.gb_interface* %69)
  br label %71

71:                                               ; preds = %68, %50
  %72 = load %struct.gb_interface*, %struct.gb_interface** %4, align 8
  %73 = call i32 @gb_interface_unipro_set(%struct.gb_interface* %72, i32 0)
  br label %74

74:                                               ; preds = %71, %39
  %75 = load %struct.gb_interface*, %struct.gb_interface** %4, align 8
  %76 = call i32 @gb_interface_refclk_set(%struct.gb_interface* %75, i32 0)
  br label %77

77:                                               ; preds = %74, %33
  %78 = load %struct.gb_interface*, %struct.gb_interface** %4, align 8
  %79 = call i32 @gb_interface_vsys_set(%struct.gb_interface* %78, i32 0)
  %80 = load i32, i32* %6, align 4
  store i32 %80, i32* %3, align 4
  br label %81

81:                                               ; preds = %77, %63, %26, %18
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local i32 @gb_interface_vsys_set(%struct.gb_interface*, i32) #1

declare dso_local i32 @gb_interface_refclk_set(%struct.gb_interface*, i32) #1

declare dso_local i32 @gb_interface_unipro_set(%struct.gb_interface*, i32) #1

declare dso_local i32 @gb_interface_activate_operation(%struct.gb_interface*, i32*) #1

declare dso_local i32 @gb_interface_read_dme(%struct.gb_interface*) #1

declare dso_local i32 @gb_interface_route_create(%struct.gb_interface*) #1

declare dso_local i32 @trace_gb_interface_activate(%struct.gb_interface*) #1

declare dso_local i32 @gb_interface_hibernate_link(%struct.gb_interface*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
