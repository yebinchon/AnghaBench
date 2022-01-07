; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-rmi.c_rmi_setup_irq_domain.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-rmi.c_rmi_setup_irq_domain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.rmi_data = type { i64, i32 }

@rmi_irq_ops = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@rmi_irq_teardown = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Can't allocate an IRQ\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_device*)* @rmi_setup_irq_domain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rmi_setup_irq_domain(%struct.hid_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hid_device*, align 8
  %4 = alloca %struct.rmi_data*, align 8
  %5 = alloca i32, align 4
  store %struct.hid_device* %0, %struct.hid_device** %3, align 8
  %6 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %7 = call %struct.rmi_data* @hid_get_drvdata(%struct.hid_device* %6)
  store %struct.rmi_data* %7, %struct.rmi_data** %4, align 8
  %8 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %9 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.rmi_data*, %struct.rmi_data** %4, align 8
  %13 = call i32 @irq_domain_create_linear(i32 %11, i32 1, i32* @rmi_irq_ops, %struct.rmi_data* %12)
  %14 = load %struct.rmi_data*, %struct.rmi_data** %4, align 8
  %15 = getelementptr inbounds %struct.rmi_data, %struct.rmi_data* %14, i32 0, i32 1
  store i32 %13, i32* %15, align 8
  %16 = load %struct.rmi_data*, %struct.rmi_data** %4, align 8
  %17 = getelementptr inbounds %struct.rmi_data, %struct.rmi_data* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %1
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %62

23:                                               ; preds = %1
  %24 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %25 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %24, i32 0, i32 0
  %26 = load %struct.rmi_data*, %struct.rmi_data** %4, align 8
  %27 = call i32 @devm_add_action_or_reset(%struct.TYPE_2__* %25, i32* @rmi_irq_teardown, %struct.rmi_data* %26)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %23
  %31 = load i32, i32* %5, align 4
  store i32 %31, i32* %2, align 4
  br label %62

32:                                               ; preds = %23
  %33 = load %struct.rmi_data*, %struct.rmi_data** %4, align 8
  %34 = getelementptr inbounds %struct.rmi_data, %struct.rmi_data* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call i64 @irq_create_mapping(i32 %35, i32 0)
  %37 = load %struct.rmi_data*, %struct.rmi_data** %4, align 8
  %38 = getelementptr inbounds %struct.rmi_data, %struct.rmi_data* %37, i32 0, i32 0
  store i64 %36, i64* %38, align 8
  %39 = load %struct.rmi_data*, %struct.rmi_data** %4, align 8
  %40 = getelementptr inbounds %struct.rmi_data, %struct.rmi_data* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp sle i64 %41, 0
  br i1 %42, label %43, label %61

43:                                               ; preds = %32
  %44 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %45 = call i32 @hid_err(%struct.hid_device* %44, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %46 = load %struct.rmi_data*, %struct.rmi_data** %4, align 8
  %47 = getelementptr inbounds %struct.rmi_data, %struct.rmi_data* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp slt i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %43
  %51 = load %struct.rmi_data*, %struct.rmi_data** %4, align 8
  %52 = getelementptr inbounds %struct.rmi_data, %struct.rmi_data* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  br label %58

54:                                               ; preds = %43
  %55 = load i32, i32* @ENXIO, align 4
  %56 = sub nsw i32 0, %55
  %57 = sext i32 %56 to i64
  br label %58

58:                                               ; preds = %54, %50
  %59 = phi i64 [ %53, %50 ], [ %57, %54 ]
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* %2, align 4
  br label %62

61:                                               ; preds = %32
  store i32 0, i32* %2, align 4
  br label %62

62:                                               ; preds = %61, %58, %30, %20
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local %struct.rmi_data* @hid_get_drvdata(%struct.hid_device*) #1

declare dso_local i32 @irq_domain_create_linear(i32, i32, i32*, %struct.rmi_data*) #1

declare dso_local i32 @devm_add_action_or_reset(%struct.TYPE_2__*, i32*, %struct.rmi_data*) #1

declare dso_local i64 @irq_create_mapping(i32, i32) #1

declare dso_local i32 @hid_err(%struct.hid_device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
