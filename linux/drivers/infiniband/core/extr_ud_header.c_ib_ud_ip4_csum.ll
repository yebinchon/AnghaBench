; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_ud_header.c_ib_ud_ip4_csum.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_ud_header.c_ib_ud_ip4_csum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_ud_header = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.iphdr = type { i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ib_ud_ip4_csum(%struct.ib_ud_header* %0) #0 {
  %2 = alloca %struct.ib_ud_header*, align 8
  %3 = alloca %struct.iphdr, align 8
  store %struct.ib_ud_header* %0, %struct.ib_ud_header** %2, align 8
  %4 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %3, i32 0, i32 0
  store i32 5, i32* %4, align 8
  %5 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %3, i32 0, i32 1
  store i32 4, i32* %5, align 4
  %6 = load %struct.ib_ud_header*, %struct.ib_ud_header** %2, align 8
  %7 = getelementptr inbounds %struct.ib_ud_header, %struct.ib_ud_header* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 7
  %9 = load i32, i32* %8, align 4
  %10 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %3, i32 0, i32 10
  store i32 %9, i32* %10, align 4
  %11 = load %struct.ib_ud_header*, %struct.ib_ud_header** %2, align 8
  %12 = getelementptr inbounds %struct.ib_ud_header, %struct.ib_ud_header* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 6
  %14 = load i32, i32* %13, align 4
  %15 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %3, i32 0, i32 9
  store i32 %14, i32* %15, align 8
  %16 = load %struct.ib_ud_header*, %struct.ib_ud_header** %2, align 8
  %17 = getelementptr inbounds %struct.ib_ud_header, %struct.ib_ud_header* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 5
  %19 = load i32, i32* %18, align 4
  %20 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %3, i32 0, i32 8
  store i32 %19, i32* %20, align 4
  %21 = load %struct.ib_ud_header*, %struct.ib_ud_header** %2, align 8
  %22 = getelementptr inbounds %struct.ib_ud_header, %struct.ib_ud_header* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 4
  %25 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %3, i32 0, i32 7
  store i32 %24, i32* %25, align 8
  %26 = load %struct.ib_ud_header*, %struct.ib_ud_header** %2, align 8
  %27 = getelementptr inbounds %struct.ib_ud_header, %struct.ib_ud_header* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %3, i32 0, i32 6
  store i32 %29, i32* %30, align 4
  %31 = load %struct.ib_ud_header*, %struct.ib_ud_header** %2, align 8
  %32 = getelementptr inbounds %struct.ib_ud_header, %struct.ib_ud_header* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %3, i32 0, i32 5
  store i32 %34, i32* %35, align 8
  %36 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %3, i32 0, i32 4
  store i64 0, i64* %36, align 8
  %37 = load %struct.ib_ud_header*, %struct.ib_ud_header** %2, align 8
  %38 = getelementptr inbounds %struct.ib_ud_header, %struct.ib_ud_header* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %3, i32 0, i32 3
  store i32 %40, i32* %41, align 4
  %42 = load %struct.ib_ud_header*, %struct.ib_ud_header** %2, align 8
  %43 = getelementptr inbounds %struct.ib_ud_header, %struct.ib_ud_header* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %3, i32 0, i32 2
  store i32 %45, i32* %46, align 8
  %47 = bitcast %struct.iphdr* %3 to i32*
  %48 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %3, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @ip_fast_csum(i32* %47, i32 %49)
  ret i32 %50
}

declare dso_local i32 @ip_fast_csum(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
