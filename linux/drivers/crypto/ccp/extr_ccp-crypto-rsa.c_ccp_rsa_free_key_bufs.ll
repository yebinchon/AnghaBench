; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/ccp/extr_ccp-crypto-rsa.c_ccp_rsa_free_key_bufs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/ccp/extr_ccp-crypto-rsa.c_ccp_rsa_free_key_bufs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccp_ctx = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i32*, i64, i32*, i64, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ccp_ctx*)* @ccp_rsa_free_key_bufs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ccp_rsa_free_key_bufs(%struct.ccp_ctx* %0) #0 {
  %2 = alloca %struct.ccp_ctx*, align 8
  store %struct.ccp_ctx* %0, %struct.ccp_ctx** %2, align 8
  %3 = load %struct.ccp_ctx*, %struct.ccp_ctx** %2, align 8
  %4 = getelementptr inbounds %struct.ccp_ctx, %struct.ccp_ctx* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 5
  %7 = load i32*, i32** %6, align 8
  %8 = call i32 @kzfree(i32* %7)
  %9 = load %struct.ccp_ctx*, %struct.ccp_ctx** %2, align 8
  %10 = getelementptr inbounds %struct.ccp_ctx, %struct.ccp_ctx* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 5
  store i32* null, i32** %12, align 8
  %13 = load %struct.ccp_ctx*, %struct.ccp_ctx** %2, align 8
  %14 = getelementptr inbounds %struct.ccp_ctx, %struct.ccp_ctx* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 4
  store i64 0, i64* %16, align 8
  %17 = load %struct.ccp_ctx*, %struct.ccp_ctx** %2, align 8
  %18 = getelementptr inbounds %struct.ccp_ctx, %struct.ccp_ctx* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 3
  %21 = load i32*, i32** %20, align 8
  %22 = call i32 @kzfree(i32* %21)
  %23 = load %struct.ccp_ctx*, %struct.ccp_ctx** %2, align 8
  %24 = getelementptr inbounds %struct.ccp_ctx, %struct.ccp_ctx* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 3
  store i32* null, i32** %26, align 8
  %27 = load %struct.ccp_ctx*, %struct.ccp_ctx** %2, align 8
  %28 = getelementptr inbounds %struct.ccp_ctx, %struct.ccp_ctx* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 2
  store i64 0, i64* %30, align 8
  %31 = load %struct.ccp_ctx*, %struct.ccp_ctx** %2, align 8
  %32 = getelementptr inbounds %struct.ccp_ctx, %struct.ccp_ctx* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = call i32 @kzfree(i32* %35)
  %37 = load %struct.ccp_ctx*, %struct.ccp_ctx** %2, align 8
  %38 = getelementptr inbounds %struct.ccp_ctx, %struct.ccp_ctx* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  store i32* null, i32** %40, align 8
  %41 = load %struct.ccp_ctx*, %struct.ccp_ctx** %2, align 8
  %42 = getelementptr inbounds %struct.ccp_ctx, %struct.ccp_ctx* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  store i64 0, i64* %44, align 8
  ret void
}

declare dso_local i32 @kzfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
