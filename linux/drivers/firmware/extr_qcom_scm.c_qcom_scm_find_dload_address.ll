; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/extr_qcom_scm.c_qcom_scm_find_dload_address.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/extr_qcom_scm.c_qcom_scm_find_dload_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.resource = type { i64 }

@.str = private unnamed_addr constant [16 x i8] c"qcom,dload-mode\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i64*)* @qcom_scm_find_dload_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qcom_scm_find_dload_address(%struct.device* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca %struct.resource, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store i64* %1, i64** %5, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = getelementptr inbounds %struct.device, %struct.device* %11, i32 0, i32 0
  %13 = load %struct.device_node*, %struct.device_node** %12, align 8
  store %struct.device_node* %13, %struct.device_node** %7, align 8
  %14 = load %struct.device_node*, %struct.device_node** %7, align 8
  %15 = call %struct.device_node* @of_parse_phandle(%struct.device_node* %14, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 0)
  store %struct.device_node* %15, %struct.device_node** %6, align 8
  %16 = load %struct.device_node*, %struct.device_node** %6, align 8
  %17 = icmp ne %struct.device_node* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %41

19:                                               ; preds = %2
  %20 = load %struct.device_node*, %struct.device_node** %6, align 8
  %21 = call i32 @of_address_to_resource(%struct.device_node* %20, i32 0, %struct.resource* %8)
  store i32 %21, i32* %10, align 4
  %22 = load %struct.device_node*, %struct.device_node** %6, align 8
  %23 = call i32 @of_node_put(%struct.device_node* %22)
  %24 = load i32, i32* %10, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %19
  %27 = load i32, i32* %10, align 4
  store i32 %27, i32* %3, align 4
  br label %41

28:                                               ; preds = %19
  %29 = load %struct.device_node*, %struct.device_node** %7, align 8
  %30 = call i32 @of_property_read_u32_index(%struct.device_node* %29, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 1, i64* %9)
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %10, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = load i32, i32* %10, align 4
  store i32 %34, i32* %3, align 4
  br label %41

35:                                               ; preds = %28
  %36 = getelementptr inbounds %struct.resource, %struct.resource* %8, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* %9, align 8
  %39 = add nsw i64 %37, %38
  %40 = load i64*, i64** %5, align 8
  store i64 %39, i64* %40, align 8
  store i32 0, i32* %3, align 4
  br label %41

41:                                               ; preds = %35, %33, %26, %18
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local %struct.device_node* @of_parse_phandle(%struct.device_node*, i8*, i32) #1

declare dso_local i32 @of_address_to_resource(%struct.device_node*, i32, %struct.resource*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local i32 @of_property_read_u32_index(%struct.device_node*, i8*, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
