; ModuleID = '/home/carl/AnghaBench/linux/drivers/greybus/extr_module.c_eject_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/greybus/extr_module.c_eject_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.gb_module = type { i64, i32, %struct.TYPE_2__*, %struct.gb_interface** }
%struct.TYPE_2__ = type { i32 }
%struct.gb_interface = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @eject_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eject_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.gb_module*, align 8
  %11 = alloca %struct.gb_interface*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load %struct.device*, %struct.device** %6, align 8
  %16 = call %struct.gb_module* @to_gb_module(%struct.device* %15)
  store %struct.gb_module* %16, %struct.gb_module** %10, align 8
  %17 = load i8*, i8** %8, align 8
  %18 = call i32 @kstrtol(i8* %17, i32 0, i64* %13)
  store i32 %18, i32* %14, align 4
  %19 = load i32, i32* %14, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %4
  %22 = load i32, i32* %14, align 4
  store i32 %22, i32* %5, align 4
  br label %75

23:                                               ; preds = %4
  %24 = load i64, i64* %13, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %23
  %27 = load i64, i64* %9, align 8
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %5, align 4
  br label %75

29:                                               ; preds = %23
  store i64 0, i64* %12, align 8
  br label %30

30:                                               ; preds = %55, %29
  %31 = load i64, i64* %12, align 8
  %32 = load %struct.gb_module*, %struct.gb_module** %10, align 8
  %33 = getelementptr inbounds %struct.gb_module, %struct.gb_module* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ult i64 %31, %34
  br i1 %35, label %36, label %58

36:                                               ; preds = %30
  %37 = load %struct.gb_module*, %struct.gb_module** %10, align 8
  %38 = getelementptr inbounds %struct.gb_module, %struct.gb_module* %37, i32 0, i32 3
  %39 = load %struct.gb_interface**, %struct.gb_interface*** %38, align 8
  %40 = load i64, i64* %12, align 8
  %41 = getelementptr inbounds %struct.gb_interface*, %struct.gb_interface** %39, i64 %40
  %42 = load %struct.gb_interface*, %struct.gb_interface** %41, align 8
  store %struct.gb_interface* %42, %struct.gb_interface** %11, align 8
  %43 = load %struct.gb_interface*, %struct.gb_interface** %11, align 8
  %44 = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %43, i32 0, i32 1
  %45 = call i32 @mutex_lock(i32* %44)
  %46 = load %struct.gb_interface*, %struct.gb_interface** %11, align 8
  %47 = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %46, i32 0, i32 0
  store i32 1, i32* %47, align 4
  %48 = load %struct.gb_interface*, %struct.gb_interface** %11, align 8
  %49 = call i32 @gb_interface_disable(%struct.gb_interface* %48)
  %50 = load %struct.gb_interface*, %struct.gb_interface** %11, align 8
  %51 = call i32 @gb_interface_deactivate(%struct.gb_interface* %50)
  %52 = load %struct.gb_interface*, %struct.gb_interface** %11, align 8
  %53 = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %52, i32 0, i32 1
  %54 = call i32 @mutex_unlock(i32* %53)
  br label %55

55:                                               ; preds = %36
  %56 = load i64, i64* %12, align 8
  %57 = add i64 %56, 1
  store i64 %57, i64* %12, align 8
  br label %30

58:                                               ; preds = %30
  %59 = load %struct.gb_module*, %struct.gb_module** %10, align 8
  %60 = getelementptr inbounds %struct.gb_module, %struct.gb_module* %59, i32 0, i32 2
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.gb_module*, %struct.gb_module** %10, align 8
  %65 = getelementptr inbounds %struct.gb_module, %struct.gb_module* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @gb_svc_intf_eject(i32 %63, i32 %66)
  store i32 %67, i32* %14, align 4
  %68 = load i32, i32* %14, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %58
  %71 = load i32, i32* %14, align 4
  store i32 %71, i32* %5, align 4
  br label %75

72:                                               ; preds = %58
  %73 = load i64, i64* %9, align 8
  %74 = trunc i64 %73 to i32
  store i32 %74, i32* %5, align 4
  br label %75

75:                                               ; preds = %72, %70, %26, %21
  %76 = load i32, i32* %5, align 4
  ret i32 %76
}

declare dso_local %struct.gb_module* @to_gb_module(%struct.device*) #1

declare dso_local i32 @kstrtol(i8*, i32, i64*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @gb_interface_disable(%struct.gb_interface*) #1

declare dso_local i32 @gb_interface_deactivate(%struct.gb_interface*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @gb_svc_intf_eject(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
