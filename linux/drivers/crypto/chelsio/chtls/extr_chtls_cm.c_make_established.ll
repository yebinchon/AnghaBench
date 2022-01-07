; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/chelsio/chtls/extr_chtls_cm.c_make_established.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/chelsio/chtls/extr_chtls_cm.c_make_established.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.tcp_sock = type { i32, i32, i8*, i8*, i8*, i8* }
%struct.TYPE_2__ = type { i32 }

@RCV_BUFSIZ_M = common dso_local global i32 0, align 4
@TCP_ESTABLISHED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*, i8*, i32)* @make_established to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @make_established(%struct.sock* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.sock*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.tcp_sock*, align 8
  store %struct.sock* %0, %struct.sock** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.sock*, %struct.sock** %4, align 8
  %9 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %8)
  store %struct.tcp_sock* %9, %struct.tcp_sock** %7, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %12 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %11, i32 0, i32 5
  store i8* %10, i8** %12, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %15 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %14, i32 0, i32 4
  store i8* %13, i8** %15, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %18 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %17, i32 0, i32 3
  store i8* %16, i8** %18, align 8
  %19 = load i8*, i8** %5, align 8
  %20 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %21 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %20, i32 0, i32 2
  store i8* %19, i8** %21, align 8
  %22 = call i32 (...) @prandom_u32()
  %23 = load %struct.sock*, %struct.sock** %4, align 8
  %24 = call %struct.TYPE_2__* @inet_sk(%struct.sock* %23)
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  store i32 %22, i32* %25, align 4
  %26 = load %struct.sock*, %struct.sock** %4, align 8
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @assign_rxopt(%struct.sock* %26, i32 %27)
  %29 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %30 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @RCV_BUFSIZ_M, align 4
  %33 = shl i32 %32, 10
  %34 = icmp sgt i32 %31, %33
  br i1 %34, label %35, label %46

35:                                               ; preds = %3
  %36 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %37 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @RCV_BUFSIZ_M, align 4
  %40 = shl i32 %39, 10
  %41 = sub nsw i32 %38, %40
  %42 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %43 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = sub nsw i32 %44, %41
  store i32 %45, i32* %43, align 4
  br label %46

46:                                               ; preds = %35, %3
  %47 = call i32 (...) @smp_mb()
  %48 = load %struct.sock*, %struct.sock** %4, align 8
  %49 = load i32, i32* @TCP_ESTABLISHED, align 4
  %50 = call i32 @tcp_set_state(%struct.sock* %48, i32 %49)
  ret void
}

declare dso_local %struct.tcp_sock* @tcp_sk(%struct.sock*) #1

declare dso_local i32 @prandom_u32(...) #1

declare dso_local %struct.TYPE_2__* @inet_sk(%struct.sock*) #1

declare dso_local i32 @assign_rxopt(%struct.sock*, i32) #1

declare dso_local i32 @smp_mb(...) #1

declare dso_local i32 @tcp_set_state(%struct.sock*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
