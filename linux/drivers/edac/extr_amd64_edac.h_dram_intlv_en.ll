; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_amd64_edac.h_dram_intlv_en.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_amd64_edac.h_dram_intlv_en.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amd64_pvt = type { i32, i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@DRAM_CONT_LIMIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amd64_pvt*, i32)* @dram_intlv_en to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dram_intlv_en(%struct.amd64_pvt* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.amd64_pvt*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.amd64_pvt* %0, %struct.amd64_pvt** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.amd64_pvt*, %struct.amd64_pvt** %4, align 8
  %8 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp eq i32 %9, 21
  br i1 %10, label %11, label %25

11:                                               ; preds = %2
  %12 = load %struct.amd64_pvt*, %struct.amd64_pvt** %4, align 8
  %13 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = icmp sge i32 %14, 48
  br i1 %15, label %16, label %25

16:                                               ; preds = %11
  %17 = load %struct.amd64_pvt*, %struct.amd64_pvt** %4, align 8
  %18 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @DRAM_CONT_LIMIT, align 4
  %21 = call i32 @amd64_read_pci_cfg(i32 %19, i32 %20, i64* %6)
  %22 = load i64, i64* %6, align 8
  %23 = trunc i64 %22 to i32
  %24 = and i32 %23, 15
  store i32 %24, i32* %3, align 4
  br label %37

25:                                               ; preds = %11, %2
  %26 = load %struct.amd64_pvt*, %struct.amd64_pvt** %4, align 8
  %27 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %26, i32 0, i32 2
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = load i32, i32* %5, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = ashr i32 %34, 8
  %36 = and i32 %35, 7
  store i32 %36, i32* %3, align 4
  br label %37

37:                                               ; preds = %25, %16
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i32 @amd64_read_pci_cfg(i32, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
