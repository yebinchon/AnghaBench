; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/extr_ti_sci.c_devm_ti_sci_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/extr_ti_sci.c_devm_ti_sci_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.ti_sci_handle = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"failed to put handle %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*, i8*)* @devm_ti_sci_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @devm_ti_sci_release(%struct.device* %0, i8* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ti_sci_handle**, align 8
  %6 = alloca %struct.ti_sci_handle*, align 8
  %7 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.ti_sci_handle**
  store %struct.ti_sci_handle** %9, %struct.ti_sci_handle*** %5, align 8
  %10 = load %struct.ti_sci_handle**, %struct.ti_sci_handle*** %5, align 8
  %11 = load %struct.ti_sci_handle*, %struct.ti_sci_handle** %10, align 8
  store %struct.ti_sci_handle* %11, %struct.ti_sci_handle** %6, align 8
  %12 = load %struct.ti_sci_handle*, %struct.ti_sci_handle** %6, align 8
  %13 = call i32 @ti_sci_put_handle(%struct.ti_sci_handle* %12)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = load %struct.device*, %struct.device** %3, align 8
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @dev_err(%struct.device* %17, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %18)
  br label %20

20:                                               ; preds = %16, %2
  ret void
}

declare dso_local i32 @ti_sci_put_handle(%struct.ti_sci_handle*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
