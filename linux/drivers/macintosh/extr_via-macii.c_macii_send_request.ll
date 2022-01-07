; ModuleID = '/home/carl/AnghaBench/linux/drivers/macintosh/extr_via-macii.c_macii_send_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/macintosh/extr_via-macii.c_macii_send_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adb_request = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adb_request*, i32)* @macii_send_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @macii_send_request(%struct.adb_request* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.adb_request*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.adb_request* %0, %struct.adb_request** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.adb_request*, %struct.adb_request** %4, align 8
  %8 = call i32 @macii_write(%struct.adb_request* %7)
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i32, i32* %6, align 4
  store i32 %12, i32* %3, align 4
  br label %27

13:                                               ; preds = %2
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %26

16:                                               ; preds = %13
  br label %17

17:                                               ; preds = %23, %16
  %18 = load %struct.adb_request*, %struct.adb_request** %4, align 8
  %19 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  br i1 %22, label %23, label %25

23:                                               ; preds = %17
  %24 = call i32 (...) @macii_poll()
  br label %17

25:                                               ; preds = %17
  br label %26

26:                                               ; preds = %25, %13
  store i32 0, i32* %3, align 4
  br label %27

27:                                               ; preds = %26, %11
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local i32 @macii_write(%struct.adb_request*) #1

declare dso_local i32 @macii_poll(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
