; ModuleID = '/home/carl/AnghaBench/linux/drivers/fsi/extr_fsi-scom.c_get_scom.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/fsi/extr_fsi-scom.c_get_scom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scom_device = type { i32 }

@SCOM_MAX_RETRIES = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@SCOM_FSI2PIB_RESET_REG = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@SCOM_STATUS_PIB_RESP_MASK = common dso_local global i32 0, align 4
@SCOM_STATUS_PIB_RESP_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scom_device*, i32*, i32)* @get_scom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_scom(%struct.scom_device* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.scom_device*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.scom_device* %0, %struct.scom_device** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 -1, i32* %9, align 4
  store i32 0, i32* %11, align 4
  br label %12

12:                                               ; preds = %81, %3
  %13 = load i32, i32* %11, align 4
  %14 = load i32, i32* @SCOM_MAX_RETRIES, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %84

16:                                               ; preds = %12
  %17 = load %struct.scom_device*, %struct.scom_device** %5, align 8
  %18 = load i32*, i32** %6, align 8
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @raw_get_scom(%struct.scom_device* %17, i32* %18, i32 %19, i32* %8)
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %10, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %42

23:                                               ; preds = %16
  %24 = load i32, i32* %10, align 4
  %25 = load i32, i32* @ENODEV, align 4
  %26 = sub nsw i32 0, %25
  %27 = icmp ne i32 %24, %26
  br i1 %27, label %28, label %39

28:                                               ; preds = %23
  %29 = load i32, i32* %11, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %28
  %32 = load %struct.scom_device*, %struct.scom_device** %5, align 8
  %33 = getelementptr inbounds %struct.scom_device, %struct.scom_device* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @SCOM_FSI2PIB_RESET_REG, align 4
  %36 = call i32 @fsi_device_write(i32 %34, i32 %35, i32* %9, i32 4)
  %37 = load i32, i32* @EBUSY, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %10, align 4
  br label %41

39:                                               ; preds = %28, %23
  %40 = load i32, i32* %10, align 4
  store i32 %40, i32* %4, align 4
  br label %86

41:                                               ; preds = %31
  br label %46

42:                                               ; preds = %16
  %43 = load %struct.scom_device*, %struct.scom_device** %5, align 8
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @handle_fsi2pib_status(%struct.scom_device* %43, i32 %44)
  store i32 %45, i32* %10, align 4
  br label %46

46:                                               ; preds = %42, %41
  %47 = load i32, i32* %10, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %46
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* @EBUSY, align 4
  %52 = sub nsw i32 0, %51
  %53 = icmp ne i32 %50, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %49
  br label %84

55:                                               ; preds = %49, %46
  %56 = load i32, i32* %10, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %75

58:                                               ; preds = %55
  %59 = load %struct.scom_device*, %struct.scom_device** %5, align 8
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* @SCOM_STATUS_PIB_RESP_MASK, align 4
  %62 = and i32 %60, %61
  %63 = load i32, i32* @SCOM_STATUS_PIB_RESP_SHIFT, align 4
  %64 = ashr i32 %62, %63
  %65 = call i32 @handle_pib_status(%struct.scom_device* %59, i32 %64)
  store i32 %65, i32* %10, align 4
  %66 = load i32, i32* %10, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %58
  %69 = load i32, i32* %10, align 4
  %70 = load i32, i32* @EBUSY, align 4
  %71 = sub nsw i32 0, %70
  %72 = icmp ne i32 %69, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %68
  br label %84

74:                                               ; preds = %68, %58
  br label %75

75:                                               ; preds = %74, %55
  %76 = load i32, i32* %10, align 4
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %75
  br label %84

79:                                               ; preds = %75
  %80 = call i32 @msleep(i32 1)
  br label %81

81:                                               ; preds = %79
  %82 = load i32, i32* %11, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %11, align 4
  br label %12

84:                                               ; preds = %78, %73, %54, %12
  %85 = load i32, i32* %10, align 4
  store i32 %85, i32* %4, align 4
  br label %86

86:                                               ; preds = %84, %39
  %87 = load i32, i32* %4, align 4
  ret i32 %87
}

declare dso_local i32 @raw_get_scom(%struct.scom_device*, i32*, i32, i32*) #1

declare dso_local i32 @fsi_device_write(i32, i32, i32*, i32) #1

declare dso_local i32 @handle_fsi2pib_status(%struct.scom_device*, i32) #1

declare dso_local i32 @handle_pib_status(%struct.scom_device*, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
