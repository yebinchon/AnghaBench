; ModuleID = '/home/carl/AnghaBench/linux/drivers/fsi/extr_fsi-scom.c_put_indirect_scom_form0.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/fsi/extr_fsi-scom.c_put_indirect_scom_form0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scom_device = type { i32 }

@XSCOM_DATA_IND_DATA = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@XSCOM_ADDR_DIRECT_PART = common dso_local global i32 0, align 4
@XSCOM_ADDR_INDIRECT_PART = common dso_local global i32 0, align 4
@SCOM_STATUS_ANY_ERR = common dso_local global i32 0, align 4
@SCOM_MAX_IND_RETRIES = common dso_local global i32 0, align 4
@XSCOM_DATA_IND_ERR_MASK = common dso_local global i32 0, align 4
@XSCOM_DATA_IND_ERR_SHIFT = common dso_local global i32 0, align 4
@SCOM_STATUS_PIB_RESP_SHIFT = common dso_local global i32 0, align 4
@XSCOM_DATA_IND_COMPLETE = common dso_local global i32 0, align 4
@SCOM_PIB_BLOCKED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scom_device*, i32, i32, i32*)* @put_indirect_scom_form0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @put_indirect_scom_form0(%struct.scom_device* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.scom_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.scom_device* %0, %struct.scom_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32 0, i32* %14, align 4
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* @XSCOM_DATA_IND_DATA, align 4
  %17 = xor i32 %16, -1
  %18 = and i32 %15, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %4
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %5, align 4
  br label %93

23:                                               ; preds = %4
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* @XSCOM_ADDR_DIRECT_PART, align 4
  %26 = and i32 %24, %25
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* @XSCOM_ADDR_INDIRECT_PART, align 4
  %29 = and i32 %27, %28
  %30 = load i32, i32* %7, align 4
  %31 = or i32 %29, %30
  store i32 %31, i32* %10, align 4
  %32 = load %struct.scom_device*, %struct.scom_device** %6, align 8
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* %11, align 4
  %35 = load i32*, i32** %9, align 8
  %36 = call i32 @__put_scom(%struct.scom_device* %32, i32 %33, i32 %34, i32* %35)
  store i32 %36, i32* %12, align 4
  %37 = load i32, i32* %12, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %45, label %39

39:                                               ; preds = %23
  %40 = load i32*, i32** %9, align 8
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @SCOM_STATUS_ANY_ERR, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %39, %23
  %46 = load i32, i32* %12, align 4
  store i32 %46, i32* %5, align 4
  br label %93

47:                                               ; preds = %39
  store i32 0, i32* %13, align 4
  br label %48

48:                                               ; preds = %88, %47
  %49 = load i32, i32* %13, align 4
  %50 = load i32, i32* @SCOM_MAX_IND_RETRIES, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %91

52:                                               ; preds = %48
  %53 = load %struct.scom_device*, %struct.scom_device** %6, align 8
  %54 = load i32, i32* %8, align 4
  %55 = load i32*, i32** %9, align 8
  %56 = call i32 @__get_scom(%struct.scom_device* %53, i32* %10, i32 %54, i32* %55)
  store i32 %56, i32* %12, align 4
  %57 = load i32, i32* %12, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %65, label %59

59:                                               ; preds = %52
  %60 = load i32*, i32** %9, align 8
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @SCOM_STATUS_ANY_ERR, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %59, %52
  %66 = load i32, i32* %12, align 4
  store i32 %66, i32* %5, align 4
  br label %93

67:                                               ; preds = %59
  %68 = load i32, i32* %10, align 4
  %69 = load i32, i32* @XSCOM_DATA_IND_ERR_MASK, align 4
  %70 = and i32 %68, %69
  %71 = load i32, i32* @XSCOM_DATA_IND_ERR_SHIFT, align 4
  %72 = ashr i32 %70, %71
  store i32 %72, i32* %14, align 4
  %73 = load i32, i32* %14, align 4
  %74 = load i32, i32* @SCOM_STATUS_PIB_RESP_SHIFT, align 4
  %75 = shl i32 %73, %74
  %76 = load i32*, i32** %9, align 8
  store i32 %75, i32* %76, align 4
  %77 = load i32, i32* %10, align 4
  %78 = load i32, i32* @XSCOM_DATA_IND_COMPLETE, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %85, label %81

81:                                               ; preds = %67
  %82 = load i32, i32* %14, align 4
  %83 = load i32, i32* @SCOM_PIB_BLOCKED, align 4
  %84 = icmp ne i32 %82, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %81, %67
  store i32 0, i32* %5, align 4
  br label %93

86:                                               ; preds = %81
  %87 = call i32 @msleep(i32 1)
  br label %88

88:                                               ; preds = %86
  %89 = load i32, i32* %13, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %13, align 4
  br label %48

91:                                               ; preds = %48
  %92 = load i32, i32* %12, align 4
  store i32 %92, i32* %5, align 4
  br label %93

93:                                               ; preds = %91, %85, %65, %45, %20
  %94 = load i32, i32* %5, align 4
  ret i32 %94
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
