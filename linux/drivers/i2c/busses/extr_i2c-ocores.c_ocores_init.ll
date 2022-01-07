; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-ocores.c_ocores_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-ocores.c_ocores_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.ocores_i2c = type { i32, i32 }

@OCI2C_CONTROL = common dso_local global i32 0, align 4
@OCI2C_CTRL_EN = common dso_local global i32 0, align 4
@OCI2C_CTRL_IEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"Unsupported clock settings: core: %d KHz, bus: %d KHz\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@OCI2C_PRELOW = common dso_local global i32 0, align 4
@OCI2C_PREHIGH = common dso_local global i32 0, align 4
@OCI2C_CMD = common dso_local global i32 0, align 4
@OCI2C_CMD_IACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.ocores_i2c*)* @ocores_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocores_init(%struct.device* %0, %struct.ocores_i2c* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.ocores_i2c*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.ocores_i2c* %1, %struct.ocores_i2c** %5, align 8
  %9 = load %struct.ocores_i2c*, %struct.ocores_i2c** %5, align 8
  %10 = load i32, i32* @OCI2C_CONTROL, align 4
  %11 = call i32 @oc_getreg(%struct.ocores_i2c* %9, i32 %10)
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* @OCI2C_CTRL_EN, align 4
  %13 = load i32, i32* @OCI2C_CTRL_IEN, align 4
  %14 = or i32 %12, %13
  %15 = xor i32 %14, -1
  %16 = load i32, i32* %8, align 4
  %17 = and i32 %16, %15
  store i32 %17, i32* %8, align 4
  %18 = load %struct.ocores_i2c*, %struct.ocores_i2c** %5, align 8
  %19 = load i32, i32* @OCI2C_CONTROL, align 4
  %20 = load i32, i32* %8, align 4
  %21 = call i32 @oc_setreg(%struct.ocores_i2c* %18, i32 %19, i32 %20)
  %22 = load %struct.ocores_i2c*, %struct.ocores_i2c** %5, align 8
  %23 = getelementptr inbounds %struct.ocores_i2c, %struct.ocores_i2c* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.ocores_i2c*, %struct.ocores_i2c** %5, align 8
  %26 = getelementptr inbounds %struct.ocores_i2c, %struct.ocores_i2c* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = mul nsw i32 5, %27
  %29 = sdiv i32 %24, %28
  %30 = sub nsw i32 %29, 1
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @clamp(i32 %31, i32 0, i32 65535)
  store i32 %32, i32* %6, align 4
  %33 = load %struct.ocores_i2c*, %struct.ocores_i2c** %5, align 8
  %34 = getelementptr inbounds %struct.ocores_i2c, %struct.ocores_i2c* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %6, align 4
  %37 = add nsw i32 %36, 1
  %38 = mul nsw i32 5, %37
  %39 = sdiv i32 %35, %38
  %40 = load %struct.ocores_i2c*, %struct.ocores_i2c** %5, align 8
  %41 = getelementptr inbounds %struct.ocores_i2c, %struct.ocores_i2c* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = sub nsw i32 %39, %42
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @abs(i32 %44) #3
  %46 = load %struct.ocores_i2c*, %struct.ocores_i2c** %5, align 8
  %47 = getelementptr inbounds %struct.ocores_i2c, %struct.ocores_i2c* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = sdiv i32 %48, 10
  %50 = icmp sgt i32 %45, %49
  br i1 %50, label %51, label %62

51:                                               ; preds = %2
  %52 = load %struct.device*, %struct.device** %4, align 8
  %53 = load %struct.ocores_i2c*, %struct.ocores_i2c** %5, align 8
  %54 = getelementptr inbounds %struct.ocores_i2c, %struct.ocores_i2c* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.ocores_i2c*, %struct.ocores_i2c** %5, align 8
  %57 = getelementptr inbounds %struct.ocores_i2c, %struct.ocores_i2c* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @dev_err(%struct.device* %52, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %55, i32 %58)
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %3, align 4
  br label %83

62:                                               ; preds = %2
  %63 = load %struct.ocores_i2c*, %struct.ocores_i2c** %5, align 8
  %64 = load i32, i32* @OCI2C_PRELOW, align 4
  %65 = load i32, i32* %6, align 4
  %66 = and i32 %65, 255
  %67 = call i32 @oc_setreg(%struct.ocores_i2c* %63, i32 %64, i32 %66)
  %68 = load %struct.ocores_i2c*, %struct.ocores_i2c** %5, align 8
  %69 = load i32, i32* @OCI2C_PREHIGH, align 4
  %70 = load i32, i32* %6, align 4
  %71 = ashr i32 %70, 8
  %72 = call i32 @oc_setreg(%struct.ocores_i2c* %68, i32 %69, i32 %71)
  %73 = load %struct.ocores_i2c*, %struct.ocores_i2c** %5, align 8
  %74 = load i32, i32* @OCI2C_CMD, align 4
  %75 = load i32, i32* @OCI2C_CMD_IACK, align 4
  %76 = call i32 @oc_setreg(%struct.ocores_i2c* %73, i32 %74, i32 %75)
  %77 = load %struct.ocores_i2c*, %struct.ocores_i2c** %5, align 8
  %78 = load i32, i32* @OCI2C_CONTROL, align 4
  %79 = load i32, i32* %8, align 4
  %80 = load i32, i32* @OCI2C_CTRL_EN, align 4
  %81 = or i32 %79, %80
  %82 = call i32 @oc_setreg(%struct.ocores_i2c* %77, i32 %78, i32 %81)
  store i32 0, i32* %3, align 4
  br label %83

83:                                               ; preds = %62, %51
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local i32 @oc_getreg(%struct.ocores_i2c*, i32) #1

declare dso_local i32 @oc_setreg(%struct.ocores_i2c*, i32, i32) #1

declare dso_local i32 @clamp(i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #2

declare dso_local i32 @dev_err(%struct.device*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
