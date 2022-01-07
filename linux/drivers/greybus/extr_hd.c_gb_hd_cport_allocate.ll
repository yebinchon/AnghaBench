; ModuleID = '/home/carl/AnghaBench/linux/drivers/greybus/extr_hd.c_gb_hd_cport_allocate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/greybus/extr_hd.c_gb_hd_cport_allocate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_host_device = type { i32, i32, %struct.TYPE_2__*, %struct.ida }
%struct.TYPE_2__ = type { {}* }
%struct.ida = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"cport %d not available\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gb_hd_cport_allocate(%struct.gb_host_device* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.gb_host_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.ida*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.gb_host_device* %0, %struct.gb_host_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %11 = load %struct.gb_host_device*, %struct.gb_host_device** %5, align 8
  %12 = getelementptr inbounds %struct.gb_host_device, %struct.gb_host_device* %11, i32 0, i32 3
  store %struct.ida* %12, %struct.ida** %8, align 8
  %13 = load %struct.gb_host_device*, %struct.gb_host_device** %5, align 8
  %14 = getelementptr inbounds %struct.gb_host_device, %struct.gb_host_device* %13, i32 0, i32 2
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = bitcast {}** %16 to i32 (%struct.gb_host_device*, i32, i64)**
  %18 = load i32 (%struct.gb_host_device*, i32, i64)*, i32 (%struct.gb_host_device*, i32, i64)** %17, align 8
  %19 = icmp ne i32 (%struct.gb_host_device*, i32, i64)* %18, null
  br i1 %19, label %20, label %31

20:                                               ; preds = %3
  %21 = load %struct.gb_host_device*, %struct.gb_host_device** %5, align 8
  %22 = getelementptr inbounds %struct.gb_host_device, %struct.gb_host_device* %21, i32 0, i32 2
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = bitcast {}** %24 to i32 (%struct.gb_host_device*, i32, i64)**
  %26 = load i32 (%struct.gb_host_device*, i32, i64)*, i32 (%struct.gb_host_device*, i32, i64)** %25, align 8
  %27 = load %struct.gb_host_device*, %struct.gb_host_device** %5, align 8
  %28 = load i32, i32* %6, align 4
  %29 = load i64, i64* %7, align 8
  %30 = call i32 %26(%struct.gb_host_device* %27, i32 %28, i64 %29)
  store i32 %30, i32* %4, align 4
  br label %62

31:                                               ; preds = %3
  %32 = load i32, i32* %6, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %31
  store i32 0, i32* %9, align 4
  %35 = load %struct.gb_host_device*, %struct.gb_host_device** %5, align 8
  %36 = getelementptr inbounds %struct.gb_host_device, %struct.gb_host_device* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  store i32 %37, i32* %10, align 4
  br label %56

38:                                               ; preds = %31
  %39 = load i32, i32* %6, align 4
  %40 = load %struct.gb_host_device*, %struct.gb_host_device** %5, align 8
  %41 = getelementptr inbounds %struct.gb_host_device, %struct.gb_host_device* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp slt i32 %39, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %38
  %45 = load i32, i32* %6, align 4
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %6, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %10, align 4
  br label %55

48:                                               ; preds = %38
  %49 = load %struct.gb_host_device*, %struct.gb_host_device** %5, align 8
  %50 = getelementptr inbounds %struct.gb_host_device, %struct.gb_host_device* %49, i32 0, i32 1
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @dev_err(i32* %50, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %51)
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %4, align 4
  br label %62

55:                                               ; preds = %44
  br label %56

56:                                               ; preds = %55, %34
  %57 = load %struct.ida*, %struct.ida** %8, align 8
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* %10, align 4
  %60 = load i32, i32* @GFP_KERNEL, align 4
  %61 = call i32 @ida_simple_get(%struct.ida* %57, i32 %58, i32 %59, i32 %60)
  store i32 %61, i32* %4, align 4
  br label %62

62:                                               ; preds = %56, %48, %20
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @ida_simple_get(%struct.ida*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
