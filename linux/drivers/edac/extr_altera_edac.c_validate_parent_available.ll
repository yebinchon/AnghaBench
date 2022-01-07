; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_altera_edac.c_validate_parent_available.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_altera_edac.c_validate_parent_available.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"altr,sdram-edac-s10\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"altr,ecc-parent\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device_node*)* @validate_parent_available to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @validate_parent_available(%struct.device_node* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device_node*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca i32, align 4
  store %struct.device_node* %0, %struct.device_node** %3, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.device_node*, %struct.device_node** %3, align 8
  %7 = call i64 @of_device_is_compatible(%struct.device_node* %6, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %26

10:                                               ; preds = %1
  %11 = load %struct.device_node*, %struct.device_node** %3, align 8
  %12 = call %struct.device_node* @of_parse_phandle(%struct.device_node* %11, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 0)
  store %struct.device_node* %12, %struct.device_node** %4, align 8
  %13 = load %struct.device_node*, %struct.device_node** %4, align 8
  %14 = icmp ne %struct.device_node* %13, null
  br i1 %14, label %15, label %22

15:                                               ; preds = %10
  %16 = load %struct.device_node*, %struct.device_node** %4, align 8
  %17 = call i32 @of_device_is_available(%struct.device_node* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %15
  %20 = load i32, i32* @ENODEV, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %5, align 4
  br label %22

22:                                               ; preds = %19, %15, %10
  %23 = load %struct.device_node*, %struct.device_node** %4, align 8
  %24 = call i32 @of_node_put(%struct.device_node* %23)
  %25 = load i32, i32* %5, align 4
  store i32 %25, i32* %2, align 4
  br label %26

26:                                               ; preds = %22, %9
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local i64 @of_device_is_compatible(%struct.device_node*, i8*) #1

declare dso_local %struct.device_node* @of_parse_phandle(%struct.device_node*, i8*, i32) #1

declare dso_local i32 @of_device_is_available(%struct.device_node*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
