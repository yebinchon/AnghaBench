; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_pio.c_cr_group_addresses.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_pio.c_cr_group_addresses.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.send_context = type { i32, i64, %struct.TYPE_6__*, i32*, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32* }
%struct.credit_return = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.send_context*, i64*)* @cr_group_addresses to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cr_group_addresses(%struct.send_context* %0, i64* %1) #0 {
  %3 = alloca %struct.send_context*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.send_context* %0, %struct.send_context** %3, align 8
  store i64* %1, i64** %4, align 8
  %7 = load %struct.send_context*, %struct.send_context** %3, align 8
  %8 = getelementptr inbounds %struct.send_context, %struct.send_context* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.send_context*, %struct.send_context** %3, align 8
  %11 = getelementptr inbounds %struct.send_context, %struct.send_context* %10, i32 0, i32 4
  %12 = load i32, i32* %11, align 8
  %13 = call i64 @group_context(i32 %9, i32 %12)
  store i64 %13, i64* %5, align 8
  %14 = load %struct.send_context*, %struct.send_context** %3, align 8
  %15 = getelementptr inbounds %struct.send_context, %struct.send_context* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = and i32 %16, 7
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %6, align 8
  %19 = load %struct.send_context*, %struct.send_context** %3, align 8
  %20 = getelementptr inbounds %struct.send_context, %struct.send_context* %19, i32 0, i32 2
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = load %struct.send_context*, %struct.send_context** %3, align 8
  %25 = getelementptr inbounds %struct.send_context, %struct.send_context* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = load i64, i64* %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = load i64, i64* %6, align 8
  %35 = getelementptr inbounds i32, i32* %33, i64 %34
  %36 = load %struct.send_context*, %struct.send_context** %3, align 8
  %37 = getelementptr inbounds %struct.send_context, %struct.send_context* %36, i32 0, i32 3
  store i32* %35, i32** %37, align 8
  %38 = load %struct.send_context*, %struct.send_context** %3, align 8
  %39 = getelementptr inbounds %struct.send_context, %struct.send_context* %38, i32 0, i32 2
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %41, align 8
  %43 = load %struct.send_context*, %struct.send_context** %3, align 8
  %44 = getelementptr inbounds %struct.send_context, %struct.send_context* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = inttoptr i64 %48 to %struct.credit_return*
  %50 = load i64, i64* %5, align 8
  %51 = getelementptr inbounds %struct.credit_return, %struct.credit_return* %49, i64 %50
  %52 = ptrtoint %struct.credit_return* %51 to i64
  %53 = load i64*, i64** %4, align 8
  store i64 %52, i64* %53, align 8
  ret void
}

declare dso_local i64 @group_context(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
