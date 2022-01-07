; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/siw/extr_siw_qp_rx.c_siw_rx_pbl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/siw/extr_siw_qp_rx.c_siw_rx_pbl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.siw_rx_stream = type { i32 }
%struct.siw_mem = type { i32, %struct.siw_pbl* }
%struct.siw_pbl = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.siw_rx_stream*, i32*, %struct.siw_mem*, i32, i32)* @siw_rx_pbl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @siw_rx_pbl(%struct.siw_rx_stream* %0, i32* %1, %struct.siw_mem* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.siw_rx_stream*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.siw_mem*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.siw_pbl*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  store %struct.siw_rx_stream* %0, %struct.siw_rx_stream** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.siw_mem* %2, %struct.siw_mem** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %16 = load %struct.siw_mem*, %struct.siw_mem** %8, align 8
  %17 = getelementptr inbounds %struct.siw_mem, %struct.siw_mem* %16, i32 0, i32 1
  %18 = load %struct.siw_pbl*, %struct.siw_pbl** %17, align 8
  store %struct.siw_pbl* %18, %struct.siw_pbl** %11, align 8
  %19 = load i32, i32* %9, align 4
  %20 = load %struct.siw_mem*, %struct.siw_mem** %8, align 8
  %21 = getelementptr inbounds %struct.siw_mem, %struct.siw_mem* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = sub nsw i32 %19, %22
  store i32 %23, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %24

24:                                               ; preds = %57, %5
  %25 = load i32, i32* %10, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %58

27:                                               ; preds = %24
  %28 = load %struct.siw_pbl*, %struct.siw_pbl** %11, align 8
  %29 = load i32, i32* %12, align 4
  %30 = load i32*, i32** %7, align 8
  %31 = call i64 @siw_pbl_get_buffer(%struct.siw_pbl* %28, i32 %29, i32* %14, i32* %30)
  store i64 %31, i64* %15, align 8
  %32 = load i64, i64* %15, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %27
  br label %58

35:                                               ; preds = %27
  %36 = load i32, i32* %14, align 4
  %37 = load i32, i32* %10, align 4
  %38 = call i32 @min(i32 %36, i32 %37)
  store i32 %38, i32* %14, align 4
  %39 = load %struct.siw_rx_stream*, %struct.siw_rx_stream** %6, align 8
  %40 = load i64, i64* %15, align 8
  %41 = inttoptr i64 %40 to i8*
  %42 = load i32, i32* %14, align 4
  %43 = call i32 @siw_rx_kva(%struct.siw_rx_stream* %39, i8* %41, i32 %42)
  %44 = load i32, i32* %14, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %56

46:                                               ; preds = %35
  %47 = load i32, i32* %14, align 4
  %48 = load i32, i32* %13, align 4
  %49 = add nsw i32 %48, %47
  store i32 %49, i32* %13, align 4
  %50 = load i32, i32* %14, align 4
  %51 = load i32, i32* %12, align 4
  %52 = add nsw i32 %51, %50
  store i32 %52, i32* %12, align 4
  %53 = load i32, i32* %14, align 4
  %54 = load i32, i32* %10, align 4
  %55 = sub nsw i32 %54, %53
  store i32 %55, i32* %10, align 4
  br label %57

56:                                               ; preds = %35
  br label %58

57:                                               ; preds = %46
  br label %24

58:                                               ; preds = %56, %34, %24
  %59 = load i32, i32* %13, align 4
  ret i32 %59
}

declare dso_local i64 @siw_pbl_get_buffer(%struct.siw_pbl*, i32, i32*, i32*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @siw_rx_kva(%struct.siw_rx_stream*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
