; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/ccree/extr_cc_buffer_mgr.c_cc_copy_sg_portion.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/ccree/extr_cc_buffer_mgr.c_cc_copy_sg_portion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.scatterlist = type { i32 }

@CC_SG_TO_BUF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cc_copy_sg_portion(%struct.device* %0, i32* %1, %struct.scatterlist* %2, i64 %3, i64 %4, i32 %5) #0 {
  %7 = alloca %struct.device*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.scatterlist*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %7, align 8
  store i32* %1, i32** %8, align 8
  store %struct.scatterlist* %2, %struct.scatterlist** %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store i32 %5, i32* %12, align 4
  %14 = load %struct.scatterlist*, %struct.scatterlist** %9, align 8
  %15 = load i64, i64* %11, align 8
  %16 = call i64 @sg_nents_for_len(%struct.scatterlist* %14, i64 %15)
  store i64 %16, i64* %13, align 8
  %17 = load %struct.scatterlist*, %struct.scatterlist** %9, align 8
  %18 = load i64, i64* %13, align 8
  %19 = load i32*, i32** %8, align 8
  %20 = bitcast i32* %19 to i8*
  %21 = load i64, i64* %11, align 8
  %22 = load i64, i64* %10, align 8
  %23 = sub nsw i64 %21, %22
  %24 = add nsw i64 %23, 1
  %25 = load i64, i64* %10, align 8
  %26 = load i32, i32* %12, align 4
  %27 = load i32, i32* @CC_SG_TO_BUF, align 4
  %28 = icmp eq i32 %26, %27
  %29 = zext i1 %28 to i32
  %30 = call i32 @sg_copy_buffer(%struct.scatterlist* %17, i64 %18, i8* %20, i64 %24, i64 %25, i32 %29)
  ret void
}

declare dso_local i64 @sg_nents_for_len(%struct.scatterlist*, i64) #1

declare dso_local i32 @sg_copy_buffer(%struct.scatterlist*, i64, i8*, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
