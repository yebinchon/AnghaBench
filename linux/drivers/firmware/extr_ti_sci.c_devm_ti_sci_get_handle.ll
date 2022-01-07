; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/extr_ti_sci.c_devm_ti_sci_get_handle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/extr_ti_sci.c_devm_ti_sci_get_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ti_sci_handle = type { i32 }
%struct.device = type { i32 }

@devm_ti_sci_release = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ti_sci_handle* @devm_ti_sci_get_handle(%struct.device* %0) #0 {
  %2 = alloca %struct.ti_sci_handle*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.ti_sci_handle**, align 8
  %5 = alloca %struct.ti_sci_handle*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  %6 = load i32, i32* @devm_ti_sci_release, align 4
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.ti_sci_handle** @devres_alloc(i32 %6, i32 8, i32 %7)
  store %struct.ti_sci_handle** %8, %struct.ti_sci_handle*** %4, align 8
  %9 = load %struct.ti_sci_handle**, %struct.ti_sci_handle*** %4, align 8
  %10 = icmp ne %struct.ti_sci_handle** %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  %14 = call %struct.ti_sci_handle* @ERR_PTR(i32 %13)
  store %struct.ti_sci_handle* %14, %struct.ti_sci_handle** %2, align 8
  br label %32

15:                                               ; preds = %1
  %16 = load %struct.device*, %struct.device** %3, align 8
  %17 = call %struct.ti_sci_handle* @ti_sci_get_handle(%struct.device* %16)
  store %struct.ti_sci_handle* %17, %struct.ti_sci_handle** %5, align 8
  %18 = load %struct.ti_sci_handle*, %struct.ti_sci_handle** %5, align 8
  %19 = call i32 @IS_ERR(%struct.ti_sci_handle* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %15
  %22 = load %struct.ti_sci_handle*, %struct.ti_sci_handle** %5, align 8
  %23 = load %struct.ti_sci_handle**, %struct.ti_sci_handle*** %4, align 8
  store %struct.ti_sci_handle* %22, %struct.ti_sci_handle** %23, align 8
  %24 = load %struct.device*, %struct.device** %3, align 8
  %25 = load %struct.ti_sci_handle**, %struct.ti_sci_handle*** %4, align 8
  %26 = call i32 @devres_add(%struct.device* %24, %struct.ti_sci_handle** %25)
  br label %30

27:                                               ; preds = %15
  %28 = load %struct.ti_sci_handle**, %struct.ti_sci_handle*** %4, align 8
  %29 = call i32 @devres_free(%struct.ti_sci_handle** %28)
  br label %30

30:                                               ; preds = %27, %21
  %31 = load %struct.ti_sci_handle*, %struct.ti_sci_handle** %5, align 8
  store %struct.ti_sci_handle* %31, %struct.ti_sci_handle** %2, align 8
  br label %32

32:                                               ; preds = %30, %11
  %33 = load %struct.ti_sci_handle*, %struct.ti_sci_handle** %2, align 8
  ret %struct.ti_sci_handle* %33
}

declare dso_local %struct.ti_sci_handle** @devres_alloc(i32, i32, i32) #1

declare dso_local %struct.ti_sci_handle* @ERR_PTR(i32) #1

declare dso_local %struct.ti_sci_handle* @ti_sci_get_handle(%struct.device*) #1

declare dso_local i32 @IS_ERR(%struct.ti_sci_handle*) #1

declare dso_local i32 @devres_add(%struct.device*, %struct.ti_sci_handle**) #1

declare dso_local i32 @devres_free(%struct.ti_sci_handle**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
