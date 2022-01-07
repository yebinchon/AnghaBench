; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_chip.c_opa_to_vc_link_widths.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_chip.c_opa_to_vc_link_widths.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.link_bits = type { i32, i32 }
%struct.link_bits.0 = type { i32, i32 }

@opa_to_vc_link_widths.opa_link_xlate = internal constant [4 x %struct.link_bits] [%struct.link_bits { i32 131, i32 1 }, %struct.link_bits { i32 130, i32 2 }, %struct.link_bits { i32 129, i32 4 }, %struct.link_bits { i32 128, i32 8 }], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @opa_to_vc_link_widths to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @opa_to_vc_link_widths(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %4, align 4
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %27, %1
  %6 = load i32, i32* %3, align 4
  %7 = call i32 @ARRAY_SIZE(%struct.link_bits.0* bitcast ([4 x %struct.link_bits]* @opa_to_vc_link_widths.opa_link_xlate to %struct.link_bits.0*))
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %30

9:                                                ; preds = %5
  %10 = load i32, i32* %2, align 4
  %11 = load i32, i32* %3, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [4 x %struct.link_bits], [4 x %struct.link_bits]* @opa_to_vc_link_widths.opa_link_xlate, i64 0, i64 %12
  %14 = getelementptr inbounds %struct.link_bits, %struct.link_bits* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = and i32 %10, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %9
  %19 = load i32, i32* %3, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [4 x %struct.link_bits], [4 x %struct.link_bits]* @opa_to_vc_link_widths.opa_link_xlate, i64 0, i64 %20
  %22 = getelementptr inbounds %struct.link_bits, %struct.link_bits* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %4, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %4, align 4
  br label %26

26:                                               ; preds = %18, %9
  br label %27

27:                                               ; preds = %26
  %28 = load i32, i32* %3, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %3, align 4
  br label %5

30:                                               ; preds = %5
  %31 = load i32, i32* %4, align 4
  ret i32 %31
}

declare dso_local i32 @ARRAY_SIZE(%struct.link_bits.0*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
