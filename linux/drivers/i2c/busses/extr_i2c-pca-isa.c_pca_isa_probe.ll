; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-pca-isa.c_pca_isa_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-pca-isa.c_pca_isa_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.device = type { i32 }

@pca_wait = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"i/o base %#08lx. irq %d\0A\00", align 1
@base = common dso_local global i32 0, align 4
@irq = common dso_local global i32 0, align 4
@IO_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"i2c-pca-isa\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"I/O address %#08lx is in use\0A\00", align 1
@pca_handler = common dso_local global i32 0, align 4
@pca_isa_ops = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"Request irq%d failed\0A\00", align 1
@clock = common dso_local global i32 0, align 4
@pca_isa_data = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str.4 = private unnamed_addr constant [23 x i8] c"Failed to add i2c bus\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32)* @pca_isa_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pca_isa_probe(%struct.device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = call i32 @init_waitqueue_head(i32* @pca_wait)
  %7 = load %struct.device*, %struct.device** %4, align 8
  %8 = load i32, i32* @base, align 4
  %9 = load i32, i32* @irq, align 4
  %10 = call i32 @dev_info(%struct.device* %7, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %8, i32 %9)
  %11 = load i32, i32* @base, align 4
  %12 = load i32, i32* @IO_SIZE, align 4
  %13 = call i32 @request_region(i32 %11, i32 %12, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %2
  %16 = load %struct.device*, %struct.device** %4, align 8
  %17 = load i32, i32* @base, align 4
  %18 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %16, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %17)
  br label %51

19:                                               ; preds = %2
  %20 = load i32, i32* @irq, align 4
  %21 = icmp sgt i32 %20, -1
  br i1 %21, label %22, label %32

22:                                               ; preds = %19
  %23 = load i32, i32* @irq, align 4
  %24 = load i32, i32* @pca_handler, align 4
  %25 = call i64 @request_irq(i32 %23, i32 %24, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32* @pca_isa_ops)
  %26 = icmp slt i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %22
  %28 = load %struct.device*, %struct.device** %4, align 8
  %29 = load i32, i32* @irq, align 4
  %30 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %28, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 %29)
  br label %47

31:                                               ; preds = %22
  br label %32

32:                                               ; preds = %31, %19
  %33 = load i32, i32* @clock, align 4
  store i32 %33, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pca_isa_data, i32 0, i32 0), align 4
  %34 = call i64 @i2c_pca_add_bus(i32* @pca_isa_ops)
  %35 = icmp slt i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %32
  %37 = load %struct.device*, %struct.device** %4, align 8
  %38 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %37, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  br label %40

39:                                               ; preds = %32
  store i32 0, i32* %3, align 4
  br label %54

40:                                               ; preds = %36
  %41 = load i32, i32* @irq, align 4
  %42 = icmp sgt i32 %41, -1
  br i1 %42, label %43, label %46

43:                                               ; preds = %40
  %44 = load i32, i32* @irq, align 4
  %45 = call i32 @free_irq(i32 %44, i32* @pca_isa_ops)
  br label %46

46:                                               ; preds = %43, %40
  br label %47

47:                                               ; preds = %46, %27
  %48 = load i32, i32* @base, align 4
  %49 = load i32, i32* @IO_SIZE, align 4
  %50 = call i32 @release_region(i32 %48, i32 %49)
  br label %51

51:                                               ; preds = %47, %15
  %52 = load i32, i32* @ENODEV, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %3, align 4
  br label %54

54:                                               ; preds = %51, %39
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i32, i32) #1

declare dso_local i32 @request_region(i32, i32, i8*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i64 @request_irq(i32, i32, i32, i8*, i32*) #1

declare dso_local i64 @i2c_pca_add_bus(i32*) #1

declare dso_local i32 @free_irq(i32, i32*) #1

declare dso_local i32 @release_region(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
