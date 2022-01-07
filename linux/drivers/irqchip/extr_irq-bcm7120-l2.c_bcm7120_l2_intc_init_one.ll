; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-bcm7120-l2.c_bcm7120_l2_intc_init_one.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-bcm7120-l2.c_bcm7120_l2_intc_init_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }
%struct.bcm7120_l2_intc_data = type { i32, i64, %struct.bcm7120_l1_intc_data* }
%struct.bcm7120_l1_intc_data = type { i32*, %struct.bcm7120_l2_intc_data* }

@.str = private unnamed_addr constant [28 x i8] c"failed to map interrupt %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@bcm7120_l2_intc_irq_handle = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device_node*, %struct.bcm7120_l2_intc_data*, i32, i32*)* @bcm7120_l2_intc_init_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm7120_l2_intc_init_one(%struct.device_node* %0, %struct.bcm7120_l2_intc_data* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca %struct.bcm7120_l2_intc_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.bcm7120_l1_intc_data*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.device_node* %0, %struct.device_node** %6, align 8
  store %struct.bcm7120_l2_intc_data* %1, %struct.bcm7120_l2_intc_data** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %13 = load %struct.bcm7120_l2_intc_data*, %struct.bcm7120_l2_intc_data** %7, align 8
  %14 = getelementptr inbounds %struct.bcm7120_l2_intc_data, %struct.bcm7120_l2_intc_data* %13, i32 0, i32 2
  %15 = load %struct.bcm7120_l1_intc_data*, %struct.bcm7120_l1_intc_data** %14, align 8
  %16 = load i32, i32* %8, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.bcm7120_l1_intc_data, %struct.bcm7120_l1_intc_data* %15, i64 %17
  store %struct.bcm7120_l1_intc_data* %18, %struct.bcm7120_l1_intc_data** %10, align 8
  %19 = load %struct.device_node*, %struct.device_node** %6, align 8
  %20 = load i32, i32* %8, align 4
  %21 = call i32 @irq_of_parse_and_map(%struct.device_node* %19, i32 %20)
  store i32 %21, i32* %11, align 4
  %22 = load i32, i32* %11, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %4
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @pr_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %5, align 4
  br label %96

29:                                               ; preds = %4
  store i32 0, i32* %12, align 4
  br label %30

30:                                               ; preds = %85, %29
  %31 = load i32, i32* %12, align 4
  %32 = load %struct.bcm7120_l2_intc_data*, %struct.bcm7120_l2_intc_data** %7, align 8
  %33 = getelementptr inbounds %struct.bcm7120_l2_intc_data, %struct.bcm7120_l2_intc_data* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp ult i32 %31, %34
  br i1 %35, label %36, label %88

36:                                               ; preds = %30
  %37 = load %struct.bcm7120_l2_intc_data*, %struct.bcm7120_l2_intc_data** %7, align 8
  %38 = getelementptr inbounds %struct.bcm7120_l2_intc_data, %struct.bcm7120_l2_intc_data* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %64

41:                                               ; preds = %36
  %42 = load %struct.bcm7120_l2_intc_data*, %struct.bcm7120_l2_intc_data** %7, align 8
  %43 = getelementptr inbounds %struct.bcm7120_l2_intc_data, %struct.bcm7120_l2_intc_data* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load i32, i32* %8, align 4
  %46 = load %struct.bcm7120_l2_intc_data*, %struct.bcm7120_l2_intc_data** %7, align 8
  %47 = getelementptr inbounds %struct.bcm7120_l2_intc_data, %struct.bcm7120_l2_intc_data* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = mul i32 %45, %48
  %50 = zext i32 %49 to i64
  %51 = add nsw i64 %44, %50
  %52 = load i32, i32* %12, align 4
  %53 = zext i32 %52 to i64
  %54 = add nsw i64 %51, %53
  %55 = call i32 @be32_to_cpup(i64 %54)
  %56 = load %struct.bcm7120_l1_intc_data*, %struct.bcm7120_l1_intc_data** %10, align 8
  %57 = getelementptr inbounds %struct.bcm7120_l1_intc_data, %struct.bcm7120_l1_intc_data* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %12, align 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = or i32 %62, %55
  store i32 %63, i32* %61, align 4
  br label %71

64:                                               ; preds = %36
  %65 = load %struct.bcm7120_l1_intc_data*, %struct.bcm7120_l1_intc_data** %10, align 8
  %66 = getelementptr inbounds %struct.bcm7120_l1_intc_data, %struct.bcm7120_l1_intc_data* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* %12, align 4
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  store i32 -1, i32* %70, align 4
  br label %71

71:                                               ; preds = %64, %41
  %72 = load %struct.bcm7120_l1_intc_data*, %struct.bcm7120_l1_intc_data** %10, align 8
  %73 = getelementptr inbounds %struct.bcm7120_l1_intc_data, %struct.bcm7120_l1_intc_data* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* %12, align 4
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = load i32*, i32** %9, align 8
  %80 = load i32, i32* %12, align 4
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = or i32 %83, %78
  store i32 %84, i32* %82, align 4
  br label %85

85:                                               ; preds = %71
  %86 = load i32, i32* %12, align 4
  %87 = add i32 %86, 1
  store i32 %87, i32* %12, align 4
  br label %30

88:                                               ; preds = %30
  %89 = load %struct.bcm7120_l2_intc_data*, %struct.bcm7120_l2_intc_data** %7, align 8
  %90 = load %struct.bcm7120_l1_intc_data*, %struct.bcm7120_l1_intc_data** %10, align 8
  %91 = getelementptr inbounds %struct.bcm7120_l1_intc_data, %struct.bcm7120_l1_intc_data* %90, i32 0, i32 1
  store %struct.bcm7120_l2_intc_data* %89, %struct.bcm7120_l2_intc_data** %91, align 8
  %92 = load i32, i32* %11, align 4
  %93 = load i32, i32* @bcm7120_l2_intc_irq_handle, align 4
  %94 = load %struct.bcm7120_l1_intc_data*, %struct.bcm7120_l1_intc_data** %10, align 8
  %95 = call i32 @irq_set_chained_handler_and_data(i32 %92, i32 %93, %struct.bcm7120_l1_intc_data* %94)
  store i32 0, i32* %5, align 4
  br label %96

96:                                               ; preds = %88, %24
  %97 = load i32, i32* %5, align 4
  ret i32 %97
}

declare dso_local i32 @irq_of_parse_and_map(%struct.device_node*, i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @be32_to_cpup(i64) #1

declare dso_local i32 @irq_set_chained_handler_and_data(i32, i32, %struct.bcm7120_l1_intc_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
