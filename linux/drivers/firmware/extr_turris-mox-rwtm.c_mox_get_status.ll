; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/extr_turris-mox-rwtm.c_mox_get_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/extr_turris-mox-rwtm.c_mox_get_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MBOX_STS_SUCCESS = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@MBOX_STS_FAIL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @mox_get_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mox_get_status(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = call i32 @MBOX_STS_CMD(i32 %6)
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %7, %8
  br i1 %9, label %15, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* %5, align 4
  %12 = call i64 @MBOX_STS_ERROR(i32 %11)
  %13 = load i64, i64* @MBOX_STS_SUCCESS, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %10, %2
  %16 = load i32, i32* @EIO, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %30

18:                                               ; preds = %10
  %19 = load i32, i32* %5, align 4
  %20 = call i64 @MBOX_STS_ERROR(i32 %19)
  %21 = load i64, i64* @MBOX_STS_FAIL, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %18
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @MBOX_STS_VALUE(i32 %24)
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %30

27:                                               ; preds = %18
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @MBOX_STS_VALUE(i32 %28)
  store i32 %29, i32* %3, align 4
  br label %30

30:                                               ; preds = %27, %23, %15
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local i32 @MBOX_STS_CMD(i32) #1

declare dso_local i64 @MBOX_STS_ERROR(i32) #1

declare dso_local i32 @MBOX_STS_VALUE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
