; ModuleID = '/home/carl/AnghaBench/linux/drivers/firewire/extr_ohci.c_ar_context_run.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firewire/extr_ohci.c_ar_context_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar_context = type { i32, i32, i32, i32, i32 }

@AR_BUFFERS = common dso_local global i32 0, align 4
@CONTEXT_RUN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ar_context*)* @ar_context_run to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar_context_run(%struct.ar_context* %0) #0 {
  %2 = alloca %struct.ar_context*, align 8
  %3 = alloca i32, align 4
  store %struct.ar_context* %0, %struct.ar_context** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %12, %1
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @AR_BUFFERS, align 4
  %7 = icmp ult i32 %5, %6
  br i1 %7, label %8, label %15

8:                                                ; preds = %4
  %9 = load %struct.ar_context*, %struct.ar_context** %2, align 8
  %10 = load i32, i32* %3, align 4
  %11 = call i32 @ar_context_link_page(%struct.ar_context* %9, i32 %10)
  br label %12

12:                                               ; preds = %8
  %13 = load i32, i32* %3, align 4
  %14 = add i32 %13, 1
  store i32 %14, i32* %3, align 4
  br label %4

15:                                               ; preds = %4
  %16 = load %struct.ar_context*, %struct.ar_context** %2, align 8
  %17 = getelementptr inbounds %struct.ar_context, %struct.ar_context* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.ar_context*, %struct.ar_context** %2, align 8
  %20 = getelementptr inbounds %struct.ar_context, %struct.ar_context* %19, i32 0, i32 4
  store i32 %18, i32* %20, align 4
  %21 = load %struct.ar_context*, %struct.ar_context** %2, align 8
  %22 = getelementptr inbounds %struct.ar_context, %struct.ar_context* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.ar_context*, %struct.ar_context** %2, align 8
  %25 = getelementptr inbounds %struct.ar_context, %struct.ar_context* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @COMMAND_PTR(i32 %26)
  %28 = load %struct.ar_context*, %struct.ar_context** %2, align 8
  %29 = getelementptr inbounds %struct.ar_context, %struct.ar_context* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = or i32 %30, 1
  %32 = call i32 @reg_write(i32 %23, i32 %27, i32 %31)
  %33 = load %struct.ar_context*, %struct.ar_context** %2, align 8
  %34 = getelementptr inbounds %struct.ar_context, %struct.ar_context* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.ar_context*, %struct.ar_context** %2, align 8
  %37 = getelementptr inbounds %struct.ar_context, %struct.ar_context* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @CONTROL_SET(i32 %38)
  %40 = load i32, i32* @CONTEXT_RUN, align 4
  %41 = call i32 @reg_write(i32 %35, i32 %39, i32 %40)
  ret void
}

declare dso_local i32 @ar_context_link_page(%struct.ar_context*, i32) #1

declare dso_local i32 @reg_write(i32, i32, i32) #1

declare dso_local i32 @COMMAND_PTR(i32) #1

declare dso_local i32 @CONTROL_SET(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
