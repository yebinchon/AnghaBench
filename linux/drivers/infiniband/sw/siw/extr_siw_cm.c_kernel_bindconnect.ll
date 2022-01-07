; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/siw/extr_siw_cm.c_kernel_bindconnect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/siw/extr_siw_cm.c_kernel_bindconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.socket*, %struct.sockaddr*, i64)*, i32 (%struct.socket*, %struct.sockaddr*, i64, i32)* }
%struct.sockaddr = type { i64 }

@AF_INET = common dso_local global i64 0, align 8
@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_REUSEADDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.sockaddr*, %struct.sockaddr*)* @kernel_bindconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kernel_bindconnect(%struct.socket* %0, %struct.sockaddr* %1, %struct.sockaddr* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.socket*, align 8
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca %struct.sockaddr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.socket* %0, %struct.socket** %5, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %6, align 8
  store %struct.sockaddr* %2, %struct.sockaddr** %7, align 8
  store i32 0, i32* %9, align 4
  store i32 1, i32* %10, align 4
  %12 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %13 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @AF_INET, align 8
  %16 = icmp eq i64 %14, %15
  %17 = zext i1 %16 to i64
  %18 = select i1 %16, i64 4, i64 4
  store i64 %18, i64* %11, align 8
  %19 = load %struct.socket*, %struct.socket** %5, align 8
  %20 = load i32, i32* @SOL_SOCKET, align 4
  %21 = load i32, i32* @SO_REUSEADDR, align 4
  %22 = bitcast i32* %10 to i8*
  %23 = call i32 @kernel_setsockopt(%struct.socket* %19, i32 %20, i32 %21, i8* %22, i32 4)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %3
  %27 = load i32, i32* %8, align 4
  store i32 %27, i32* %4, align 4
  br label %60

28:                                               ; preds = %3
  %29 = load %struct.socket*, %struct.socket** %5, align 8
  %30 = getelementptr inbounds %struct.socket, %struct.socket* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32 (%struct.socket*, %struct.sockaddr*, i64)*, i32 (%struct.socket*, %struct.sockaddr*, i64)** %32, align 8
  %34 = load %struct.socket*, %struct.socket** %5, align 8
  %35 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %36 = load i64, i64* %11, align 8
  %37 = call i32 %33(%struct.socket* %34, %struct.sockaddr* %35, i64 %36)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %28
  %41 = load i32, i32* %8, align 4
  store i32 %41, i32* %4, align 4
  br label %60

42:                                               ; preds = %28
  %43 = load %struct.socket*, %struct.socket** %5, align 8
  %44 = getelementptr inbounds %struct.socket, %struct.socket* %43, i32 0, i32 0
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  %47 = load i32 (%struct.socket*, %struct.sockaddr*, i64, i32)*, i32 (%struct.socket*, %struct.sockaddr*, i64, i32)** %46, align 8
  %48 = load %struct.socket*, %struct.socket** %5, align 8
  %49 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %50 = load i64, i64* %11, align 8
  %51 = load i32, i32* %9, align 4
  %52 = call i32 %47(%struct.socket* %48, %struct.sockaddr* %49, i64 %50, i32 %51)
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %8, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %42
  %56 = load i32, i32* %8, align 4
  br label %58

57:                                               ; preds = %42
  br label %58

58:                                               ; preds = %57, %55
  %59 = phi i32 [ %56, %55 ], [ 0, %57 ]
  store i32 %59, i32* %4, align 4
  br label %60

60:                                               ; preds = %58, %40, %26
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

declare dso_local i32 @kernel_setsockopt(%struct.socket*, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
