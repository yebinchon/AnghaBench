; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/extr_arm_scpi.c_scpi_alloc_xfer_list.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/extr_arm_scpi.c_scpi_alloc_xfer_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.scpi_chan = type { i32, %struct.scpi_xfer* }
%struct.scpi_xfer = type { i32, i32 }

@MAX_SCPI_XFERS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.scpi_chan*)* @scpi_alloc_xfer_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scpi_alloc_xfer_list(%struct.device* %0, %struct.scpi_chan* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.scpi_chan*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.scpi_xfer*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.scpi_chan* %1, %struct.scpi_chan** %5, align 8
  %8 = load %struct.device*, %struct.device** %4, align 8
  %9 = load i32, i32* @MAX_SCPI_XFERS, align 4
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.scpi_xfer* @devm_kcalloc(%struct.device* %8, i32 %9, i32 8, i32 %10)
  store %struct.scpi_xfer* %11, %struct.scpi_xfer** %7, align 8
  %12 = load %struct.scpi_xfer*, %struct.scpi_xfer** %7, align 8
  %13 = icmp ne %struct.scpi_xfer* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %40

17:                                               ; preds = %2
  %18 = load %struct.scpi_xfer*, %struct.scpi_xfer** %7, align 8
  %19 = load %struct.scpi_chan*, %struct.scpi_chan** %5, align 8
  %20 = getelementptr inbounds %struct.scpi_chan, %struct.scpi_chan* %19, i32 0, i32 1
  store %struct.scpi_xfer* %18, %struct.scpi_xfer** %20, align 8
  store i32 0, i32* %6, align 4
  br label %21

21:                                               ; preds = %34, %17
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @MAX_SCPI_XFERS, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %39

25:                                               ; preds = %21
  %26 = load %struct.scpi_xfer*, %struct.scpi_xfer** %7, align 8
  %27 = getelementptr inbounds %struct.scpi_xfer, %struct.scpi_xfer* %26, i32 0, i32 1
  %28 = call i32 @init_completion(i32* %27)
  %29 = load %struct.scpi_xfer*, %struct.scpi_xfer** %7, align 8
  %30 = getelementptr inbounds %struct.scpi_xfer, %struct.scpi_xfer* %29, i32 0, i32 0
  %31 = load %struct.scpi_chan*, %struct.scpi_chan** %5, align 8
  %32 = getelementptr inbounds %struct.scpi_chan, %struct.scpi_chan* %31, i32 0, i32 0
  %33 = call i32 @list_add_tail(i32* %30, i32* %32)
  br label %34

34:                                               ; preds = %25
  %35 = load i32, i32* %6, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %6, align 4
  %37 = load %struct.scpi_xfer*, %struct.scpi_xfer** %7, align 8
  %38 = getelementptr inbounds %struct.scpi_xfer, %struct.scpi_xfer* %37, i32 1
  store %struct.scpi_xfer* %38, %struct.scpi_xfer** %7, align 8
  br label %21

39:                                               ; preds = %21
  store i32 0, i32* %3, align 4
  br label %40

40:                                               ; preds = %39, %14
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local %struct.scpi_xfer* @devm_kcalloc(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
