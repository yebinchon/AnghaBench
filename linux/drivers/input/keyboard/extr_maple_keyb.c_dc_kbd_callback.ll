; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_maple_keyb.c_dc_kbd_callback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_maple_keyb.c_dc_kbd_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mapleq = type { %struct.TYPE_2__*, %struct.maple_device* }
%struct.TYPE_2__ = type { i64 }
%struct.maple_device = type { i64 }
%struct.dc_kbd = type { i32 }

@maple_keyb_mutex = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mapleq*)* @dc_kbd_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dc_kbd_callback(%struct.mapleq* %0) #0 {
  %2 = alloca %struct.mapleq*, align 8
  %3 = alloca %struct.maple_device*, align 8
  %4 = alloca %struct.dc_kbd*, align 8
  %5 = alloca i64*, align 8
  store %struct.mapleq* %0, %struct.mapleq** %2, align 8
  %6 = load %struct.mapleq*, %struct.mapleq** %2, align 8
  %7 = getelementptr inbounds %struct.mapleq, %struct.mapleq* %6, i32 0, i32 1
  %8 = load %struct.maple_device*, %struct.maple_device** %7, align 8
  store %struct.maple_device* %8, %struct.maple_device** %3, align 8
  %9 = load %struct.maple_device*, %struct.maple_device** %3, align 8
  %10 = call %struct.dc_kbd* @maple_get_drvdata(%struct.maple_device* %9)
  store %struct.dc_kbd* %10, %struct.dc_kbd** %4, align 8
  %11 = load %struct.mapleq*, %struct.mapleq** %2, align 8
  %12 = getelementptr inbounds %struct.mapleq, %struct.mapleq* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to i64*
  store i64* %16, i64** %5, align 8
  %17 = call i32 @mutex_trylock(i32* @maple_keyb_mutex)
  %18 = call i64 @likely(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %39

20:                                               ; preds = %1
  %21 = load i64*, i64** %5, align 8
  %22 = getelementptr inbounds i64, i64* %21, i64 1
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.maple_device*, %struct.maple_device** %3, align 8
  %25 = getelementptr inbounds %struct.maple_device, %struct.maple_device* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %23, %26
  br i1 %27, label %28, label %37

28:                                               ; preds = %20
  %29 = load %struct.dc_kbd*, %struct.dc_kbd** %4, align 8
  %30 = getelementptr inbounds %struct.dc_kbd, %struct.dc_kbd* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i64*, i64** %5, align 8
  %33 = getelementptr inbounds i64, i64* %32, i64 2
  %34 = call i32 @memcpy(i32 %31, i64* %33, i32 8)
  %35 = load %struct.dc_kbd*, %struct.dc_kbd** %4, align 8
  %36 = call i32 @dc_scan_kbd(%struct.dc_kbd* %35)
  br label %37

37:                                               ; preds = %28, %20
  %38 = call i32 @mutex_unlock(i32* @maple_keyb_mutex)
  br label %39

39:                                               ; preds = %37, %1
  ret void
}

declare dso_local %struct.dc_kbd* @maple_get_drvdata(%struct.maple_device*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @mutex_trylock(i32*) #1

declare dso_local i32 @memcpy(i32, i64*, i32) #1

declare dso_local i32 @dc_scan_kbd(%struct.dc_kbd*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
