; ModuleID = '/home/carl/AnghaBench/linux/drivers/hv/extr_hv_fcopy.c_fcopy_handle_handshake.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hv/extr_hv_fcopy.c_fcopy_handle_handshake.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FCOPY_CURRENT_VERSION = common dso_local global i32 0, align 4
@dm_reg_value = common dso_local global i32 0, align 4
@hvt = common dso_local global i32 0, align 4
@fcopy_register_done = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"FCP: userspace daemon ver. %d connected\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @fcopy_handle_handshake to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fcopy_handle_handshake(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* @FCOPY_CURRENT_VERSION, align 4
  store i32 %5, i32* %4, align 4
  %6 = load i32, i32* %3, align 4
  switch i32 %6, label %19 [
    i32 129, label %7
    i32 128, label %9
  ]

7:                                                ; preds = %1
  %8 = load i32, i32* %3, align 4
  store i32 %8, i32* @dm_reg_value, align 4
  br label %22

9:                                                ; preds = %1
  %10 = load i32, i32* @hvt, align 4
  %11 = load i32, i32* @fcopy_register_done, align 4
  %12 = call i32 @hvutil_transport_send(i32 %10, i32* %4, i32 4, i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %9
  %15 = load i32, i32* @EFAULT, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %25

17:                                               ; preds = %9
  %18 = load i32, i32* %3, align 4
  store i32 %18, i32* @dm_reg_value, align 4
  br label %22

19:                                               ; preds = %1
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %25

22:                                               ; preds = %17, %7
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @pr_debug(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %23)
  store i32 0, i32* %2, align 4
  br label %25

25:                                               ; preds = %22, %19, %14
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

declare dso_local i32 @hvutil_transport_send(i32, i32*, i32, i32) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
