; ModuleID = '/home/carl/AnghaBench/linux/drivers/macintosh/extr_via-macii.c_macii_autopoll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/macintosh/extr_via-macii.c_macii_autopoll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adb_request = type { i32 }

@macii_autopoll.req = internal global %struct.adb_request zeroinitializer, align 4
@autopoll_devs = common dso_local global i32 0, align 4
@current_req = common dso_local global i32* null, align 8
@ADBREQ_NOSEND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @macii_autopoll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @macii_autopoll(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* %3, align 4
  %7 = and i32 %6, 65534
  store i32 %7, i32* @autopoll_devs, align 4
  %8 = load i32, i32* @autopoll_devs, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %28

11:                                               ; preds = %1
  %12 = load i64, i64* %4, align 8
  %13 = call i32 @local_irq_save(i64 %12)
  %14 = load i32*, i32** @current_req, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %24

16:                                               ; preds = %11
  %17 = load i32, i32* @ADBREQ_NOSEND, align 4
  %18 = load i32, i32* @autopoll_devs, align 4
  %19 = call i64 @ffs(i32 %18)
  %20 = sub nsw i64 %19, 1
  %21 = call i32 @ADB_READREG(i64 %20, i32 0)
  %22 = call i32 @adb_request(%struct.adb_request* @macii_autopoll.req, i32* null, i32 %17, i32 1, i32 %21)
  %23 = call i32 @macii_write(%struct.adb_request* @macii_autopoll.req)
  store i32 %23, i32* %5, align 4
  br label %24

24:                                               ; preds = %16, %11
  %25 = load i64, i64* %4, align 8
  %26 = call i32 @local_irq_restore(i64 %25)
  %27 = load i32, i32* %5, align 4
  store i32 %27, i32* %2, align 4
  br label %28

28:                                               ; preds = %24, %10
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @adb_request(%struct.adb_request*, i32*, i32, i32, i32) #1

declare dso_local i32 @ADB_READREG(i64, i32) #1

declare dso_local i64 @ffs(i32) #1

declare dso_local i32 @macii_write(%struct.adb_request*) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
