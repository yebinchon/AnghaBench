; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_amd64_edac.h_get_dram_base.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_amd64_edac.h_get_dram_base.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.amd64_pvt = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64 }

@boot_cpu_data = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amd64_pvt*, i64)* @get_dram_base to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_dram_base(%struct.amd64_pvt* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.amd64_pvt*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.amd64_pvt* %0, %struct.amd64_pvt** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.amd64_pvt*, %struct.amd64_pvt** %4, align 8
  %8 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %7, i32 0, i32 0
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %10 = load i64, i64* %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i64 %10
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = trunc i64 %14 to i32
  %16 = and i32 %15, -65536
  %17 = shl i32 %16, 8
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @boot_cpu_data, i32 0, i32 0), align 4
  %19 = icmp eq i32 %18, 15
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = load i32, i32* %6, align 4
  store i32 %21, i32* %3, align 4
  br label %36

22:                                               ; preds = %2
  %23 = load %struct.amd64_pvt*, %struct.amd64_pvt** %4, align 8
  %24 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %23, i32 0, i32 0
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %26 = load i64, i64* %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = trunc i64 %30 to i32
  %32 = and i32 %31, 255
  %33 = shl i32 %32, 40
  %34 = load i32, i32* %6, align 4
  %35 = or i32 %33, %34
  store i32 %35, i32* %3, align 4
  br label %36

36:                                               ; preds = %22, %20
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
