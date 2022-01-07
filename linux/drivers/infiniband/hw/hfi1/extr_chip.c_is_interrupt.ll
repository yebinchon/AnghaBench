; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_chip.c_is_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_chip.c_is_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.is_table = type { i32, i64, i32 (%struct.hfi1_devdata.0*, i64)*, i64 }
%struct.hfi1_devdata.0 = type opaque
%struct.hfi1_devdata = type { i32 }

@is_table = common dso_local global %struct.is_table* null, align 8
@.str = private unnamed_addr constant [29 x i8] c"invalid interrupt source %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hfi1_devdata*, i32)* @is_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @is_interrupt(%struct.hfi1_devdata* %0, i32 %1) #0 {
  %3 = alloca %struct.hfi1_devdata*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.is_table*, align 8
  store %struct.hfi1_devdata* %0, %struct.hfi1_devdata** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.is_table*, %struct.is_table** @is_table, align 8
  %7 = getelementptr inbounds %struct.is_table, %struct.is_table* %6, i64 0
  store %struct.is_table* %7, %struct.is_table** %5, align 8
  br label %8

8:                                                ; preds = %37, %2
  %9 = load %struct.is_table*, %struct.is_table** %5, align 8
  %10 = getelementptr inbounds %struct.is_table, %struct.is_table* %9, i32 0, i32 3
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %40

13:                                               ; preds = %8
  %14 = load i32, i32* %4, align 4
  %15 = load %struct.is_table*, %struct.is_table** %5, align 8
  %16 = getelementptr inbounds %struct.is_table, %struct.is_table* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ule i32 %14, %17
  br i1 %18, label %19, label %36

19:                                               ; preds = %13
  %20 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %21 = load %struct.is_table*, %struct.is_table** %5, align 8
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @trace_hfi1_interrupt(%struct.hfi1_devdata* %20, %struct.is_table* %21, i32 %22)
  %24 = load %struct.is_table*, %struct.is_table** %5, align 8
  %25 = getelementptr inbounds %struct.is_table, %struct.is_table* %24, i32 0, i32 2
  %26 = load i32 (%struct.hfi1_devdata.0*, i64)*, i32 (%struct.hfi1_devdata.0*, i64)** %25, align 8
  %27 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %28 = bitcast %struct.hfi1_devdata* %27 to %struct.hfi1_devdata.0*
  %29 = load i32, i32* %4, align 4
  %30 = zext i32 %29 to i64
  %31 = load %struct.is_table*, %struct.is_table** %5, align 8
  %32 = getelementptr inbounds %struct.is_table, %struct.is_table* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = sub nsw i64 %30, %33
  %35 = call i32 %26(%struct.hfi1_devdata.0* %28, i64 %34)
  br label %44

36:                                               ; preds = %13
  br label %37

37:                                               ; preds = %36
  %38 = load %struct.is_table*, %struct.is_table** %5, align 8
  %39 = getelementptr inbounds %struct.is_table, %struct.is_table* %38, i32 1
  store %struct.is_table* %39, %struct.is_table** %5, align 8
  br label %8

40:                                               ; preds = %8
  %41 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %42 = load i32, i32* %4, align 4
  %43 = call i32 @dd_dev_err(%struct.hfi1_devdata* %41, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %42)
  br label %44

44:                                               ; preds = %40, %19
  ret void
}

declare dso_local i32 @trace_hfi1_interrupt(%struct.hfi1_devdata*, %struct.is_table*, i32) #1

declare dso_local i32 @dd_dev_err(%struct.hfi1_devdata*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
