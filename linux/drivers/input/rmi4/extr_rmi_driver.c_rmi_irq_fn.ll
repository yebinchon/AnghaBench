; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/rmi4/extr_rmi_driver.c_rmi_irq_fn.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/rmi4/extr_rmi_driver.c_rmi_irq_fn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rmi_device = type { i32 }
%struct.rmi_driver_data = type { i32, %struct.rmi4_attn_data, i32* }
%struct.rmi4_attn_data = type { i32*, i32, i32 }

@RMI_DEBUG_CORE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Failed to process interrupt request: %d\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @rmi_irq_fn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rmi_irq_fn(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.rmi_device*, align 8
  %7 = alloca %struct.rmi_driver_data*, align 8
  %8 = alloca %struct.rmi4_attn_data, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.rmi_device*
  store %struct.rmi_device* %12, %struct.rmi_device** %6, align 8
  %13 = load %struct.rmi_device*, %struct.rmi_device** %6, align 8
  %14 = getelementptr inbounds %struct.rmi_device, %struct.rmi_device* %13, i32 0, i32 0
  %15 = call %struct.rmi_driver_data* @dev_get_drvdata(i32* %14)
  store %struct.rmi_driver_data* %15, %struct.rmi_driver_data** %7, align 8
  %16 = bitcast %struct.rmi4_attn_data* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %16, i8 0, i64 16, i1 false)
  %17 = load %struct.rmi_driver_data*, %struct.rmi_driver_data** %7, align 8
  %18 = getelementptr inbounds %struct.rmi_driver_data, %struct.rmi_driver_data* %17, i32 0, i32 0
  %19 = call i32 @kfifo_get(i32* %18, %struct.rmi4_attn_data* %8)
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %10, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %32

22:                                               ; preds = %2
  %23 = getelementptr inbounds %struct.rmi4_attn_data, %struct.rmi4_attn_data* %8, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.rmi_driver_data*, %struct.rmi_driver_data** %7, align 8
  %26 = getelementptr inbounds %struct.rmi_driver_data, %struct.rmi_driver_data* %25, i32 0, i32 2
  %27 = load i32*, i32** %26, align 8
  store i32 %24, i32* %27, align 4
  %28 = load %struct.rmi_driver_data*, %struct.rmi_driver_data** %7, align 8
  %29 = getelementptr inbounds %struct.rmi_driver_data, %struct.rmi_driver_data* %28, i32 0, i32 1
  %30 = bitcast %struct.rmi4_attn_data* %29 to i8*
  %31 = bitcast %struct.rmi4_attn_data* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %30, i8* align 8 %31, i64 16, i1 false)
  br label %32

32:                                               ; preds = %22, %2
  %33 = load %struct.rmi_device*, %struct.rmi_device** %6, align 8
  %34 = call i32 @rmi_process_interrupt_requests(%struct.rmi_device* %33)
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %9, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %32
  %38 = load i32, i32* @RMI_DEBUG_CORE, align 4
  %39 = load %struct.rmi_device*, %struct.rmi_device** %6, align 8
  %40 = getelementptr inbounds %struct.rmi_device, %struct.rmi_device* %39, i32 0, i32 0
  %41 = load i32, i32* %9, align 4
  %42 = call i32 @rmi_dbg(i32 %38, i32* %40, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %41)
  br label %43

43:                                               ; preds = %37, %32
  %44 = load i32, i32* %10, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.rmi4_attn_data, %struct.rmi4_attn_data* %8, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = call i32 @kfree(i32* %48)
  %50 = getelementptr inbounds %struct.rmi4_attn_data, %struct.rmi4_attn_data* %8, i32 0, i32 0
  store i32* null, i32** %50, align 8
  br label %51

51:                                               ; preds = %46, %43
  %52 = load %struct.rmi_driver_data*, %struct.rmi_driver_data** %7, align 8
  %53 = getelementptr inbounds %struct.rmi_driver_data, %struct.rmi_driver_data* %52, i32 0, i32 0
  %54 = call i32 @kfifo_is_empty(i32* %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %60, label %56

56:                                               ; preds = %51
  %57 = load i32, i32* %4, align 4
  %58 = load i8*, i8** %5, align 8
  %59 = call i32 @rmi_irq_fn(i32 %57, i8* %58)
  store i32 %59, i32* %3, align 4
  br label %62

60:                                               ; preds = %51
  %61 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %61, i32* %3, align 4
  br label %62

62:                                               ; preds = %60, %56
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local %struct.rmi_driver_data* @dev_get_drvdata(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @kfifo_get(i32*, %struct.rmi4_attn_data*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @rmi_process_interrupt_requests(%struct.rmi_device*) #1

declare dso_local i32 @rmi_dbg(i32, i32*, i8*, i32) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @kfifo_is_empty(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
