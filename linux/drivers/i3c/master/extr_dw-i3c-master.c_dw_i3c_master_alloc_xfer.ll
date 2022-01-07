; ModuleID = '/home/carl/AnghaBench/linux/drivers/i3c/master/extr_dw-i3c-master.c_dw_i3c_master_alloc_xfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i3c/master/extr_dw-i3c-master.c_dw_i3c_master_alloc_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dw_i3c_xfer = type { i32, i32, i32 }
%struct.dw_i3c_master = type { i32 }

@cmds = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dw_i3c_xfer* (%struct.dw_i3c_master*, i32)* @dw_i3c_master_alloc_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dw_i3c_xfer* @dw_i3c_master_alloc_xfer(%struct.dw_i3c_master* %0, i32 %1) #0 {
  %3 = alloca %struct.dw_i3c_xfer*, align 8
  %4 = alloca %struct.dw_i3c_master*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dw_i3c_xfer*, align 8
  store %struct.dw_i3c_master* %0, %struct.dw_i3c_master** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.dw_i3c_xfer*, %struct.dw_i3c_xfer** %6, align 8
  %8 = load i32, i32* @cmds, align 4
  %9 = load i32, i32* %5, align 4
  %10 = call i32 @struct_size(%struct.dw_i3c_xfer* %7, i32 %8, i32 %9)
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.dw_i3c_xfer* @kzalloc(i32 %10, i32 %11)
  store %struct.dw_i3c_xfer* %12, %struct.dw_i3c_xfer** %6, align 8
  %13 = load %struct.dw_i3c_xfer*, %struct.dw_i3c_xfer** %6, align 8
  %14 = icmp ne %struct.dw_i3c_xfer* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  store %struct.dw_i3c_xfer* null, %struct.dw_i3c_xfer** %3, align 8
  br label %28

16:                                               ; preds = %2
  %17 = load %struct.dw_i3c_xfer*, %struct.dw_i3c_xfer** %6, align 8
  %18 = getelementptr inbounds %struct.dw_i3c_xfer, %struct.dw_i3c_xfer* %17, i32 0, i32 2
  %19 = call i32 @INIT_LIST_HEAD(i32* %18)
  %20 = load i32, i32* %5, align 4
  %21 = load %struct.dw_i3c_xfer*, %struct.dw_i3c_xfer** %6, align 8
  %22 = getelementptr inbounds %struct.dw_i3c_xfer, %struct.dw_i3c_xfer* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  %23 = load i32, i32* @ETIMEDOUT, align 4
  %24 = sub nsw i32 0, %23
  %25 = load %struct.dw_i3c_xfer*, %struct.dw_i3c_xfer** %6, align 8
  %26 = getelementptr inbounds %struct.dw_i3c_xfer, %struct.dw_i3c_xfer* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  %27 = load %struct.dw_i3c_xfer*, %struct.dw_i3c_xfer** %6, align 8
  store %struct.dw_i3c_xfer* %27, %struct.dw_i3c_xfer** %3, align 8
  br label %28

28:                                               ; preds = %16, %15
  %29 = load %struct.dw_i3c_xfer*, %struct.dw_i3c_xfer** %3, align 8
  ret %struct.dw_i3c_xfer* %29
}

declare dso_local %struct.dw_i3c_xfer* @kzalloc(i32, i32) #1

declare dso_local i32 @struct_size(%struct.dw_i3c_xfer*, i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
