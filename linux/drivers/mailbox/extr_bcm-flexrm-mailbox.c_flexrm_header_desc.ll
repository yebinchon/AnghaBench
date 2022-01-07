; ModuleID = '/home/carl/AnghaBench/linux/drivers/mailbox/extr_bcm-flexrm-mailbox.c_flexrm_header_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mailbox/extr_bcm-flexrm-mailbox.c_flexrm_header_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HEADER_TYPE = common dso_local global i32 0, align 4
@DESC_TYPE_SHIFT = common dso_local global i32 0, align 4
@DESC_TYPE_MASK = common dso_local global i32 0, align 4
@HEADER_TOGGLE_SHIFT = common dso_local global i32 0, align 4
@HEADER_TOGGLE_MASK = common dso_local global i32 0, align 4
@HEADER_STARTPKT_SHIFT = common dso_local global i32 0, align 4
@HEADER_STARTPKT_MASK = common dso_local global i32 0, align 4
@HEADER_ENDPKT_SHIFT = common dso_local global i32 0, align 4
@HEADER_ENDPKT_MASK = common dso_local global i32 0, align 4
@HEADER_BDCOUNT_SHIFT = common dso_local global i32 0, align 4
@HEADER_BDCOUNT_MASK = common dso_local global i32 0, align 4
@HEADER_FLAGS_SHIFT = common dso_local global i32 0, align 4
@HEADER_FLAGS_MASK = common dso_local global i32 0, align 4
@HEADER_OPAQUE_SHIFT = common dso_local global i32 0, align 4
@HEADER_OPAQUE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32, i32)* @flexrm_header_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @flexrm_header_desc(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @HEADER_TYPE, align 4
  %16 = load i32, i32* @DESC_TYPE_SHIFT, align 4
  %17 = load i32, i32* @DESC_TYPE_MASK, align 4
  %18 = call i32 @DESC_ENC(i32 %14, i32 %15, i32 %16, i32 %17)
  %19 = load i32, i32* %13, align 4
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @HEADER_TOGGLE_SHIFT, align 4
  %22 = load i32, i32* @HEADER_TOGGLE_MASK, align 4
  %23 = call i32 @DESC_ENC(i32 %19, i32 %20, i32 %21, i32 %22)
  %24 = load i32, i32* %13, align 4
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* @HEADER_STARTPKT_SHIFT, align 4
  %27 = load i32, i32* @HEADER_STARTPKT_MASK, align 4
  %28 = call i32 @DESC_ENC(i32 %24, i32 %25, i32 %26, i32 %27)
  %29 = load i32, i32* %13, align 4
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* @HEADER_ENDPKT_SHIFT, align 4
  %32 = load i32, i32* @HEADER_ENDPKT_MASK, align 4
  %33 = call i32 @DESC_ENC(i32 %29, i32 %30, i32 %31, i32 %32)
  %34 = load i32, i32* %13, align 4
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* @HEADER_BDCOUNT_SHIFT, align 4
  %37 = load i32, i32* @HEADER_BDCOUNT_MASK, align 4
  %38 = call i32 @DESC_ENC(i32 %34, i32 %35, i32 %36, i32 %37)
  %39 = load i32, i32* %13, align 4
  %40 = load i32, i32* %11, align 4
  %41 = load i32, i32* @HEADER_FLAGS_SHIFT, align 4
  %42 = load i32, i32* @HEADER_FLAGS_MASK, align 4
  %43 = call i32 @DESC_ENC(i32 %39, i32 %40, i32 %41, i32 %42)
  %44 = load i32, i32* %13, align 4
  %45 = load i32, i32* %12, align 4
  %46 = load i32, i32* @HEADER_OPAQUE_SHIFT, align 4
  %47 = load i32, i32* @HEADER_OPAQUE_MASK, align 4
  %48 = call i32 @DESC_ENC(i32 %44, i32 %45, i32 %46, i32 %47)
  %49 = load i32, i32* %13, align 4
  ret i32 %49
}

declare dso_local i32 @DESC_ENC(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
