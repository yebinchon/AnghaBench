; ModuleID = '/home/carl/AnghaBench/linux/drivers/fsi/extr_fsi-master-gpio.c_read_one_response.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/fsi/extr_fsi-master-gpio.c_read_one_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsi_master_gpio = type { i32 }
%struct.fsi_gpio_msg = type { i32, i32 }

@FSI_MASTER_MTOE_COUNT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Master time out waiting for response\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@FSI_RESP_ACK = common dso_local global i32 0, align 4
@FSI_CRC_SIZE = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"ERR response CRC msg: 0x%016llx (%d bits)\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fsi_master_gpio*, i32, %struct.fsi_gpio_msg*, i32*)* @read_one_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_one_response(%struct.fsi_master_gpio* %0, i32 %1, %struct.fsi_gpio_msg* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.fsi_master_gpio*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.fsi_gpio_msg*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.fsi_gpio_msg, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.fsi_master_gpio* %0, %struct.fsi_master_gpio** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.fsi_gpio_msg* %2, %struct.fsi_gpio_msg** %8, align 8
  store i32* %3, i32** %9, align 8
  %15 = load i64, i64* %11, align 8
  %16 = call i32 @local_irq_save(i64 %15)
  store i32 0, i32* %14, align 4
  br label %17

17:                                               ; preds = %31, %4
  %18 = load i32, i32* %14, align 4
  %19 = load i32, i32* @FSI_MASTER_MTOE_COUNT, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %34

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.fsi_gpio_msg, %struct.fsi_gpio_msg* %10, i32 0, i32 0
  store i32 0, i32* %22, align 4
  %23 = getelementptr inbounds %struct.fsi_gpio_msg, %struct.fsi_gpio_msg* %10, i32 0, i32 1
  store i32 0, i32* %23, align 4
  %24 = load %struct.fsi_master_gpio*, %struct.fsi_master_gpio** %6, align 8
  %25 = call i32 @serial_in(%struct.fsi_master_gpio* %24, %struct.fsi_gpio_msg* %10, i32 1)
  %26 = getelementptr inbounds %struct.fsi_gpio_msg, %struct.fsi_gpio_msg* %10, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %21
  br label %34

30:                                               ; preds = %21
  br label %31

31:                                               ; preds = %30
  %32 = load i32, i32* %14, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %14, align 4
  br label %17

34:                                               ; preds = %29, %17
  %35 = load i32, i32* %14, align 4
  %36 = load i32, i32* @FSI_MASTER_MTOE_COUNT, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %47

