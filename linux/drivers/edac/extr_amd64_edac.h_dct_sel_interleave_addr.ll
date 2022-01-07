; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_amd64_edac.h_dct_sel_interleave_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_amd64_edac.h_dct_sel_interleave_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amd64_pvt = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amd64_pvt*)* @dct_sel_interleave_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dct_sel_interleave_addr(%struct.amd64_pvt* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.amd64_pvt*, align 8
  store %struct.amd64_pvt* %0, %struct.amd64_pvt** %3, align 8
  %4 = load %struct.amd64_pvt*, %struct.amd64_pvt** %3, align 8
  %5 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = icmp eq i32 %6, 21
  br i1 %7, label %8, label %26

8:                                                ; preds = %1
  %9 = load %struct.amd64_pvt*, %struct.amd64_pvt** %3, align 8
  %10 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = icmp sge i32 %11, 48
  br i1 %12, label %13, label %26

13:                                               ; preds = %8
  %14 = load %struct.amd64_pvt*, %struct.amd64_pvt** %3, align 8
  %15 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = ashr i32 %16, 9
  %18 = and i32 %17, 1
  %19 = shl i32 %18, 2
  %20 = load %struct.amd64_pvt*, %struct.amd64_pvt** %3, align 8
  %21 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = ashr i32 %22, 6
  %24 = and i32 %23, 3
  %25 = or i32 %19, %24
  store i32 %25, i32* %2, align 4
  br label %32

26:                                               ; preds = %8, %1
  %27 = load %struct.amd64_pvt*, %struct.amd64_pvt** %3, align 8
  %28 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = ashr i32 %29, 6
  %31 = and i32 %30, 3
  store i32 %31, i32* %2, align 4
  br label %32

32:                                               ; preds = %26, %13
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
