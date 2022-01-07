; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_qcom-pdc.c_pdc_setup_pin_mapping.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_qcom-pdc.c_pdc_setup_pin_mapping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"qcom,pdc-ranges\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@pdc_region_cnt = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@pdc_region = common dso_local global %struct.TYPE_3__* null, align 8
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device_node*)* @pdc_setup_pin_mapping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pdc_setup_pin_mapping(%struct.device_node* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device_node*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.device_node* %0, %struct.device_node** %3, align 8
  %6 = load %struct.device_node*, %struct.device_node** %3, align 8
  %7 = call i32 @of_property_count_elems_of_size(%struct.device_node* %6, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 4)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp sle i32 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* %5, align 4
  %12 = srem i32 %11, 3
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %10, %1
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %83

17:                                               ; preds = %10
  %18 = load i32, i32* %5, align 4
  %19 = sdiv i32 %18, 3
  store i32 %19, i32* @pdc_region_cnt, align 4
  %20 = load i32, i32* @pdc_region_cnt, align 4
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call %struct.TYPE_3__* @kcalloc(i32 %20, i32 12, i32 %21)
  store %struct.TYPE_3__* %22, %struct.TYPE_3__** @pdc_region, align 8
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** @pdc_region, align 8
  %24 = icmp ne %struct.TYPE_3__* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %17
  store i32 0, i32* @pdc_region_cnt, align 4
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %83

28:                                               ; preds = %17
  store i32 0, i32* %5, align 4
  br label %29

29:                                               ; preds = %79, %28
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @pdc_region_cnt, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %82

33:                                               ; preds = %29
  %34 = load %struct.device_node*, %struct.device_node** %3, align 8
  %35 = load i32, i32* %5, align 4
  %36 = mul nsw i32 %35, 3
  %37 = add nsw i32 %36, 0
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** @pdc_region, align 8
  %39 = load i32, i32* %5, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 2
  %43 = call i32 @of_property_read_u32_index(%struct.device_node* %34, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %37, i32* %42)
  store i32 %43, i32* %4, align 4
  %44 = load i32, i32* %4, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %33
  %47 = load i32, i32* %4, align 4
  store i32 %47, i32* %2, align 4
  br label %83

48:                                               ; preds = %33
  %49 = load %struct.device_node*, %struct.device_node** %3, align 8
  %50 = load i32, i32* %5, align 4
  %51 = mul nsw i32 %50, 3
  %52 = add nsw i32 %51, 1
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** @pdc_region, align 8
  %54 = load i32, i32* %5, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 1
  %58 = call i32 @of_property_read_u32_index(%struct.device_node* %49, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %52, i32* %57)
  store i32 %58, i32* %4, align 4
  %59 = load i32, i32* %4, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %48
  %62 = load i32, i32* %4, align 4
  store i32 %62, i32* %2, align 4
  br label %83

63:                                               ; preds = %48
  %64 = load %struct.device_node*, %struct.device_node** %3, align 8
  %65 = load i32, i32* %5, align 4
  %66 = mul nsw i32 %65, 3
  %67 = add nsw i32 %66, 2
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** @pdc_region, align 8
  %69 = load i32, i32* %5, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  %73 = call i32 @of_property_read_u32_index(%struct.device_node* %64, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %67, i32* %72)
  store i32 %73, i32* %4, align 4
  %74 = load i32, i32* %4, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %63
  %77 = load i32, i32* %4, align 4
  store i32 %77, i32* %2, align 4
  br label %83

78:                                               ; preds = %63
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %5, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %5, align 4
  br label %29

82:                                               ; preds = %29
  store i32 0, i32* %2, align 4
  br label %83

83:                                               ; preds = %82, %76, %61, %46, %25, %14
  %84 = load i32, i32* %2, align 4
  ret i32 %84
}

declare dso_local i32 @of_property_count_elems_of_size(%struct.device_node*, i8*, i32) #1

declare dso_local %struct.TYPE_3__* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @of_property_read_u32_index(%struct.device_node*, i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
