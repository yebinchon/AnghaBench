; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/extr_ti_sci.c_devm_ti_sci_get_by_phandle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/extr_ti_sci.c_devm_ti_sci_get_by_phandle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ti_sci_handle = type { i32 }
%struct.device = type { i32 }

@devm_ti_sci_release = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ti_sci_handle* @devm_ti_sci_get_by_phandle(%struct.device* %0, i8* %1) #0 {
  %3 = alloca %struct.ti_sci_handle*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ti_sci_handle*, align 8
  %7 = alloca %struct.ti_sci_handle**, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i32, i32* @devm_ti_sci_release, align 4
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.ti_sci_handle** @devres_alloc(i32 %8, i32 8, i32 %9)
  store %struct.ti_sci_handle** %10, %struct.ti_sci_handle*** %7, align 8
  %11 = load %struct.ti_sci_handle**, %struct.ti_sci_handle*** %7, align 8
  %12 = icmp ne %struct.ti_sci_handle** %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  %16 = call %struct.ti_sci_handle* @ERR_PTR(i32 %15)
  store %struct.ti_sci_handle* %16, %struct.ti_sci_handle** %3, align 8
  br label %36

17:                                               ; preds = %2
  %18 = load %struct.device*, %struct.device** %4, align 8
  %19 = call i32 @dev_of_node(%struct.device* %18)
  %20 = load i8*, i8** %5, align 8
  %21 = call %struct.ti_sci_handle* @ti_sci_get_by_phandle(i32 %19, i8* %20)
  store %struct.ti_sci_handle* %21, %struct.ti_sci_handle** %6, align 8
  %22 = load %struct.ti_sci_handle*, %struct.ti_sci_handle** %6, align 8
  %23 = call i32 @IS_ERR(%struct.ti_sci_handle* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %17
  %26 = load %struct.ti_sci_handle*, %struct.ti_sci_handle** %6, align 8
  %27 = load %struct.ti_sci_handle**, %struct.ti_sci_handle*** %7, align 8
  store %struct.ti_sci_handle* %26, %struct.ti_sci_handle** %27, align 8
  %28 = load %struct.device*, %struct.device** %4, align 8
  %29 = load %struct.ti_sci_handle**, %struct.ti_sci_handle*** %7, align 8
  %30 = call i32 @devres_add(%struct.device* %28, %struct.ti_sci_handle** %29)
  br label %34

31:                                               ; preds = %17
  %32 = load %struct.ti_sci_handle**, %struct.ti_sci_handle*** %7, align 8
  %33 = call i32 @devres_free(%struct.ti_sci_handle** %32)
  br label %34

34:                                               ; preds = %31, %25
  %35 = load %struct.ti_sci_handle*, %struct.ti_sci_handle** %6, align 8
  store %struct.ti_sci_handle* %35, %struct.ti_sci_handle** %3, align 8
  br label %36

36:                                               ; preds = %34, %13
  %37 = load %struct.ti_sci_handle*, %struct.ti_sci_handle** %3, align 8
  ret %struct.ti_sci_handle* %37
}

declare dso_local %struct.ti_sci_handle** @devres_alloc(i32, i32, i32) #1

declare dso_local %struct.ti_sci_handle* @ERR_PTR(i32) #1

declare dso_local %struct.ti_sci_handle* @ti_sci_get_by_phandle(i32, i8*) #1

declare dso_local i32 @dev_of_node(%struct.device*) #1

declare dso_local i32 @IS_ERR(%struct.ti_sci_handle*) #1

declare dso_local i32 @devres_add(%struct.device*, %struct.ti_sci_handle**) #1

declare dso_local i32 @devres_free(%struct.ti_sci_handle**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
