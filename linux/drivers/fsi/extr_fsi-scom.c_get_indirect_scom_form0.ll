; ModuleID = '/home/carl/AnghaBench/linux/drivers/fsi/extr_fsi-scom.c_get_indirect_scom_form0.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/fsi/extr_fsi-scom.c_get_indirect_scom_form0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scom_device = type { i32 }

@XSCOM_ADDR_DIRECT_PART = common dso_local global i32 0, align 4
@XSCOM_ADDR_INDIRECT_PART = common dso_local global i32 0, align 4
@XSCOM_DATA_IND_READ = common dso_local global i32 0, align 4
@SCOM_STATUS_ANY_ERR = common dso_local global i32 0, align 4
@SCOM_MAX_IND_RETRIES = common dso_local global i32 0, align 4
@XSCOM_DATA_IND_ERR_MASK = common dso_local global i32 0, align 4
@XSCOM_DATA_IND_ERR_SHIFT = common dso_local global i32 0, align 4
@SCOM_STATUS_PIB_RESP_SHIFT = common dso_local global i32 0, align 4
@XSCOM_DATA_IND_DATA = common dso_local global i32 0, align 4
@XSCOM_DATA_IND_COMPLETE = common dso_local global i32 0, align 4
@SCOM_PIB_BLOCKED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scom_device*, i32*, i32, i32*)* @get_indirect_scom_form0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_indirect_scom_form0(%struct.scom_device* %0, i32* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.scom_device*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.scom_device* %0, %struct.scom_device** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32 0, i32* %14, align 4
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* @XSCOM_ADDR_DIRECT_PART, align 4
  %17 = and i32 %15, %16
  store i32 %17, i32* %11, align 4
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* @XSCOM_ADDR_INDIRECT_PART, align 4
  %20 = and i32 %18, %19
  %21 = load i32, i32* @XSCOM_DATA_IND_READ, align 4
  %22 = or i32 %20, %21
  store i32 %22, i32* %10, align 4
  %23 = load %struct.scom_device*, %struct.scom_device** %6, align 8
  %24 = load i32, i32* %10, align 4
  %25 = load i32, i32* %11, align 4
  %26 = load i32*, i32** %9, align 8
  %27 = call i32 @__put_scom(%struct.scom_device* %23, i32 %24, i32 %25, i32* %26)
  store i32 %27, i32* %12, align 4
  %28 = load i32, i32* %12, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %36, label %30

30:                                               ; preds = %4
  %31 = load i32*, i32** %9, align 8
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @SCOM_STATUS_ANY_ERR, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %30, %4
  %37 = load i32, i32* %12, align 4
  store i32 %37, i32* %5, align 4
  br label %88

38:                                               ; preds = %30
  store i32 0, i32* %13, align 4
  br label %39

39:                                               ; preds = %83, %38
  %40 = load i32, i32* %13, align 4
  %41 = load i32, i32* @SCOM_MAX_IND_RETRIES, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %86

43:                                               ; preds = %39
  %44 = load %struct.scom_device*, %struct.scom_device** %6, align 8
  %45 = load i32, i32* %8, align 4
  %46 = load i32*, i32** %9, align 8
  %47 = call i32 @__get_scom(%struct.scom_device* %44, i32* %10, i32 %45, i32* %46)
  store i32 %47, i32* %12, align 4
  %48 = load i32, i32* %12, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %56, label %50

50:                                               ; preds = %43
  %51 = load i32*, i32** %9, align 8
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @SCOM_STATUS_ANY_ERR, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %50, %43
  %57 = load i32, i32* %12, align 4
  store i32 %57, i32* %5, align 4
  br label %88

58:                                               ; preds = %50
  %59 = load i32, i32* %10, align 4
  %60 = load i32, i32* @XSCOM_DATA_IND_ERR_MASK, align 4
  %61 = and i32 %59, %60
  %62 = load i32, i32* @XSCOM_DATA_IND_ERR_SHIFT, align 4
  %63 = ashr i32 %61, %62
  store i32 %63, i32* %14, align 4
  %64 = load i32, i32* %14, align 4
  %65 = load i32, i32* @SCOM_STATUS_PIB_RESP_SHIFT, align 4
  %66 = shl i32 %64, %65
  %67 = load i32*, i32** %9, align 8
  store i32 %66, i32* %67, align 4
  %68 = load i32, i32* %10, align 4
  %69 = load i32, i32* @XSCOM_DATA_IND_DATA, align 4
  %70 = and i32 %68, %69
  %71 = load i32*, i32** %7, align 8
  store i32 %70, i32* %71, align 4
  %72 = load i32, i32* %10, align 4
  %73 = load i32, i32* @XSCOM_DATA_IND_COMPLETE, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %80, label %76

76:                                               ; preds = %58
  %77 = load i32, i32* %14, align 4
  %78 = load i32, i32* @SCOM_PIB_BLOCKED, align 4
  %79 = icmp ne i32 %77, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %76, %58
  store i32 0, i32* %5, align 4
  br label %88

81:                                               ; preds = %76
  %82 = call i32 @msleep(i32 1)
  br label %83

83:                                               ; preds = %81
  %84 = load i32, i32* %13, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %13, align 4
  br label %39

86:                                               ; preds = %39
  %87 = load i32, i32* %12, align 4
  store i32 %87, i32* %5, align 4
  br label %88

88:                                               ; preds = %86, %80, %56, %36
  %89 = load i32, i32* %5, align 4
  ret i32 %89
}

declare dso_local i32 @__put_scom(%struct.scom_device*, i32, i32, i32*) #1

declare dso_local i32 @__get_scom(%struct.scom_device*, i32*, i32, i32*) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
