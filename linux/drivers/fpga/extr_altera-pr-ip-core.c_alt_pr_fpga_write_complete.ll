; ModuleID = '/home/carl/AnghaBench/linux/drivers/fpga/extr_altera-pr-ip-core.c_alt_pr_fpga_write_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/fpga/extr_altera-pr-ip-core.c_alt_pr_fpga_write_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fpga_manager = type { i32 }
%struct.fpga_image_info = type { i64 }

@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"successful partial reconfiguration\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"timed out waiting for write to complete\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fpga_manager*, %struct.fpga_image_info*)* @alt_pr_fpga_write_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alt_pr_fpga_write_complete(%struct.fpga_manager* %0, %struct.fpga_image_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fpga_manager*, align 8
  %5 = alloca %struct.fpga_image_info*, align 8
  %6 = alloca i64, align 8
  store %struct.fpga_manager* %0, %struct.fpga_manager** %4, align 8
  store %struct.fpga_image_info* %1, %struct.fpga_image_info** %5, align 8
  store i64 0, i64* %6, align 8
  br label %7

7:                                                ; preds = %20, %2
  %8 = load %struct.fpga_manager*, %struct.fpga_manager** %4, align 8
  %9 = call i32 @alt_pr_fpga_state(%struct.fpga_manager* %8)
  switch i32 %9, label %17 [
    i32 128, label %10
    i32 129, label %13
  ]

10:                                               ; preds = %7
  %11 = load i32, i32* @EIO, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %3, align 4
  br label %33

13:                                               ; preds = %7
  %14 = load %struct.fpga_manager*, %struct.fpga_manager** %4, align 8
  %15 = getelementptr inbounds %struct.fpga_manager, %struct.fpga_manager* %14, i32 0, i32 0
  %16 = call i32 @dev_info(i32* %15, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %33

17:                                               ; preds = %7
  br label %18

18:                                               ; preds = %17
  %19 = call i32 @udelay(i32 1)
  br label %20

20:                                               ; preds = %18
  %21 = load %struct.fpga_image_info*, %struct.fpga_image_info** %5, align 8
  %22 = getelementptr inbounds %struct.fpga_image_info, %struct.fpga_image_info* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* %6, align 8
  %25 = add nsw i64 %24, 1
  store i64 %25, i64* %6, align 8
  %26 = icmp sgt i64 %23, %24
  br i1 %26, label %7, label %27

27:                                               ; preds = %20
  %28 = load %struct.fpga_manager*, %struct.fpga_manager** %4, align 8
  %29 = getelementptr inbounds %struct.fpga_manager, %struct.fpga_manager* %28, i32 0, i32 0
  %30 = call i32 @dev_err(i32* %29, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %31 = load i32, i32* @ETIMEDOUT, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %33

33:                                               ; preds = %27, %13, %10
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i32 @alt_pr_fpga_state(%struct.fpga_manager*) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
