; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/extr_trusted_foundations.c_of_register_trusted_foundations.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/extr_trusted_foundations.c_of_register_trusted_foundations.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }
%struct.trusted_foundations_platform_data = type { i32, i32 }

@.str = private unnamed_addr constant [24 x i8] c"tlm,trusted-foundations\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"tlm,version-major\00", align 1
@.str.2 = private unnamed_addr constant [52 x i8] c"Trusted Foundation: missing version-major property\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"tlm,version-minor\00", align 1
@.str.4 = private unnamed_addr constant [52 x i8] c"Trusted Foundation: missing version-minor property\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @of_register_trusted_foundations() #0 {
  %1 = alloca %struct.device_node*, align 8
  %2 = alloca %struct.trusted_foundations_platform_data, align 4
  %3 = alloca i32, align 4
  %4 = call %struct.device_node* @of_find_compatible_node(i32* null, i32* null, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  store %struct.device_node* %4, %struct.device_node** %1, align 8
  %5 = load %struct.device_node*, %struct.device_node** %1, align 8
  %6 = icmp ne %struct.device_node* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %0
  br label %26

8:                                                ; preds = %0
  %9 = load %struct.device_node*, %struct.device_node** %1, align 8
  %10 = getelementptr inbounds %struct.trusted_foundations_platform_data, %struct.trusted_foundations_platform_data* %2, i32 0, i32 1
  %11 = call i32 @of_property_read_u32(%struct.device_node* %9, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32* %10)
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* %3, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %8
  %15 = call i32 @panic(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0))
  br label %16

16:                                               ; preds = %14, %8
  %17 = load %struct.device_node*, %struct.device_node** %1, align 8
  %18 = getelementptr inbounds %struct.trusted_foundations_platform_data, %struct.trusted_foundations_platform_data* %2, i32 0, i32 0
  %19 = call i32 @of_property_read_u32(%struct.device_node* %17, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32* %18)
  store i32 %19, i32* %3, align 4
  %20 = load i32, i32* %3, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %16
  %23 = call i32 @panic(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.4, i64 0, i64 0))
  br label %24

24:                                               ; preds = %22, %16
  %25 = call i32 @register_trusted_foundations(%struct.trusted_foundations_platform_data* %2)
  br label %26

26:                                               ; preds = %24, %7
  ret void
}

declare dso_local %struct.device_node* @of_find_compatible_node(i32*, i32*, i8*) #1

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @register_trusted_foundations(%struct.trusted_foundations_platform_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
