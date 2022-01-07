; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-etm4x.c_etm4_get_next_comparator.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-etm4x.c_etm4_get_next_comparator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.etmv4_drvdata = type { i32, %struct.etmv4_config }
%struct.etmv4_config = type { i32* }

@ETM_ADDR_TYPE_NONE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.etmv4_drvdata*, i32)* @etm4_get_next_comparator to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @etm4_get_next_comparator(%struct.etmv4_drvdata* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.etmv4_drvdata*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.etmv4_config*, align 8
  store %struct.etmv4_drvdata* %0, %struct.etmv4_drvdata** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %7, align 4
  %9 = load %struct.etmv4_drvdata*, %struct.etmv4_drvdata** %4, align 8
  %10 = getelementptr inbounds %struct.etmv4_drvdata, %struct.etmv4_drvdata* %9, i32 0, i32 1
  store %struct.etmv4_config* %10, %struct.etmv4_config** %8, align 8
  %11 = load %struct.etmv4_drvdata*, %struct.etmv4_drvdata** %4, align 8
  %12 = getelementptr inbounds %struct.etmv4_drvdata, %struct.etmv4_drvdata* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = mul nsw i32 %13, 2
  store i32 %14, i32* %6, align 4
  br label %15

15:                                               ; preds = %65, %2
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %66

19:                                               ; preds = %15
  %20 = load i32, i32* %5, align 4
  switch i32 %20, label %62 [
    i32 130, label %21
    i32 129, label %47
    i32 128, label %47
  ]

21:                                               ; preds = %19
  %22 = load %struct.etmv4_config*, %struct.etmv4_config** %8, align 8
  %23 = getelementptr inbounds %struct.etmv4_config, %struct.etmv4_config* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* %7, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @ETM_ADDR_TYPE_NONE, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %44

31:                                               ; preds = %21
  %32 = load %struct.etmv4_config*, %struct.etmv4_config** %8, align 8
  %33 = getelementptr inbounds %struct.etmv4_config, %struct.etmv4_config* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %7, align 4
  %36 = add nsw i32 %35, 1
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %34, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @ETM_ADDR_TYPE_NONE, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %31
  %43 = load i32, i32* %7, align 4
  store i32 %43, i32* %3, align 4
  br label %69

44:                                               ; preds = %31, %21
  %45 = load i32, i32* %7, align 4
  %46 = add nsw i32 %45, 2
  store i32 %46, i32* %7, align 4
  br label %65

47:                                               ; preds = %19, %19
  %48 = load %struct.etmv4_config*, %struct.etmv4_config** %8, align 8
  %49 = getelementptr inbounds %struct.etmv4_config, %struct.etmv4_config* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %7, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @ETM_ADDR_TYPE_NONE, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %47
  %58 = load i32, i32* %7, align 4
  store i32 %58, i32* %3, align 4
  br label %69

59:                                               ; preds = %47
  %60 = load i32, i32* %7, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %7, align 4
  br label %65

62:                                               ; preds = %19
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %3, align 4
  br label %69

65:                                               ; preds = %59, %44
  br label %15

66:                                               ; preds = %15
  %67 = load i32, i32* @ENOSPC, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %3, align 4
  br label %69

69:                                               ; preds = %66, %62, %57, %42
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
