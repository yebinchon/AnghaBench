; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/bnxt_re/extr_main.c_bnxt_re_init_hwrm_hdr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/bnxt_re/extr_main.c_bnxt_re_init_hwrm_hdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt_re_dev = type { i32 }
%struct.input = type { i8*, i8*, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnxt_re_dev*, %struct.input*, i32, i32, i32)* @bnxt_re_init_hwrm_hdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnxt_re_init_hwrm_hdr(%struct.bnxt_re_dev* %0, %struct.input* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.bnxt_re_dev*, align 8
  %7 = alloca %struct.input*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.bnxt_re_dev* %0, %struct.bnxt_re_dev** %6, align 8
  store %struct.input* %1, %struct.input** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %11 = load i32, i32* %8, align 4
  %12 = call i8* @cpu_to_le16(i32 %11)
  %13 = load %struct.input*, %struct.input** %7, align 8
  %14 = getelementptr inbounds %struct.input, %struct.input* %13, i32 0, i32 2
  store i8* %12, i8** %14, align 8
  %15 = load i32, i32* %9, align 4
  %16 = call i8* @cpu_to_le16(i32 %15)
  %17 = load %struct.input*, %struct.input** %7, align 8
  %18 = getelementptr inbounds %struct.input, %struct.input* %17, i32 0, i32 1
  store i8* %16, i8** %18, align 8
  %19 = load i32, i32* %10, align 4
  %20 = call i8* @cpu_to_le16(i32 %19)
  %21 = load %struct.input*, %struct.input** %7, align 8
  %22 = getelementptr inbounds %struct.input, %struct.input* %21, i32 0, i32 0
  store i8* %20, i8** %22, align 8
  ret void
}

declare dso_local i8* @cpu_to_le16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
