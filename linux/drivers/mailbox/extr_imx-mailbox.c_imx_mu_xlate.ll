; ModuleID = '/home/carl/AnghaBench/linux/drivers/mailbox/extr_imx-mailbox.c_imx_mu_xlate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mailbox/extr_imx-mailbox.c_imx_mu_xlate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbox_chan = type { i32 }
%struct.mbox_controller = type { i32, %struct.mbox_chan*, i32 }
%struct.of_phandle_args = type { i32, i32* }

@.str = private unnamed_addr constant [27 x i8] c"Invalid argument count %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [55 x i8] c"Not supported channel number: %d. (type: %d, idx: %d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mbox_chan* (%struct.mbox_controller*, %struct.of_phandle_args*)* @imx_mu_xlate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mbox_chan* @imx_mu_xlate(%struct.mbox_controller* %0, %struct.of_phandle_args* %1) #0 {
  %3 = alloca %struct.mbox_chan*, align 8
  %4 = alloca %struct.mbox_controller*, align 8
  %5 = alloca %struct.of_phandle_args*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mbox_controller* %0, %struct.mbox_controller** %4, align 8
  store %struct.of_phandle_args* %1, %struct.of_phandle_args** %5, align 8
  %9 = load %struct.of_phandle_args*, %struct.of_phandle_args** %5, align 8
  %10 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 2
  br i1 %12, label %13, label %24

13:                                               ; preds = %2
  %14 = load %struct.mbox_controller*, %struct.mbox_controller** %4, align 8
  %15 = getelementptr inbounds %struct.mbox_controller, %struct.mbox_controller* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.of_phandle_args*, %struct.of_phandle_args** %5, align 8
  %18 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %16, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  %23 = call %struct.mbox_chan* @ERR_PTR(i32 %22)
  store %struct.mbox_chan* %23, %struct.mbox_chan** %3, align 8
  br label %62

24:                                               ; preds = %2
  %25 = load %struct.of_phandle_args*, %struct.of_phandle_args** %5, align 8
  %26 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %6, align 4
  %30 = load %struct.of_phandle_args*, %struct.of_phandle_args** %5, align 8
  %31 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 1
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %6, align 4
  %36 = mul nsw i32 %35, 4
  %37 = load i32, i32* %7, align 4
  %38 = add nsw i32 %36, %37
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  %40 = load %struct.mbox_controller*, %struct.mbox_controller** %4, align 8
  %41 = getelementptr inbounds %struct.mbox_controller, %struct.mbox_controller* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp sge i32 %39, %42
  br i1 %43, label %44, label %55

44:                                               ; preds = %24
  %45 = load %struct.mbox_controller*, %struct.mbox_controller** %4, align 8
  %46 = getelementptr inbounds %struct.mbox_controller, %struct.mbox_controller* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* %7, align 4
  %51 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %47, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i32 %48, i32 %49, i32 %50)
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  %54 = call %struct.mbox_chan* @ERR_PTR(i32 %53)
  store %struct.mbox_chan* %54, %struct.mbox_chan** %3, align 8
  br label %62

55:                                               ; preds = %24
  %56 = load %struct.mbox_controller*, %struct.mbox_controller** %4, align 8
  %57 = getelementptr inbounds %struct.mbox_controller, %struct.mbox_controller* %56, i32 0, i32 1
  %58 = load %struct.mbox_chan*, %struct.mbox_chan** %57, align 8
  %59 = load i32, i32* %8, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.mbox_chan, %struct.mbox_chan* %58, i64 %60
  store %struct.mbox_chan* %61, %struct.mbox_chan** %3, align 8
  br label %62

62:                                               ; preds = %55, %44, %13
  %63 = load %struct.mbox_chan*, %struct.mbox_chan** %3, align 8
  ret %struct.mbox_chan* %63
}

declare dso_local i32 @dev_err(i32, i8*, i32, ...) #1

declare dso_local %struct.mbox_chan* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
