; ModuleID = '/home/carl/AnghaBench/linux/drivers/macintosh/extr_via-pmu.c_recv_byte.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/macintosh/extr_via-pmu.c_recv_byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@via1 = common dso_local global i32* null, align 8
@ACR = common dso_local global i64 0, align 8
@SR_OUT = common dso_local global i32 0, align 4
@SR_EXT = common dso_local global i32 0, align 4
@SR = common dso_local global i64 0, align 8
@via2 = common dso_local global i32* null, align 8
@B = common dso_local global i64 0, align 8
@TREQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @recv_byte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @recv_byte() #0 {
  %1 = load i32*, i32** @via1, align 8
  %2 = load i64, i64* @ACR, align 8
  %3 = getelementptr inbounds i32, i32* %1, i64 %2
  %4 = load i32*, i32** @via1, align 8
  %5 = load i64, i64* @ACR, align 8
  %6 = getelementptr inbounds i32, i32* %4, i64 %5
  %7 = call i32 @in_8(i32* %6)
  %8 = load i32, i32* @SR_OUT, align 4
  %9 = xor i32 %8, -1
  %10 = and i32 %7, %9
  %11 = load i32, i32* @SR_EXT, align 4
  %12 = or i32 %10, %11
  %13 = call i32 @out_8(i32* %3, i32 %12)
  %14 = load i32*, i32** @via1, align 8
  %15 = load i64, i64* @SR, align 8
  %16 = getelementptr inbounds i32, i32* %14, i64 %15
  %17 = call i32 @in_8(i32* %16)
  %18 = load i32*, i32** @via2, align 8
  %19 = load i64, i64* @B, align 8
  %20 = getelementptr inbounds i32, i32* %18, i64 %19
  %21 = load i32*, i32** @via2, align 8
  %22 = load i64, i64* @B, align 8
  %23 = getelementptr inbounds i32, i32* %21, i64 %22
  %24 = call i32 @in_8(i32* %23)
  %25 = load i32, i32* @TREQ, align 4
  %26 = xor i32 %25, -1
  %27 = and i32 %24, %26
  %28 = call i32 @out_8(i32* %20, i32 %27)
  %29 = load i32*, i32** @via2, align 8
  %30 = load i64, i64* @B, align 8
  %31 = getelementptr inbounds i32, i32* %29, i64 %30
  %32 = call i32 @in_8(i32* %31)
  ret void
}

declare dso_local i32 @out_8(i32*, i32) #1

declare dso_local i32 @in_8(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
