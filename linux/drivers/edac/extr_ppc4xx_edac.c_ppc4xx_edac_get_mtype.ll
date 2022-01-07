; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_ppc4xx_edac.c_ppc4xx_edac_get_mtype.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_ppc4xx_edac.c_ppc4xx_edac_get_mtype.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SDRAM_MCOPT1_RDEN_MASK = common dso_local global i32 0, align 4
@SDRAM_MCOPT1_RDEN = common dso_local global i32 0, align 4
@SDRAM_MCOPT1_DDR_TYPE_MASK = common dso_local global i32 0, align 4
@MEM_RDDR2 = common dso_local global i32 0, align 4
@MEM_DDR2 = common dso_local global i32 0, align 4
@MEM_RDDR = common dso_local global i32 0, align 4
@MEM_DDR = common dso_local global i32 0, align 4
@MEM_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ppc4xx_edac_get_mtype to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ppc4xx_edac_get_mtype(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @SDRAM_MCOPT1_RDEN_MASK, align 4
  %7 = and i32 %5, %6
  %8 = load i32, i32* @SDRAM_MCOPT1_RDEN, align 4
  %9 = icmp eq i32 %7, %8
  %10 = zext i1 %9 to i32
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @SDRAM_MCOPT1_DDR_TYPE_MASK, align 4
  %13 = and i32 %11, %12
  switch i32 %13, label %32 [
    i32 128, label %14
    i32 129, label %23
  ]

14:                                               ; preds = %1
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  %18 = load i32, i32* @MEM_RDDR2, align 4
  br label %21

19:                                               ; preds = %14
  %20 = load i32, i32* @MEM_DDR2, align 4
  br label %21

21:                                               ; preds = %19, %17
  %22 = phi i32 [ %18, %17 ], [ %20, %19 ]
  store i32 %22, i32* %2, align 4
  br label %34

23:                                               ; preds = %1
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  %27 = load i32, i32* @MEM_RDDR, align 4
  br label %30

28:                                               ; preds = %23
  %29 = load i32, i32* @MEM_DDR, align 4
  br label %30

30:                                               ; preds = %28, %26
  %31 = phi i32 [ %27, %26 ], [ %29, %28 ]
  store i32 %31, i32* %2, align 4
  br label %34

32:                                               ; preds = %1
  %33 = load i32, i32* @MEM_UNKNOWN, align 4
  store i32 %33, i32* %2, align 4
  br label %34

34:                                               ; preds = %32, %30, %21
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
