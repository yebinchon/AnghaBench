; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_pl330.c__prepare_ccr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_pl330.c__prepare_ccr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pl330_reqcfg = type { i32, i32, i32, i32, i32, i64, i64, i64, i64, i64 }

@CC_SRCINC = common dso_local global i32 0, align 4
@CC_DSTINC = common dso_local global i32 0, align 4
@CC_SRCPRI = common dso_local global i32 0, align 4
@CC_DSTPRI = common dso_local global i32 0, align 4
@CC_SRCNS = common dso_local global i32 0, align 4
@CC_DSTNS = common dso_local global i32 0, align 4
@CC_SRCIA = common dso_local global i32 0, align 4
@CC_DSTIA = common dso_local global i32 0, align 4
@CC_SRCBRSTLEN_SHFT = common dso_local global i32 0, align 4
@CC_DSTBRSTLEN_SHFT = common dso_local global i32 0, align 4
@CC_SRCBRSTSIZE_SHFT = common dso_local global i32 0, align 4
@CC_DSTBRSTSIZE_SHFT = common dso_local global i32 0, align 4
@CC_SRCCCTRL_SHFT = common dso_local global i32 0, align 4
@CC_DSTCCTRL_SHFT = common dso_local global i32 0, align 4
@CC_SWAP_SHFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pl330_reqcfg*)* @_prepare_ccr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_prepare_ccr(%struct.pl330_reqcfg* %0) #0 {
  %2 = alloca %struct.pl330_reqcfg*, align 8
  %3 = alloca i32, align 4
  store %struct.pl330_reqcfg* %0, %struct.pl330_reqcfg** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.pl330_reqcfg*, %struct.pl330_reqcfg** %2, align 8
  %5 = getelementptr inbounds %struct.pl330_reqcfg, %struct.pl330_reqcfg* %4, i32 0, i32 9
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = load i32, i32* @CC_SRCINC, align 4
  %10 = load i32, i32* %3, align 4
  %11 = or i32 %10, %9
  store i32 %11, i32* %3, align 4
  br label %12

12:                                               ; preds = %8, %1
  %13 = load %struct.pl330_reqcfg*, %struct.pl330_reqcfg** %2, align 8
  %14 = getelementptr inbounds %struct.pl330_reqcfg, %struct.pl330_reqcfg* %13, i32 0, i32 8
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %12
  %18 = load i32, i32* @CC_DSTINC, align 4
  %19 = load i32, i32* %3, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %3, align 4
  br label %21

21:                                               ; preds = %17, %12
  %22 = load %struct.pl330_reqcfg*, %struct.pl330_reqcfg** %2, align 8
  %23 = getelementptr inbounds %struct.pl330_reqcfg, %struct.pl330_reqcfg* %22, i32 0, i32 7
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %21
  %27 = load i32, i32* @CC_SRCPRI, align 4
  %28 = load i32, i32* @CC_DSTPRI, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* %3, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %3, align 4
  br label %32

32:                                               ; preds = %26, %21
  %33 = load %struct.pl330_reqcfg*, %struct.pl330_reqcfg** %2, align 8
  %34 = getelementptr inbounds %struct.pl330_reqcfg, %struct.pl330_reqcfg* %33, i32 0, i32 6
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %32
  %38 = load i32, i32* @CC_SRCNS, align 4
  %39 = load i32, i32* @CC_DSTNS, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* %3, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %37, %32
  %44 = load %struct.pl330_reqcfg*, %struct.pl330_reqcfg** %2, align 8
  %45 = getelementptr inbounds %struct.pl330_reqcfg, %struct.pl330_reqcfg* %44, i32 0, i32 5
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %43
  %49 = load i32, i32* @CC_SRCIA, align 4
  %50 = load i32, i32* @CC_DSTIA, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* %3, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %3, align 4
  br label %54

54:                                               ; preds = %48, %43
  %55 = load %struct.pl330_reqcfg*, %struct.pl330_reqcfg** %2, align 8
  %56 = getelementptr inbounds %struct.pl330_reqcfg, %struct.pl330_reqcfg* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = sub nsw i32 %57, 1
  %59 = and i32 %58, 15
  %60 = load i32, i32* @CC_SRCBRSTLEN_SHFT, align 4
  %61 = shl i32 %59, %60
  %62 = load i32, i32* %3, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %3, align 4
  %64 = load %struct.pl330_reqcfg*, %struct.pl330_reqcfg** %2, align 8
  %65 = getelementptr inbounds %struct.pl330_reqcfg, %struct.pl330_reqcfg* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = sub nsw i32 %66, 1
  %68 = and i32 %67, 15
  %69 = load i32, i32* @CC_DSTBRSTLEN_SHFT, align 4
  %70 = shl i32 %68, %69
  %71 = load i32, i32* %3, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %3, align 4
  %73 = load %struct.pl330_reqcfg*, %struct.pl330_reqcfg** %2, align 8
  %74 = getelementptr inbounds %struct.pl330_reqcfg, %struct.pl330_reqcfg* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @CC_SRCBRSTSIZE_SHFT, align 4
  %77 = shl i32 %75, %76
  %78 = load i32, i32* %3, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %3, align 4
  %80 = load %struct.pl330_reqcfg*, %struct.pl330_reqcfg** %2, align 8
  %81 = getelementptr inbounds %struct.pl330_reqcfg, %struct.pl330_reqcfg* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @CC_DSTBRSTSIZE_SHFT, align 4
  %84 = shl i32 %82, %83
  %85 = load i32, i32* %3, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %3, align 4
  %87 = load %struct.pl330_reqcfg*, %struct.pl330_reqcfg** %2, align 8
  %88 = getelementptr inbounds %struct.pl330_reqcfg, %struct.pl330_reqcfg* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @CC_SRCCCTRL_SHFT, align 4
  %91 = shl i32 %89, %90
  %92 = load i32, i32* %3, align 4
  %93 = or i32 %92, %91
  store i32 %93, i32* %3, align 4
  %94 = load %struct.pl330_reqcfg*, %struct.pl330_reqcfg** %2, align 8
  %95 = getelementptr inbounds %struct.pl330_reqcfg, %struct.pl330_reqcfg* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @CC_DSTCCTRL_SHFT, align 4
  %98 = shl i32 %96, %97
  %99 = load i32, i32* %3, align 4
  %100 = or i32 %99, %98
  store i32 %100, i32* %3, align 4
  %101 = load %struct.pl330_reqcfg*, %struct.pl330_reqcfg** %2, align 8
  %102 = getelementptr inbounds %struct.pl330_reqcfg, %struct.pl330_reqcfg* %101, i32 0, i32 4
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @CC_SWAP_SHFT, align 4
  %105 = shl i32 %103, %104
  %106 = load i32, i32* %3, align 4
  %107 = or i32 %106, %105
  store i32 %107, i32* %3, align 4
  %108 = load i32, i32* %3, align 4
  ret i32 %108
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
