; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_atmel-i2c.c_atmel_i2c_init_ecdh_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_atmel-i2c.c_atmel_i2c_init_ecdh_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atmel_i2c_cmd = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.scatterlist = type { i32 }

@COMMAND = common dso_local global i32 0, align 4
@ECDH_COUNT = common dso_local global i32 0, align 4
@OPCODE_ECDH = common dso_local global i32 0, align 4
@ECDH_PREFIX_MODE = common dso_local global i32 0, align 4
@DATA_SLOT_2 = common dso_local global i32 0, align 4
@ATMEL_ECC_PUBKEY_SIZE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@MAX_EXEC_TIME_ECDH = common dso_local global i32 0, align 4
@ECDH_RSP_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @atmel_i2c_init_ecdh_cmd(%struct.atmel_i2c_cmd* %0, %struct.scatterlist* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.atmel_i2c_cmd*, align 8
  %5 = alloca %struct.scatterlist*, align 8
  %6 = alloca i64, align 8
  store %struct.atmel_i2c_cmd* %0, %struct.atmel_i2c_cmd** %4, align 8
  store %struct.scatterlist* %1, %struct.scatterlist** %5, align 8
  %7 = load i32, i32* @COMMAND, align 4
  %8 = load %struct.atmel_i2c_cmd*, %struct.atmel_i2c_cmd** %4, align 8
  %9 = getelementptr inbounds %struct.atmel_i2c_cmd, %struct.atmel_i2c_cmd* %8, i32 0, i32 7
  store i32 %7, i32* %9, align 4
  %10 = load i32, i32* @ECDH_COUNT, align 4
  %11 = load %struct.atmel_i2c_cmd*, %struct.atmel_i2c_cmd** %4, align 8
  %12 = getelementptr inbounds %struct.atmel_i2c_cmd, %struct.atmel_i2c_cmd* %11, i32 0, i32 6
  store i32 %10, i32* %12, align 4
  %13 = load i32, i32* @OPCODE_ECDH, align 4
  %14 = load %struct.atmel_i2c_cmd*, %struct.atmel_i2c_cmd** %4, align 8
  %15 = getelementptr inbounds %struct.atmel_i2c_cmd, %struct.atmel_i2c_cmd* %14, i32 0, i32 5
  store i32 %13, i32* %15, align 4
  %16 = load i32, i32* @ECDH_PREFIX_MODE, align 4
  %17 = load %struct.atmel_i2c_cmd*, %struct.atmel_i2c_cmd** %4, align 8
  %18 = getelementptr inbounds %struct.atmel_i2c_cmd, %struct.atmel_i2c_cmd* %17, i32 0, i32 4
  store i32 %16, i32* %18, align 4
  %19 = load i32, i32* @DATA_SLOT_2, align 4
  %20 = call i32 @cpu_to_le16(i32 %19)
  %21 = load %struct.atmel_i2c_cmd*, %struct.atmel_i2c_cmd** %4, align 8
  %22 = getelementptr inbounds %struct.atmel_i2c_cmd, %struct.atmel_i2c_cmd* %21, i32 0, i32 3
  store i32 %20, i32* %22, align 4
  %23 = load %struct.scatterlist*, %struct.scatterlist** %5, align 8
  %24 = load %struct.scatterlist*, %struct.scatterlist** %5, align 8
  %25 = load i64, i64* @ATMEL_ECC_PUBKEY_SIZE, align 8
  %26 = call i32 @sg_nents_for_len(%struct.scatterlist* %24, i64 %25)
  %27 = load %struct.atmel_i2c_cmd*, %struct.atmel_i2c_cmd** %4, align 8
  %28 = getelementptr inbounds %struct.atmel_i2c_cmd, %struct.atmel_i2c_cmd* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load i64, i64* @ATMEL_ECC_PUBKEY_SIZE, align 8
  %31 = call i64 @sg_copy_to_buffer(%struct.scatterlist* %23, i32 %26, i32 %29, i64 %30)
  store i64 %31, i64* %6, align 8
  %32 = load i64, i64* %6, align 8
  %33 = load i64, i64* @ATMEL_ECC_PUBKEY_SIZE, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %2
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %47

38:                                               ; preds = %2
  %39 = load %struct.atmel_i2c_cmd*, %struct.atmel_i2c_cmd** %4, align 8
  %40 = call i32 @atmel_i2c_checksum(%struct.atmel_i2c_cmd* %39)
  %41 = load i32, i32* @MAX_EXEC_TIME_ECDH, align 4
  %42 = load %struct.atmel_i2c_cmd*, %struct.atmel_i2c_cmd** %4, align 8
  %43 = getelementptr inbounds %struct.atmel_i2c_cmd, %struct.atmel_i2c_cmd* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  %44 = load i32, i32* @ECDH_RSP_SIZE, align 4
  %45 = load %struct.atmel_i2c_cmd*, %struct.atmel_i2c_cmd** %4, align 8
  %46 = getelementptr inbounds %struct.atmel_i2c_cmd, %struct.atmel_i2c_cmd* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 4
  store i32 0, i32* %3, align 4
  br label %47

47:                                               ; preds = %38, %35
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i64 @sg_copy_to_buffer(%struct.scatterlist*, i32, i32, i64) #1

declare dso_local i32 @sg_nents_for_len(%struct.scatterlist*, i64) #1

declare dso_local i32 @atmel_i2c_checksum(%struct.atmel_i2c_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
