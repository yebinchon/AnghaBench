; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_ibmaem.c_aem_init_aem2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_ibmaem.c_aem_init_aem2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aem_ipmi_data = type { i32 }
%struct.aem_find_instance_resp = type { i32, i32 }

@.str = private unnamed_addr constant [56 x i8] c"Unknown AEM v%d; please report this to the maintainer.\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Error %d initializing AEM2 0x%X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.aem_ipmi_data*)* @aem_init_aem2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aem_init_aem2(%struct.aem_ipmi_data* %0) #0 {
  %2 = alloca %struct.aem_ipmi_data*, align 8
  %3 = alloca %struct.aem_find_instance_resp, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.aem_ipmi_data* %0, %struct.aem_ipmi_data** %2, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %38, %16, %1
  %7 = load %struct.aem_ipmi_data*, %struct.aem_ipmi_data** %2, align 8
  %8 = load i32, i32* %5, align 4
  %9 = call i32 @aem_find_aem2(%struct.aem_ipmi_data* %7, %struct.aem_find_instance_resp* %3, i32 %8)
  %10 = icmp ne i32 %9, 0
  %11 = xor i1 %10, true
  br i1 %11, label %12, label %41

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.aem_find_instance_resp, %struct.aem_find_instance_resp* %3, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 2
  br i1 %15, label %16, label %25

16:                                               ; preds = %12
  %17 = load %struct.aem_ipmi_data*, %struct.aem_ipmi_data** %2, align 8
  %18 = getelementptr inbounds %struct.aem_ipmi_data, %struct.aem_ipmi_data* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = getelementptr inbounds %struct.aem_find_instance_resp, %struct.aem_find_instance_resp* %3, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %19, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load i32, i32* %5, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %5, align 4
  br label %6

25:                                               ; preds = %12
  %26 = load %struct.aem_ipmi_data*, %struct.aem_ipmi_data** %2, align 8
  %27 = call i32 @aem_init_aem2_inst(%struct.aem_ipmi_data* %26, %struct.aem_find_instance_resp* %3)
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %4, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %25
  %31 = load %struct.aem_ipmi_data*, %struct.aem_ipmi_data** %2, align 8
  %32 = getelementptr inbounds %struct.aem_ipmi_data, %struct.aem_ipmi_data* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %4, align 4
  %35 = getelementptr inbounds %struct.aem_find_instance_resp, %struct.aem_find_instance_resp* %3, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %33, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %34, i32 %36)
  br label %38

38:                                               ; preds = %30, %25
  %39 = load i32, i32* %5, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %5, align 4
  br label %6

41:                                               ; preds = %6
  ret void
}

declare dso_local i32 @aem_find_aem2(%struct.aem_ipmi_data*, %struct.aem_find_instance_resp*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, ...) #1

declare dso_local i32 @aem_init_aem2_inst(%struct.aem_ipmi_data*, %struct.aem_find_instance_resp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
