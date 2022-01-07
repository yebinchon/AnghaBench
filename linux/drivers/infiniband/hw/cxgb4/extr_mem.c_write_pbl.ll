; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/cxgb4/extr_mem.c_write_pbl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/cxgb4/extr_mem.c_write_pbl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.c4iw_rdev = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.c4iw_wr_wait = type { i32 }

@.str = private unnamed_addr constant [44 x i8] c"*pdb_addr 0x%x, pbl_base 0x%x, pbl_size %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.c4iw_rdev*, i32*, i32, i32, %struct.c4iw_wr_wait*)* @write_pbl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_pbl(%struct.c4iw_rdev* %0, i32* %1, i32 %2, i32 %3, %struct.c4iw_wr_wait* %4) #0 {
  %6 = alloca %struct.c4iw_rdev*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.c4iw_wr_wait*, align 8
  %11 = alloca i32, align 4
  store %struct.c4iw_rdev* %0, %struct.c4iw_rdev** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.c4iw_wr_wait* %4, %struct.c4iw_wr_wait** %10, align 8
  %12 = load i32, i32* %8, align 4
  %13 = load %struct.c4iw_rdev*, %struct.c4iw_rdev** %6, align 8
  %14 = getelementptr inbounds %struct.c4iw_rdev, %struct.c4iw_rdev* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %9, align 4
  %21 = call i32 @pr_debug(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %12, i32 %19, i32 %20)
  %22 = load %struct.c4iw_rdev*, %struct.c4iw_rdev** %6, align 8
  %23 = load i32, i32* %8, align 4
  %24 = ashr i32 %23, 5
  %25 = load i32, i32* %9, align 4
  %26 = shl i32 %25, 3
  %27 = load i32*, i32** %7, align 8
  %28 = load %struct.c4iw_wr_wait*, %struct.c4iw_wr_wait** %10, align 8
  %29 = call i32 @write_adapter_mem(%struct.c4iw_rdev* %22, i32 %24, i32 %26, i32* %27, i32* null, %struct.c4iw_wr_wait* %28)
  store i32 %29, i32* %11, align 4
  %30 = load i32, i32* %11, align 4
  ret i32 %30
}

declare dso_local i32 @pr_debug(i8*, i32, i32, i32) #1

declare dso_local i32 @write_adapter_mem(%struct.c4iw_rdev*, i32, i32, i32*, i32*, %struct.c4iw_wr_wait*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
