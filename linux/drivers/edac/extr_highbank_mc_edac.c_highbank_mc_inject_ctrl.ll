; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_highbank_mc_edac.c_highbank_mc_inject_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_highbank_mc_edac.c_highbank_mc_inject_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.mem_ctl_info = type { i32 }

@EINVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @highbank_mc_inject_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @highbank_mc_inject_ctrl(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.mem_ctl_info*, align 8
  %11 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load %struct.device*, %struct.device** %6, align 8
  %13 = call %struct.mem_ctl_info* @to_mci(%struct.device* %12)
  store %struct.mem_ctl_info* %13, %struct.mem_ctl_info** %10, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = call i64 @kstrtou8(i8* %14, i32 16, i32* %11)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %4
  %18 = load i64, i64* @EINVAL, align 8
  %19 = sub i64 0, %18
  store i64 %19, i64* %5, align 8
  br label %25

20:                                               ; preds = %4
  %21 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %10, align 8
  %22 = load i32, i32* %11, align 4
  %23 = call i32 @highbank_mc_err_inject(%struct.mem_ctl_info* %21, i32 %22)
  %24 = load i64, i64* %9, align 8
  store i64 %24, i64* %5, align 8
  br label %25

25:                                               ; preds = %20, %17
  %26 = load i64, i64* %5, align 8
  ret i64 %26
}

declare dso_local %struct.mem_ctl_info* @to_mci(%struct.device*) #1

declare dso_local i64 @kstrtou8(i8*, i32, i32*) #1

declare dso_local i32 @highbank_mc_err_inject(%struct.mem_ctl_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