38:                                               ; preds = %34
  %39 = load %struct.fsi_master_gpio*, %struct.fsi_master_gpio** %6, align 8
  %40 = getelementptr inbounds %struct.fsi_master_gpio, %struct.fsi_master_gpio* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 (i32, i8*, ...) @dev_dbg(i32 %41, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %43 = load i64, i64* %11, align 8
  %44 = call i32 @local_irq_restore(i64 %43)
  %45 = load i32, i32* @ETIMEDOUT, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %5, align 4
  br label %121

47:                                               ; preds = %34
  %48 = getelementptr inbounds %struct.fsi_gpio_msg, %struct.fsi_gpio_msg* %10, i32 0, i32 0
  store i32 0, i32* %48, align 4
  %49 = getelementptr inbounds %struct.fsi_gpio_msg, %struct.fsi_gpio_msg* %10, i32 0, i32 1
  store i32 0, i32* %49, align 4
  %50 = load %struct.fsi_master_gpio*, %struct.fsi_master_gpio** %6, align 8
  %51 = call i32 @serial_in(%struct.fsi_master_gpio* %50, %struct.fsi_gpio_msg* %10, i32 4)
  %52 = getelementptr inbounds %struct.fsi_gpio_msg, %struct.fsi_gpio_msg* %10, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = and i32 %53, 3
  store i32 %54, i32* %13, align 4
  %55 = load i32, i32* %13, align 4
  %56 = load i32, i32* @FSI_RESP_ACK, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %66

58:                                               ; preds = %47
  %59 = load i32, i32* %7, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %58
  %62 = load %struct.fsi_master_gpio*, %struct.fsi_master_gpio** %6, align 8
  %63 = load i32, i32* %7, align 4
  %64 = mul nsw i32 %63, 8
  %65 = call i32 @serial_in(%struct.fsi_master_gpio* %62, %struct.fsi_gpio_msg* %10, i32 %64)
  br label %66

66:                                               ; preds = %61, %58, %47
  %67 = load %struct.fsi_master_gpio*, %struct.fsi_master_gpio** %6, align 8
  %68 = load i32, i32* @FSI_CRC_SIZE, align 4
  %69 = call i32 @serial_in(%struct.fsi_master_gpio* %67, %struct.fsi_gpio_msg* %10, i32 %68)
  %70 = load i64, i64* %11, align 8
  %71 = call i32 @local_irq_restore(i64 %70)
  %72 = call i64 @crc4(i64 0, i32 1, i32 1)
  store i64 %72, i64* %12, align 8
  %73 = load i64, i64* %12, align 8
  %74 = getelementptr inbounds %struct.fsi_gpio_msg, %struct.fsi_gpio_msg* %10, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = getelementptr inbounds %struct.fsi_gpio_msg, %struct.fsi_gpio_msg* %10, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i64 @crc4(i64 %73, i32 %75, i32 %77)
  store i64 %78, i64* %12, align 8
  %79 = load i64, i64* %12, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %107

81:                                               ; preds = %66
  %82 = getelementptr inbounds %struct.fsi_gpio_msg, %struct.fsi_gpio_msg* %10, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = xor i32 %83, -1
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.fsi_gpio_msg, %struct.fsi_gpio_msg* %10, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = zext i32 %87 to i64
  %89 = shl i64 1, %88
  %90 = sub i64 %89, 1
  %91 = and i64 %85, %90
  %92 = icmp eq i64 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %81
  %94 = load i32, i32* @ENODEV, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %5, align 4
  br label %121

96:                                               ; preds = %81
  %97 = load %struct.fsi_master_gpio*, %struct.fsi_master_gpio** %6, align 8
  %98 = getelementptr inbounds %struct.fsi_master_gpio, %struct.fsi_master_gpio* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = getelementptr inbounds %struct.fsi_gpio_msg, %struct.fsi_gpio_msg* %10, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = getelementptr inbounds %struct.fsi_gpio_msg, %struct.fsi_gpio_msg* %10, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i32 (i32, i8*, ...) @dev_dbg(i32 %99, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %101, i32 %103)
  %105 = load i32, i32* @EAGAIN, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %5, align 4
  br label %121

107:                                              ; preds = %66
  %108 = load %struct.fsi_gpio_msg*, %struct.fsi_gpio_msg** %8, align 8
  %109 = icmp ne %struct.fsi_gpio_msg* %108, null
  br i1 %109, label %110, label %114

110:                                              ; preds = %107
  %111 = load %struct.fsi_gpio_msg*, %struct.fsi_gpio_msg** %8, align 8
  %112 = bitcast %struct.fsi_gpio_msg* %111 to i8*
  %113 = bitcast %struct.fsi_gpio_msg* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %112, i8* align 4 %113, i64 8, i1 false)
  br label %114

114:                                              ; preds = %110, %107
  %115 = load i32*, i32** %9, align 8
  %116 = icmp ne i32* %115, null
  br i1 %116, label %117, label %120

117:                                              ; preds = %114
  %118 = load i32, i32* %13, align 4
  %119 = load i32*, i32** %9, align 8
  store i32 %118, i32* %119, align 4
  br label %120

120:                                              ; preds = %117, %114
  store i32 0, i32* %5, align 4
  br label %121

121:                                              ; preds = %120, %96, %93, %38
  %122 = load i32, i32* %5, align 4
  ret i32 %122
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @serial_in(%struct.fsi_master_gpio*, %struct.fsi_gpio_msg*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

declare dso_local i32 @local_irq_restore(i64) #1

declare dso_local i64 @crc4(i64, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
