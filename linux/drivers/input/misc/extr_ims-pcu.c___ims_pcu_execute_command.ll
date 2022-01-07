; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_ims-pcu.c___ims_pcu_execute_command.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_ims-pcu.c___ims_pcu_execute_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ims_pcu = type { i32, i32, i64 }

@.str = private unnamed_addr constant [26 x i8] c"Command 0x%02x timed out\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ims_pcu*, i64, i8*, i64, i64, i32)* @__ims_pcu_execute_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__ims_pcu_execute_command(%struct.ims_pcu* %0, i64 %1, i8* %2, i64 %3, i64 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.ims_pcu*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.ims_pcu* %0, %struct.ims_pcu** %8, align 8
  store i64 %1, i64* %9, align 8
  store i8* %2, i8** %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i32 %5, i32* %13, align 4
  %15 = load i64, i64* %12, align 8
  %16 = load %struct.ims_pcu*, %struct.ims_pcu** %8, align 8
  %17 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %16, i32 0, i32 2
  store i64 %15, i64* %17, align 8
  %18 = load %struct.ims_pcu*, %struct.ims_pcu** %8, align 8
  %19 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %18, i32 0, i32 1
  %20 = call i32 @init_completion(i32* %19)
  %21 = load %struct.ims_pcu*, %struct.ims_pcu** %8, align 8
  %22 = load i64, i64* %9, align 8
  %23 = load i8*, i8** %10, align 8
  %24 = load i64, i64* %11, align 8
  %25 = call i32 @ims_pcu_send_command(%struct.ims_pcu* %21, i64 %22, i8* %23, i64 %24)
  store i32 %25, i32* %14, align 4
  %26 = load i32, i32* %14, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %6
  %29 = load i32, i32* %14, align 4
  store i32 %29, i32* %7, align 4
  br label %49

30:                                               ; preds = %6
  %31 = load i64, i64* %12, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %48

33:                                               ; preds = %30
  %34 = load %struct.ims_pcu*, %struct.ims_pcu** %8, align 8
  %35 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %34, i32 0, i32 1
  %36 = load i32, i32* %13, align 4
  %37 = call i32 @msecs_to_jiffies(i32 %36)
  %38 = call i32 @wait_for_completion_timeout(i32* %35, i32 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %48, label %40

40:                                               ; preds = %33
  %41 = load %struct.ims_pcu*, %struct.ims_pcu** %8, align 8
  %42 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i64, i64* %9, align 8
  %45 = call i32 @dev_dbg(i32 %43, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i64 %44)
  %46 = load i32, i32* @ETIMEDOUT, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %7, align 4
  br label %49

48:                                               ; preds = %33, %30
  store i32 0, i32* %7, align 4
  br label %49

49:                                               ; preds = %48, %40, %28
  %50 = load i32, i32* %7, align 4
  ret i32 %50
}

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @ims_pcu_send_command(%struct.ims_pcu*, i64, i8*, i64) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
