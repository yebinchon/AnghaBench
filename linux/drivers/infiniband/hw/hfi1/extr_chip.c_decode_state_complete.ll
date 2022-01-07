; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_chip.c_decode_state_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_chip.c_decode_state_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_pportdata = type { %struct.hfi1_devdata* }
%struct.hfi1_devdata = type { i32 }

@.str = private unnamed_addr constant [42 x i8] c"Last %s LNI state complete frame 0x%08x:\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"    last reported state state: %s (0x%x)\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"    state successfully completed: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"    fail reason 0x%x: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"    passing lane mask: 0x%x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hfi1_pportdata*, i32, i8*)* @decode_state_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @decode_state_complete(%struct.hfi1_pportdata* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.hfi1_pportdata*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.hfi1_devdata*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.hfi1_pportdata* %0, %struct.hfi1_pportdata** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %12 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %4, align 8
  %13 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %12, i32 0, i32 0
  %14 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %13, align 8
  store %struct.hfi1_devdata* %14, %struct.hfi1_devdata** %7, align 8
  %15 = load i32, i32* %5, align 4
  %16 = and i32 %15, 1
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %5, align 4
  %18 = ashr i32 %17, 1
  %19 = and i32 %18, 7
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %5, align 4
  %21 = ashr i32 %20, 8
  %22 = and i32 %21, 255
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %5, align 4
  %24 = ashr i32 %23, 16
  %25 = and i32 %24, 65535
  store i32 %25, i32* %11, align 4
  %26 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %7, align 8
  %27 = load i8*, i8** %6, align 8
  %28 = load i32, i32* %5, align 4
  %29 = call i32 (%struct.hfi1_devdata*, i8*, ...) @dd_dev_err(%struct.hfi1_devdata* %26, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i8* %27, i32 %28)
  %30 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %7, align 8
  %31 = load i32, i32* %9, align 4
  %32 = call i32 @state_completed_string(i32 %31)
  %33 = load i32, i32* %9, align 4
  %34 = call i32 (%struct.hfi1_devdata*, i8*, ...) @dd_dev_err(%struct.hfi1_devdata* %30, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %32, i32 %33)
  %35 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %7, align 8
  %36 = load i32, i32* %8, align 4
  %37 = icmp ne i32 %36, 0
  %38 = zext i1 %37 to i64
  %39 = select i1 %37, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0)
  %40 = call i32 (%struct.hfi1_devdata*, i8*, ...) @dd_dev_err(%struct.hfi1_devdata* %35, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i8* %39)
  %41 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %7, align 8
  %42 = load i32, i32* %10, align 4
  %43 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %4, align 8
  %44 = load i32, i32* %10, align 4
  %45 = call i32 @state_complete_reason_code_string(%struct.hfi1_pportdata* %43, i32 %44)
  %46 = call i32 (%struct.hfi1_devdata*, i8*, ...) @dd_dev_err(%struct.hfi1_devdata* %41, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i32 %42, i32 %45)
  %47 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %7, align 8
  %48 = load i32, i32* %11, align 4
  %49 = call i32 (%struct.hfi1_devdata*, i8*, ...) @dd_dev_err(%struct.hfi1_devdata* %47, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0), i32 %48)
  ret void
}

declare dso_local i32 @dd_dev_err(%struct.hfi1_devdata*, i8*, ...) #1

declare dso_local i32 @state_completed_string(i32) #1

declare dso_local i32 @state_complete_reason_code_string(%struct.hfi1_pportdata*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
